    80033000:	4c1c                	lw	a5,24(s0)
    80033002:	ff2799e3          	bne	a5,s2,80032ff4 <js_parse_expr_binary+0x5e>
quickjs-nuttx/quickjs.c:25227
        if (next_token(s))
    80033006:	8522                	mv	a0,s0
    80033008:	d7efb0ef          	jal	ra,8002e586 <next_token>
    8003300c:	f565                	bnez	a0,80032ff4 <js_parse_expr_binary+0x5e>
quickjs-nuttx/quickjs.c:25229
        if (js_parse_expr_binary(s, level - 1, parse_flags)) {
    8003300e:	4605                	li	a2,1
    80033010:	458d                	li	a1,3
    80033012:	8522                	mv	a0,s0
    80033014:	f83ff0ef          	jal	ra,80032f96 <js_parse_expr_binary>
    80033018:	8d2a                	mv	s10,a0
    8003301a:	fd69                	bnez	a0,80032ff4 <js_parse_expr_binary+0x5e>
quickjs-nuttx/quickjs.c:25234
        emit_op(s, OP_scope_in_private_field);
    8003301c:	0c400593          	li	a1,196
    80033020:	8522                	mv	a0,s0
    80033022:	8d4d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25235
        emit_atom(s, atom);
    80033026:	85a6                	mv	a1,s1
    80033028:	8522                	mv	a0,s0
    8003302a:	900d80ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:25236
        emit_u16(s, s->cur_func->scope_level);
    8003302e:	743c                	ld	a5,104(s0)
    80033030:	8522                	mv	a0,s0
    80033032:	0e07d583          	lhu	a1,224(a5)
    80033036:	f8fd50ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:25237
        JS_FreeAtom(s->ctx, atom);
    8003303a:	6008                	ld	a0,0(s0)
    8003303c:	85a6                	mv	a1,s1
    8003303e:	90ad80ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:25376
}
    80033042:	60e6                	ld	ra,88(sp)
    80033044:	6446                	ld	s0,80(sp)
    80033046:	64a6                	ld	s1,72(sp)
    80033048:	6906                	ld	s2,64(sp)
    8003304a:	79e2                	ld	s3,56(sp)
    8003304c:	7a42                	ld	s4,48(sp)
    8003304e:	7aa2                	ld	s5,40(sp)
    80033050:	7b02                	ld	s6,32(sp)
    80033052:	6be2                	ld	s7,24(sp)
    80033054:	6c42                	ld	s8,16(sp)
    80033056:	6ca2                	ld	s9,8(sp)
    80033058:	856a                	mv	a0,s10
    8003305a:	6d02                	ld	s10,0(sp)
    8003305c:	6125                	addi	sp,sp,96
    8003305e:	8082                	ret
quickjs-nuttx/quickjs.c:25240
        if (js_parse_expr_binary(s, level - 1, parse_flags))
    80033060:	34fd                	addiw	s1,s1,-1
    80033062:	00048a1b          	sext.w	s4,s1
    80033066:	864e                	mv	a2,s3
    80033068:	85d2                	mv	a1,s4
    8003306a:	8522                	mv	a0,s0
    8003306c:	f2bff0ef          	jal	ra,80032f96 <js_parse_expr_binary>
    80033070:	8d2a                	mv	s10,a0
    80033072:	f549                	bnez	a0,80032ffc <js_parse_expr_binary+0x66>
    80033074:	02049793          	slli	a5,s1,0x20
    80033078:	01e7d493          	srli	s1,a5,0x1e
    8003307c:	00039a97          	auipc	s5,0x39
    80033080:	518a8a93          	addi	s5,s5,1304 # 8006c594 <qjsc_repl+0x6fe4>
    80033084:	8b52                	mv	s6,s4
    80033086:	4b9d                	li	s7,7
    80033088:	01548933          	add	s2,s1,s5
    8003308c:	07c00c13          	li	s8,124
    80033090:	00061c97          	auipc	s9,0x61
    80033094:	148c8c93          	addi	s9,s9,328 # 800941d8 <CSWTCH.5615>
quickjs-nuttx/quickjs.c:25244
        op = s->token.val;
    80033098:	4c1c                	lw	a5,24(s0)
quickjs-nuttx/quickjs.c:25245
        switch(level) {
    8003309a:	116be763          	bltu	s7,s6,800331a8 <js_parse_expr_binary+0x212>
    8003309e:	00092703          	lw	a4,0(s2)
    800330a2:	9756                	add	a4,a4,s5
    800330a4:	8702                	jr	a4
quickjs-nuttx/quickjs.c:25247
            switch(op) {
    800330a6:	02a00713          	li	a4,42
    800330aa:	10e78163          	beq	a5,a4,800331ac <js_parse_expr_binary+0x216>
    800330ae:	02f00713          	li	a4,47
    800330b2:	10e78063          	beq	a5,a4,800331b2 <js_parse_expr_binary+0x21c>
    800330b6:	02500713          	li	a4,37
    800330ba:	f8e794e3          	bne	a5,a4,80033042 <js_parse_expr_binary+0xac>
quickjs-nuttx/quickjs.c:25256
                if (s->cur_func->js_mode & JS_MODE_MATH)
    800330be:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:25257
                    opcode = OP_math_mod;
    800330c0:	0b400493          	li	s1,180
quickjs-nuttx/quickjs.c:25256
                if (s->cur_func->js_mode & JS_MODE_MATH)
    800330c4:	0867c783          	lbu	a5,134(a5)
    800330c8:	8b91                	andi	a5,a5,4
    800330ca:	e399                	bnez	a5,800330d0 <js_parse_expr_binary+0x13a>
quickjs-nuttx/quickjs.c:25260
                    opcode = OP_mod;
    800330cc:	09d00493          	li	s1,157
quickjs-nuttx/quickjs.c:25369
        if (next_token(s))
    800330d0:	8522                	mv	a0,s0
    800330d2:	cb4fb0ef          	jal	ra,8002e586 <next_token>
    800330d6:	f11d                	bnez	a0,80032ffc <js_parse_expr_binary+0x66>
quickjs-nuttx/quickjs.c:25371
        if (js_parse_expr_binary(s, level - 1, parse_flags))
    800330d8:	864e                	mv	a2,s3
    800330da:	85d2                	mv	a1,s4
    800330dc:	8522                	mv	a0,s0
    800330de:	eb9ff0ef          	jal	ra,80032f96 <js_parse_expr_binary>
    800330e2:	f0051de3          	bnez	a0,80032ffc <js_parse_expr_binary+0x66>
quickjs-nuttx/quickjs.c:25373
        emit_op(s, opcode);
    800330e6:	0ff4f593          	zext.b	a1,s1
    800330ea:	8522                	mv	a0,s0
    800330ec:	80ad60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25244
        op = s->token.val;
    800330f0:	b765                	j	80033098 <js_parse_expr_binary+0x102>
quickjs-nuttx/quickjs.c:25267
            switch(op) {
    800330f2:	02b00713          	li	a4,43
    800330f6:	0ce78163          	beq	a5,a4,800331b8 <js_parse_expr_binary+0x222>
    800330fa:	02d00713          	li	a4,45
    800330fe:	f4e792e3          	bne	a5,a4,80033042 <js_parse_expr_binary+0xac>
    80033102:	09f00493          	li	s1,159
    80033106:	b7e9                	j	800330d0 <js_parse_expr_binary+0x13a>
quickjs-nuttx/quickjs.c:25279
            switch(op) {
    80033108:	0007849b          	sext.w	s1,a5
    8003310c:	4709                	li	a4,2
    8003310e:	0697879b          	addiw	a5,a5,105
    80033112:	f2f768e3          	bltu	a4,a5,80033042 <js_parse_expr_binary+0xac>
    80033116:	10a4849b          	addiw	s1,s1,266
    8003311a:	bf5d                	j	800330d0 <js_parse_expr_binary+0x13a>
quickjs-nuttx/quickjs.c:25294
            switch(op) {
    8003311c:	fba00713          	li	a4,-70
    80033120:	08e78f63          	beq	a5,a4,800331be <js_parse_expr_binary+0x228>
    80033124:	fbb00713          	li	a4,-69
    80033128:	02e7d163          	bge	a5,a4,8003314a <js_parse_expr_binary+0x1b4>
    8003312c:	f9d00713          	li	a4,-99
    80033130:	08e78a63          	beq	a5,a4,800331c4 <js_parse_expr_binary+0x22e>
    80033134:	fb900713          	li	a4,-71
    80033138:	02e78463          	beq	a5,a4,80033160 <js_parse_expr_binary+0x1ca>
    8003313c:	f9b00713          	li	a4,-101
    80033140:	f0e791e3          	bne	a5,a4,80033042 <js_parse_expr_binary+0xac>
quickjs-nuttx/quickjs.c:25302
                opcode = OP_lte;
    80033144:	0a500493          	li	s1,165
    80033148:	b761                	j	800330d0 <js_parse_expr_binary+0x13a>
    8003314a:	03c00713          	li	a4,60
    8003314e:	06e78e63          	beq	a5,a4,800331ca <js_parse_expr_binary+0x234>
    80033152:	03e00713          	li	a4,62
    80033156:	eee796e3          	bne	a5,a4,80033042 <js_parse_expr_binary+0xac>
    8003315a:	0a600493          	li	s1,166
    8003315e:	bf8d                	j	800330d0 <js_parse_expr_binary+0x13a>
quickjs-nuttx/quickjs.c:25311
                if (parse_flags & PF_IN_ACCEPTED) {
    80033160:	06099863          	bnez	s3,800331d0 <js_parse_expr_binary+0x23a>
quickjs-nuttx/quickjs.c:25290
                return 0;
    80033164:	4d01                	li	s10,0
    80033166:	bdf1                	j	80033042 <js_parse_expr_binary+0xac>
quickjs-nuttx/quickjs.c:25322
            switch(op) {
    80033168:	0627879b          	addiw	a5,a5,98
    8003316c:	0007869b          	sext.w	a3,a5
    80033170:	470d                	li	a4,3
    80033172:	ecd768e3          	bltu	a4,a3,80033042 <js_parse_expr_binary+0xac>
    80033176:	1782                	slli	a5,a5,0x20
    80033178:	9381                	srli	a5,a5,0x20
    8003317a:	97e6                	add	a5,a5,s9
    8003317c:	0007c483          	lbu	s1,0(a5)
    80033180:	bf81                	j	800330d0 <js_parse_expr_binary+0x13a>
quickjs-nuttx/quickjs.c:25340
            switch(op) {
    80033182:	02600713          	li	a4,38
    80033186:	eae79ee3          	bne	a5,a4,80033042 <js_parse_expr_binary+0xac>
quickjs-nuttx/quickjs.c:25342
                opcode = OP_and;
    8003318a:	0ae00493          	li	s1,174
    8003318e:	b789                	j	800330d0 <js_parse_expr_binary+0x13a>
quickjs-nuttx/quickjs.c:25349
            switch(op) {
    80033190:	05e00713          	li	a4,94
    80033194:	eae797e3          	bne	a5,a4,80033042 <js_parse_expr_binary+0xac>
quickjs-nuttx/quickjs.c:25351
                opcode = OP_xor;
    80033198:	0af00493          	li	s1,175
    8003319c:	bf15                	j	800330d0 <js_parse_expr_binary+0x13a>
quickjs-nuttx/quickjs.c:25358
            switch(op) {
    8003319e:	eb8792e3          	bne	a5,s8,80033042 <js_parse_expr_binary+0xac>
quickjs-nuttx/quickjs.c:25360
                opcode = OP_or;
    800331a2:	0b000493          	li	s1,176
    800331a6:	b72d                	j	800330d0 <js_parse_expr_binary+0x13a>
quickjs-nuttx/quickjs.c:25367
            abort();
    800331a8:	1db2f0ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:25249
                opcode = OP_mul;
    800331ac:	09b00493          	li	s1,155
    800331b0:	b705                	j	800330d0 <js_parse_expr_binary+0x13a>
    800331b2:	09c00493          	li	s1,156
    800331b6:	bf29                	j	800330d0 <js_parse_expr_binary+0x13a>
quickjs-nuttx/quickjs.c:25269
                opcode = OP_add;
    800331b8:	09e00493          	li	s1,158
    800331bc:	bf11                	j	800330d0 <js_parse_expr_binary+0x13a>
quickjs-nuttx/quickjs.c:25308
                opcode = OP_instanceof;
    800331be:	0a800493          	li	s1,168
    800331c2:	b739                	j	800330d0 <js_parse_expr_binary+0x13a>
quickjs-nuttx/quickjs.c:25305
                opcode = OP_gte;
    800331c4:	0a700493          	li	s1,167
    800331c8:	b721                	j	800330d0 <js_parse_expr_binary+0x13a>
quickjs-nuttx/quickjs.c:25296
                opcode = OP_lt;
    800331ca:	0a400493          	li	s1,164
    800331ce:	b709                	j	800330d0 <js_parse_expr_binary+0x13a>
quickjs-nuttx/quickjs.c:25312
                    opcode = OP_in;
    800331d0:	0a900493          	li	s1,169
    800331d4:	bdf5                	j	800330d0 <js_parse_expr_binary+0x13a>

00000000800331d6 <js_parse_logical_and_or>:
js_parse_logical_and_or():
quickjs-nuttx/quickjs.c:25381
{
    800331d6:	7139                	addi	sp,sp,-64
    800331d8:	f822                	sd	s0,48(sp)
    800331da:	f426                	sd	s1,40(sp)
    800331dc:	e852                	sd	s4,16(sp)
    800331de:	fc06                	sd	ra,56(sp)
    800331e0:	f04a                	sd	s2,32(sp)
    800331e2:	ec4e                	sd	s3,24(sp)
    800331e4:	e456                	sd	s5,8(sp)
    800331e6:	e05a                	sd	s6,0(sp)
quickjs-nuttx/quickjs.c:25384
    if (op == TOK_LAND) {
    800331e8:	fa200793          	li	a5,-94
quickjs-nuttx/quickjs.c:25381
{
    800331ec:	842a                	mv	s0,a0
    800331ee:	84ae                	mv	s1,a1
    800331f0:	8a32                	mv	s4,a2
quickjs-nuttx/quickjs.c:25384
    if (op == TOK_LAND) {
    800331f2:	06f59863          	bne	a1,a5,80033262 <js_parse_logical_and_or+0x8c>
quickjs-nuttx/quickjs.c:25385
        if (js_parse_expr_binary(s, 8, parse_flags))
    800331f6:	45a1                	li	a1,8
    800331f8:	d9fff0ef          	jal	ra,80032f96 <js_parse_expr_binary>
    800331fc:	e539                	bnez	a0,8003324a <js_parse_logical_and_or+0x74>
quickjs-nuttx/quickjs.c:25391
    if (s->token.val == op) {
    800331fe:	4c1c                	lw	a5,24(s0)
quickjs-nuttx/quickjs.c:25418
    return 0;
    80033200:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:25391
    if (s->token.val == op) {
    80033202:	04979563          	bne	a5,s1,8003324c <js_parse_logical_and_or+0x76>
quickjs-nuttx/quickjs.c:25392
        label1 = new_label(s);
    80033206:	8522                	mv	a0,s0
    80033208:	d65e90ef          	jal	ra,8001cf6c <new_label>
    8003320c:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:25398
            emit_goto(s, op == TOK_LAND ? OP_if_false : OP_if_true, label1);
    8003320e:	0c848a9b          	addiw	s5,s1,200
quickjs-nuttx/quickjs.c:25401
            if (op == TOK_LAND) {
    80033212:	fa200b13          	li	s6,-94
quickjs-nuttx/quickjs.c:25395
            if (next_token(s))
    80033216:	8522                	mv	a0,s0
    80033218:	b6efb0ef          	jal	ra,8002e586 <next_token>
    8003321c:	892a                	mv	s2,a0
    8003321e:	e515                	bnez	a0,8003324a <js_parse_logical_and_or+0x74>
quickjs-nuttx/quickjs.c:25397
            emit_op(s, OP_dup);
    80033220:	45c5                	li	a1,17
    80033222:	8522                	mv	a0,s0
    80033224:	ed3d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25398
            emit_goto(s, op == TOK_LAND ? OP_if_false : OP_if_true, label1);
    80033228:	864e                	mv	a2,s3
    8003322a:	85d6                	mv	a1,s5
    8003322c:	8522                	mv	a0,s0
    8003322e:	d47e90ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:25399
            emit_op(s, OP_drop);
    80033232:	45b9                	li	a1,14
    80033234:	8522                	mv	a0,s0
    80033236:	ec1d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25402
                if (js_parse_expr_binary(s, 8, parse_flags))
    8003323a:	8652                	mv	a2,s4
quickjs-nuttx/quickjs.c:25401
            if (op == TOK_LAND) {
    8003323c:	05649f63          	bne	s1,s6,8003329a <js_parse_logical_and_or+0xc4>
quickjs-nuttx/quickjs.c:25402
                if (js_parse_expr_binary(s, 8, parse_flags))
    80033240:	45a1                	li	a1,8
    80033242:	8522                	mv	a0,s0
    80033244:	d53ff0ef          	jal	ra,80032f96 <js_parse_expr_binary>
quickjs-nuttx/quickjs.c:25405
                if (js_parse_logical_and_or(s, TOK_LAND,
    80033248:	c115                	beqz	a0,8003326c <js_parse_logical_and_or+0x96>
quickjs-nuttx/quickjs.c:25386
            return -1;
    8003324a:	597d                	li	s2,-1
quickjs-nuttx/quickjs.c:25419
}
    8003324c:	70e2                	ld	ra,56(sp)
    8003324e:	7442                	ld	s0,48(sp)
    80033250:	74a2                	ld	s1,40(sp)
    80033252:	69e2                	ld	s3,24(sp)
    80033254:	6a42                	ld	s4,16(sp)
    80033256:	6aa2                	ld	s5,8(sp)
    80033258:	6b02                	ld	s6,0(sp)
    8003325a:	854a                	mv	a0,s2
    8003325c:	7902                	ld	s2,32(sp)
    8003325e:	6121                	addi	sp,sp,64
    80033260:	8082                	ret
quickjs-nuttx/quickjs.c:25388
        if (js_parse_logical_and_or(s, TOK_LAND, parse_flags))
    80033262:	fa200593          	li	a1,-94
    80033266:	f71ff0ef          	jal	ra,800331d6 <js_parse_logical_and_or>
    8003326a:	bf49                	j	800331fc <js_parse_logical_and_or+0x26>
quickjs-nuttx/quickjs.c:25409
            if (s->token.val != op) {
    8003326c:	4c1c                	lw	a5,24(s0)
    8003326e:	fa9784e3          	beq	a5,s1,80033216 <js_parse_logical_and_or+0x40>
quickjs-nuttx/quickjs.c:25410
                if (s->token.val == TOK_DOUBLE_QUESTION_MARK)
    80033272:	fa800713          	li	a4,-88
    80033276:	02e79863          	bne	a5,a4,800332a6 <js_parse_logical_and_or+0xd0>
quickjs-nuttx/quickjs.c:25411
                    return js_parse_error(s, "cannot mix ?? with && or ||");
    8003327a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:25419
}
    8003327c:	7442                	ld	s0,48(sp)
    8003327e:	70e2                	ld	ra,56(sp)
    80033280:	74a2                	ld	s1,40(sp)
    80033282:	7902                	ld	s2,32(sp)
    80033284:	69e2                	ld	s3,24(sp)
    80033286:	6a42                	ld	s4,16(sp)
    80033288:	6aa2                	ld	s5,8(sp)
    8003328a:	6b02                	ld	s6,0(sp)
quickjs-nuttx/quickjs.c:25411
                    return js_parse_error(s, "cannot mix ?? with && or ||");
    8003328c:	00039597          	auipc	a1,0x39
    80033290:	32c58593          	addi	a1,a1,812 # 8006c5b8 <qjsc_repl+0x7008>
quickjs-nuttx/quickjs.c:25419
}
    80033294:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:25411
                    return js_parse_error(s, "cannot mix ?? with && or ||");
    80033296:	9ddfa06f          	j	8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:25405
                if (js_parse_logical_and_or(s, TOK_LAND,
    8003329a:	fa200593          	li	a1,-94
    8003329e:	8522                	mv	a0,s0
    800332a0:	f37ff0ef          	jal	ra,800331d6 <js_parse_logical_and_or>
    800332a4:	b755                	j	80033248 <js_parse_logical_and_or+0x72>
quickjs-nuttx/quickjs.c:25416
        emit_label(s, label1);
    800332a6:	85ce                	mv	a1,s3
    800332a8:	8522                	mv	a0,s0
    800332aa:	febd50ef          	jal	ra,80009294 <emit_label>
    800332ae:	bf79                	j	8003324c <js_parse_logical_and_or+0x76>

00000000800332b0 <js_parse_destructuring_element>:
js_parse_destructuring_element():
quickjs-nuttx/quickjs.c:23861
{
    800332b0:	7171                	addi	sp,sp,-176
    800332b2:	f122                	sd	s0,160(sp)
    800332b4:	ed26                	sd	s1,152(sp)
    800332b6:	e94a                	sd	s2,144(sp)
    800332b8:	e54e                	sd	s3,136(sp)
    800332ba:	e152                	sd	s4,128(sp)
    800332bc:	f0e2                	sd	s8,96(sp)
    800332be:	84be                	mv	s1,a5
    800332c0:	f506                	sd	ra,168(sp)
    800332c2:	fcd6                	sd	s5,120(sp)
    800332c4:	f8da                	sd	s6,112(sp)
    800332c6:	f4de                	sd	s7,104(sp)
    800332c8:	ece6                	sd	s9,88(sp)
    800332ca:	e8ea                	sd	s10,80(sp)
    800332cc:	e4ee                	sd	s11,72(sp)
quickjs-nuttx/quickjs.c:23868
    if (has_ellipsis < 0) {
    800332ce:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:23861
{
    800332d0:	842a                	mv	s0,a0
    800332d2:	892e                	mv	s2,a1
    800332d4:	8a32                	mv	s4,a2
    800332d6:	8c36                	mv	s8,a3
    800332d8:	89ba                	mv	s3,a4
quickjs-nuttx/quickjs.c:23868
    if (has_ellipsis < 0) {
    800332da:	00f71963          	bne	a4,a5,800332ec <js_parse_destructuring_element+0x3c>
quickjs-nuttx/quickjs.c:23870
        js_parse_skip_parens_token(s, &skip_bits, FALSE);
    800332de:	4601                	li	a2,0
    800332e0:	080c                	addi	a1,sp,16
    800332e2:	e8bfb0ef          	jal	ra,8002f16c <js_parse_skip_parens_token>
quickjs-nuttx/quickjs.c:23871
        has_ellipsis = skip_bits & SKIP_HAS_ELLIPSIS;
    800332e6:	49c2                	lw	s3,16(sp)
    800332e8:	0029f993          	andi	s3,s3,2
quickjs-nuttx/quickjs.c:23874
    label_parse = new_label(s);
    800332ec:	8522                	mv	a0,s0
    800332ee:	c7fe90ef          	jal	ra,8001cf6c <new_label>
    800332f2:	8b2a                	mv	s6,a0
quickjs-nuttx/quickjs.c:23875
    label_assign = new_label(s);
    800332f4:	8522                	mv	a0,s0
    800332f6:	c77e90ef          	jal	ra,8001cf6c <new_label>
quickjs-nuttx/quickjs.c:23877
    start_addr = s->cur_func->byte_code.size;
    800332fa:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:23875
    label_assign = new_label(s);
    800332fc:	8baa                	mv	s7,a0
quickjs-nuttx/quickjs.c:23877
    start_addr = s->cur_func->byte_code.size;
    800332fe:	1387bc83          	ld	s9,312(a5)
quickjs-nuttx/quickjs.c:23878
    if (hasval) {
    80033302:	040c0763          	beqz	s8,80033350 <js_parse_destructuring_element+0xa0>
quickjs-nuttx/quickjs.c:23880
        emit_op(s, OP_dup);
    80033306:	45c5                	li	a1,17
    80033308:	8522                	mv	a0,s0
    8003330a:	dedd50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23881
        emit_op(s, OP_undefined);
    8003330e:	4599                	li	a1,6
    80033310:	8522                	mv	a0,s0
    80033312:	de5d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23882
        emit_op(s, OP_strict_eq);
    80033316:	0ac00593          	li	a1,172
    8003331a:	8522                	mv	a0,s0
    8003331c:	ddbd50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23883
        emit_goto(s, OP_if_true, label_parse);
    80033320:	06b00593          	li	a1,107
    80033324:	865a                	mv	a2,s6
    80033326:	8522                	mv	a0,s0
    80033328:	c4de90ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:23884
        emit_label(s, label_assign);
    8003332c:	85de                	mv	a1,s7
    8003332e:	8522                	mv	a0,s0
    80033330:	f65d50ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:23891
    assign_addr = s->cur_func->byte_code.size;
    80033334:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:23892
    if (s->token.val == '{') {
    80033336:	07b00713          	li	a4,123
quickjs-nuttx/quickjs.c:23891
    assign_addr = s->cur_func->byte_code.size;
    8003333a:	1387bd03          	ld	s10,312(a5)
quickjs-nuttx/quickjs.c:23892
    if (s->token.val == '{') {
    8003333e:	4c1c                	lw	a5,24(s0)
    80033340:	52e79363          	bne	a5,a4,80033866 <js_parse_destructuring_element+0x5b6>
quickjs-nuttx/quickjs.c:23893
        if (next_token(s))
    80033344:	8522                	mv	a0,s0
    80033346:	a40fb0ef          	jal	ra,8002e586 <next_token>
    8003334a:	c115                	beqz	a0,8003336e <js_parse_destructuring_element+0xbe>
quickjs-nuttx/quickjs.c:24273
    return -1;
    8003334c:	54fd                	li	s1,-1
    8003334e:	a365                	j	800338f6 <js_parse_destructuring_element+0x646>
quickjs-nuttx/quickjs.c:23886
        emit_goto(s, OP_goto, label_parse);
    80033350:	865a                	mv	a2,s6
    80033352:	06c00593          	li	a1,108
    80033356:	8522                	mv	a0,s0
    80033358:	c1de90ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:23887
        emit_label(s, label_assign);
    8003335c:	85de                	mv	a1,s7
    8003335e:	8522                	mv	a0,s0
    80033360:	f35d50ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:23889
        emit_op(s, OP_dup);
    80033364:	45c5                	li	a1,17
    80033366:	8522                	mv	a0,s0
    80033368:	d8fd50ef          	jal	ra,800090f6 <emit_op>
    8003336c:	b7e1                	j	80033334 <js_parse_destructuring_element+0x84>
quickjs-nuttx/quickjs.c:23896
        emit_op(s, OP_to_object);
    8003336e:	07100593          	li	a1,113
    80033372:	8522                	mv	a0,s0
    80033374:	d83d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23897
        if (has_ellipsis) {
    80033378:	00098a63          	beqz	s3,8003338c <js_parse_destructuring_element+0xdc>
quickjs-nuttx/quickjs.c:23899
            emit_op(s, OP_object);
    8003337c:	45ad                	li	a1,11
    8003337e:	8522                	mv	a0,s0
    80033380:	d77d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23900
            emit_op(s, OP_swap);
    80033384:	45ed                	li	a1,27
    80033386:	8522                	mv	a0,s0
    80033388:	d6fd50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24118
            put_lvalue(s, opcode, scope, var_name, label_lvalue,
    8003338c:	03590a9b          	addiw	s5,s2,53
    80033390:	ff7afa93          	andi	s5,s5,-9
    80033394:	2a81                	sext.w	s5,s5
    80033396:	001aba93          	seqz	s5,s5
    8003339a:	a15d                	j	80033840 <js_parse_destructuring_element+0x590>
quickjs-nuttx/quickjs.c:23909
                if (next_token(s))
    8003339c:	8522                	mv	a0,s0
    8003339e:	9e8fb0ef          	jal	ra,8002e586 <next_token>
    800333a2:	f54d                	bnez	a0,8003334c <js_parse_destructuring_element+0x9c>
quickjs-nuttx/quickjs.c:23911
                if (tok) {
    800333a4:	04090463          	beqz	s2,800333ec <js_parse_destructuring_element+0x13c>
quickjs-nuttx/quickjs.c:23912
                    var_name = js_parse_destructuring_var(s, tok, is_arg);
    800333a8:	85d2                	mv	a1,s4
    800333aa:	8522                	mv	a0,s0
    800333ac:	983fc0ef          	jal	ra,8002fd2e <js_parse_destructuring_var.constprop.0>
    800333b0:	2501                	sext.w	a0,a0
    800333b2:	c22a                	sw	a0,4(sp)
quickjs-nuttx/quickjs.c:23913
                    if (var_name == JS_ATOM_NULL)
    800333b4:	dd41                	beqz	a0,8003334c <js_parse_destructuring_element+0x9c>
quickjs-nuttx/quickjs.c:23915
                    opcode = OP_scope_get_var;
    800333b6:	0ba00793          	li	a5,186
    800333ba:	c43e                	sw	a5,8(sp)
quickjs-nuttx/quickjs.c:23916
                    scope = s->cur_func->scope_level;
    800333bc:	743c                	ld	a5,104(s0)
    800333be:	0e07a783          	lw	a5,224(a5)
quickjs-nuttx/quickjs.c:23918
                    depth_lvalue = 0;
    800333c2:	ca02                	sw	zero,20(sp)
quickjs-nuttx/quickjs.c:23916
                    scope = s->cur_func->scope_level;
    800333c4:	c63e                	sw	a5,12(sp)
quickjs-nuttx/quickjs.c:23917
                    label_lvalue = -1;
    800333c6:	57fd                	li	a5,-1
    800333c8:	c03e                	sw	a5,0(sp)
quickjs-nuttx/quickjs.c:23927
                if (s->token.val != '}') {
    800333ca:	4c18                	lw	a4,24(s0)
    800333cc:	07d00793          	li	a5,125
    800333d0:	04f70063          	beq	a4,a5,80033410 <js_parse_destructuring_element+0x160>
quickjs-nuttx/quickjs.c:23928
                    js_parse_error(s, "assignment rest property must be last");
    800333d4:	00039597          	auipc	a1,0x39
    800333d8:	22458593          	addi	a1,a1,548 # 8006c5f8 <qjsc_repl+0x7048>
    800333dc:	8522                	mv	a0,s0
    800333de:	895fa0ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:24272
    JS_FreeAtom(s->ctx, var_name);
    800333e2:	4592                	lw	a1,4(sp)
    800333e4:	6008                	ld	a0,0(s0)
    800333e6:	d63d70ef          	jal	ra,8000b148 <JS_FreeAtom>
    800333ea:	b78d                	j	8003334c <js_parse_destructuring_element+0x9c>
js_parse_left_hand_side_expr():
quickjs-nuttx/quickjs.c:22694
    return js_parse_postfix_expr(s, PF_POSTFIX_CALL);
    800333ec:	4589                	li	a1,2
    800333ee:	8522                	mv	a0,s0
    800333f0:	edefe0ef          	jal	ra,80031ace <js_parse_postfix_expr>
js_parse_destructuring_element():
quickjs-nuttx/quickjs.c:23920
                    if (js_parse_left_hand_side_expr(s))
    800333f4:	fd21                	bnez	a0,8003334c <js_parse_destructuring_element+0x9c>
quickjs-nuttx/quickjs.c:23923
                    if (get_lvalue(s, &opcode, &scope, &var_name,
    800333f6:	07b00893          	li	a7,123
    800333fa:	4801                	li	a6,0
    800333fc:	085c                	addi	a5,sp,20
    800333fe:	870a                	mv	a4,sp
    80033400:	0054                	addi	a3,sp,4
    80033402:	0070                	addi	a2,sp,12
    80033404:	002c                	addi	a1,sp,8
    80033406:	8522                	mv	a0,s0
    80033408:	840fc0ef          	jal	ra,8002f448 <get_lvalue>
    8003340c:	dd5d                	beqz	a0,800333ca <js_parse_destructuring_element+0x11a>
    8003340e:	bf3d                	j	8003334c <js_parse_destructuring_element+0x9c>
quickjs-nuttx/quickjs.c:23931
                emit_op(s, OP_object);  /* target */
    80033410:	45ad                	li	a1,11
    80033412:	8522                	mv	a0,s0
    80033414:	ce3d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23932
                emit_op(s, OP_copy_data_properties);
    80033418:	05300593          	li	a1,83
    8003341c:	8522                	mv	a0,s0
    8003341e:	cd9d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23933
                emit_u8(s, 0 | ((depth_lvalue + 1) << 2) | ((depth_lvalue + 2) << 5));
    80033422:	47d2                	lw	a5,20(sp)
    80033424:	8522                	mv	a0,s0
    80033426:	0017859b          	addiw	a1,a5,1
    8003342a:	2789                	addiw	a5,a5,2
    8003342c:	0025959b          	slliw	a1,a1,0x2
    80033430:	0057979b          	slliw	a5,a5,0x5
    80033434:	8ddd                	or	a1,a1,a5
    80033436:	0fc5f593          	andi	a1,a1,252
    8003343a:	8cbd50ef          	jal	ra,80008d04 <emit_u8>
quickjs-nuttx/quickjs.c:24097
            if (tok) {
    8003343e:	3c091e63          	bnez	s2,8003381a <js_parse_destructuring_element+0x56a>
quickjs-nuttx/quickjs.c:24102
            if (s->token.val == '=') {  /* handle optional default value */
    80033442:	4c18                	lw	a4,24(s0)
    80033444:	03d00793          	li	a5,61
    80033448:	06f71363          	bne	a4,a5,800334ae <js_parse_destructuring_element+0x1fe>
quickjs-nuttx/quickjs.c:24104
                emit_op(s, OP_dup);
    8003344c:	45c5                	li	a1,17
    8003344e:	8522                	mv	a0,s0
    80033450:	ca7d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24105
                emit_op(s, OP_undefined);
    80033454:	4599                	li	a1,6
    80033456:	8522                	mv	a0,s0
    80033458:	c9fd50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24106
                emit_op(s, OP_strict_eq);
    8003345c:	0ac00593          	li	a1,172
    80033460:	8522                	mv	a0,s0
    80033462:	c95d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24107
                label_hasval = emit_goto(s, OP_if_false, -1);
    80033466:	567d                	li	a2,-1
    80033468:	06a00593          	li	a1,106
    8003346c:	8522                	mv	a0,s0
    8003346e:	b07e90ef          	jal	ra,8001cf74 <emit_goto>
    80033472:	8daa                	mv	s11,a0
quickjs-nuttx/quickjs.c:24108
                if (next_token(s))
    80033474:	8522                	mv	a0,s0
    80033476:	910fb0ef          	jal	ra,8002e586 <next_token>
    8003347a:	f525                	bnez	a0,800333e2 <js_parse_destructuring_element+0x132>
quickjs-nuttx/quickjs.c:24110
                emit_op(s, OP_drop);
    8003347c:	8522                	mv	a0,s0
    8003347e:	45b9                	li	a1,14
    80033480:	c77d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24111
                if (js_parse_assign_expr(s))
    80033484:	8522                	mv	a0,s0
    80033486:	351010ef          	jal	ra,80034fd6 <js_parse_assign_expr>
    8003348a:	fd21                	bnez	a0,800333e2 <js_parse_destructuring_element+0x132>
quickjs-nuttx/quickjs.c:24113
                if (opcode == OP_scope_get_var || opcode == OP_get_ref_value)
    8003348c:	47a2                	lw	a5,8(sp)
    8003348e:	0ba00713          	li	a4,186
    80033492:	00e78663          	beq	a5,a4,8003349e <js_parse_destructuring_element+0x1ee>
quickjs-nuttx/quickjs.c:24113 (discriminator 1)
    80033496:	03c00713          	li	a4,60
    8003349a:	00e79663          	bne	a5,a4,800334a6 <js_parse_destructuring_element+0x1f6>
quickjs-nuttx/quickjs.c:24114
                    set_object_name(s, var_name);
    8003349e:	4592                	lw	a1,4(sp)
    800334a0:	8522                	mv	a0,s0
    800334a2:	ed1d70ef          	jal	ra,8000b372 <set_object_name>
quickjs-nuttx/quickjs.c:24115
                emit_label(s, label_hasval);
    800334a6:	85ee                	mv	a1,s11
    800334a8:	8522                	mv	a0,s0
    800334aa:	debd50ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:24118
            put_lvalue(s, opcode, scope, var_name, label_lvalue,
    800334ae:	4702                	lw	a4,0(sp)
    800334b0:	4692                	lw	a3,4(sp)
    800334b2:	4632                	lw	a2,12(sp)
    800334b4:	45a2                	lw	a1,8(sp)
    800334b6:	8856                	mv	a6,s5
    800334b8:	4785                	li	a5,1
    800334ba:	8522                	mv	a0,s0
    800334bc:	cdfd70ef          	jal	ra,8000b19a <put_lvalue>
quickjs-nuttx/quickjs.c:24121
            if (s->token.val == '}')
    800334c0:	a86d                	j	8003357a <js_parse_destructuring_element+0x2ca>
quickjs-nuttx/quickjs.c:23936
            prop_type = js_parse_property_name(s, &prop_name, FALSE, TRUE, FALSE);
    800334c2:	4701                	li	a4,0
    800334c4:	4685                	li	a3,1
    800334c6:	4601                	li	a2,0
    800334c8:	082c                	addi	a1,sp,24
    800334ca:	8522                	mv	a0,s0
    800334cc:	057010ef          	jal	ra,80034d22 <js_parse_property_name>
quickjs-nuttx/quickjs.c:23937
            if (prop_type < 0)
    800334d0:	e6054ee3          	bltz	a0,8003334c <js_parse_destructuring_element+0x9c>
quickjs-nuttx/quickjs.c:23940
            opcode = OP_scope_get_var;
    800334d4:	0ba00793          	li	a5,186
    800334d8:	c43e                	sw	a5,8(sp)
quickjs-nuttx/quickjs.c:23941
            scope = s->cur_func->scope_level;
    800334da:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:23939
            var_name = JS_ATOM_NULL;
    800334dc:	c202                	sw	zero,4(sp)
quickjs-nuttx/quickjs.c:23941
            scope = s->cur_func->scope_level;
    800334de:	0e07a783          	lw	a5,224(a5)
quickjs-nuttx/quickjs.c:23943
            depth_lvalue = 0;
    800334e2:	ca02                	sw	zero,20(sp)
quickjs-nuttx/quickjs.c:23941
            scope = s->cur_func->scope_level;
    800334e4:	c63e                	sw	a5,12(sp)
quickjs-nuttx/quickjs.c:23942
            label_lvalue = -1;
    800334e6:	57fd                	li	a5,-1
    800334e8:	c03e                	sw	a5,0(sp)
quickjs-nuttx/quickjs.c:23944
            if (prop_type == PROP_TYPE_IDENT) {
    800334ea:	26051b63          	bnez	a0,80033760 <js_parse_destructuring_element+0x4b0>
quickjs-nuttx/quickjs.c:23945
                if (next_token(s))
    800334ee:	8522                	mv	a0,s0
    800334f0:	896fb0ef          	jal	ra,8002e586 <next_token>
    800334f4:	18051c63          	bnez	a0,8003368c <js_parse_destructuring_element+0x3dc>
quickjs-nuttx/quickjs.c:23947
                if ((s->token.val == '[' || s->token.val == '{')
    800334f8:	4c1c                	lw	a5,24(s0)
    800334fa:	05b00713          	li	a4,91
    800334fe:	fdf7f793          	andi	a5,a5,-33
    80033502:	12e79e63          	bne	a5,a4,8003363e <js_parse_destructuring_element+0x38e>
quickjs-nuttx/quickjs.c:23948
                    &&  ((tok1 = js_parse_skip_parens_token(s, &skip_bits, FALSE)) == ',' ||
    80033506:	4601                	li	a2,0
    80033508:	080c                	addi	a1,sp,16
    8003350a:	8522                	mv	a0,s0
    8003350c:	c61fb0ef          	jal	ra,8002f16c <js_parse_skip_parens_token>
    80033510:	02c00713          	li	a4,44
    80033514:	00e50963          	beq	a0,a4,80033526 <js_parse_destructuring_element+0x276>
quickjs-nuttx/quickjs.c:23948 (discriminator 1)
    80033518:	fbf57793          	andi	a5,a0,-65
    8003351c:	2781                	sext.w	a5,a5
    8003351e:	03d00713          	li	a4,61
    80033522:	10e79e63          	bne	a5,a4,8003363e <js_parse_destructuring_element+0x38e>
quickjs-nuttx/quickjs.c:23950
                    if (prop_name == JS_ATOM_NULL) {
    80033526:	47e2                	lw	a5,24(sp)
    80033528:	0c079a63          	bnez	a5,800335fc <js_parse_destructuring_element+0x34c>
quickjs-nuttx/quickjs.c:23952
                        if (has_ellipsis) {
    8003352c:	02098863          	beqz	s3,8003355c <js_parse_destructuring_element+0x2ac>
quickjs-nuttx/quickjs.c:23954
                            emit_op(s, OP_to_propkey); /* avoid calling ToString twice */
    80033530:	07200593          	li	a1,114
    80033534:	8522                	mv	a0,s0
    80033536:	bc1d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23955
                            emit_op(s, OP_perm3); /* TOS: src excludeList prop */
    8003353a:	45e1                	li	a1,24
    8003353c:	8522                	mv	a0,s0
    8003353e:	bb9d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23956
                            emit_op(s, OP_null); /* TOS: src excludeList prop null */
    80033542:	459d                	li	a1,7
    80033544:	8522                	mv	a0,s0
    80033546:	bb1d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23957
                            emit_op(s, OP_define_array_el); /* TOS: src excludeList prop */
    8003354a:	05100593          	li	a1,81
    8003354e:	8522                	mv	a0,s0
    80033550:	ba7d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23958
                            emit_op(s, OP_perm3); /* TOS: excludeList src prop */
    80033554:	45e1                	li	a1,24
    80033556:	8522                	mv	a0,s0
    80033558:	b9fd50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23961
                        emit_op(s, OP_get_array_el2);
    8003355c:	04800593          	li	a1,72
    80033560:	8522                	mv	a0,s0
    80033562:	b95d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23976
                    if (js_parse_destructuring_element(s, tok, is_arg, TRUE, -1, TRUE) < 0)
    80033566:	4785                	li	a5,1
    80033568:	577d                	li	a4,-1
    8003356a:	4685                	li	a3,1
    8003356c:	8652                	mv	a2,s4
    8003356e:	85ca                	mv	a1,s2
    80033570:	8522                	mv	a0,s0
    80033572:	d3fff0ef          	jal	ra,800332b0 <js_parse_destructuring_element>
    80033576:	dc054be3          	bltz	a0,8003334c <js_parse_destructuring_element+0x9c>
quickjs-nuttx/quickjs.c:23978
                    if (s->token.val == '}')
    8003357a:	4c18                	lw	a4,24(s0)
    8003357c:	07d00793          	li	a5,125
    80033580:	2af71963          	bne	a4,a5,80033832 <js_parse_destructuring_element+0x582>
quickjs-nuttx/quickjs.c:24128
        emit_op(s, OP_drop);
    80033584:	45b9                	li	a1,14
    80033586:	8522                	mv	a0,s0
    80033588:	b6fd50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24129
        if (has_ellipsis) {
    8003358c:	00098663          	beqz	s3,80033598 <js_parse_destructuring_element+0x2e8>
quickjs-nuttx/quickjs.c:24130
            emit_op(s, OP_drop); /* pop excludeList */
    80033590:	45b9                	li	a1,14
    80033592:	8522                	mv	a0,s0
    80033594:	b63d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24236
        if (next_token(s))
    80033598:	8522                	mv	a0,s0
    8003359a:	fedfa0ef          	jal	ra,8002e586 <next_token>
    8003359e:	da0517e3          	bnez	a0,8003334c <js_parse_destructuring_element+0x9c>
quickjs-nuttx/quickjs.c:24241
    if (s->token.val == '=' && allow_initializer) {
    800335a2:	4c18                	lw	a4,24(s0)
    800335a4:	03d00793          	li	a5,61
    800335a8:	56f71163          	bne	a4,a5,80033b0a <js_parse_destructuring_element+0x85a>
quickjs-nuttx/quickjs.c:24241 (discriminator 1)
    800335ac:	54048f63          	beqz	s1,80033b0a <js_parse_destructuring_element+0x85a>
quickjs-nuttx/quickjs.c:24242
        label_done = emit_goto(s, OP_goto, -1);
    800335b0:	567d                	li	a2,-1
    800335b2:	06c00593          	li	a1,108
    800335b6:	8522                	mv	a0,s0
    800335b8:	9bde90ef          	jal	ra,8001cf74 <emit_goto>
    800335bc:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:24243
        if (next_token(s))
    800335be:	8522                	mv	a0,s0
    800335c0:	fc7fa0ef          	jal	ra,8002e586 <next_token>
    800335c4:	d80514e3          	bnez	a0,8003334c <js_parse_destructuring_element+0x9c>
quickjs-nuttx/quickjs.c:24245
        emit_label(s, label_parse);
    800335c8:	85da                	mv	a1,s6
    800335ca:	8522                	mv	a0,s0
    800335cc:	cc9d50ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:24246
        if (hasval)
    800335d0:	000c0663          	beqz	s8,800335dc <js_parse_destructuring_element+0x32c>
quickjs-nuttx/quickjs.c:24247
            emit_op(s, OP_drop);
    800335d4:	45b9                	li	a1,14
    800335d6:	8522                	mv	a0,s0
    800335d8:	b1fd50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24248
        if (js_parse_assign_expr(s))
    800335dc:	8522                	mv	a0,s0
    800335de:	1f9010ef          	jal	ra,80034fd6 <js_parse_assign_expr>
    800335e2:	d60515e3          	bnez	a0,8003334c <js_parse_destructuring_element+0x9c>
quickjs-nuttx/quickjs.c:24250
        emit_goto(s, OP_goto, label_assign);
    800335e6:	865e                	mv	a2,s7
    800335e8:	06c00593          	li	a1,108
    800335ec:	8522                	mv	a0,s0
    800335ee:	987e90ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:24251
        emit_label(s, label_done);
    800335f2:	85ca                	mv	a1,s2
    800335f4:	8522                	mv	a0,s0
    800335f6:	c9fd50ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:24252
        has_initializer = TRUE;
    800335fa:	acf5                	j	800338f6 <js_parse_destructuring_element+0x646>
quickjs-nuttx/quickjs.c:23964
                        if (has_ellipsis) {
    800335fc:	02098763          	beqz	s3,8003362a <js_parse_destructuring_element+0x37a>
quickjs-nuttx/quickjs.c:23966
                            emit_op(s, OP_swap); /* TOS: src excludeList */
    80033600:	45ed                	li	a1,27
    80033602:	8522                	mv	a0,s0
    80033604:	af3d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23967
                            emit_op(s, OP_null); /* TOS: src excludeList null */
    80033608:	459d                	li	a1,7
    8003360a:	8522                	mv	a0,s0
    8003360c:	aebd50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23968
                            emit_op(s, OP_define_field); /* TOS: src excludeList */
    80033610:	04c00593          	li	a1,76
    80033614:	8522                	mv	a0,s0
    80033616:	ae1d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23969
                            emit_atom(s, prop_name);
    8003361a:	45e2                	lw	a1,24(sp)
    8003361c:	8522                	mv	a0,s0
    8003361e:	b0dd70ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:23970
                            emit_op(s, OP_swap); /* TOS: excludeList src */
    80033622:	45ed                	li	a1,27
    80033624:	8522                	mv	a0,s0
    80033626:	ad1d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23973
                        emit_op(s, OP_get_field2);
    8003362a:	8522                	mv	a0,s0
    8003362c:	04200593          	li	a1,66
    80033630:	ac7d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23974
                        emit_u32(s, prop_name);
    80033634:	45e2                	lw	a1,24(sp)
    80033636:	8522                	mv	a0,s0
    80033638:	c55d50ef          	jal	ra,8000928c <emit_u32>
    8003363c:	b72d                	j	80033566 <js_parse_destructuring_element+0x2b6>
quickjs-nuttx/quickjs.c:23985
                if (prop_name == JS_ATOM_NULL) {
    8003363e:	47e2                	lw	a5,24(sp)
    80033640:	ebb9                	bnez	a5,80033696 <js_parse_destructuring_element+0x3e6>
quickjs-nuttx/quickjs.c:23986
                    emit_op(s, OP_to_propkey2);
    80033642:	07300593          	li	a1,115
    80033646:	8522                	mv	a0,s0
    80033648:	aafd50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23987
                    if (has_ellipsis) {
    8003364c:	02098363          	beqz	s3,80033672 <js_parse_destructuring_element+0x3c2>
quickjs-nuttx/quickjs.c:23989
                        emit_op(s, OP_perm3);
    80033650:	45e1                	li	a1,24
    80033652:	8522                	mv	a0,s0
    80033654:	aa3d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23990
                        emit_op(s, OP_null);
    80033658:	459d                	li	a1,7
    8003365a:	8522                	mv	a0,s0
    8003365c:	a9bd50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23991
                        emit_op(s, OP_define_array_el);
    80033660:	05100593          	li	a1,81
    80033664:	8522                	mv	a0,s0
    80033666:	a91d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23992
                        emit_op(s, OP_perm3);
    8003366a:	45e1                	li	a1,24
    8003366c:	8522                	mv	a0,s0
    8003366e:	a89d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23995
                    emit_op(s, OP_dup1);
    80033672:	45c9                	li	a1,18
quickjs-nuttx/quickjs.c:24006
                    emit_op(s, OP_dup);
    80033674:	8522                	mv	a0,s0
    80033676:	a81d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24008
                if (tok) {
    8003367a:	04090763          	beqz	s2,800336c8 <js_parse_destructuring_element+0x418>
quickjs-nuttx/quickjs.c:24009
                    var_name = js_parse_destructuring_var(s, tok, is_arg);
    8003367e:	85d2                	mv	a1,s4
    80033680:	8522                	mv	a0,s0
    80033682:	eacfc0ef          	jal	ra,8002fd2e <js_parse_destructuring_var.constprop.0>
    80033686:	2501                	sext.w	a0,a0
    80033688:	c22a                	sw	a0,4(sp)
quickjs-nuttx/quickjs.c:24010
                    if (var_name == JS_ATOM_NULL)
    8003368a:	ed2d                	bnez	a0,80033704 <js_parse_destructuring_element+0x454>
quickjs-nuttx/quickjs.c:24270
    JS_FreeAtom(s->ctx, prop_name);
    8003368c:	45e2                	lw	a1,24(sp)
    8003368e:	6008                	ld	a0,0(s0)
    80033690:	ab9d70ef          	jal	ra,8000b148 <JS_FreeAtom>
    80033694:	b3b9                	j	800333e2 <js_parse_destructuring_element+0x132>
quickjs-nuttx/quickjs.c:23997
                    if (has_ellipsis) {
    80033696:	02098763          	beqz	s3,800336c4 <js_parse_destructuring_element+0x414>
quickjs-nuttx/quickjs.c:23999
                        emit_op(s, OP_swap);
    8003369a:	45ed                	li	a1,27
    8003369c:	8522                	mv	a0,s0
    8003369e:	a59d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24000
                        emit_op(s, OP_null);
    800336a2:	459d                	li	a1,7
    800336a4:	8522                	mv	a0,s0
    800336a6:	a51d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24001
                        emit_op(s, OP_define_field);
    800336aa:	04c00593          	li	a1,76
    800336ae:	8522                	mv	a0,s0
    800336b0:	a47d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24002
                        emit_atom(s, prop_name);
    800336b4:	45e2                	lw	a1,24(sp)
    800336b6:	8522                	mv	a0,s0
    800336b8:	a73d70ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:24003
                        emit_op(s, OP_swap);
    800336bc:	45ed                	li	a1,27
    800336be:	8522                	mv	a0,s0
    800336c0:	a37d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24006
                    emit_op(s, OP_dup);
    800336c4:	45c5                	li	a1,17
    800336c6:	b77d                	j	80033674 <js_parse_destructuring_element+0x3c4>
js_parse_left_hand_side_expr():
quickjs-nuttx/quickjs.c:22694
    return js_parse_postfix_expr(s, PF_POSTFIX_CALL);
    800336c8:	4589                	li	a1,2
    800336ca:	8522                	mv	a0,s0
    800336cc:	c02fe0ef          	jal	ra,80031ace <js_parse_postfix_expr>
js_parse_destructuring_element():
quickjs-nuttx/quickjs.c:24013
                    if (js_parse_left_hand_side_expr(s))
    800336d0:	fd55                	bnez	a0,8003368c <js_parse_destructuring_element+0x3dc>
quickjs-nuttx/quickjs.c:24016
                    if (get_lvalue(s, &opcode, &scope, &var_name,
    800336d2:	07b00893          	li	a7,123
    800336d6:	4801                	li	a6,0
    800336d8:	085c                	addi	a5,sp,20
    800336da:	870a                	mv	a4,sp
    800336dc:	0054                	addi	a3,sp,4
    800336de:	0070                	addi	a2,sp,12
    800336e0:	002c                	addi	a1,sp,8
    800336e2:	8522                	mv	a0,s0
    800336e4:	d65fb0ef          	jal	ra,8002f448 <get_lvalue>
    800336e8:	f155                	bnez	a0,8003368c <js_parse_destructuring_element+0x3dc>
quickjs-nuttx/quickjs.c:24020
                    if (prop_name == JS_ATOM_NULL) {
    800336ea:	4762                	lw	a4,24(sp)
quickjs-nuttx/quickjs.c:24021
                        switch(depth_lvalue) {
    800336ec:	47d2                	lw	a5,20(sp)
quickjs-nuttx/quickjs.c:24020
                    if (prop_name == JS_ATOM_NULL) {
    800336ee:	e321                	bnez	a4,8003372e <js_parse_destructuring_element+0x47e>
quickjs-nuttx/quickjs.c:24021
                        switch(depth_lvalue) {
    800336f0:	4709                	li	a4,2
    800336f2:	02e78163          	beq	a5,a4,80033714 <js_parse_destructuring_element+0x464>
    800336f6:	470d                	li	a4,3
    800336f8:	02e78363          	beq	a5,a4,8003371e <js_parse_destructuring_element+0x46e>
    800336fc:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:24024
                            emit_op(s, OP_rot3r);
    800336fe:	45f9                	li	a1,30
quickjs-nuttx/quickjs.c:24021
                        switch(depth_lvalue) {
    80033700:	00e78b63          	beq	a5,a4,80033716 <js_parse_destructuring_element+0x466>
quickjs-nuttx/quickjs.c:24053
                if (prop_name == JS_ATOM_NULL) {
    80033704:	47e2                	lw	a5,24(sp)
    80033706:	e3b9                	bnez	a5,8003374c <js_parse_destructuring_element+0x49c>
quickjs-nuttx/quickjs.c:24057
                    emit_op(s, OP_get_array_el);
    80033708:	04700593          	li	a1,71
    8003370c:	8522                	mv	a0,s0
    8003370e:	9e9d50ef          	jal	ra,800090f6 <emit_op>
    80033712:	b335                	j	8003343e <js_parse_destructuring_element+0x18e>
quickjs-nuttx/quickjs.c:24028
                            emit_op(s, OP_swap2);   /* t p2 s p1 */
    80033714:	45f1                	li	a1,28
quickjs-nuttx/quickjs.c:24048
                            emit_op(s, OP_rot4l);
    80033716:	8522                	mv	a0,s0
    80033718:	9dfd50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24049
                            break;
    8003371c:	b7e5                	j	80033704 <js_parse_destructuring_element+0x454>
quickjs-nuttx/quickjs.c:24032
                            emit_op(s, OP_rot5l);
    8003371e:	02000593          	li	a1,32
    80033722:	8522                	mv	a0,s0
    80033724:	9d3d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24033
                            emit_op(s, OP_rot5l);
    80033728:	02000593          	li	a1,32
    8003372c:	b7ed                	j	80033716 <js_parse_destructuring_element+0x466>
quickjs-nuttx/quickjs.c:24037
                        switch(depth_lvalue) {
    8003372e:	4709                	li	a4,2
    80033730:	00e78a63          	beq	a5,a4,80033744 <js_parse_destructuring_element+0x494>
    80033734:	470d                	li	a4,3
    80033736:	00e78963          	beq	a5,a4,80033748 <js_parse_destructuring_element+0x498>
    8003373a:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:24040
                            emit_op(s, OP_swap);
    8003373c:	45ed                	li	a1,27
quickjs-nuttx/quickjs.c:24037
                        switch(depth_lvalue) {
    8003373e:	fce793e3          	bne	a5,a4,80033704 <js_parse_destructuring_element+0x454>
    80033742:	bfd1                	j	80033716 <js_parse_destructuring_element+0x466>
quickjs-nuttx/quickjs.c:24044
                            emit_op(s, OP_rot3l);
    80033744:	45f5                	li	a1,29
    80033746:	bfc1                	j	80033716 <js_parse_destructuring_element+0x466>
quickjs-nuttx/quickjs.c:24048
                            emit_op(s, OP_rot4l);
    80033748:	45fd                	li	a1,31
    8003374a:	b7f1                	j	80033716 <js_parse_destructuring_element+0x466>
quickjs-nuttx/quickjs.c:24062
                    emit_op(s, OP_get_field);
    8003374c:	8522                	mv	a0,s0
    8003374e:	04100593          	li	a1,65
    80033752:	9a5d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24063
                    emit_u32(s, prop_name);
    80033756:	45e2                	lw	a1,24(sp)
    80033758:	8522                	mv	a0,s0
    8003375a:	b33d50ef          	jal	ra,8000928c <emit_u32>
    8003375e:	b1c5                	j	8003343e <js_parse_destructuring_element+0x18e>
quickjs-nuttx/quickjs.c:24067
                if (is_arg && js_parse_check_duplicate_parameter(s, prop_name))
    80033760:	060a1863          	bnez	s4,800337d0 <js_parse_destructuring_element+0x520>
quickjs-nuttx/quickjs.c:24069
                if ((s->cur_func->js_mode & JS_MODE_STRICT) &&
    80033764:	743c                	ld	a5,104(s0)
    80033766:	0867c783          	lbu	a5,134(a5)
    8003376a:	8b85                	andi	a5,a5,1
    8003376c:	eba5                	bnez	a5,800337dc <js_parse_destructuring_element+0x52c>
quickjs-nuttx/quickjs.c:24074
                if (has_ellipsis) {
    8003376e:	02098763          	beqz	s3,8003379c <js_parse_destructuring_element+0x4ec>
quickjs-nuttx/quickjs.c:24076
                    emit_op(s, OP_swap);
    80033772:	45ed                	li	a1,27
    80033774:	8522                	mv	a0,s0
    80033776:	981d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24077
                    emit_op(s, OP_null);
    8003377a:	459d                	li	a1,7
    8003377c:	8522                	mv	a0,s0
    8003377e:	979d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24078
                    emit_op(s, OP_define_field);
    80033782:	04c00593          	li	a1,76
    80033786:	8522                	mv	a0,s0
    80033788:	96fd50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24079
                    emit_atom(s, prop_name);
    8003378c:	45e2                	lw	a1,24(sp)
    8003378e:	8522                	mv	a0,s0
    80033790:	99bd70ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:24080
                    emit_op(s, OP_swap);
    80033794:	45ed                	li	a1,27
    80033796:	8522                	mv	a0,s0
    80033798:	95fd50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24082
                if (!tok || tok == TOK_VAR) {
    8003379c:	00090663          	beqz	s2,800337a8 <js_parse_destructuring_element+0x4f8>
quickjs-nuttx/quickjs.c:24082 (discriminator 1)
    800337a0:	fb300793          	li	a5,-77
    800337a4:	04f91d63          	bne	s2,a5,800337fe <js_parse_destructuring_element+0x54e>
quickjs-nuttx/quickjs.c:24085
                    emit_op(s, OP_dup);
    800337a8:	8522                	mv	a0,s0
    800337aa:	45c5                	li	a1,17
    800337ac:	94bd50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24086
                    emit_op(s, OP_scope_get_var);
    800337b0:	8522                	mv	a0,s0
    800337b2:	0ba00593          	li	a1,186
    800337b6:	941d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24087
                    emit_atom(s, prop_name);
    800337ba:	45e2                	lw	a1,24(sp)
    800337bc:	8522                	mv	a0,s0
    800337be:	96dd70ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:24088
                    emit_u16(s, s->cur_func->scope_level);
    800337c2:	743c                	ld	a5,104(s0)
    800337c4:	8522                	mv	a0,s0
    800337c6:	0e07d583          	lhu	a1,224(a5)
    800337ca:	ffad50ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:24089
                    goto lvalue;
    800337ce:	b711                	j	800336d2 <js_parse_destructuring_element+0x422>
quickjs-nuttx/quickjs.c:24067 (discriminator 1)
                if (is_arg && js_parse_check_duplicate_parameter(s, prop_name))
    800337d0:	45e2                	lw	a1,24(sp)
    800337d2:	8522                	mv	a0,s0
    800337d4:	c25fb0ef          	jal	ra,8002f3f8 <js_parse_check_duplicate_parameter>
    800337d8:	d551                	beqz	a0,80033764 <js_parse_destructuring_element+0x4b4>
    800337da:	bd4d                	j	8003368c <js_parse_destructuring_element+0x3dc>
quickjs-nuttx/quickjs.c:24070 (discriminator 1)
                    (prop_name == JS_ATOM_eval || prop_name == JS_ATOM_arguments)) {
    800337dc:	47e2                	lw	a5,24(sp)
quickjs-nuttx/quickjs.c:24069 (discriminator 1)
                if ((s->cur_func->js_mode & JS_MODE_STRICT) &&
    800337de:	03b00713          	li	a4,59
    800337e2:	00e78663          	beq	a5,a4,800337ee <js_parse_destructuring_element+0x53e>
quickjs-nuttx/quickjs.c:24070
                    (prop_name == JS_ATOM_eval || prop_name == JS_ATOM_arguments)) {
    800337e6:	04e00713          	li	a4,78
    800337ea:	f8e792e3          	bne	a5,a4,8003376e <js_parse_destructuring_element+0x4be>
quickjs-nuttx/quickjs.c:24071
                    js_parse_error(s, "invalid destructuring target");
    800337ee:	00038597          	auipc	a1,0x38
    800337f2:	60258593          	addi	a1,a1,1538 # 8006bdf0 <qjsc_repl+0x6840>
    800337f6:	8522                	mv	a0,s0
    800337f8:	c7afa0ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:24072
                    goto prop_error;
    800337fc:	bd41                	j	8003368c <js_parse_destructuring_element+0x3dc>
quickjs-nuttx/quickjs.c:24091
                var_name = JS_DupAtom(s->ctx, prop_name);
    800337fe:	45e2                	lw	a1,24(sp)
    80033800:	6008                	ld	a0,0(s0)
    80033802:	905d70ef          	jal	ra,8000b106 <JS_DupAtom>
    80033806:	c22a                	sw	a0,4(sp)
quickjs-nuttx/quickjs.c:24093
                emit_op(s, OP_get_field2);
    80033808:	04200593          	li	a1,66
    8003380c:	8522                	mv	a0,s0
    8003380e:	8e9d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24094
                emit_u32(s, prop_name);
    80033812:	45e2                	lw	a1,24(sp)
    80033814:	8522                	mv	a0,s0
    80033816:	a77d50ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:24098
                if (js_define_var(s, var_name, tok))
    8003381a:	4592                	lw	a1,4(sp)
    8003381c:	864a                	mv	a2,s2
    8003381e:	8522                	mv	a0,s0
    80033820:	b0cfc0ef          	jal	ra,8002fb2c <js_define_var>
    80033824:	ba051fe3          	bnez	a0,800333e2 <js_parse_destructuring_element+0x132>
quickjs-nuttx/quickjs.c:24100
                scope = s->cur_func->scope_level;
    80033828:	743c                	ld	a5,104(s0)
    8003382a:	0e07a783          	lw	a5,224(a5)
    8003382e:	c63e                	sw	a5,12(sp)
    80033830:	b909                	j	80033442 <js_parse_destructuring_element+0x192>
quickjs-nuttx/quickjs.c:24124
            if (js_parse_expect(s, ','))
    80033832:	02c00593          	li	a1,44
    80033836:	8522                	mv	a0,s0
    80033838:	f7afb0ef          	jal	ra,8002efb2 <js_parse_expect>
    8003383c:	b00518e3          	bnez	a0,8003334c <js_parse_destructuring_element+0x9c>
quickjs-nuttx/quickjs.c:23902
        while (s->token.val != '}') {
    80033840:	4c1c                	lw	a5,24(s0)
    80033842:	07d00713          	li	a4,125
    80033846:	d2e78fe3          	beq	a5,a4,80033584 <js_parse_destructuring_element+0x2d4>
quickjs-nuttx/quickjs.c:23904
            if (s->token.val == TOK_ELLIPSIS) {
    8003384a:	fa700713          	li	a4,-89
    8003384e:	c6e79ae3          	bne	a5,a4,800334c2 <js_parse_destructuring_element+0x212>
quickjs-nuttx/quickjs.c:23905
                if (!has_ellipsis) {
    80033852:	b40995e3          	bnez	s3,8003339c <js_parse_destructuring_element+0xec>
quickjs-nuttx/quickjs.c:23906
                    JS_ThrowInternalError(s->ctx, "unexpected ellipsis token");
    80033856:	6008                	ld	a0,0(s0)
    80033858:	00039597          	auipc	a1,0x39
    8003385c:	d8058593          	addi	a1,a1,-640 # 8006c5d8 <qjsc_repl+0x7028>
    80033860:	898e60ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:23907
                    return -1;
    80033864:	b4e5                	j	8003334c <js_parse_destructuring_element+0x9c>
quickjs-nuttx/quickjs.c:24134
    } else if (s->token.val == '[') {
    80033866:	05b00713          	li	a4,91
    8003386a:	28e79b63          	bne	a5,a4,80033b00 <js_parse_destructuring_element+0x850>
quickjs-nuttx/quickjs.c:24139
        if (next_token(s))
    8003386e:	8522                	mv	a0,s0
    80033870:	d17fa0ef          	jal	ra,8002e586 <next_token>
    80033874:	ac051ce3          	bnez	a0,8003334c <js_parse_destructuring_element+0x9c>
quickjs-nuttx/quickjs.c:24143
        push_break_entry(s->cur_func, &block_env,
    80033878:	7438                	ld	a4,104(s0)
push_break_entry():
quickjs-nuttx/quickjs.c:25805
    be->label_name = label_name;
    8003387a:	56fd                	li	a3,-1
js_parse_destructuring_element():
quickjs-nuttx/quickjs.c:24220
                put_lvalue(s, opcode, scope, var_name,
    8003387c:	0359099b          	addiw	s3,s2,53
push_break_entry():
quickjs-nuttx/quickjs.c:25803
    be->prev = fd->top_break;
    80033880:	18073783          	ld	a5,384(a4)
js_parse_destructuring_element():
quickjs-nuttx/quickjs.c:24220
                put_lvalue(s, opcode, scope, var_name,
    80033884:	ff79f993          	andi	s3,s3,-9
quickjs-nuttx/quickjs.c:24146
        emit_op(s, OP_for_of_start);
    80033888:	07f00593          	li	a1,127
push_break_entry():
quickjs-nuttx/quickjs.c:25803
    be->prev = fd->top_break;
    8003388c:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:25804
    fd->top_break = be;
    8003388e:	083c                	addi	a5,sp,24
    80033890:	18f73023          	sd	a5,384(a4)
quickjs-nuttx/quickjs.c:25805
    be->label_name = label_name;
    80033894:	02069793          	slli	a5,a3,0x20
    80033898:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:25807
    be->label_cont = label_cont;
    8003389a:	478d                	li	a5,3
    8003389c:	1782                	slli	a5,a5,0x20
    8003389e:	17fd                	addi	a5,a5,-1
    800338a0:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:25809
    be->label_finally = -1;
    800338a2:	d836                	sw	a3,48(sp)
quickjs-nuttx/quickjs.c:25810
    be->scope_level = fd->scope_level;
    800338a4:	0e072783          	lw	a5,224(a4)
js_parse_destructuring_element():
quickjs-nuttx/quickjs.c:24146
        emit_op(s, OP_for_of_start);
    800338a8:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:24220
                put_lvalue(s, opcode, scope, var_name,
    800338aa:	2981                	sext.w	s3,s3
push_break_entry():
quickjs-nuttx/quickjs.c:25810
    be->scope_level = fd->scope_level;
    800338ac:	da3e                	sw	a5,52(sp)
js_parse_destructuring_element():
quickjs-nuttx/quickjs.c:24145
        block_env.has_iterator = TRUE;
    800338ae:	4785                	li	a5,1
    800338b0:	dc3e                	sw	a5,56(sp)
quickjs-nuttx/quickjs.c:24220
                put_lvalue(s, opcode, scope, var_name,
    800338b2:	0019b993          	seqz	s3,s3
quickjs-nuttx/quickjs.c:24146
        emit_op(s, OP_for_of_start);
    800338b6:	841d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24148
        while (s->token.val != ']') {
    800338ba:	4c1c                	lw	a5,24(s0)
    800338bc:	05d00d93          	li	s11,93
    800338c0:	09b78763          	beq	a5,s11,8003394e <js_parse_destructuring_element+0x69e>
quickjs-nuttx/quickjs.c:24150
            if (s->token.val == TOK_ELLIPSIS) {
    800338c4:	fa700713          	li	a4,-89
    800338c8:	4a81                	li	s5,0
    800338ca:	04e79763          	bne	a5,a4,80033918 <js_parse_destructuring_element+0x668>
quickjs-nuttx/quickjs.c:24151
                if (next_token(s))
    800338ce:	8522                	mv	a0,s0
    800338d0:	cb7fa0ef          	jal	ra,8002e586 <next_token>
    800338d4:	a6051ce3          	bnez	a0,8003334c <js_parse_destructuring_element+0x9c>
quickjs-nuttx/quickjs.c:24153
                if (s->token.val == ',' || s->token.val == ']')
    800338d8:	4c1c                	lw	a5,24(s0)
    800338da:	02c00713          	li	a4,44
    800338de:	00e78463          	beq	a5,a4,800338e6 <js_parse_destructuring_element+0x636>
quickjs-nuttx/quickjs.c:24153 (discriminator 1)
    800338e2:	03b79a63          	bne	a5,s11,80033916 <js_parse_destructuring_element+0x666>
quickjs-nuttx/quickjs.c:24154
                    return js_parse_error(s, "missing binding pattern...");
    800338e6:	00039597          	auipc	a1,0x39
    800338ea:	d3a58593          	addi	a1,a1,-710 # 8006c620 <qjsc_repl+0x7070>
quickjs-nuttx/quickjs.c:24239
        return js_parse_error(s, "invalid assignment syntax");
    800338ee:	8522                	mv	a0,s0
    800338f0:	b82fa0ef          	jal	ra,8002dc72 <js_parse_error>
    800338f4:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:24274
}
    800338f6:	70aa                	ld	ra,168(sp)
    800338f8:	740a                	ld	s0,160(sp)
    800338fa:	694a                	ld	s2,144(sp)
    800338fc:	69aa                	ld	s3,136(sp)
    800338fe:	6a0a                	ld	s4,128(sp)
    80033900:	7ae6                	ld	s5,120(sp)
    80033902:	7b46                	ld	s6,112(sp)
    80033904:	7ba6                	ld	s7,104(sp)
    80033906:	7c06                	ld	s8,96(sp)
    80033908:	6ce6                	ld	s9,88(sp)
    8003390a:	6d46                	ld	s10,80(sp)
    8003390c:	6da6                	ld	s11,72(sp)
    8003390e:	8526                	mv	a0,s1
    80033910:	64ea                	ld	s1,152(sp)
    80033912:	614d                	addi	sp,sp,176
    80033914:	8082                	ret
quickjs-nuttx/quickjs.c:24155
                has_spread = TRUE;
    80033916:	4a85                	li	s5,1
quickjs-nuttx/quickjs.c:24157
            if (s->token.val == ',') {
    80033918:	4c1c                	lw	a5,24(s0)
    8003391a:	02c00d93          	li	s11,44
    8003391e:	05b79463          	bne	a5,s11,80033966 <js_parse_destructuring_element+0x6b6>
quickjs-nuttx/quickjs.c:24159
                emit_op(s, OP_for_of_next);
    80033922:	08200593          	li	a1,130
    80033926:	8522                	mv	a0,s0
    80033928:	fced50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24160
                emit_u8(s, 0);
    8003392c:	4581                	li	a1,0
    8003392e:	8522                	mv	a0,s0
    80033930:	bd4d50ef          	jal	ra,80008d04 <emit_u8>
quickjs-nuttx/quickjs.c:24161
                emit_op(s, OP_drop);
    80033934:	45b9                	li	a1,14
    80033936:	8522                	mv	a0,s0
    80033938:	fbed50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24162
                emit_op(s, OP_drop);
    8003393c:	45b9                	li	a1,14
    8003393e:	8522                	mv	a0,s0
    80033940:	fb6d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24224
            if (s->token.val == ']')
    80033944:	4c18                	lw	a4,24(s0)
    80033946:	05d00793          	li	a5,93
    8003394a:	18f71b63          	bne	a4,a5,80033ae0 <js_parse_destructuring_element+0x830>
quickjs-nuttx/quickjs.c:24234
        emit_op(s, OP_iterator_close);
    8003394e:	08500593          	li	a1,133
    80033952:	8522                	mv	a0,s0
    80033954:	fa2d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24235
        pop_break_entry(s->cur_func);
    80033958:	743c                	ld	a5,104(s0)
pop_break_entry():
quickjs-nuttx/quickjs.c:25818
    fd->top_break = be->prev;
    8003395a:	1807b703          	ld	a4,384(a5)
    8003395e:	6318                	ld	a4,0(a4)
    80033960:	18e7b023          	sd	a4,384(a5)
    80033964:	b915                	j	80033598 <js_parse_destructuring_element+0x2e8>
js_parse_destructuring_element():
quickjs-nuttx/quickjs.c:24163
            } else if ((s->token.val == '[' || s->token.val == '{')
    80033966:	fdf7f793          	andi	a5,a5,-33
    8003396a:	05b00713          	li	a4,91
    8003396e:	06e79263          	bne	a5,a4,800339d2 <js_parse_destructuring_element+0x722>
quickjs-nuttx/quickjs.c:24164
                   &&  ((tok1 = js_parse_skip_parens_token(s, &skip_bits, FALSE)) == ',' ||
    80033972:	4601                	li	a2,0
    80033974:	080c                	addi	a1,sp,16
    80033976:	8522                	mv	a0,s0
    80033978:	ff4fb0ef          	jal	ra,8002f16c <js_parse_skip_parens_token>
    8003397c:	01b50a63          	beq	a0,s11,80033990 <js_parse_destructuring_element+0x6e0>
quickjs-nuttx/quickjs.c:24164 (discriminator 1)
    80033980:	03d00793          	li	a5,61
    80033984:	1cf50863          	beq	a0,a5,80033b54 <js_parse_destructuring_element+0x8a4>
quickjs-nuttx/quickjs.c:24165
                        tok1 == '=' || tok1 == ']')) {
    80033988:	05d00793          	li	a5,93
    8003398c:	04f51363          	bne	a0,a5,800339d2 <js_parse_destructuring_element+0x722>
quickjs-nuttx/quickjs.c:24166
                if (has_spread) {
    80033990:	020a9063          	bnez	s5,800339b0 <js_parse_destructuring_element+0x700>
quickjs-nuttx/quickjs.c:24171
                    emit_op(s, OP_for_of_next);
    80033994:	8522                	mv	a0,s0
    80033996:	08200593          	li	a1,130
    8003399a:	f5cd50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24172
                    emit_u8(s, 0);
    8003399e:	8522                	mv	a0,s0
    800339a0:	4581                	li	a1,0
    800339a2:	b62d50ef          	jal	ra,80008d04 <emit_u8>
quickjs-nuttx/quickjs.c:24173
                    emit_op(s, OP_drop);
    800339a6:	45b9                	li	a1,14
    800339a8:	8522                	mv	a0,s0
    800339aa:	f4cd50ef          	jal	ra,800090f6 <emit_op>
    800339ae:	a029                	j	800339b8 <js_parse_destructuring_element+0x708>
quickjs-nuttx/quickjs.c:24169
                    js_emit_spread_code(s, 0);
    800339b0:	4581                	li	a1,0
    800339b2:	8522                	mv	a0,s0
    800339b4:	8dbe90ef          	jal	ra,8001d28e <js_emit_spread_code>
quickjs-nuttx/quickjs.c:24175
                if (js_parse_destructuring_element(s, tok, is_arg, TRUE, skip_bits & SKIP_HAS_ELLIPSIS, TRUE) < 0)
    800339b8:	4742                	lw	a4,16(sp)
    800339ba:	4785                	li	a5,1
    800339bc:	4685                	li	a3,1
    800339be:	8b09                	andi	a4,a4,2
    800339c0:	8652                	mv	a2,s4
    800339c2:	85ca                	mv	a1,s2
    800339c4:	8522                	mv	a0,s0
    800339c6:	8ebff0ef          	jal	ra,800332b0 <js_parse_destructuring_element>
    800339ca:	f6055de3          	bgez	a0,80033944 <js_parse_destructuring_element+0x694>
    800339ce:	97fff06f          	j	8003334c <js_parse_destructuring_element+0x9c>
quickjs-nuttx/quickjs.c:24178
                var_name = JS_ATOM_NULL;
    800339d2:	c202                	sw	zero,4(sp)
quickjs-nuttx/quickjs.c:24179
                enum_depth = 0;
    800339d4:	ca02                	sw	zero,20(sp)
quickjs-nuttx/quickjs.c:24180
                if (tok) {
    800339d6:	0c090263          	beqz	s2,80033a9a <js_parse_destructuring_element+0x7ea>
quickjs-nuttx/quickjs.c:24181
                    var_name = js_parse_destructuring_var(s, tok, is_arg);
    800339da:	85d2                	mv	a1,s4
    800339dc:	8522                	mv	a0,s0
    800339de:	b50fc0ef          	jal	ra,8002fd2e <js_parse_destructuring_var.constprop.0>
    800339e2:	0005059b          	sext.w	a1,a0
    800339e6:	c22e                	sw	a1,4(sp)
quickjs-nuttx/quickjs.c:24182
                    if (var_name == JS_ATOM_NULL)
    800339e8:	9e058de3          	beqz	a1,800333e2 <js_parse_destructuring_element+0x132>
quickjs-nuttx/quickjs.c:24184
                    if (js_define_var(s, var_name, tok))
    800339ec:	864a                	mv	a2,s2
    800339ee:	8522                	mv	a0,s0
    800339f0:	93cfc0ef          	jal	ra,8002fb2c <js_define_var>
    800339f4:	9e0517e3          	bnez	a0,800333e2 <js_parse_destructuring_element+0x132>
quickjs-nuttx/quickjs.c:24186
                    opcode = OP_scope_get_var;
    800339f8:	0ba00793          	li	a5,186
    800339fc:	c43e                	sw	a5,8(sp)
quickjs-nuttx/quickjs.c:24187
                    scope = s->cur_func->scope_level;
    800339fe:	743c                	ld	a5,104(s0)
    80033a00:	0e07a783          	lw	a5,224(a5)
    80033a04:	c63e                	sw	a5,12(sp)
quickjs-nuttx/quickjs.c:24196
                if (has_spread) {
    80033a06:	0a0a8e63          	beqz	s5,80033ac2 <js_parse_destructuring_element+0x812>
quickjs-nuttx/quickjs.c:24197
                    js_emit_spread_code(s, enum_depth);
    80033a0a:	45d2                	lw	a1,20(sp)
    80033a0c:	8522                	mv	a0,s0
    80033a0e:	881e90ef          	jal	ra,8001d28e <js_emit_spread_code>
quickjs-nuttx/quickjs.c:24203
                if (s->token.val == '=' && !has_spread) {
    80033a12:	4c18                	lw	a4,24(s0)
    80033a14:	03d00793          	li	a5,61
    80033a18:	06f71763          	bne	a4,a5,80033a86 <js_parse_destructuring_element+0x7d6>
quickjs-nuttx/quickjs.c:24203 (discriminator 1)
    80033a1c:	060a9563          	bnez	s5,80033a86 <js_parse_destructuring_element+0x7d6>
quickjs-nuttx/quickjs.c:24206
                    emit_op(s, OP_dup);
    80033a20:	45c5                	li	a1,17
    80033a22:	8522                	mv	a0,s0
    80033a24:	ed2d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24207
                    emit_op(s, OP_undefined);
    80033a28:	4599                	li	a1,6
    80033a2a:	8522                	mv	a0,s0
    80033a2c:	ecad50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24208
                    emit_op(s, OP_strict_eq);
    80033a30:	0ac00593          	li	a1,172
    80033a34:	8522                	mv	a0,s0
    80033a36:	ec0d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24209
                    label_hasval = emit_goto(s, OP_if_false, -1);
    80033a3a:	567d                	li	a2,-1
    80033a3c:	06a00593          	li	a1,106
    80033a40:	8522                	mv	a0,s0
    80033a42:	d32e90ef          	jal	ra,8001cf74 <emit_goto>
    80033a46:	8daa                	mv	s11,a0
quickjs-nuttx/quickjs.c:24210
                    if (next_token(s))
    80033a48:	8522                	mv	a0,s0
    80033a4a:	b3dfa0ef          	jal	ra,8002e586 <next_token>
    80033a4e:	98051ae3          	bnez	a0,800333e2 <js_parse_destructuring_element+0x132>
quickjs-nuttx/quickjs.c:24212
                    emit_op(s, OP_drop);
    80033a52:	8522                	mv	a0,s0
    80033a54:	45b9                	li	a1,14
    80033a56:	ea0d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24213
                    if (js_parse_assign_expr(s))
    80033a5a:	8522                	mv	a0,s0
    80033a5c:	57a010ef          	jal	ra,80034fd6 <js_parse_assign_expr>
    80033a60:	980511e3          	bnez	a0,800333e2 <js_parse_destructuring_element+0x132>
quickjs-nuttx/quickjs.c:24215
                    if (opcode == OP_scope_get_var || opcode == OP_get_ref_value)
    80033a64:	47a2                	lw	a5,8(sp)
    80033a66:	0ba00713          	li	a4,186
    80033a6a:	00e78663          	beq	a5,a4,80033a76 <js_parse_destructuring_element+0x7c6>
quickjs-nuttx/quickjs.c:24215 (discriminator 1)
    80033a6e:	03c00713          	li	a4,60
    80033a72:	00e79663          	bne	a5,a4,80033a7e <js_parse_destructuring_element+0x7ce>
quickjs-nuttx/quickjs.c:24216
                        set_object_name(s, var_name);
    80033a76:	4592                	lw	a1,4(sp)
    80033a78:	8522                	mv	a0,s0
    80033a7a:	8f9d70ef          	jal	ra,8000b372 <set_object_name>
quickjs-nuttx/quickjs.c:24217
                    emit_label(s, label_hasval);
    80033a7e:	85ee                	mv	a1,s11
    80033a80:	8522                	mv	a0,s0
    80033a82:	813d50ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:24220
                put_lvalue(s, opcode, scope, var_name,
    80033a86:	4702                	lw	a4,0(sp)
    80033a88:	4692                	lw	a3,4(sp)
    80033a8a:	4632                	lw	a2,12(sp)
    80033a8c:	45a2                	lw	a1,8(sp)
    80033a8e:	884e                	mv	a6,s3
    80033a90:	4785                	li	a5,1
    80033a92:	8522                	mv	a0,s0
    80033a94:	f06d70ef          	jal	ra,8000b19a <put_lvalue>
    80033a98:	b575                	j	80033944 <js_parse_destructuring_element+0x694>
js_parse_left_hand_side_expr():
quickjs-nuttx/quickjs.c:22694
    return js_parse_postfix_expr(s, PF_POSTFIX_CALL);
    80033a9a:	4589                	li	a1,2
    80033a9c:	8522                	mv	a0,s0
    80033a9e:	830fe0ef          	jal	ra,80031ace <js_parse_postfix_expr>
js_parse_destructuring_element():
quickjs-nuttx/quickjs.c:24189
                    if (js_parse_left_hand_side_expr(s))
    80033aa2:	8a0515e3          	bnez	a0,8003334c <js_parse_destructuring_element+0x9c>
quickjs-nuttx/quickjs.c:24191
                    if (get_lvalue(s, &opcode, &scope, &var_name,
    80033aa6:	05b00893          	li	a7,91
    80033aaa:	4801                	li	a6,0
    80033aac:	085c                	addi	a5,sp,20
    80033aae:	870a                	mv	a4,sp
    80033ab0:	0054                	addi	a3,sp,4
    80033ab2:	0070                	addi	a2,sp,12
    80033ab4:	002c                	addi	a1,sp,8
    80033ab6:	8522                	mv	a0,s0
    80033ab8:	991fb0ef          	jal	ra,8002f448 <get_lvalue>
    80033abc:	d529                	beqz	a0,80033a06 <js_parse_destructuring_element+0x756>
    80033abe:	88fff06f          	j	8003334c <js_parse_destructuring_element+0x9c>
quickjs-nuttx/quickjs.c:24199
                    emit_op(s, OP_for_of_next);
    80033ac2:	8522                	mv	a0,s0
    80033ac4:	08200593          	li	a1,130
    80033ac8:	e2ed50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24200
                    emit_u8(s, enum_depth);
    80033acc:	01414583          	lbu	a1,20(sp)
    80033ad0:	8522                	mv	a0,s0
    80033ad2:	a32d50ef          	jal	ra,80008d04 <emit_u8>
quickjs-nuttx/quickjs.c:24201
                    emit_op(s, OP_drop);
    80033ad6:	45b9                	li	a1,14
    80033ad8:	8522                	mv	a0,s0
    80033ada:	e1cd50ef          	jal	ra,800090f6 <emit_op>
    80033ade:	bf15                	j	80033a12 <js_parse_destructuring_element+0x762>
quickjs-nuttx/quickjs.c:24226
            if (has_spread)
    80033ae0:	000a8763          	beqz	s5,80033aee <js_parse_destructuring_element+0x83e>
quickjs-nuttx/quickjs.c:24227
                return js_parse_error(s, "rest element must be the last one");
    80033ae4:	00039597          	auipc	a1,0x39
    80033ae8:	b8c58593          	addi	a1,a1,-1140 # 8006c670 <qjsc_repl+0x70c0>
    80033aec:	b509                	j	800338ee <js_parse_destructuring_element+0x63e>
quickjs-nuttx/quickjs.c:24229
            if (js_parse_expect(s, ','))
    80033aee:	02c00593          	li	a1,44
    80033af2:	8522                	mv	a0,s0
    80033af4:	cbefb0ef          	jal	ra,8002efb2 <js_parse_expect>
    80033af8:	dc0501e3          	beqz	a0,800338ba <js_parse_destructuring_element+0x60a>
    80033afc:	851ff06f          	j	8003334c <js_parse_destructuring_element+0x9c>
quickjs-nuttx/quickjs.c:24239
        return js_parse_error(s, "invalid assignment syntax");
    80033b00:	00039597          	auipc	a1,0x39
    80033b04:	b9858593          	addi	a1,a1,-1128 # 8006c698 <qjsc_repl+0x70e8>
    80033b08:	b3dd                	j	800338ee <js_parse_destructuring_element+0x63e>
quickjs-nuttx/quickjs.c:24257
        if (!hasval) {
    80033b0a:	000c1b63          	bnez	s8,80033b20 <js_parse_destructuring_element+0x870>
quickjs-nuttx/quickjs.c:24258
            js_parse_error(s, "too complicated destructuring expression");
    80033b0e:	00039597          	auipc	a1,0x39
    80033b12:	baa58593          	addi	a1,a1,-1110 # 8006c6b8 <qjsc_repl+0x7108>
    80033b16:	8522                	mv	a0,s0
    80033b18:	95afa0ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:24259
            return -1;
    80033b1c:	831ff06f          	j	8003334c <js_parse_destructuring_element+0x9c>
quickjs-nuttx/quickjs.c:24262
        memset(s->cur_func->byte_code.buf + start_addr, OP_nop,
    80033b20:	7438                	ld	a4,104(s0)
quickjs-nuttx/quickjs.c:23877
    start_addr = s->cur_func->byte_code.size;
    80033b22:	000c879b          	sext.w	a5,s9
quickjs-nuttx/quickjs.c:24262
        memset(s->cur_func->byte_code.buf + start_addr, OP_nop,
    80033b26:	419d063b          	subw	a2,s10,s9
    80033b2a:	13073503          	ld	a0,304(a4)
    80033b2e:	0b500593          	li	a1,181
quickjs-nuttx/quickjs.c:24265
        has_initializer = FALSE;
    80033b32:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:24262
        memset(s->cur_func->byte_code.buf + start_addr, OP_nop,
    80033b34:	953e                	add	a0,a0,a5
    80033b36:	10c300ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:24264
        s->cur_func->label_slots[label_parse].ref_count--;
    80033b3a:	4561                	li	a0,24
    80033b3c:	02ab0533          	mul	a0,s6,a0
    80033b40:	743c                	ld	a5,104(s0)
    80033b42:	1707bb03          	ld	s6,368(a5)
    80033b46:	9b2a                	add	s6,s6,a0
    80033b48:	000b2783          	lw	a5,0(s6) # 10000 <asinh-0x7fff0000>
    80033b4c:	37fd                	addiw	a5,a5,-1
    80033b4e:	00fb2023          	sw	a5,0(s6)
quickjs-nuttx/quickjs.c:24265
        has_initializer = FALSE;
    80033b52:	b355                	j	800338f6 <js_parse_destructuring_element+0x646>
quickjs-nuttx/quickjs.c:24166
                if (has_spread) {
    80033b54:	e40a80e3          	beqz	s5,80033994 <js_parse_destructuring_element+0x6e4>
quickjs-nuttx/quickjs.c:24168
                        return js_parse_error(s, "rest element cannot have a default value");
    80033b58:	00039597          	auipc	a1,0x39
    80033b5c:	ae858593          	addi	a1,a1,-1304 # 8006c640 <qjsc_repl+0x7090>
    80033b60:	b379                	j	800338ee <js_parse_destructuring_element+0x63e>

0000000080033b62 <js_parse_function_decl2.constprop.0>:
js_parse_function_decl2():
quickjs-nuttx/quickjs.c:33581
static __exception int js_parse_function_decl2(JSParseState *s,
    80033b62:	7135                	addi	sp,sp,-160
    80033b64:	e922                	sd	s0,144(sp)
    80033b66:	e14a                	sd	s2,128(sp)
    80033b68:	f4d6                	sd	s5,104(sp)
    80033b6a:	e8e2                	sd	s8,80(sp)
    80033b6c:	e4e6                	sd	s9,72(sp)
    80033b6e:	e0ea                	sd	s10,64(sp)
    80033b70:	ed06                	sd	ra,152(sp)
    80033b72:	e526                	sd	s1,136(sp)
    80033b74:	fcce                	sd	s3,120(sp)
    80033b76:	f8d2                	sd	s4,112(sp)
    80033b78:	f0da                	sd	s6,96(sp)
    80033b7a:	ecde                	sd	s7,88(sp)
    80033b7c:	fc6e                	sd	s11,56(sp)
    80033b7e:	8cbe                	mv	s9,a5
quickjs-nuttx/quickjs.c:33597
    is_expr = (func_type != JS_PARSE_FUNC_STATEMENT &&
    80033b80:	4c05                	li	s8,1
quickjs-nuttx/quickjs.c:33581
static __exception int js_parse_function_decl2(JSParseState *s,
    80033b82:	e842                	sd	a6,16(sp)
    80033b84:	e446                	sd	a7,8(sp)
quickjs-nuttx/quickjs.c:33600
    if (func_type == JS_PARSE_FUNC_STATEMENT ||
    80033b86:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:33590
    JSContext *ctx = s->ctx;
    80033b88:	00053983          	ld	s3,0(a0)
quickjs-nuttx/quickjs.c:33591
    JSFunctionDef *fd = s->cur_func;
    80033b8c:	7524                	ld	s1,104(a0)
quickjs-nuttx/quickjs.c:33581
static __exception int js_parse_function_decl2(JSParseState *s,
    80033b8e:	842a                	mv	s0,a0
    80033b90:	892e                	mv	s2,a1
    80033b92:	8ab2                	mv	s5,a2
    80033b94:	8d3a                	mv	s10,a4
quickjs-nuttx/quickjs.c:33597
    is_expr = (func_type != JS_PARSE_FUNC_STATEMENT &&
    80033b96:	00bc3c33          	sltu	s8,s8,a1
quickjs-nuttx/quickjs.c:33600
    if (func_type == JS_PARSE_FUNC_STATEMENT ||
    80033b9a:	12b7ee63          	bltu	a5,a1,80033cd6 <js_parse_function_decl2.constprop.0+0x174>
quickjs-nuttx/quickjs.c:33603
        if (func_kind == JS_FUNC_NORMAL &&
    80033b9e:	e239                	bnez	a2,80033be4 <js_parse_function_decl2.constprop.0+0x82>
quickjs-nuttx/quickjs.c:33604
            token_is_pseudo_keyword(s, JS_ATOM_async) &&
    80033ba0:	08600593          	li	a1,134
    80033ba4:	acad40ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
quickjs-nuttx/quickjs.c:33603
        if (func_kind == JS_FUNC_NORMAL &&
    80033ba8:	cd15                	beqz	a0,80033be4 <js_parse_function_decl2.constprop.0+0x82>
quickjs-nuttx/quickjs.c:33605
            peek_token(s, TRUE) != '\n') {
    80033baa:	4585                	li	a1,1
    80033bac:	8522                	mv	a0,s0
    80033bae:	8bed60ef          	jal	ra,80009c6c <peek_token>
quickjs-nuttx/quickjs.c:33604
            token_is_pseudo_keyword(s, JS_ATOM_async) &&
    80033bb2:	47a9                	li	a5,10
    80033bb4:	02f50863          	beq	a0,a5,80033be4 <js_parse_function_decl2.constprop.0+0x82>
quickjs-nuttx/quickjs.c:33606
            if (next_token(s))
    80033bb8:	8522                	mv	a0,s0
    80033bba:	9cdfa0ef          	jal	ra,8002e586 <next_token>
quickjs-nuttx/quickjs.c:33608
            func_kind = JS_FUNC_ASYNC;
    80033bbe:	4a89                	li	s5,2
quickjs-nuttx/quickjs.c:33606
            if (next_token(s))
    80033bc0:	c115                	beqz	a0,80033be4 <js_parse_function_decl2.constprop.0+0x82>
quickjs-nuttx/quickjs.c:33637
                return -1;
    80033bc2:	5c7d                	li	s8,-1
quickjs-nuttx/quickjs.c:34142
}
    80033bc4:	60ea                	ld	ra,152(sp)
    80033bc6:	644a                	ld	s0,144(sp)
    80033bc8:	64aa                	ld	s1,136(sp)
    80033bca:	690a                	ld	s2,128(sp)
    80033bcc:	79e6                	ld	s3,120(sp)
    80033bce:	7a46                	ld	s4,112(sp)
    80033bd0:	7aa6                	ld	s5,104(sp)
    80033bd2:	7b06                	ld	s6,96(sp)
    80033bd4:	6be6                	ld	s7,88(sp)
    80033bd6:	6ca6                	ld	s9,72(sp)
    80033bd8:	6d06                	ld	s10,64(sp)
    80033bda:	7de2                	ld	s11,56(sp)
    80033bdc:	8562                	mv	a0,s8
    80033bde:	6c46                	ld	s8,80(sp)
    80033be0:	610d                	addi	sp,sp,160
    80033be2:	8082                	ret
quickjs-nuttx/quickjs.c:33610
        if (next_token(s))
    80033be4:	8522                	mv	a0,s0
    80033be6:	9a1fa0ef          	jal	ra,8002e586 <next_token>
    80033bea:	fd61                	bnez	a0,80033bc2 <js_parse_function_decl2.constprop.0+0x60>
quickjs-nuttx/quickjs.c:33612
        if (s->token.val == '*') {
    80033bec:	4c18                	lw	a4,24(s0)
    80033bee:	02a00793          	li	a5,42
    80033bf2:	00f71863          	bne	a4,a5,80033c02 <js_parse_function_decl2.constprop.0+0xa0>
quickjs-nuttx/quickjs.c:33613
            if (next_token(s))
    80033bf6:	8522                	mv	a0,s0
    80033bf8:	98ffa0ef          	jal	ra,8002e586 <next_token>
    80033bfc:	f179                	bnez	a0,80033bc2 <js_parse_function_decl2.constprop.0+0x60>
quickjs-nuttx/quickjs.c:33615
            func_kind |= JS_FUNC_GENERATOR;
    80033bfe:	001aea93          	ori	s5,s5,1
quickjs-nuttx/quickjs.c:33618
        if (s->token.val == TOK_IDENT) {
    80033c02:	4c1c                	lw	a5,24(s0)
    80033c04:	f8300713          	li	a4,-125
    80033c08:	04e79a63          	bne	a5,a4,80033c5c <js_parse_function_decl2.constprop.0+0xfa>
quickjs-nuttx/quickjs.c:33619
            if (s->token.u.ident.is_reserved ||
    80033c0c:	581c                	lw	a5,48(s0)
    80033c0e:	ef81                	bnez	a5,80033c26 <js_parse_function_decl2.constprop.0+0xc4>
quickjs-nuttx/quickjs.c:33620
                (s->token.u.ident.atom == JS_ATOM_yield &&
    80033c10:	541c                	lw	a5,40(s0)
quickjs-nuttx/quickjs.c:33619
            if (s->token.u.ident.is_reserved ||
    80033c12:	02d00713          	li	a4,45
    80033c16:	02e79963          	bne	a5,a4,80033c48 <js_parse_function_decl2.constprop.0+0xe6>
quickjs-nuttx/quickjs.c:33620
                (s->token.u.ident.atom == JS_ATOM_yield &&
    80033c1a:	4789                	li	a5,2
    80033c1c:	04f91b63          	bne	s2,a5,80033c72 <js_parse_function_decl2.constprop.0+0x110>
quickjs-nuttx/quickjs.c:33621
                 func_type == JS_PARSE_FUNC_EXPR &&
    80033c20:	001af793          	andi	a5,s5,1
quickjs-nuttx/quickjs.c:33624
                 ((func_type == JS_PARSE_FUNC_EXPR &&
    80033c24:	c7b9                	beqz	a5,80033c72 <js_parse_function_decl2.constprop.0+0x110>
quickjs-nuttx/quickjs.c:33627
                return js_parse_error_reserved_identifier(s);
    80033c26:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:34142
}
    80033c28:	644a                	ld	s0,144(sp)
    80033c2a:	60ea                	ld	ra,152(sp)
    80033c2c:	64aa                	ld	s1,136(sp)
    80033c2e:	690a                	ld	s2,128(sp)
    80033c30:	79e6                	ld	s3,120(sp)
    80033c32:	7a46                	ld	s4,112(sp)
    80033c34:	7aa6                	ld	s5,104(sp)
    80033c36:	7b06                	ld	s6,96(sp)
    80033c38:	6be6                	ld	s7,88(sp)
    80033c3a:	6c46                	ld	s8,80(sp)
    80033c3c:	6ca6                	ld	s9,72(sp)
    80033c3e:	6d06                	ld	s10,64(sp)
    80033c40:	7de2                	ld	s11,56(sp)
    80033c42:	610d                	addi	sp,sp,160
quickjs-nuttx/quickjs.c:33627
                return js_parse_error_reserved_identifier(s);
    80033c44:	b2dfb06f          	j	8002f770 <js_parse_error_reserved_identifier>
quickjs-nuttx/quickjs.c:33622
                 (func_kind & JS_FUNC_GENERATOR)) ||
    80033c48:	02e00713          	li	a4,46
    80033c4c:	02e79363          	bne	a5,a4,80033c72 <js_parse_function_decl2.constprop.0+0x110>
quickjs-nuttx/quickjs.c:33623
                (s->token.u.ident.atom == JS_ATOM_await &&
    80033c50:	4789                	li	a5,2
    80033c52:	02f91063          	bne	s2,a5,80033c72 <js_parse_function_decl2.constprop.0+0x110>
quickjs-nuttx/quickjs.c:33624
                 ((func_type == JS_PARSE_FUNC_EXPR &&
    80033c56:	002af793          	andi	a5,s5,2
    80033c5a:	b7e9                	j	80033c24 <js_parse_function_decl2.constprop.0+0xc2>
quickjs-nuttx/quickjs.c:33630
        if (s->token.val == TOK_IDENT ||
    80033c5c:	fd900713          	li	a4,-39
    80033c60:	02e79863          	bne	a5,a4,80033c90 <js_parse_function_decl2.constprop.0+0x12e>
quickjs-nuttx/quickjs.c:33631
            (((s->token.val == TOK_YIELD && !(fd->js_mode & JS_MODE_STRICT)) ||
    80033c64:	0864c783          	lbu	a5,134(s1)
    80033c68:	8b85                	andi	a5,a5,1
quickjs-nuttx/quickjs.c:33632
             (s->token.val == TOK_AWAIT && !s->is_module)) &&
    80033c6a:	eb8d                	bnez	a5,80033c9c <js_parse_function_decl2.constprop.0+0x13a>
    80033c6c:	4789                	li	a5,2
    80033c6e:	02f91a63          	bne	s2,a5,80033ca2 <js_parse_function_decl2.constprop.0+0x140>
quickjs-nuttx/quickjs.c:33634
            func_name = JS_DupAtom(ctx, s->token.u.ident.atom);
    80033c72:	540c                	lw	a1,40(s0)
    80033c74:	854e                	mv	a0,s3
    80033c76:	c90d70ef          	jal	ra,8000b106 <JS_DupAtom>
    80033c7a:	00050a1b          	sext.w	s4,a0
quickjs-nuttx/quickjs.c:33635
            if (next_token(s)) {
    80033c7e:	8522                	mv	a0,s0
    80033c80:	907fa0ef          	jal	ra,8002e586 <next_token>
    80033c84:	c931                	beqz	a0,80033cd8 <js_parse_function_decl2.constprop.0+0x176>
quickjs-nuttx/quickjs.c:33636
                JS_FreeAtom(ctx, func_name);
    80033c86:	85d2                	mv	a1,s4
    80033c88:	854e                	mv	a0,s3
    80033c8a:	cbed70ef          	jal	ra,8000b148 <JS_FreeAtom>
    80033c8e:	bf15                	j	80033bc2 <js_parse_function_decl2.constprop.0+0x60>
quickjs-nuttx/quickjs.c:33631
            (((s->token.val == TOK_YIELD && !(fd->js_mode & JS_MODE_STRICT)) ||
    80033c90:	fda00713          	li	a4,-38
    80033c94:	00e79463          	bne	a5,a4,80033c9c <js_parse_function_decl2.constprop.0+0x13a>
quickjs-nuttx/quickjs.c:33632
             (s->token.val == TOK_AWAIT && !s->is_module)) &&
    80033c98:	583c                	lw	a5,112(s0)
    80033c9a:	bfc1                	j	80033c6a <js_parse_function_decl2.constprop.0+0x108>
quickjs-nuttx/quickjs.c:33640
            if (func_type != JS_PARSE_FUNC_EXPR &&
    80033c9c:	4789                	li	a5,2
    80033c9e:	02f90c63          	beq	s2,a5,80033cd6 <js_parse_function_decl2.constprop.0+0x174>
    80033ca2:	6742                	ld	a4,16(sp)
    80033ca4:	4789                	li	a5,2
    80033ca6:	4a01                	li	s4,0
    80033ca8:	02f70863          	beq	a4,a5,80033cd8 <js_parse_function_decl2.constprop.0+0x176>
quickjs-nuttx/quickjs.c:33642
                return js_parse_error(s, "function name expected");
    80033cac:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:34142
}
    80033cae:	644a                	ld	s0,144(sp)
    80033cb0:	60ea                	ld	ra,152(sp)
    80033cb2:	64aa                	ld	s1,136(sp)
    80033cb4:	690a                	ld	s2,128(sp)
    80033cb6:	79e6                	ld	s3,120(sp)
    80033cb8:	7a46                	ld	s4,112(sp)
    80033cba:	7aa6                	ld	s5,104(sp)
    80033cbc:	7b06                	ld	s6,96(sp)
    80033cbe:	6be6                	ld	s7,88(sp)
    80033cc0:	6c46                	ld	s8,80(sp)
    80033cc2:	6ca6                	ld	s9,72(sp)
    80033cc4:	6d06                	ld	s10,64(sp)
    80033cc6:	7de2                	ld	s11,56(sp)
quickjs-nuttx/quickjs.c:33642
                return js_parse_error(s, "function name expected");
    80033cc8:	00039597          	auipc	a1,0x39
    80033ccc:	a2058593          	addi	a1,a1,-1504 # 8006c6e8 <qjsc_repl+0x7138>
quickjs-nuttx/quickjs.c:34142
}
    80033cd0:	610d                	addi	sp,sp,160
quickjs-nuttx/quickjs.c:33642
                return js_parse_error(s, "function name expected");
    80033cd2:	fa1f906f          	j	8002dc72 <js_parse_error>
    80033cd6:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:33649
    if (fd->is_eval && fd->eval_type == JS_EVAL_TYPE_MODULE &&
    80033cd8:	0384ab03          	lw	s6,56(s1)
    80033cdc:	020b0663          	beqz	s6,80033d08 <js_parse_function_decl2.constprop.0+0x1a6>
    80033ce0:	5cdc                	lw	a5,60(s1)
    80033ce2:	4705                	li	a4,1
    80033ce4:	02e79263          	bne	a5,a4,80033d08 <js_parse_function_decl2.constprop.0+0x1a6>
    80033ce8:	1b27e263          	bltu	a5,s2,80033e8c <js_parse_function_decl2.constprop.0+0x32a>
quickjs-nuttx/quickjs.c:33652
        hf = find_global_var(fd, func_name);
    80033cec:	85d2                	mv	a1,s4
    80033cee:	8526                	mv	a0,s1
    80033cf0:	aa8d40ef          	jal	ra,80007f98 <find_global_var>
quickjs-nuttx/quickjs.c:33654
        if (hf && hf->scope_level == fd->scope_level) {
    80033cf4:	c911                	beqz	a0,80033d08 <js_parse_function_decl2.constprop.0+0x1a6>
    80033cf6:	4518                	lw	a4,8(a0)
    80033cf8:	0e04a783          	lw	a5,224(s1)
quickjs-nuttx/quickjs.c:33655
            js_parse_error(s, "invalid redefinition of global identifier in module code");
    80033cfc:	00039597          	auipc	a1,0x39
    80033d00:	a0458593          	addi	a1,a1,-1532 # 8006c700 <qjsc_repl+0x7150>
quickjs-nuttx/quickjs.c:33654
        if (hf && hf->scope_level == fd->scope_level) {
    80033d04:	08f70763          	beq	a4,a5,80033d92 <js_parse_function_decl2.constprop.0+0x230>
quickjs-nuttx/quickjs.c:33661
    if (func_type == JS_PARSE_FUNC_VAR) {
    80033d08:	4785                	li	a5,1
    80033d0a:	18f91163          	bne	s2,a5,80033e8c <js_parse_function_decl2.constprop.0+0x32a>
quickjs-nuttx/quickjs.c:33662
        if (!(fd->js_mode & JS_MODE_STRICT)
    80033d0e:	0864c783          	lbu	a5,134(s1)
    80033d12:	8b85                	andi	a5,a5,1
    80033d14:	e7a1                	bnez	a5,80033d5c <js_parse_function_decl2.constprop.0+0x1fa>
quickjs-nuttx/quickjs.c:33663
        && func_kind == JS_FUNC_NORMAL
    80033d16:	020a9fe3          	bnez	s5,80034554 <js_parse_function_decl2.constprop.0+0x9f2>
quickjs-nuttx/quickjs.c:33664
        &&  find_lexical_decl(ctx, fd, func_name, fd->scope_first, FALSE) < 0
    80033d1a:	0e44a603          	lw	a2,228(s1)
    80033d1e:	4681                	li	a3,0
    80033d20:	85d2                	mv	a1,s4
    80033d22:	8526                	mv	a0,s1
    80033d24:	af6d60ef          	jal	ra,8000a01a <find_lexical_decl.constprop.0>
quickjs-nuttx/quickjs.c:33595
    BOOL create_func_var = FALSE;
    80033d28:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:33664
        &&  find_lexical_decl(ctx, fd, func_name, fd->scope_first, FALSE) < 0
    80033d2a:	02055563          	bgez	a0,80033d54 <js_parse_function_decl2.constprop.0+0x1f2>
quickjs-nuttx/quickjs.c:33665
        &&  !((func_idx = find_var(ctx, fd, func_name)) >= 0 && (func_idx & ARGUMENT_VAR_OFFSET))
    80033d2e:	8652                	mv	a2,s4
    80033d30:	85a6                	mv	a1,s1
    80033d32:	854e                	mv	a0,s3
    80033d34:	99bd60ef          	jal	ra,8000a6ce <find_var>
    80033d38:	00054563          	bltz	a0,80033d42 <js_parse_function_decl2.constprop.0+0x1e0>
    80033d3c:	8175                	srli	a0,a0,0x1d
    80033d3e:	8905                	andi	a0,a0,1
    80033d40:	e911                	bnez	a0,80033d54 <js_parse_function_decl2.constprop.0+0x1f2>
quickjs-nuttx/quickjs.c:33666
        &&  !(func_name == JS_ATOM_arguments && fd->has_arguments_binding)) {
    80033d42:	04e00793          	li	a5,78
quickjs-nuttx/quickjs.c:33667
            create_func_var = TRUE;
    80033d46:	4b85                	li	s7,1
quickjs-nuttx/quickjs.c:33666
        &&  !(func_name == JS_ATOM_arguments && fd->has_arguments_binding)) {
    80033d48:	00fa1663          	bne	s4,a5,80033d54 <js_parse_function_decl2.constprop.0+0x1f2>
    80033d4c:	0604ab83          	lw	s7,96(s1)
quickjs-nuttx/quickjs.c:33667
            create_func_var = TRUE;
    80033d50:	001bbb93          	seqz	s7,s7
quickjs-nuttx/quickjs.c:33689
            lexical_func_idx = define_var(s, fd, func_name,
    80033d54:	468d                	li	a3,3
quickjs-nuttx/quickjs.c:33671
        if (fd->is_eval &&
    80033d56:	040b0563          	beqz	s6,80033da0 <js_parse_function_decl2.constprop.0+0x23e>
    80033d5a:	a021                	j	80033d62 <js_parse_function_decl2.constprop.0+0x200>
quickjs-nuttx/quickjs.c:33595
    BOOL create_func_var = FALSE;
    80033d5c:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:33671
        if (fd->is_eval &&
    80033d5e:	020b0e63          	beqz	s6,80033d9a <js_parse_function_decl2.constprop.0+0x238>
    80033d62:	5cd8                	lw	a4,60(s1)
    80033d64:	4785                	li	a5,1
    80033d66:	02e7ea63          	bltu	a5,a4,80033d9a <js_parse_function_decl2.constprop.0+0x238>
quickjs-nuttx/quickjs.c:33674
            fd->scope_level == fd->body_scope) {
    80033d6a:	0e04a783          	lw	a5,224(s1)
quickjs-nuttx/quickjs.c:33673
             fd->eval_type == JS_EVAL_TYPE_MODULE) &&
    80033d6e:	1184ad83          	lw	s11,280(s1)
    80033d72:	02fd9463          	bne	s11,a5,80033d9a <js_parse_function_decl2.constprop.0+0x238>
quickjs-nuttx/quickjs.c:33678
            hf = find_global_var(fd, func_name);
    80033d76:	85d2                	mv	a1,s4
    80033d78:	8526                	mv	a0,s1
    80033d7a:	a1ed40ef          	jal	ra,80007f98 <find_global_var>
quickjs-nuttx/quickjs.c:33680
            if (hf && hf->scope_level == fd->scope_level) {
    80033d7e:	10050863          	beqz	a0,80033e8e <js_parse_function_decl2.constprop.0+0x32c>
    80033d82:	451c                	lw	a5,8(a0)
quickjs-nuttx/quickjs.c:33593
    int func_idx, lexical_func_idx = -1;
    80033d84:	5b7d                	li	s6,-1
quickjs-nuttx/quickjs.c:33680
            if (hf && hf->scope_level == fd->scope_level) {
    80033d86:	03b79563          	bne	a5,s11,80033db0 <js_parse_function_decl2.constprop.0+0x24e>
quickjs-nuttx/quickjs.c:33681
                js_parse_error(s, "invalid redefinition of global identifier");
    80033d8a:	00038597          	auipc	a1,0x38
    80033d8e:	1fe58593          	addi	a1,a1,510 # 8006bf88 <qjsc_repl+0x69d8>
    80033d92:	8522                	mv	a0,s0
    80033d94:	edff90ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:33682
                JS_FreeAtom(ctx, func_name);
    80033d98:	b5fd                	j	80033c86 <js_parse_function_decl2.constprop.0+0x124>
quickjs-nuttx/quickjs.c:33689
            lexical_func_idx = define_var(s, fd, func_name,
    80033d9a:	015036b3          	snez	a3,s5
    80033d9e:	068d                	addi	a3,a3,3
    80033da0:	8652                	mv	a2,s4
    80033da2:	85a6                	mv	a1,s1
    80033da4:	8522                	mv	a0,s0
    80033da6:	af9fb0ef          	jal	ra,8002f89e <define_var>
    80033daa:	8b2a                	mv	s6,a0
quickjs-nuttx/quickjs.c:33693
            if (lexical_func_idx < 0) {
    80033dac:	ec054de3          	bltz	a0,80033c86 <js_parse_function_decl2.constprop.0+0x124>
quickjs-nuttx/quickjs.c:33700
    fd = js_new_function_def(ctx, fd, FALSE, is_expr,
    80033db0:	6818                	ld	a4,16(s0)
    80033db2:	85a6                	mv	a1,s1
    80033db4:	87e6                	mv	a5,s9
    80033db6:	86e2                	mv	a3,s8
    80033db8:	4601                	li	a2,0
    80033dba:	854e                	mv	a0,s3
    80033dbc:	959eb0ef          	jal	ra,8001f714 <js_new_function_def>
    80033dc0:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:33702
    if (!fd) {
    80033dc2:	ec0502e3          	beqz	a0,80033c86 <js_parse_function_decl2.constprop.0+0x124>
quickjs-nuttx/quickjs.c:33706
    if (pfd)
    80033dc6:	67a2                	ld	a5,8(sp)
    80033dc8:	c391                	beqz	a5,80033dcc <js_parse_function_decl2.constprop.0+0x26a>
quickjs-nuttx/quickjs.c:33707
        *pfd = fd;
    80033dca:	e388                	sd	a0,0(a5)
quickjs-nuttx/quickjs.c:33708
    s->cur_func = fd;
    80033dcc:	f424                	sd	s1,104(s0)
quickjs-nuttx/quickjs.c:33709
    fd->func_name = func_name;
    80033dce:	0944a423          	sw	s4,136(s1)
quickjs-nuttx/quickjs.c:33713
                         func_type == JS_PARSE_FUNC_EXPR) &&
    80033dd2:	4709                	li	a4,2
    80033dd4:	4781                	li	a5,0
    80033dd6:	01276463          	bltu	a4,s2,80033dde <js_parse_function_decl2.constprop.0+0x27c>
    80033dda:	001ab793          	seqz	a5,s5
quickjs-nuttx/quickjs.c:33711
    fd->has_prototype = (func_type == JS_PARSE_FUNC_STATEMENT ||
    80033dde:	c4fc                	sw	a5,76(s1)
quickjs-nuttx/quickjs.c:33717
                           func_type == JS_PARSE_FUNC_SETTER ||
    80033de0:	ff89079b          	addiw	a5,s2,-8
    80033de4:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:33715
    fd->has_home_object = (func_type == JS_PARSE_FUNC_METHOD ||
    80033de6:	4689                	li	a3,2
    80033de8:	ffc9079b          	addiw	a5,s2,-4
quickjs-nuttx/quickjs.c:33718
                           func_type == JS_PARSE_FUNC_CLASS_CONSTRUCTOR ||
    80033dec:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:33715
    fd->has_home_object = (func_type == JS_PARSE_FUNC_METHOD ||
    80033dee:	00f6f663          	bgeu	a3,a5,80033dfa <js_parse_function_decl2.constprop.0+0x298>
quickjs-nuttx/quickjs.c:33718
                           func_type == JS_PARSE_FUNC_CLASS_CONSTRUCTOR ||
    80033df2:	ff89079b          	addiw	a5,s2,-8
    80033df6:	0027b713          	sltiu	a4,a5,2
quickjs-nuttx/quickjs.c:33720
    fd->has_arguments_binding = (func_type != JS_PARSE_FUNC_ARROW &&
    80033dfa:	ffb97793          	andi	a5,s2,-5
    80033dfe:	17f5                	addi	a5,a5,-3
    80033e00:	00f037b3          	snez	a5,a5
    80033e04:	d0bc                	sw	a5,96(s1)
quickjs-nuttx/quickjs.c:33722
    fd->has_this_binding = fd->has_arguments_binding;
    80033e06:	d0fc                	sw	a5,100(s1)
quickjs-nuttx/quickjs.c:33723
    fd->is_derived_class_constructor = (func_type == JS_PARSE_FUNC_DERIVED_CLASS_CONSTRUCTOR);
    80033e08:	ff790793          	addi	a5,s2,-9
    80033e0c:	0017b793          	seqz	a5,a5
quickjs-nuttx/quickjs.c:33715
    fd->has_home_object = (func_type == JS_PARSE_FUNC_METHOD ||
    80033e10:	c4b8                	sw	a4,72(s1)
quickjs-nuttx/quickjs.c:33720
    fd->has_arguments_binding = (func_type != JS_PARSE_FUNC_ARROW &&
    80033e12:	468d                	li	a3,3
quickjs-nuttx/quickjs.c:33723
    fd->is_derived_class_constructor = (func_type == JS_PARSE_FUNC_DERIVED_CLASS_CONSTRUCTOR);
    80033e14:	dcbc                	sw	a5,120(s1)
quickjs-nuttx/quickjs.c:33724
    if (func_type == JS_PARSE_FUNC_ARROW) {
    80033e16:	06d91e63          	bne	s2,a3,80033e92 <js_parse_function_decl2.constprop.0+0x330>
quickjs-nuttx/quickjs.c:33725
        fd->new_target_allowed = fd->parent->new_target_allowed;
    80033e1a:	649c                	ld	a5,8(s1)
    80033e1c:	57b8                	lw	a4,104(a5)
    80033e1e:	d4b8                	sw	a4,104(s1)
quickjs-nuttx/quickjs.c:33726
        fd->super_call_allowed = fd->parent->super_call_allowed;
    80033e20:	57f8                	lw	a4,108(a5)
    80033e22:	d4f8                	sw	a4,108(s1)
quickjs-nuttx/quickjs.c:33727
        fd->super_allowed = fd->parent->super_allowed;
    80033e24:	5bb8                	lw	a4,112(a5)
    80033e26:	d8b8                	sw	a4,112(s1)
quickjs-nuttx/quickjs.c:33728
        fd->arguments_allowed = fd->parent->arguments_allowed;
    80033e28:	5bfc                	lw	a5,116(a5)
    80033e2a:	d8fc                	sw	a5,116(s1)
quickjs-nuttx/quickjs.c:33744
    fd->func_kind = func_kind;
    80033e2c:	09548223          	sb	s5,132(s1)
quickjs-nuttx/quickjs.c:33745
    fd->func_type = func_type;
    80033e30:	092482a3          	sb	s2,133(s1)
quickjs-nuttx/quickjs.c:33747
    if (func_type == JS_PARSE_FUNC_CLASS_CONSTRUCTOR ||
    80033e34:	4785                	li	a5,1
    80033e36:	ff89071b          	addiw	a4,s2,-8
    80033e3a:	00e7ed63          	bltu	a5,a4,80033e54 <js_parse_function_decl2.constprop.0+0x2f2>
quickjs-nuttx/quickjs.c:33750
        emit_op(s, OP_check_ctor);
    80033e3e:	02b00593          	li	a1,43
    80033e42:	8522                	mv	a0,s0
    80033e44:	ab2d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33753
    if (func_type == JS_PARSE_FUNC_CLASS_CONSTRUCTOR) {
    80033e48:	47a1                	li	a5,8
    80033e4a:	00f91563          	bne	s2,a5,80033e54 <js_parse_function_decl2.constprop.0+0x2f2>
quickjs-nuttx/quickjs.c:33754
        emit_class_field_init(s);
    80033e4e:	8522                	mv	a0,s0
    80033e50:	980e90ef          	jal	ra,8001cfd0 <emit_class_field_init>
quickjs-nuttx/quickjs.c:33758
    fd->has_simple_parameter_list = TRUE;
    80033e54:	4c05                	li	s8,1
    80033e56:	0584b823          	sd	s8,80(s1)
quickjs-nuttx/quickjs.c:33761
    if (func_type == JS_PARSE_FUNC_ARROW && s->token.val == TOK_IDENT) {
    80033e5a:	478d                	li	a5,3
    80033e5c:	1af91363          	bne	s2,a5,80034002 <js_parse_function_decl2.constprop.0+0x4a0>
    80033e60:	4c18                	lw	a4,24(s0)
    80033e62:	f8300793          	li	a5,-125
    80033e66:	1af71163          	bne	a4,a5,80034008 <js_parse_function_decl2.constprop.0+0x4a6>
quickjs-nuttx/quickjs.c:33763
        if (s->token.u.ident.is_reserved) {
    80033e6a:	581c                	lw	a5,48(s0)
    80033e6c:	c3a1                	beqz	a5,80033eac <js_parse_function_decl2.constprop.0+0x34a>
quickjs-nuttx/quickjs.c:33764
            js_parse_error_reserved_identifier(s);
    80033e6e:	8522                	mv	a0,s0
    80033e70:	901fb0ef          	jal	ra,8002f770 <js_parse_error_reserved_identifier>
quickjs-nuttx/quickjs.c:34137
    s->cur_func = fd->parent;
    80033e74:	649c                	ld	a5,8(s1)
quickjs-nuttx/quickjs.c:34138
    js_free_function_def(ctx, fd);
    80033e76:	85a6                	mv	a1,s1
    80033e78:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:34137
    s->cur_func = fd->parent;
    80033e7a:	f43c                	sd	a5,104(s0)
quickjs-nuttx/quickjs.c:34138
    js_free_function_def(ctx, fd);
    80033e7c:	da5d80ef          	jal	ra,8000cc20 <js_free_function_def>
quickjs-nuttx/quickjs.c:34139
    if (pfd)
    80033e80:	67a2                	ld	a5,8(sp)
    80033e82:	d40780e3          	beqz	a5,80033bc2 <js_parse_function_decl2.constprop.0+0x60>
quickjs-nuttx/quickjs.c:34140
        *pfd = NULL;
    80033e86:	0007b023          	sd	zero,0(a5)
    80033e8a:	bb25                	j	80033bc2 <js_parse_function_decl2.constprop.0+0x60>
quickjs-nuttx/quickjs.c:33595
    BOOL create_func_var = FALSE;
    80033e8c:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:33593
    int func_idx, lexical_func_idx = -1;
    80033e8e:	5b7d                	li	s6,-1
    80033e90:	b705                	j	80033db0 <js_parse_function_decl2.constprop.0+0x24e>
quickjs-nuttx/quickjs.c:33729
    } else if (func_type == JS_PARSE_FUNC_CLASS_STATIC_INIT) {
    80033e92:	469d                	li	a3,7
    80033e94:	00d91663          	bne	s2,a3,80033ea0 <js_parse_function_decl2.constprop.0+0x33e>
quickjs-nuttx/quickjs.c:33730
        fd->new_target_allowed = TRUE; // although new.target === undefined
    80033e98:	4785                	li	a5,1
    80033e9a:	f4bc                	sd	a5,104(s1)
quickjs-nuttx/quickjs.c:33732
        fd->super_allowed = TRUE;
    80033e9c:	f8bc                	sd	a5,112(s1)
    80033e9e:	b779                	j	80033e2c <js_parse_function_decl2.constprop.0+0x2ca>
quickjs-nuttx/quickjs.c:33735
        fd->new_target_allowed = TRUE;
    80033ea0:	4685                	li	a3,1
    80033ea2:	d4b4                	sw	a3,104(s1)
quickjs-nuttx/quickjs.c:33736
        fd->super_call_allowed = fd->is_derived_class_constructor;
    80033ea4:	d4fc                	sw	a5,108(s1)
quickjs-nuttx/quickjs.c:33737
        fd->super_allowed = fd->has_home_object;
    80033ea6:	d8b8                	sw	a4,112(s1)
quickjs-nuttx/quickjs.c:33738
        fd->arguments_allowed = TRUE;
    80033ea8:	d8f4                	sw	a3,116(s1)
    80033eaa:	b749                	j	80033e2c <js_parse_function_decl2.constprop.0+0x2ca>
quickjs-nuttx/quickjs.c:33768
        if (add_arg(ctx, fd, name) < 0)
    80033eac:	5410                	lw	a2,40(s0)
    80033eae:	85a6                	mv	a1,s1
    80033eb0:	854e                	mv	a0,s3
    80033eb2:	cd5f50ef          	jal	ra,80029b86 <add_arg>
    80033eb6:	fa054fe3          	bltz	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:33770
        fd->defined_arg_count = 1;
    80033eba:	0b84a823          	sw	s8,176(s1)
quickjs-nuttx/quickjs.c:33914
    if (fd->has_parameter_expressions) {
    80033ebe:	48fc                	lw	a5,84(s1)
    80033ec0:	cb95                	beqz	a5,80033ef4 <js_parse_function_decl2.constprop.0+0x392>
quickjs-nuttx/quickjs.c:33921
        idx = fd->scopes[fd->scope_level].first;
    80033ec2:	0e04a703          	lw	a4,224(s1)
    80033ec6:	78fc                	ld	a5,240(s1)
    80033ec8:	070e                	slli	a4,a4,0x3
    80033eca:	97ba                	add	a5,a5,a4
    80033ecc:	0047ac83          	lw	s9,4(a5)
quickjs-nuttx/quickjs.c:33922
        while (idx >= 0) {
    80033ed0:	420cdc63          	bgez	s9,80034308 <js_parse_function_decl2.constprop.0+0x7a6>
quickjs-nuttx/quickjs.c:33941
        emit_op(s, OP_leave_scope);
    80033ed4:	0b700593          	li	a1,183
    80033ed8:	8522                	mv	a0,s0
    80033eda:	a1cd50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33942
        emit_u16(s, fd->scope_level);
    80033ede:	0e04d583          	lhu	a1,224(s1)
    80033ee2:	8522                	mv	a0,s0
    80033ee4:	8e0d50ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:33946
        fd->scope_first = fd->scopes[fd->scope_level].first;
    80033ee8:	78fc                	ld	a5,240(s1)
quickjs-nuttx/quickjs.c:33945
        fd->scope_level = 0;
    80033eea:	0e04a023          	sw	zero,224(s1)
quickjs-nuttx/quickjs.c:33946
        fd->scope_first = fd->scopes[fd->scope_level].first;
    80033eee:	43dc                	lw	a5,4(a5)
    80033ef0:	0ef4a223          	sw	a5,228(s1)
quickjs-nuttx/quickjs.c:33949
    if (next_token(s))
    80033ef4:	8522                	mv	a0,s0
    80033ef6:	e90fa0ef          	jal	ra,8002e586 <next_token>
    80033efa:	8c2a                	mv	s8,a0
    80033efc:	fd25                	bnez	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:33953
    if (func_kind == JS_FUNC_GENERATOR ||
    80033efe:	ffdaf793          	andi	a5,s5,-3
    80033f02:	4705                	li	a4,1
    80033f04:	00e79763          	bne	a5,a4,80033f12 <js_parse_function_decl2.constprop.0+0x3b0>
quickjs-nuttx/quickjs.c:33955
        emit_op(s, OP_initial_yield);
    80033f08:	08800593          	li	a1,136
    80033f0c:	8522                	mv	a0,s0
    80033f0e:	9e8d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33959
    fd->in_function_body = TRUE;
    80033f12:	4785                	li	a5,1
    80033f14:	dcfc                	sw	a5,124(s1)
quickjs-nuttx/quickjs.c:33960
    push_scope(s);  /* enter body scope */
    80033f16:	8522                	mv	a0,s0
    80033f18:	8b1e90ef          	jal	ra,8001d7c8 <push_scope>
quickjs-nuttx/quickjs.c:33961
    fd->body_scope = fd->scope_level;
    80033f1c:	0e04a783          	lw	a5,224(s1)
    80033f20:	10f4ac23          	sw	a5,280(s1)
quickjs-nuttx/quickjs.c:33963
    if (s->token.val == TOK_ARROW) {
    80033f24:	4c18                	lw	a4,24(s0)
    80033f26:	fa600793          	li	a5,-90
    80033f2a:	44f71c63          	bne	a4,a5,80034382 <js_parse_function_decl2.constprop.0+0x820>
quickjs-nuttx/quickjs.c:33964
        if (next_token(s))
    80033f2e:	8522                	mv	a0,s0
    80033f30:	e56fa0ef          	jal	ra,8002e586 <next_token>
    80033f34:	f121                	bnez	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:33967
        if (s->token.val != '{') {
    80033f36:	4c18                	lw	a4,24(s0)
    80033f38:	07b00793          	li	a5,123
    80033f3c:	62f70263          	beq	a4,a5,80034560 <js_parse_function_decl2.constprop.0+0x9fe>
quickjs-nuttx/quickjs.c:33968
            if (js_parse_function_check_names(s, fd, func_name))
    80033f40:	8652                	mv	a2,s4
    80033f42:	85a6                	mv	a1,s1
    80033f44:	8522                	mv	a0,s0
    80033f46:	855fb0ef          	jal	ra,8002f79a <js_parse_function_check_names>
    80033f4a:	f50d                	bnez	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:33971
            if (js_parse_assign_expr(s))
    80033f4c:	8522                	mv	a0,s0
    80033f4e:	088010ef          	jal	ra,80034fd6 <js_parse_assign_expr>
    80033f52:	f20511e3          	bnez	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:33975
                emit_op(s, OP_return_async);
    80033f56:	02e00593          	li	a1,46
quickjs-nuttx/quickjs.c:33974
            if (func_kind != JS_FUNC_NORMAL)
    80033f5a:	000a9463          	bnez	s5,80033f62 <js_parse_function_decl2.constprop.0+0x400>
quickjs-nuttx/quickjs.c:33977
                emit_op(s, OP_return);
    80033f5e:	02800593          	li	a1,40
    80033f62:	8522                	mv	a0,s0
    80033f64:	992d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33979
            if (!(fd->js_mode & JS_MODE_STRIP)) {
    80033f68:	0864c783          	lbu	a5,134(s1)
    80033f6c:	8b89                	andi	a5,a5,2
    80033f6e:	ef91                	bnez	a5,80033f8a <js_parse_function_decl2.constprop.0+0x428>
quickjs-nuttx/quickjs.c:33983
                fd->source_len = s->last_ptr - ptr;
    80033f70:	6830                	ld	a2,80(s0)
quickjs-nuttx/quickjs.c:33984
                fd->source = js_strndup(ctx, (const char *)ptr, fd->source_len);
    80033f72:	85ea                	mv	a1,s10
    80033f74:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:33983
                fd->source_len = s->last_ptr - ptr;
    80033f76:	41a6063b          	subw	a2,a2,s10
    80033f7a:	20c4a823          	sw	a2,528(s1)
quickjs-nuttx/quickjs.c:33984
                fd->source = js_strndup(ctx, (const char *)ptr, fd->source_len);
    80033f7e:	9ace60ef          	jal	ra,8001a12a <js_strndup>
    80033f82:	20a4b423          	sd	a0,520(s1)
quickjs-nuttx/quickjs.c:33985
                if (!fd->source)
    80033f86:	ee0507e3          	beqz	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:34026
    s->cur_func = fd->parent;
    80033f8a:	649c                	ld	a5,8(s1)
reparse_ident_token():
quickjs-nuttx/quickjs.c:20511
    if (s->token.val == TOK_IDENT ||
    80033f8c:	f8300713          	li	a4,-125
js_parse_function_decl2():
quickjs-nuttx/quickjs.c:34026
    s->cur_func = fd->parent;
    80033f90:	f43c                	sd	a5,104(s0)
reparse_ident_token():
quickjs-nuttx/quickjs.c:20511
    if (s->token.val == TOK_IDENT ||
    80033f92:	4c1c                	lw	a5,24(s0)
    80033f94:	00e78863          	beq	a5,a4,80033fa4 <js_parse_function_decl2.constprop.0+0x442>
    80033f98:	0537879b          	addiw	a5,a5,83
    80033f9c:	02d00713          	li	a4,45
    80033fa0:	00f76a63          	bltu	a4,a5,80033fb4 <js_parse_function_decl2.constprop.0+0x452>
quickjs-nuttx/quickjs.c:20514
        s->token.val = TOK_IDENT;
    80033fa4:	f8300793          	li	a5,-125
    80033fa8:	cc1c                	sw	a5,24(s0)
quickjs-nuttx/quickjs.c:20515
        s->token.u.ident.is_reserved = FALSE;
    80033faa:	02042823          	sw	zero,48(s0)
quickjs-nuttx/quickjs.c:20516
        update_token_ident(s);
    80033fae:	8522                	mv	a0,s0
    80033fb0:	edfd30ef          	jal	ra,80007e8e <update_token_ident>
js_parse_function_decl2():
quickjs-nuttx/quickjs.c:34040
        idx = cpool_add(s, JS_NULL);
    80033fb4:	4789                	li	a5,2
    80033fb6:	4581                	li	a1,0
    80033fb8:	4609                	li	a2,2
    80033fba:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:34037
        JSAtom func_name = fd->func_name;
    80033fbc:	0884aa03          	lw	s4,136(s1)
quickjs-nuttx/quickjs.c:34040
        idx = cpool_add(s, JS_NULL);
    80033fc0:	f43e                	sd	a5,40(sp)
    80033fc2:	f002                	sd	zero,32(sp)
    80033fc4:	c02e90ef          	jal	ra,8001d3c6 <cpool_add>
quickjs-nuttx/quickjs.c:34041
        fd->parent_cpool_idx = idx;
    80033fc8:	c888                	sw	a0,16(s1)
quickjs-nuttx/quickjs.c:34043
        if (is_expr) {
    80033fca:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:34040
        idx = cpool_add(s, JS_NULL);
    80033fcc:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:34043
        if (is_expr) {
    80033fce:	4327f863          	bgeu	a5,s2,800343fe <js_parse_function_decl2.constprop.0+0x89c>
quickjs-nuttx/quickjs.c:34045
            if (func_type != JS_PARSE_FUNC_CLASS_CONSTRUCTOR &&
    80033fd2:	6762                	ld	a4,24(sp)
    80033fd4:	bee7f8e3          	bgeu	a5,a4,80033bc4 <js_parse_function_decl2.constprop.0+0x62>
quickjs-nuttx/quickjs.c:34049
                emit_op(s, OP_fclosure);
    80033fd8:	458d                	li	a1,3
    80033fda:	8522                	mv	a0,s0
    80033fdc:	91ad50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:34050
                emit_u32(s, idx);
    80033fe0:	000a859b          	sext.w	a1,s5
    80033fe4:	8522                	mv	a0,s0
    80033fe6:	aa6d50ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:34051
                if (func_name == JS_ATOM_NULL) {
    80033fea:	bc0a1de3          	bnez	s4,80033bc4 <js_parse_function_decl2.constprop.0+0x62>
quickjs-nuttx/quickjs.c:34052
                    emit_op(s, OP_set_name);
    80033fee:	8522                	mv	a0,s0
    80033ff0:	04d00593          	li	a1,77
    80033ff4:	902d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:34053
                    emit_u32(s, JS_ATOM_NULL);
    80033ff8:	4581                	li	a1,0
    80033ffa:	8522                	mv	a0,s0
    80033ffc:	a90d50ef          	jal	ra,8000928c <emit_u32>
