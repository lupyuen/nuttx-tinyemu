    8001d000:	567d                	li	a2,-1
    8001d002:	06a00593          	li	a1,106
    8001d006:	8522                	mv	a0,s0
    8001d008:	f6dff0ef          	jal	ra,8001cf74 <emit_goto>
    8001d00c:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:22763
    emit_op(s, OP_scope_get_var);
    8001d00e:	0ba00593          	li	a1,186
    8001d012:	8522                	mv	a0,s0
    8001d014:	8e2ec0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22764
    emit_atom(s, JS_ATOM_this);
    8001d018:	8522                	mv	a0,s0
    8001d01a:	45a1                	li	a1,8
    8001d01c:	90eee0ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:22765
    emit_u16(s, 0);
    8001d020:	8522                	mv	a0,s0
    8001d022:	4581                	li	a1,0
    8001d024:	fa1eb0ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:22767
    emit_op(s, OP_swap);
    8001d028:	8522                	mv	a0,s0
    8001d02a:	45ed                	li	a1,27
    8001d02c:	8caec0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22769
    emit_op(s, OP_call_method);
    8001d030:	8522                	mv	a0,s0
    8001d032:	02400593          	li	a1,36
    8001d036:	8c0ec0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22770
    emit_u16(s, 0);
    8001d03a:	8522                	mv	a0,s0
    8001d03c:	4581                	li	a1,0
    8001d03e:	f87eb0ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:22772
    emit_label(s, label_next);
    8001d042:	85a6                	mv	a1,s1
    8001d044:	8522                	mv	a0,s0
    8001d046:	a4eec0ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:22773
    emit_op(s, OP_drop);
    8001d04a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:22774
}
    8001d04c:	6442                	ld	s0,16(sp)
    8001d04e:	60e2                	ld	ra,24(sp)
    8001d050:	64a2                	ld	s1,8(sp)
quickjs-nuttx/quickjs.c:22773
    emit_op(s, OP_drop);
    8001d052:	45b9                	li	a1,14
quickjs-nuttx/quickjs.c:22774
}
    8001d054:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:22773
    emit_op(s, OP_drop);
    8001d056:	8a0ec06f          	j	800090f6 <emit_op>

000000008001d05a <emit_return>:
emit_return():
quickjs-nuttx/quickjs.c:25871
{
    8001d05a:	7179                	addi	sp,sp,-48
    8001d05c:	f022                	sd	s0,32(sp)
    8001d05e:	ec26                	sd	s1,24(sp)
    8001d060:	f406                	sd	ra,40(sp)
    8001d062:	e84a                	sd	s2,16(sp)
    8001d064:	e44e                	sd	s3,8(sp)
    8001d066:	e052                	sd	s4,0(sp)
quickjs-nuttx/quickjs.c:25874
    if (s->cur_func->func_kind != JS_FUNC_NORMAL) {
    8001d068:	753c                	ld	a5,104(a0)
quickjs-nuttx/quickjs.c:25871
{
    8001d06a:	842a                	mv	s0,a0
    8001d06c:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:25874
    if (s->cur_func->func_kind != JS_FUNC_NORMAL) {
    8001d06e:	0847c783          	lbu	a5,132(a5)
    8001d072:	c791                	beqz	a5,8001d07e <emit_return+0x24>
quickjs-nuttx/quickjs.c:25875
        if (!hasval) {
    8001d074:	edb5                	bnez	a1,8001d0f0 <emit_return+0x96>
quickjs-nuttx/quickjs.c:25877
            emit_op(s, OP_undefined);
    8001d076:	4599                	li	a1,6
    8001d078:	87eec0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25878
            hasval = TRUE;
    8001d07c:	4485                	li	s1,1
quickjs-nuttx/quickjs.c:25886
    top = s->cur_func->top_break;
    8001d07e:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:25900
                if (s->cur_func->func_kind == JS_FUNC_ASYNC_GENERATOR) {
    8001d080:	4a0d                	li	s4,3
quickjs-nuttx/quickjs.c:25886
    top = s->cur_func->top_break;
    8001d082:	1807b903          	ld	s2,384(a5)
quickjs-nuttx/quickjs.c:25887
    while (top != NULL) {
    8001d086:	06091d63          	bnez	s2,8001d100 <emit_return+0xa6>
quickjs-nuttx/quickjs.c:25931
    if (s->cur_func->is_derived_class_constructor) {
    8001d08a:	743c                	ld	a5,104(s0)
    8001d08c:	5fb8                	lw	a4,120(a5)
    8001d08e:	16070663          	beqz	a4,8001d1fa <emit_return+0x1a0>
quickjs-nuttx/quickjs.c:25941
            label_return = -1;
    8001d092:	597d                	li	s2,-1
quickjs-nuttx/quickjs.c:25936
        if (hasval) {
    8001d094:	c08d                	beqz	s1,8001d0b6 <emit_return+0x5c>
quickjs-nuttx/quickjs.c:25937
            emit_op(s, OP_check_ctor_return);
    8001d096:	02a00593          	li	a1,42
    8001d09a:	8522                	mv	a0,s0
    8001d09c:	85aec0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25938
            label_return = emit_goto(s, OP_if_false, -1);
    8001d0a0:	06a00593          	li	a1,106
    8001d0a4:	567d                	li	a2,-1
    8001d0a6:	8522                	mv	a0,s0
    8001d0a8:	ecdff0ef          	jal	ra,8001cf74 <emit_goto>
    8001d0ac:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:25939
            emit_op(s, OP_drop);
    8001d0ae:	45b9                	li	a1,14
    8001d0b0:	8522                	mv	a0,s0
    8001d0b2:	844ec0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25946
        emit_op(s, OP_scope_get_var_checkthis);
    8001d0b6:	0c000593          	li	a1,192
    8001d0ba:	8522                	mv	a0,s0
    8001d0bc:	83aec0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25947
        emit_atom(s, JS_ATOM_this);
    8001d0c0:	45a1                	li	a1,8
    8001d0c2:	8522                	mv	a0,s0
    8001d0c4:	866ee0ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:25948
        emit_u16(s, 0);
    8001d0c8:	4581                	li	a1,0
    8001d0ca:	8522                	mv	a0,s0
    8001d0cc:	ef9eb0ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:25950
        emit_label(s, label_return);
    8001d0d0:	85ca                	mv	a1,s2
    8001d0d2:	8522                	mv	a0,s0
    8001d0d4:	9c0ec0ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:25951
        emit_op(s, OP_return);
    8001d0d8:	02800593          	li	a1,40
quickjs-nuttx/quickjs.c:25955
        emit_op(s, hasval ? OP_return : OP_return_undef);
    8001d0dc:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:25957
}
    8001d0de:	7402                	ld	s0,32(sp)
    8001d0e0:	70a2                	ld	ra,40(sp)
    8001d0e2:	64e2                	ld	s1,24(sp)
    8001d0e4:	6942                	ld	s2,16(sp)
    8001d0e6:	69a2                	ld	s3,8(sp)
    8001d0e8:	6a02                	ld	s4,0(sp)
    8001d0ea:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:25955
        emit_op(s, hasval ? OP_return : OP_return_undef);
    8001d0ec:	80aec06f          	j	800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25879
        } else if (s->cur_func->func_kind == JS_FUNC_ASYNC_GENERATOR) {
    8001d0f0:	470d                	li	a4,3
    8001d0f2:	f8e796e3          	bne	a5,a4,8001d07e <emit_return+0x24>
quickjs-nuttx/quickjs.c:25882
            emit_op(s, OP_await);
    8001d0f6:	08c00593          	li	a1,140
    8001d0fa:	ffdeb0ef          	jal	ra,800090f6 <emit_op>
    8001d0fe:	b741                	j	8001d07e <emit_return+0x24>
quickjs-nuttx/quickjs.c:25888
        if (top->has_iterator || top->label_finally != -1) {
    8001d100:	02092783          	lw	a5,32(s2)
    8001d104:	e791                	bnez	a5,8001d110 <emit_return+0xb6>
quickjs-nuttx/quickjs.c:25888 (discriminator 1)
    8001d106:	01892703          	lw	a4,24(s2)
    8001d10a:	57fd                	li	a5,-1
    8001d10c:	0cf70163          	beq	a4,a5,8001d1ce <emit_return+0x174>
quickjs-nuttx/quickjs.c:25889
            if (!hasval) {
    8001d110:	e489                	bnez	s1,8001d11a <emit_return+0xc0>
quickjs-nuttx/quickjs.c:25890
                emit_op(s, OP_undefined);
    8001d112:	4599                	li	a1,6
    8001d114:	8522                	mv	a0,s0
    8001d116:	fe1eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25897
            emit_op(s, OP_nip_catch);
    8001d11a:	07000593          	li	a1,112
    8001d11e:	8522                	mv	a0,s0
    8001d120:	fd7eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25899
            if (top->has_iterator) {
    8001d124:	02092783          	lw	a5,32(s2)
    8001d128:	0c078163          	beqz	a5,8001d1ea <emit_return+0x190>
quickjs-nuttx/quickjs.c:25900
                if (s->cur_func->func_kind == JS_FUNC_ASYNC_GENERATOR) {
    8001d12c:	743c                	ld	a5,104(s0)
    8001d12e:	0847c783          	lbu	a5,132(a5)
    8001d132:	0b479163          	bne	a5,s4,8001d1d4 <emit_return+0x17a>
quickjs-nuttx/quickjs.c:25902
                    emit_op(s, OP_nip); /* next */
    8001d136:	45bd                	li	a1,15
    8001d138:	8522                	mv	a0,s0
    8001d13a:	fbdeb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25903
                    emit_op(s, OP_swap);
    8001d13e:	45ed                	li	a1,27
    8001d140:	8522                	mv	a0,s0
    8001d142:	fb5eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25904
                    emit_op(s, OP_get_field2);
    8001d146:	04200593          	li	a1,66
    8001d14a:	8522                	mv	a0,s0
    8001d14c:	fabeb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25905
                    emit_atom(s, JS_ATOM_return);
    8001d150:	4599                	li	a1,6
    8001d152:	8522                	mv	a0,s0
    8001d154:	fd7ed0ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:25907
                    emit_op(s, OP_dup);
    8001d158:	45c5                	li	a1,17
    8001d15a:	8522                	mv	a0,s0
    8001d15c:	f9beb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25908
                    emit_op(s, OP_is_undefined_or_null);
    8001d160:	0b100593          	li	a1,177
    8001d164:	8522                	mv	a0,s0
    8001d166:	f91eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25909
                    label_next = emit_goto(s, OP_if_true, -1);
    8001d16a:	567d                	li	a2,-1
    8001d16c:	06b00593          	li	a1,107
    8001d170:	8522                	mv	a0,s0
    8001d172:	e03ff0ef          	jal	ra,8001cf74 <emit_goto>
    8001d176:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:25910
                    emit_op(s, OP_call_method);
    8001d178:	02400593          	li	a1,36
    8001d17c:	8522                	mv	a0,s0
    8001d17e:	f79eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25911
                    emit_u16(s, 0);
    8001d182:	4581                	li	a1,0
    8001d184:	8522                	mv	a0,s0
    8001d186:	e3feb0ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:25912
                    emit_op(s, OP_iterator_check_object);
    8001d18a:	08300593          	li	a1,131
    8001d18e:	8522                	mv	a0,s0
    8001d190:	f67eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25913
                    emit_op(s, OP_await);
    8001d194:	08c00593          	li	a1,140
    8001d198:	8522                	mv	a0,s0
    8001d19a:	f5deb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25914
                    label_next2 = emit_goto(s, OP_goto, -1);
    8001d19e:	567d                	li	a2,-1
    8001d1a0:	06c00593          	li	a1,108
    8001d1a4:	8522                	mv	a0,s0
    8001d1a6:	dcfff0ef          	jal	ra,8001cf74 <emit_goto>
    8001d1aa:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:25915
                    emit_label(s, label_next);
    8001d1ac:	85ce                	mv	a1,s3
    8001d1ae:	8522                	mv	a0,s0
    8001d1b0:	8e4ec0ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:25916
                    emit_op(s, OP_drop);
    8001d1b4:	45b9                	li	a1,14
    8001d1b6:	8522                	mv	a0,s0
    8001d1b8:	f3feb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25917
                    emit_label(s, label_next2);
    8001d1bc:	85a6                	mv	a1,s1
    8001d1be:	8522                	mv	a0,s0
    8001d1c0:	8d4ec0ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:25918
                    emit_op(s, OP_drop);
    8001d1c4:	45b9                	li	a1,14
quickjs-nuttx/quickjs.c:25922
                    emit_op(s, OP_iterator_close);
    8001d1c6:	8522                	mv	a0,s0
    8001d1c8:	f2feb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25926
                emit_goto(s, OP_gosub, top->label_finally);
    8001d1cc:	4485                	li	s1,1
quickjs-nuttx/quickjs.c:25929
        top = top->prev;
    8001d1ce:	00093903          	ld	s2,0(s2)
    8001d1d2:	bd55                	j	8001d086 <emit_return+0x2c>
quickjs-nuttx/quickjs.c:25920
                    emit_op(s, OP_rot3r);
    8001d1d4:	45f9                	li	a1,30
    8001d1d6:	8522                	mv	a0,s0
    8001d1d8:	f1feb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25921
                    emit_op(s, OP_undefined); /* dummy catch offset */
    8001d1dc:	4599                	li	a1,6
    8001d1de:	8522                	mv	a0,s0
    8001d1e0:	f17eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25922
                    emit_op(s, OP_iterator_close);
    8001d1e4:	08500593          	li	a1,133
    8001d1e8:	bff9                	j	8001d1c6 <emit_return+0x16c>
quickjs-nuttx/quickjs.c:25926
                emit_goto(s, OP_gosub, top->label_finally);
    8001d1ea:	01892603          	lw	a2,24(s2)
    8001d1ee:	06e00593          	li	a1,110
    8001d1f2:	8522                	mv	a0,s0
    8001d1f4:	d81ff0ef          	jal	ra,8001cf74 <emit_goto>
    8001d1f8:	bfd1                	j	8001d1cc <emit_return+0x172>
quickjs-nuttx/quickjs.c:25952
    } else if (s->cur_func->func_kind != JS_FUNC_NORMAL) {
    8001d1fa:	0847c783          	lbu	a5,132(a5)
quickjs-nuttx/quickjs.c:25953
        emit_op(s, OP_return_async);
    8001d1fe:	02e00593          	li	a1,46
quickjs-nuttx/quickjs.c:25952
    } else if (s->cur_func->func_kind != JS_FUNC_NORMAL) {
    8001d202:	ec079de3          	bnez	a5,8001d0dc <emit_return+0x82>
quickjs-nuttx/quickjs.c:25955
        emit_op(s, hasval ? OP_return : OP_return_undef);
    8001d206:	02900593          	li	a1,41
    8001d20a:	9d85                	subw	a1,a1,s1
    8001d20c:	0ff5f593          	zext.b	a1,a1
    8001d210:	b5f1                	j	8001d0dc <emit_return+0x82>

000000008001d212 <optional_chain_test>:
optional_chain_test():
quickjs-nuttx/quickjs.c:24285
{
    8001d212:	7179                	addi	sp,sp,-48
    8001d214:	f022                	sd	s0,32(sp)
    8001d216:	ec26                	sd	s1,24(sp)
    8001d218:	e44e                	sd	s3,8(sp)
    8001d21a:	f406                	sd	ra,40(sp)
    8001d21c:	e84a                	sd	s2,16(sp)
quickjs-nuttx/quickjs.c:24287
    if (*poptional_chaining_label < 0)
    8001d21e:	419c                	lw	a5,0(a1)
quickjs-nuttx/quickjs.c:24285
{
    8001d220:	842a                	mv	s0,a0
    8001d222:	84ae                	mv	s1,a1
    8001d224:	89b2                	mv	s3,a2
quickjs-nuttx/quickjs.c:24287
    if (*poptional_chaining_label < 0)
    8001d226:	0007d563          	bgez	a5,8001d230 <optional_chain_test+0x1e>
quickjs-nuttx/quickjs.c:24288
        *poptional_chaining_label = new_label(s);
    8001d22a:	d43ff0ef          	jal	ra,8001cf6c <new_label>
    8001d22e:	c088                	sw	a0,0(s1)
quickjs-nuttx/quickjs.c:24290
    emit_op(s, OP_dup);
    8001d230:	45c5                	li	a1,17
    8001d232:	8522                	mv	a0,s0
    8001d234:	ec3eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24291
    emit_op(s, OP_is_undefined_or_null);
    8001d238:	0b100593          	li	a1,177
    8001d23c:	8522                	mv	a0,s0
    8001d23e:	eb9eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24292
    label_next = emit_goto(s, OP_if_false, -1);
    8001d242:	567d                	li	a2,-1
    8001d244:	06a00593          	li	a1,106
    8001d248:	8522                	mv	a0,s0
    8001d24a:	d2bff0ef          	jal	ra,8001cf74 <emit_goto>
    8001d24e:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:24294
        emit_op(s, OP_drop);
    8001d250:	45b9                	li	a1,14
    8001d252:	8522                	mv	a0,s0
    8001d254:	ea3eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24293
    for(i = 0; i < drop_count; i++)
    8001d258:	4789                	li	a5,2
    8001d25a:	00f99663          	bne	s3,a5,8001d266 <optional_chain_test+0x54>
quickjs-nuttx/quickjs.c:24294 (discriminator 3)
        emit_op(s, OP_drop);
    8001d25e:	45b9                	li	a1,14
    8001d260:	8522                	mv	a0,s0
    8001d262:	e95eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24295
    emit_op(s, OP_undefined);
    8001d266:	8522                	mv	a0,s0
    8001d268:	4599                	li	a1,6
    8001d26a:	e8deb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24296
    emit_goto(s, OP_goto, *poptional_chaining_label);
    8001d26e:	4090                	lw	a2,0(s1)
    8001d270:	06c00593          	li	a1,108
    8001d274:	8522                	mv	a0,s0
    8001d276:	cffff0ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:24297
    emit_label(s, label_next);
    8001d27a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:24298
}
    8001d27c:	7402                	ld	s0,32(sp)
    8001d27e:	70a2                	ld	ra,40(sp)
    8001d280:	64e2                	ld	s1,24(sp)
    8001d282:	69a2                	ld	s3,8(sp)
quickjs-nuttx/quickjs.c:24297
    emit_label(s, label_next);
    8001d284:	85ca                	mv	a1,s2
quickjs-nuttx/quickjs.c:24298
}
    8001d286:	6942                	ld	s2,16(sp)
    8001d288:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:24297
    emit_label(s, label_next);
    8001d28a:	80aec06f          	j	80009294 <emit_label>

000000008001d28e <js_emit_spread_code>:
js_emit_spread_code():
quickjs-nuttx/quickjs.c:23790
{
    8001d28e:	1101                	addi	sp,sp,-32
    8001d290:	e426                	sd	s1,8(sp)
    8001d292:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:23797
    emit_op(s, OP_array_from);
    8001d294:	02600593          	li	a1,38
quickjs-nuttx/quickjs.c:23790
{
    8001d298:	ec06                	sd	ra,24(sp)
    8001d29a:	e822                	sd	s0,16(sp)
    8001d29c:	e04a                	sd	s2,0(sp)
    8001d29e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:23797
    emit_op(s, OP_array_from);
    8001d2a0:	e57eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23798
    emit_u16(s, 0);
    8001d2a4:	8522                	mv	a0,s0
    8001d2a6:	4581                	li	a1,0
    8001d2a8:	d1deb0ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:23799
    emit_op(s, OP_push_i32);
    8001d2ac:	8522                	mv	a0,s0
    8001d2ae:	4585                	li	a1,1
    8001d2b0:	e47eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23800
    emit_u32(s, 0);
    8001d2b4:	4581                	li	a1,0
    8001d2b6:	8522                	mv	a0,s0
    8001d2b8:	fd5eb0ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:23801
    emit_label(s, label_rest_next = new_label(s));
    8001d2bc:	8522                	mv	a0,s0
    8001d2be:	cafff0ef          	jal	ra,8001cf6c <new_label>
    8001d2c2:	892a                	mv	s2,a0
    8001d2c4:	85aa                	mv	a1,a0
    8001d2c6:	8522                	mv	a0,s0
    8001d2c8:	fcdeb0ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:23802
    emit_op(s, OP_for_of_next);
    8001d2cc:	8522                	mv	a0,s0
    8001d2ce:	08200593          	li	a1,130
    8001d2d2:	e25eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23803
    emit_u8(s, 2 + depth);
    8001d2d6:	0024859b          	addiw	a1,s1,2
    8001d2da:	8522                	mv	a0,s0
    8001d2dc:	0ff5f593          	zext.b	a1,a1
    8001d2e0:	a25eb0ef          	jal	ra,80008d04 <emit_u8>
quickjs-nuttx/quickjs.c:23804
    label_rest_done = emit_goto(s, OP_if_true, -1);
    8001d2e4:	567d                	li	a2,-1
    8001d2e6:	06b00593          	li	a1,107
    8001d2ea:	8522                	mv	a0,s0
    8001d2ec:	c89ff0ef          	jal	ra,8001cf74 <emit_goto>
    8001d2f0:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:23806
    emit_op(s, OP_define_array_el);
    8001d2f2:	05100593          	li	a1,81
    8001d2f6:	8522                	mv	a0,s0
    8001d2f8:	dffeb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23807
    emit_op(s, OP_inc);
    8001d2fc:	8522                	mv	a0,s0
    8001d2fe:	09000593          	li	a1,144
    8001d302:	df5eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23808
    emit_goto(s, OP_goto, label_rest_next);
    8001d306:	864a                	mv	a2,s2
    8001d308:	06c00593          	li	a1,108
    8001d30c:	8522                	mv	a0,s0
    8001d30e:	c67ff0ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:23809
    emit_label(s, label_rest_done);
    8001d312:	85a6                	mv	a1,s1
    8001d314:	8522                	mv	a0,s0
    8001d316:	f7feb0ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:23811
    emit_op(s, OP_drop);
    8001d31a:	8522                	mv	a0,s0
    8001d31c:	45b9                	li	a1,14
    8001d31e:	dd9eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23812
    emit_op(s, OP_drop);
    8001d322:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:23813
}
    8001d324:	6442                	ld	s0,16(sp)
    8001d326:	60e2                	ld	ra,24(sp)
    8001d328:	64a2                	ld	s1,8(sp)
    8001d32a:	6902                	ld	s2,0(sp)
quickjs-nuttx/quickjs.c:23812
    emit_op(s, OP_drop);
    8001d32c:	45b9                	li	a1,14
quickjs-nuttx/quickjs.c:23813
}
    8001d32e:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:23812
    emit_op(s, OP_drop);
    8001d330:	dc7eb06f          	j	800090f6 <emit_op>

000000008001d334 <var_object_test>:
var_object_test():
quickjs-nuttx/quickjs.c:30157
{
    8001d334:	7139                	addi	sp,sp,-64
    8001d336:	f822                	sd	s0,48(sp)
    8001d338:	f426                	sd	s1,40(sp)
    8001d33a:	f04a                	sd	s2,32(sp)
    8001d33c:	ec4e                	sd	s3,24(sp)
    8001d33e:	e852                	sd	s4,16(sp)
    8001d340:	e456                	sd	s5,8(sp)
    8001d342:	893e                	mv	s2,a5
    8001d344:	fc06                	sd	ra,56(sp)
get_with_scope_opcode():
quickjs-nuttx/quickjs.c:29961
    if (op == OP_scope_get_var_undef)
    8001d346:	0b900793          	li	a5,185
var_object_test():
quickjs-nuttx/quickjs.c:30157
{
    8001d34a:	842e                	mv	s0,a1
    8001d34c:	8a2a                	mv	s4,a0
    8001d34e:	8ab2                	mv	s5,a2
    8001d350:	84ba                	mv	s1,a4
    8001d352:	89c2                	mv	s3,a6
    8001d354:	07400593          	li	a1,116
get_with_scope_opcode():
quickjs-nuttx/quickjs.c:29961
    if (op == OP_scope_get_var_undef)
    8001d358:	00f68463          	beq	a3,a5,8001d360 <var_object_test+0x2c>
quickjs-nuttx/quickjs.c:29964
        return OP_with_get_var + (op - OP_scope_get_var);
    8001d35c:	fba6859b          	addiw	a1,a3,-70
var_object_test():
quickjs-nuttx/quickjs.c:30158
    dbuf_putc(bc, get_with_scope_opcode(op));
    8001d360:	0ff5f593          	zext.b	a1,a1
    8001d364:	8526                	mv	a0,s1
    8001d366:	77c340ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30159
    dbuf_put_u32(bc, JS_DupAtom(ctx, var_name));
    8001d36a:	85d6                	mv	a1,s5
    8001d36c:	8552                	mv	a0,s4
    8001d36e:	d99ed0ef          	jal	ra,8000b106 <JS_DupAtom>
    8001d372:	0005059b          	sext.w	a1,a0
    8001d376:	8526                	mv	a0,s1
    8001d378:	d6beb0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:30160
    *plabel_done = new_label_fd(s, *plabel_done);
    8001d37c:	00092583          	lw	a1,0(s2)
    8001d380:	8522                	mv	a0,s0
    8001d382:	b91ff0ef          	jal	ra,8001cf12 <new_label_fd>
    8001d386:	00a92023          	sw	a0,0(s2)
quickjs-nuttx/quickjs.c:30161
    dbuf_put_u32(bc, *plabel_done);
    8001d38a:	0005059b          	sext.w	a1,a0
    8001d38e:	8526                	mv	a0,s1
    8001d390:	d53eb0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:30162
    dbuf_putc(bc, is_with);
    8001d394:	0ff9f593          	zext.b	a1,s3
    8001d398:	8526                	mv	a0,s1
    8001d39a:	748340ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30163
    update_label(s, *plabel_done, 1);
    8001d39e:	00092583          	lw	a1,0(s2)
    8001d3a2:	8522                	mv	a0,s0
    8001d3a4:	4605                	li	a2,1
    8001d3a6:	baaec0ef          	jal	ra,80009750 <update_label>
quickjs-nuttx/quickjs.c:30164
    s->jump_size++;
    8001d3aa:	1b042783          	lw	a5,432(s0)
quickjs-nuttx/quickjs.c:30165
}
    8001d3ae:	70e2                	ld	ra,56(sp)
    8001d3b0:	74a2                	ld	s1,40(sp)
quickjs-nuttx/quickjs.c:30164
    s->jump_size++;
    8001d3b2:	2785                	addiw	a5,a5,1
    8001d3b4:	1af42823          	sw	a5,432(s0)
quickjs-nuttx/quickjs.c:30165
}
    8001d3b8:	7442                	ld	s0,48(sp)
    8001d3ba:	7902                	ld	s2,32(sp)
    8001d3bc:	69e2                	ld	s3,24(sp)
    8001d3be:	6a42                	ld	s4,16(sp)
    8001d3c0:	6aa2                	ld	s5,8(sp)
    8001d3c2:	6121                	addi	sp,sp,64
    8001d3c4:	8082                	ret

000000008001d3c6 <cpool_add>:
cpool_add():
quickjs-nuttx/quickjs.c:21560
{
    8001d3c6:	1101                	addi	sp,sp,-32
    8001d3c8:	ec06                	sd	ra,24(sp)
    8001d3ca:	e822                	sd	s0,16(sp)
quickjs-nuttx/quickjs.c:21561
    JSFunctionDef *fd = s->cur_func;
    8001d3cc:	7520                	ld	s0,104(a0)
quickjs-nuttx/quickjs.c:21563
    if (js_resize_array(s->ctx, (void *)&fd->cpool, sizeof(fd->cpool[0]),
    8001d3ce:	6108                	ld	a0,0(a0)
quickjs-nuttx/quickjs.c:21560
{
    8001d3d0:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:21563
    if (js_resize_array(s->ctx, (void *)&fd->cpool, sizeof(fd->cpool[0]),
    8001d3d2:	19042703          	lw	a4,400(s0)
quickjs-nuttx/quickjs.c:21560
{
    8001d3d6:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:21563
    if (js_resize_array(s->ctx, (void *)&fd->cpool, sizeof(fd->cpool[0]),
    8001d3d8:	19440693          	addi	a3,s0,404
    8001d3dc:	2705                	addiw	a4,a4,1
    8001d3de:	4641                	li	a2,16
    8001d3e0:	18840593          	addi	a1,s0,392
    8001d3e4:	dc8ff0ef          	jal	ra,8001c9ac <js_resize_array>
    8001d3e8:	e515                	bnez	a0,8001d414 <cpool_add+0x4e>
quickjs-nuttx/quickjs.c:21566
    fd->cpool[fd->cpool_count++] = val;
    8001d3ea:	19042703          	lw	a4,400(s0)
    8001d3ee:	18843783          	ld	a5,392(s0)
    8001d3f2:	0017069b          	addiw	a3,a4,1
    8001d3f6:	0712                	slli	a4,a4,0x4
    8001d3f8:	97ba                	add	a5,a5,a4
    8001d3fa:	6702                	ld	a4,0(sp)
    8001d3fc:	18d42823          	sw	a3,400(s0)
    8001d400:	e398                	sd	a4,0(a5)
    8001d402:	6722                	ld	a4,8(sp)
    8001d404:	e798                	sd	a4,8(a5)
quickjs-nuttx/quickjs.c:21567
    return fd->cpool_count - 1;
    8001d406:	19042503          	lw	a0,400(s0)
    8001d40a:	357d                	addiw	a0,a0,-1
quickjs-nuttx/quickjs.c:21568
}
    8001d40c:	60e2                	ld	ra,24(sp)
    8001d40e:	6442                	ld	s0,16(sp)
    8001d410:	6105                	addi	sp,sp,32
    8001d412:	8082                	ret
quickjs-nuttx/quickjs.c:21565
        return -1;
    8001d414:	557d                	li	a0,-1
    8001d416:	bfdd                	j	8001d40c <cpool_add+0x46>

000000008001d418 <emit_push_const>:
emit_push_const():
quickjs-nuttx/quickjs.c:21572
{
    8001d418:	7139                	addi	sp,sp,-64
    8001d41a:	f822                	sd	s0,48(sp)
    8001d41c:	fc06                	sd	ra,56(sp)
    8001d41e:	f426                	sd	s1,40(sp)
    8001d420:	e02e                	sd	a1,0(sp)
    8001d422:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:21575
    if (JS_VALUE_GET_TAG(val) == JS_TAG_STRING && as_atom) {
    8001d424:	0006071b          	sext.w	a4,a2
    8001d428:	57e5                	li	a5,-7
quickjs-nuttx/quickjs.c:21572
{
    8001d42a:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:21575
    if (JS_VALUE_GET_TAG(val) == JS_TAG_STRING && as_atom) {
    8001d42c:	02f71d63          	bne	a4,a5,8001d466 <emit_push_const+0x4e>
quickjs-nuttx/quickjs.c:21575 (discriminator 1)
    8001d430:	ca9d                	beqz	a3,8001d466 <emit_push_const+0x4e>
quickjs-nuttx/quickjs.c:21578
        JS_DupValue(s->ctx, val);
    8001d432:	852e                	mv	a0,a1
    8001d434:	85b2                	mv	a1,a2
    8001d436:	fe5ec0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:21579
        atom = JS_NewAtomStr(s->ctx, JS_VALUE_GET_STRING(val));
    8001d43a:	6582                	ld	a1,0(sp)
    8001d43c:	6008                	ld	a0,0(s0)
    8001d43e:	b77ed0ef          	jal	ra,8000afb4 <JS_NewAtomStr>
    8001d442:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:21580
        if (atom != JS_ATOM_NULL && !__JS_AtomIsTaggedInt(atom)) {
    8001d446:	02905063          	blez	s1,8001d466 <emit_push_const+0x4e>
quickjs-nuttx/quickjs.c:21581
            emit_op(s, OP_push_atom_value);
    8001d44a:	4591                	li	a1,4
    8001d44c:	8522                	mv	a0,s0
    8001d44e:	ca9eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:21582
            emit_u32(s, atom);
    8001d452:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:21591
    emit_u32(s, idx);
    8001d454:	8522                	mv	a0,s0
    8001d456:	e37eb0ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:21592
    return 0;
    8001d45a:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:21593
}
    8001d45c:	70e2                	ld	ra,56(sp)
    8001d45e:	7442                	ld	s0,48(sp)
    8001d460:	74a2                	ld	s1,40(sp)
    8001d462:	6121                	addi	sp,sp,64
    8001d464:	8082                	ret
quickjs-nuttx/quickjs.c:21587
    idx = cpool_add(s, JS_DupValue(s->ctx, val));
    8001d466:	6502                	ld	a0,0(sp)
    8001d468:	65a2                	ld	a1,8(sp)
    8001d46a:	fb1ec0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001d46e:	862e                	mv	a2,a1
    8001d470:	85aa                	mv	a1,a0
    8001d472:	8522                	mv	a0,s0
    8001d474:	f53ff0ef          	jal	ra,8001d3c6 <cpool_add>
    8001d478:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:21589
        return -1;
    8001d47a:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:21588
    if (idx < 0)
    8001d47c:	fe04c0e3          	bltz	s1,8001d45c <emit_push_const+0x44>
quickjs-nuttx/quickjs.c:21590
    emit_op(s, OP_push_const);
    8001d480:	4589                	li	a1,2
    8001d482:	8522                	mv	a0,s0
    8001d484:	c73eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:21591
    emit_u32(s, idx);
    8001d488:	0004859b          	sext.w	a1,s1
    8001d48c:	b7e1                	j	8001d454 <emit_push_const+0x3c>

000000008001d48e <emit_class_init_end>:
emit_class_init_end():
quickjs-nuttx/quickjs.c:22826
{
    8001d48e:	7179                	addi	sp,sp,-48
    8001d490:	f406                	sd	ra,40(sp)
    8001d492:	f022                	sd	s0,32(sp)
    8001d494:	ec26                	sd	s1,24(sp)
    8001d496:	e84a                	sd	s2,16(sp)
quickjs-nuttx/quickjs.c:22829
    s->cur_func = cf->fields_init_fd;
    8001d498:	619c                	ld	a5,0(a1)
quickjs-nuttx/quickjs.c:22826
{
    8001d49a:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:22830
    emit_op(s, OP_return_undef);
    8001d49c:	02900593          	li	a1,41
quickjs-nuttx/quickjs.c:22829
    s->cur_func = cf->fields_init_fd;
    8001d4a0:	f53c                	sd	a5,104(a0)
quickjs-nuttx/quickjs.c:22826
{
    8001d4a2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:22830
    emit_op(s, OP_return_undef);
    8001d4a4:	c53eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22831
    s->cur_func = s->cur_func->parent;
    8001d4a8:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:22833
    cpool_idx = cpool_add(s, JS_NULL);
    8001d4aa:	4609                	li	a2,2
    8001d4ac:	4581                	li	a1,0
quickjs-nuttx/quickjs.c:22831
    s->cur_func = s->cur_func->parent;
    8001d4ae:	679c                	ld	a5,8(a5)
quickjs-nuttx/quickjs.c:22833
    cpool_idx = cpool_add(s, JS_NULL);
    8001d4b0:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:22831
    s->cur_func = s->cur_func->parent;
    8001d4b2:	f43c                	sd	a5,104(s0)
quickjs-nuttx/quickjs.c:22833
    cpool_idx = cpool_add(s, JS_NULL);
    8001d4b4:	f13ff0ef          	jal	ra,8001d3c6 <cpool_add>
quickjs-nuttx/quickjs.c:22834
    cf->fields_init_fd->parent_cpool_idx = cpool_idx;
    8001d4b8:	00093783          	ld	a5,0(s2)
quickjs-nuttx/quickjs.c:22833
    cpool_idx = cpool_add(s, JS_NULL);
    8001d4bc:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:22835
    emit_op(s, OP_fclosure);
    8001d4be:	458d                	li	a1,3
quickjs-nuttx/quickjs.c:22834
    cf->fields_init_fd->parent_cpool_idx = cpool_idx;
    8001d4c0:	cb88                	sw	a0,16(a5)
quickjs-nuttx/quickjs.c:22835
    emit_op(s, OP_fclosure);
    8001d4c2:	8522                	mv	a0,s0
    8001d4c4:	c33eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22836
    emit_u32(s, cpool_idx);
    8001d4c8:	0004859b          	sext.w	a1,s1
    8001d4cc:	8522                	mv	a0,s0
    8001d4ce:	dbfeb0ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:22837
    emit_op(s, OP_set_home_object);
    8001d4d2:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:22838
}
    8001d4d4:	7402                	ld	s0,32(sp)
    8001d4d6:	70a2                	ld	ra,40(sp)
    8001d4d8:	64e2                	ld	s1,24(sp)
    8001d4da:	6942                	ld	s2,16(sp)
quickjs-nuttx/quickjs.c:22837
    emit_op(s, OP_set_home_object);
    8001d4dc:	05000593          	li	a1,80
quickjs-nuttx/quickjs.c:22838
}
    8001d4e0:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:22837
    emit_op(s, OP_set_home_object);
    8001d4e2:	c15eb06f          	j	800090f6 <emit_op>

000000008001d4e6 <add_global_var>:
add_global_var():
quickjs-nuttx/quickjs.c:21872
{
    8001d4e6:	7179                	addi	sp,sp,-48
    8001d4e8:	f022                	sd	s0,32(sp)
    8001d4ea:	ec26                	sd	s1,24(sp)
    8001d4ec:	e84a                	sd	s2,16(sp)
    8001d4ee:	e44e                	sd	s3,8(sp)
    8001d4f0:	f406                	sd	ra,40(sp)
quickjs-nuttx/quickjs.c:21875
    if (js_resize_array(ctx, (void **)&s->global_vars,
    8001d4f2:	11c5a703          	lw	a4,284(a1)
    8001d4f6:	12058693          	addi	a3,a1,288
quickjs-nuttx/quickjs.c:21872
{
    8001d4fa:	84ae                	mv	s1,a1
    8001d4fc:	89b2                	mv	s3,a2
quickjs-nuttx/quickjs.c:21875
    if (js_resize_array(ctx, (void **)&s->global_vars,
    8001d4fe:	2705                	addiw	a4,a4,1
    8001d500:	4641                	li	a2,16
    8001d502:	12858593          	addi	a1,a1,296
quickjs-nuttx/quickjs.c:21872
{
    8001d506:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:21875
    if (js_resize_array(ctx, (void **)&s->global_vars,
    8001d508:	ca4ff0ef          	jal	ra,8001c9ac <js_resize_array>
quickjs-nuttx/quickjs.c:21878
        return NULL;
    8001d50c:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:21875
    if (js_resize_array(ctx, (void **)&s->global_vars,
    8001d50e:	e915                	bnez	a0,8001d542 <add_global_var+0x5c>
quickjs-nuttx/quickjs.c:21879
    hf = &s->global_vars[s->global_var_count++];
    8001d510:	11c4a783          	lw	a5,284(s1)
    8001d514:	1284b403          	ld	s0,296(s1)
quickjs-nuttx/quickjs.c:21885
    hf->var_name = JS_DupAtom(ctx, name);
    8001d518:	85ce                	mv	a1,s3
quickjs-nuttx/quickjs.c:21879
    hf = &s->global_vars[s->global_var_count++];
    8001d51a:	0017871b          	addiw	a4,a5,1
    8001d51e:	0792                	slli	a5,a5,0x4
    8001d520:	943e                	add	s0,s0,a5
    8001d522:	10e4ae23          	sw	a4,284(s1)
quickjs-nuttx/quickjs.c:21880
    hf->cpool_idx = -1;
    8001d526:	57fd                	li	a5,-1
    8001d528:	c01c                	sw	a5,0(s0)
quickjs-nuttx/quickjs.c:21881
    hf->force_init = FALSE;
    8001d52a:	00444783          	lbu	a5,4(s0)
quickjs-nuttx/quickjs.c:21885
    hf->var_name = JS_DupAtom(ctx, name);
    8001d52e:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:21881
    hf->force_init = FALSE;
    8001d530:	9be1                	andi	a5,a5,-8
    8001d532:	00f40223          	sb	a5,4(s0)
quickjs-nuttx/quickjs.c:21884
    hf->scope_level = s->scope_level;
    8001d536:	0e04a783          	lw	a5,224(s1)
    8001d53a:	c41c                	sw	a5,8(s0)
quickjs-nuttx/quickjs.c:21885
    hf->var_name = JS_DupAtom(ctx, name);
    8001d53c:	bcbed0ef          	jal	ra,8000b106 <JS_DupAtom>
    8001d540:	c448                	sw	a0,12(s0)
quickjs-nuttx/quickjs.c:21887
}
    8001d542:	70a2                	ld	ra,40(sp)
    8001d544:	8522                	mv	a0,s0
    8001d546:	7402                	ld	s0,32(sp)
    8001d548:	64e2                	ld	s1,24(sp)
    8001d54a:	6942                	ld	s2,16(sp)
    8001d54c:	69a2                	ld	s3,8(sp)
    8001d54e:	6145                	addi	sp,sp,48
    8001d550:	8082                	ret

000000008001d552 <add_req_module_entry>:
add_req_module_entry():
quickjs-nuttx/quickjs.c:27213
{
    8001d552:	7179                	addi	sp,sp,-48
    8001d554:	f022                	sd	s0,32(sp)
    8001d556:	ec26                	sd	s1,24(sp)
    8001d558:	e84a                	sd	s2,16(sp)
    8001d55a:	f406                	sd	ra,40(sp)
    8001d55c:	e44e                	sd	s3,8(sp)
quickjs-nuttx/quickjs.c:27218
    for(i = 0; i < m->req_module_entries_count; i++) {
    8001d55e:	5198                	lw	a4,32(a1)
quickjs-nuttx/quickjs.c:27213
{
    8001d560:	84aa                	mv	s1,a0
    8001d562:	842e                	mv	s0,a1
    8001d564:	8932                	mv	s2,a2
quickjs-nuttx/quickjs.c:27218
    for(i = 0; i < m->req_module_entries_count; i++) {
    8001d566:	4781                	li	a5,0
    8001d568:	0007899b          	sext.w	s3,a5
quickjs-nuttx/quickjs.c:27218 (discriminator 1)
    8001d56c:	02e9cc63          	blt	s3,a4,8001d5a4 <add_req_module_entry+0x52>
quickjs-nuttx/quickjs.c:27224
    if (js_resize_array(ctx, (void **)&m->req_module_entries,
    8001d570:	2705                	addiw	a4,a4,1
    8001d572:	02440693          	addi	a3,s0,36
    8001d576:	4641                	li	a2,16
    8001d578:	01840593          	addi	a1,s0,24
    8001d57c:	8526                	mv	a0,s1
    8001d57e:	c2eff0ef          	jal	ra,8001c9ac <js_resize_array>
    8001d582:	e129                	bnez	a0,8001d5c4 <add_req_module_entry+0x72>
quickjs-nuttx/quickjs.c:27229
    rme = &m->req_module_entries[m->req_module_entries_count++];
    8001d584:	5018                	lw	a4,32(s0)
    8001d586:	6c1c                	ld	a5,24(s0)
quickjs-nuttx/quickjs.c:27230
    rme->module_name = JS_DupAtom(ctx, module_name);
    8001d588:	85ca                	mv	a1,s2
quickjs-nuttx/quickjs.c:27229
    rme = &m->req_module_entries[m->req_module_entries_count++];
    8001d58a:	0017069b          	addiw	a3,a4,1
    8001d58e:	d014                	sw	a3,32(s0)
quickjs-nuttx/quickjs.c:27230
    rme->module_name = JS_DupAtom(ctx, module_name);
    8001d590:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:27229
    rme = &m->req_module_entries[m->req_module_entries_count++];
    8001d592:	00471413          	slli	s0,a4,0x4
    8001d596:	943e                	add	s0,s0,a5
quickjs-nuttx/quickjs.c:27230
    rme->module_name = JS_DupAtom(ctx, module_name);
    8001d598:	b6fed0ef          	jal	ra,8000b106 <JS_DupAtom>
    8001d59c:	c008                	sw	a0,0(s0)
quickjs-nuttx/quickjs.c:27231
    rme->module = NULL;
    8001d59e:	00043423          	sd	zero,8(s0)
quickjs-nuttx/quickjs.c:27232
    return i;
    8001d5a2:	a809                	j	8001d5b4 <add_req_module_entry+0x62>
quickjs-nuttx/quickjs.c:27220
        if (rme->module_name == module_name)
    8001d5a4:	6c14                	ld	a3,24(s0)
    8001d5a6:	00479613          	slli	a2,a5,0x4
    8001d5aa:	0785                	addi	a5,a5,1
    8001d5ac:	96b2                	add	a3,a3,a2
    8001d5ae:	4294                	lw	a3,0(a3)
    8001d5b0:	fb269ce3          	bne	a3,s2,8001d568 <add_req_module_entry+0x16>
quickjs-nuttx/quickjs.c:27233
}
    8001d5b4:	70a2                	ld	ra,40(sp)
    8001d5b6:	7402                	ld	s0,32(sp)
    8001d5b8:	64e2                	ld	s1,24(sp)
    8001d5ba:	6942                	ld	s2,16(sp)
    8001d5bc:	854e                	mv	a0,s3
    8001d5be:	69a2                	ld	s3,8(sp)
    8001d5c0:	6145                	addi	sp,sp,48
    8001d5c2:	8082                	ret
quickjs-nuttx/quickjs.c:27228
        return -1;
    8001d5c4:	59fd                	li	s3,-1
    8001d5c6:	b7fd                	j	8001d5b4 <add_req_module_entry+0x62>

000000008001d5c8 <js_map_set>:
js_map_set():
quickjs-nuttx/quickjs.c:47117
{
    8001d5c8:	7175                	addi	sp,sp,-144
quickjs-nuttx/quickjs.c:47118
    JSMapState *s = JS_GetOpaque2(ctx, this_val, JS_CLASS_MAP + magic);
    8001d5ca:	0267869b          	addiw	a3,a5,38
quickjs-nuttx/quickjs.c:47117
{
    8001d5ce:	e122                	sd	s0,128(sp)
    8001d5d0:	f0d2                	sd	s4,96(sp)
    8001d5d2:	ecd6                	sd	s5,88(sp)
    8001d5d4:	e506                	sd	ra,136(sp)
    8001d5d6:	fca6                	sd	s1,120(sp)
    8001d5d8:	f8ca                	sd	s2,112(sp)
    8001d5da:	f4ce                	sd	s3,104(sp)
    8001d5dc:	e8da                	sd	s6,80(sp)
    8001d5de:	8a2a                	mv	s4,a0
    8001d5e0:	e02e                	sd	a1,0(sp)
    8001d5e2:	e432                	sd	a2,8(sp)
    8001d5e4:	843a                	mv	s0,a4
    8001d5e6:	8abe                	mv	s5,a5
quickjs-nuttx/quickjs.c:47118
    JSMapState *s = JS_GetOpaque2(ctx, this_val, JS_CLASS_MAP + magic);
    8001d5e8:	a06fb0ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:47122
    if (!s)
    8001d5ec:	1c050263          	beqz	a0,8001d7b0 <js_map_set+0x1e8>
    8001d5f0:	00843903          	ld	s2,8(s0)
map_normalize_key():
quickjs-nuttx/quickjs.c:46911
    if (JS_TAG_IS_FLOAT64(tag) && JS_VALUE_GET_FLOAT64(key) == 0.0) {
    8001d5f4:	479d                	li	a5,7
    8001d5f6:	00043983          	ld	s3,0(s0)
    8001d5fa:	0009071b          	sext.w	a4,s2
    8001d5fe:	84aa                	mv	s1,a0
    8001d600:	00f71c63          	bne	a4,a5,8001d618 <js_map_set+0x50>
    8001d604:	f20007d3          	fmv.d.x	fa5,zero
    8001d608:	f2098753          	fmv.d.x	fa4,s3
    8001d60c:	a2f727d3          	feq.d	a5,fa4,fa5
    8001d610:	c781                	beqz	a5,8001d618 <js_map_set+0x50>
    8001d612:	e20789d3          	fmv.x.d	s3,fa5
    8001d616:	4901                	li	s2,0
js_map_set():
quickjs-nuttx/quickjs.c:47125
    if (s->is_weak && !JS_IsObject(key))
    8001d618:	409c                	lw	a5,0(s1)
    8001d61a:	c395                	beqz	a5,8001d63e <js_map_set+0x76>
quickjs-nuttx/quickjs.c:47125 (discriminator 1)
    8001d61c:	0009079b          	sext.w	a5,s2
    8001d620:	577d                	li	a4,-1
    8001d622:	00e78e63          	beq	a5,a4,8001d63e <js_map_set+0x76>
quickjs-nuttx/quickjs.c:47141
}
    8001d626:	640a                	ld	s0,128(sp)
    8001d628:	60aa                	ld	ra,136(sp)
    8001d62a:	74e6                	ld	s1,120(sp)
    8001d62c:	7946                	ld	s2,112(sp)
    8001d62e:	79a6                	ld	s3,104(sp)
    8001d630:	6ae6                	ld	s5,88(sp)
    8001d632:	6b46                	ld	s6,80(sp)
quickjs-nuttx/quickjs.c:47126
        return JS_ThrowTypeErrorNotAnObject(ctx);
    8001d634:	8552                	mv	a0,s4
quickjs-nuttx/quickjs.c:47141
}
    8001d636:	7a06                	ld	s4,96(sp)
    8001d638:	6149                	addi	sp,sp,144
quickjs-nuttx/quickjs.c:47126
        return JS_ThrowTypeErrorNotAnObject(ctx);
    8001d63a:	df0fb06f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:47127
    if (magic & MAGIC_SET)
    8001d63e:	001afa93          	andi	s5,s5,1
    8001d642:	040a8763          	beqz	s5,8001d690 <js_map_set+0xc8>
quickjs-nuttx/quickjs.c:47128
        value = JS_UNDEFINED;
    8001d646:	f002                	sd	zero,32(sp)
    8001d648:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:47131
    mr = map_find_record(ctx, s, key);
    8001d64a:	864e                	mv	a2,s3
    8001d64c:	86ca                	mv	a3,s2
    8001d64e:	85a6                	mv	a1,s1
    8001d650:	8552                	mv	a0,s4
quickjs-nuttx/quickjs.c:47130
        value = argv[1];
    8001d652:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:47131
    mr = map_find_record(ctx, s, key);
    8001d654:	e84e                	sd	s3,16(sp)
    8001d656:	ec4a                	sd	s2,24(sp)
    8001d658:	b74ee0ef          	jal	ra,8000b9cc <map_find_record>
    8001d65c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:47132
    if (mr) {
    8001d65e:	cd0d                	beqz	a0,8001d698 <js_map_set+0xd0>
quickjs-nuttx/quickjs.c:47133
        JS_FreeValue(ctx, mr->value);
    8001d660:	652c                	ld	a1,72(a0)
    8001d662:	6930                	ld	a2,80(a0)
    8001d664:	8552                	mv	a0,s4
    8001d666:	938ee0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47139
    mr->value = JS_DupValue(ctx, value);
    8001d66a:	7502                	ld	a0,32(sp)
    8001d66c:	75a2                	ld	a1,40(sp)
    8001d66e:	dadec0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001d672:	e428                	sd	a0,72(s0)
    8001d674:	e82c                	sd	a1,80(s0)
quickjs-nuttx/quickjs.c:47141
}
    8001d676:	640a                	ld	s0,128(sp)
quickjs-nuttx/quickjs.c:47140
    return JS_DupValue(ctx, this_val);
    8001d678:	6502                	ld	a0,0(sp)
    8001d67a:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:47141
}
    8001d67c:	60aa                	ld	ra,136(sp)
    8001d67e:	74e6                	ld	s1,120(sp)
    8001d680:	7946                	ld	s2,112(sp)
    8001d682:	79a6                	ld	s3,104(sp)
    8001d684:	7a06                	ld	s4,96(sp)
    8001d686:	6ae6                	ld	s5,88(sp)
    8001d688:	6b46                	ld	s6,80(sp)
    8001d68a:	6149                	addi	sp,sp,144
quickjs-nuttx/quickjs.c:47140
    return JS_DupValue(ctx, this_val);
    8001d68c:	d8fec06f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:47130
        value = argv[1];
    8001d690:	681c                	ld	a5,16(s0)
    8001d692:	f03e                	sd	a5,32(sp)
    8001d694:	6c1c                	ld	a5,24(s0)
    8001d696:	bf55                	j	8001d64a <js_map_set+0x82>
map_add_record():
quickjs-nuttx/quickjs.c:47010
    mr = js_malloc(ctx, sizeof(*mr));
    8001d698:	05800593          	li	a1,88
    8001d69c:	8552                	mv	a0,s4
    8001d69e:	a67fc0ef          	jal	ra,8001a104 <js_malloc>
    8001d6a2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:47011
    if (!mr)
    8001d6a4:	10050663          	beqz	a0,8001d7b0 <js_map_set+0x1e8>
quickjs-nuttx/quickjs.c:47013
    mr->ref_count = 1;
    8001d6a8:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:47014
    mr->map = s;
    8001d6aa:	e504                	sd	s1,8(a0)
quickjs-nuttx/quickjs.c:47013
    mr->ref_count = 1;
    8001d6ac:	e11c                	sd	a5,0(a0)
quickjs-nuttx/quickjs.c:47016
    if (s->is_weak) {
    8001d6ae:	409c                	lw	a5,0(s1)
    8001d6b0:	cbd5                	beqz	a5,8001d764 <js_map_set+0x19c>
quickjs-nuttx/quickjs.c:47019
        mr->next_weak_ref = p->first_weak_ref;
    8001d6b2:	0289b703          	ld	a4,40(s3)
    8001d6b6:	e918                	sd	a4,16(a0)
quickjs-nuttx/quickjs.c:47020
        p->first_weak_ref = mr;
    8001d6b8:	02a9b423          	sd	a0,40(s3)
quickjs-nuttx/quickjs.c:47024
    mr->key = (JSValue)key;
    8001d6bc:	03343c23          	sd	s3,56(s0)
    8001d6c0:	05243023          	sd	s2,64(s0)
quickjs-nuttx/quickjs.c:47025
    h = map_hash_key(ctx, key) & (s->hash_size - 1);
    8001d6c4:	854e                	mv	a0,s3
    8001d6c6:	85ca                	mv	a1,s2
    8001d6c8:	e0ce                	sd	s3,64(sp)
    8001d6ca:	e4ca                	sd	s2,72(sp)
    8001d6cc:	f61ec0ef          	jal	ra,8000a62c <map_hash_key.constprop.0>
    8001d6d0:	549c                	lw	a5,40(s1)
quickjs-nuttx/quickjs.c:47026
    list_add_tail(&mr->hash_link, &s->hash_table[h]);
    8001d6d2:	02840713          	addi	a4,s0,40
quickjs-nuttx/quickjs.c:47027
    list_add_tail(&mr->link, &s->records);
    8001d6d6:	00848a93          	addi	s5,s1,8
quickjs-nuttx/quickjs.c:47025
    h = map_hash_key(ctx, key) & (s->hash_size - 1);
    8001d6da:	37fd                	addiw	a5,a5,-1
    8001d6dc:	8d7d                	and	a0,a0,a5
quickjs-nuttx/quickjs.c:47026
    list_add_tail(&mr->hash_link, &s->hash_table[h]);
    8001d6de:	02051693          	slli	a3,a0,0x20
    8001d6e2:	7088                	ld	a0,32(s1)
    8001d6e4:	01c6d793          	srli	a5,a3,0x1c
    8001d6e8:	953e                	add	a0,a0,a5
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8001d6ea:	6114                	ld	a3,0(a0)
map_add_record():
quickjs-nuttx/quickjs.c:47027
    list_add_tail(&mr->link, &s->records);
    8001d6ec:	01840793          	addi	a5,s0,24
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8001d6f0:	e698                	sd	a4,8(a3)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8001d6f2:	f414                	sd	a3,40(s0)
quickjs-nuttx/list.h:53
    el->next = next;
    8001d6f4:	f808                	sd	a0,48(s0)
quickjs-nuttx/list.h:54
    next->prev = el;
    8001d6f6:	e118                	sd	a4,0(a0)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8001d6f8:	6498                	ld	a4,8(s1)
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8001d6fa:	e71c                	sd	a5,8(a4)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8001d6fc:	ec18                	sd	a4,24(s0)
quickjs-nuttx/list.h:53
    el->next = next;
    8001d6fe:	03543023          	sd	s5,32(s0)
quickjs-nuttx/list.h:54
    next->prev = el;
    8001d702:	e49c                	sd	a5,8(s1)
map_add_record():
quickjs-nuttx/quickjs.c:47028
    s->record_count++;
    8001d704:	4c9c                	lw	a5,24(s1)
    8001d706:	0017871b          	addiw	a4,a5,1
quickjs-nuttx/quickjs.c:47029
    if (s->record_count >= s->record_count_threshold) {
    8001d70a:	54dc                	lw	a5,44(s1)
quickjs-nuttx/quickjs.c:47028
    s->record_count++;
    8001d70c:	cc98                	sw	a4,24(s1)
quickjs-nuttx/quickjs.c:47029
    if (s->record_count >= s->record_count_threshold) {
    8001d70e:	f4f76ee3          	bltu	a4,a5,8001d66a <js_map_set+0xa2>
map_hash_resize():
quickjs-nuttx/quickjs.c:46979
    if (s->hash_size == 1)
    8001d712:	549c                	lw	a5,40(s1)
    8001d714:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:46980
        new_hash_size = 4;
    8001d716:	4911                	li	s2,4
quickjs-nuttx/quickjs.c:46979
    if (s->hash_size == 1)
    8001d718:	00e78463          	beq	a5,a4,8001d720 <js_map_set+0x158>
quickjs-nuttx/quickjs.c:46982
        new_hash_size = s->hash_size * 2;
    8001d71c:	0017991b          	slliw	s2,a5,0x1
quickjs-nuttx/quickjs.c:46983
    new_hash_table = js_realloc2(ctx, s->hash_table,
    8001d720:	708c                	ld	a1,32(s1)
    8001d722:	02091613          	slli	a2,s2,0x20
    8001d726:	9201                	srli	a2,a2,0x20
    8001d728:	8552                	mv	a0,s4
    8001d72a:	1814                	addi	a3,sp,48
    8001d72c:	0612                	slli	a2,a2,0x4
    8001d72e:	fe3fe0ef          	jal	ra,8001c710 <js_realloc2>
    8001d732:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:46985
    if (!new_hash_table)
    8001d734:	d91d                	beqz	a0,8001d66a <js_map_set+0xa2>
quickjs-nuttx/quickjs.c:46987
    new_hash_size += slack / sizeof(*new_hash_table);
    8001d736:	7742                	ld	a4,48(sp)
    8001d738:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:46989
    for(i = 0; i < new_hash_size; i++)
    8001d73a:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:46987
    new_hash_size += slack / sizeof(*new_hash_table);
    8001d73c:	8311                	srli	a4,a4,0x4
    8001d73e:	0127073b          	addw	a4,a4,s2
quickjs-nuttx/quickjs.c:46989
    for(i = 0; i < new_hash_size; i++)
    8001d742:	03371663          	bne	a4,s3,8001d76e <js_map_set+0x1a6>
quickjs-nuttx/quickjs.c:46992
    list_for_each(el, &s->records) {
    8001d746:	0104b903          	ld	s2,16(s1)
quickjs-nuttx/quickjs.c:46995
            h = map_hash_key(ctx, mr->key) & (new_hash_size - 1);
    8001d74a:	fff98b1b          	addiw	s6,s3,-1
quickjs-nuttx/quickjs.c:46992
    list_for_each(el, &s->records) {
    8001d74e:	032a9563          	bne	s5,s2,8001d778 <js_map_set+0x1b0>
quickjs-nuttx/quickjs.c:47000
    s->hash_size = new_hash_size;
    8001d752:	0334a423          	sw	s3,40(s1)
quickjs-nuttx/quickjs.c:47001
    s->record_count_threshold = new_hash_size * 2;
    8001d756:	0019999b          	slliw	s3,s3,0x1
quickjs-nuttx/quickjs.c:46999
    s->hash_table = new_hash_table;
    8001d75a:	0344b023          	sd	s4,32(s1)
quickjs-nuttx/quickjs.c:47001
    s->record_count_threshold = new_hash_size * 2;
    8001d75e:	0334a623          	sw	s3,44(s1)
    8001d762:	b721                	j	8001d66a <js_map_set+0xa2>
map_add_record():
quickjs-nuttx/quickjs.c:47022
        JS_DupValue(ctx, key);
    8001d764:	854e                	mv	a0,s3
    8001d766:	85ca                	mv	a1,s2
    8001d768:	cb3ec0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001d76c:	bf81                	j	8001d6bc <js_map_set+0xf4>
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    8001d76e:	e39c                	sd	a5,0(a5)
quickjs-nuttx/list.h:44
    head->next = head;
    8001d770:	e79c                	sd	a5,8(a5)
map_hash_resize():
quickjs-nuttx/quickjs.c:46989
    for(i = 0; i < new_hash_size; i++)
    8001d772:	2985                	addiw	s3,s3,1
    8001d774:	07c1                	addi	a5,a5,16
    8001d776:	b7f1                	j	8001d742 <js_map_set+0x17a>
quickjs-nuttx/quickjs.c:46994
        if (!mr->empty) {
    8001d778:	fec92783          	lw	a5,-20(s2)
    8001d77c:	e79d                	bnez	a5,8001d7aa <js_map_set+0x1e2>
quickjs-nuttx/quickjs.c:46995
            h = map_hash_key(ctx, mr->key) & (new_hash_size - 1);
    8001d77e:	02093503          	ld	a0,32(s2)
    8001d782:	02893583          	ld	a1,40(s2)
    8001d786:	ea7ec0ef          	jal	ra,8000a62c <map_hash_key.constprop.0>
    8001d78a:	016577b3          	and	a5,a0,s6
quickjs-nuttx/quickjs.c:46996
            list_add_tail(&mr->hash_link, &new_hash_table[h]);
    8001d78e:	02079693          	slli	a3,a5,0x20
    8001d792:	01c6d793          	srli	a5,a3,0x1c
    8001d796:	97d2                	add	a5,a5,s4
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8001d798:	6394                	ld	a3,0(a5)
map_hash_resize():
quickjs-nuttx/quickjs.c:46996
    8001d79a:	01090713          	addi	a4,s2,16
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8001d79e:	e698                	sd	a4,8(a3)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8001d7a0:	00d93823          	sd	a3,16(s2)
quickjs-nuttx/list.h:53
    el->next = next;
    8001d7a4:	00f93c23          	sd	a5,24(s2)
quickjs-nuttx/list.h:54
    next->prev = el;
    8001d7a8:	e398                	sd	a4,0(a5)
map_hash_resize():
quickjs-nuttx/quickjs.c:46992
    list_for_each(el, &s->records) {
    8001d7aa:	00893903          	ld	s2,8(s2)
    8001d7ae:	b745                	j	8001d74e <js_map_set+0x186>
js_map_set():
quickjs-nuttx/quickjs.c:47141 (discriminator 1)
}
    8001d7b0:	60aa                	ld	ra,136(sp)
    8001d7b2:	640a                	ld	s0,128(sp)
    8001d7b4:	74e6                	ld	s1,120(sp)
    8001d7b6:	7946                	ld	s2,112(sp)
    8001d7b8:	79a6                	ld	s3,104(sp)
    8001d7ba:	7a06                	ld	s4,96(sp)
    8001d7bc:	6ae6                	ld	s5,88(sp)
    8001d7be:	6b46                	ld	s6,80(sp)
    8001d7c0:	4501                	li	a0,0
    8001d7c2:	4599                	li	a1,6
    8001d7c4:	6149                	addi	sp,sp,144
    8001d7c6:	8082                	ret

000000008001d7c8 <push_scope>:
push_scope():
quickjs-nuttx/quickjs.c:21702
static int push_scope(JSParseState *s) {
    8001d7c8:	7139                	addi	sp,sp,-64
    8001d7ca:	ec4e                	sd	s3,24(sp)
    8001d7cc:	fc06                	sd	ra,56(sp)
    8001d7ce:	f822                	sd	s0,48(sp)
    8001d7d0:	f426                	sd	s1,40(sp)
    8001d7d2:	f04a                	sd	s2,32(sp)
    8001d7d4:	e852                	sd	s4,16(sp)
quickjs-nuttx/quickjs.c:21703
    if (s->cur_func) {
    8001d7d6:	7520                	ld	s0,104(a0)
quickjs-nuttx/quickjs.c:21734
    return 0;
    8001d7d8:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:21703
    if (s->cur_func) {
    8001d7da:	c455                	beqz	s0,8001d886 <push_scope+0xbe>
quickjs-nuttx/quickjs.c:21705
        int scope = fd->scope_count;
    8001d7dc:	0ec42983          	lw	s3,236(s0)
quickjs-nuttx/quickjs.c:21707
        if ((fd->scope_count + 1) > fd->scope_size) {
    8001d7e0:	0e842603          	lw	a2,232(s0)
    8001d7e4:	8a2a                	mv	s4,a0
    8001d7e6:	0019869b          	addiw	a3,s3,1
    8001d7ea:	04d65a63          	bge	a2,a3,8001d83e <push_scope+0x76>
quickjs-nuttx/quickjs.c:21712
            new_size = max_int(fd->scope_count + 1, fd->scope_size * 3 / 2);
    8001d7ee:	478d                	li	a5,3
    8001d7f0:	02c787bb          	mulw	a5,a5,a2
    8001d7f4:	4609                	li	a2,2
quickjs-nuttx/quickjs.c:21713
            if (fd->scopes == fd->def_scope_array) {
    8001d7f6:	786c                	ld	a1,240(s0)
quickjs-nuttx/quickjs.c:21712
            new_size = max_int(fd->scope_count + 1, fd->scope_size * 3 / 2);
    8001d7f8:	02c7c63b          	divw	a2,a5,a2
    8001d7fc:	87b2                	mv	a5,a2
    8001d7fe:	00d65363          	bge	a2,a3,8001d804 <push_scope+0x3c>
    8001d802:	87b6                	mv	a5,a3
    8001d804:	0007891b          	sext.w	s2,a5
quickjs-nuttx/quickjs.c:21713
            if (fd->scopes == fd->def_scope_array) {
    8001d808:	0f840793          	addi	a5,s0,248
quickjs-nuttx/quickjs.c:21714
                new_buf = js_realloc2(s->ctx, NULL, new_size * sizeof(*fd->scopes), &slack);
    8001d80c:	000a3503          	ld	a0,0(s4)
    8001d810:	00391613          	slli	a2,s2,0x3
    8001d814:	0034                	addi	a3,sp,8
quickjs-nuttx/quickjs.c:21713
            if (fd->scopes == fd->def_scope_array) {
    8001d816:	06f59363          	bne	a1,a5,8001d87c <push_scope+0xb4>
quickjs-nuttx/quickjs.c:21714
                new_buf = js_realloc2(s->ctx, NULL, new_size * sizeof(*fd->scopes), &slack);
    8001d81a:	4581                	li	a1,0
    8001d81c:	ef5fe0ef          	jal	ra,8001c710 <js_realloc2>
    8001d820:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:21715
                if (!new_buf)
    8001d822:	c12d                	beqz	a0,8001d884 <push_scope+0xbc>
quickjs-nuttx/quickjs.c:21717
                memcpy(new_buf, fd->scopes, fd->scope_count * sizeof(*fd->scopes));
    8001d824:	0ec42603          	lw	a2,236(s0)
    8001d828:	786c                	ld	a1,240(s0)
    8001d82a:	060e                	slli	a2,a2,0x3
    8001d82c:	580460ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:21723
            new_size += slack / sizeof(*new_buf);
    8001d830:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:21724
            fd->scopes = new_buf;
    8001d832:	f864                	sd	s1,240(s0)
quickjs-nuttx/quickjs.c:21723
            new_size += slack / sizeof(*new_buf);
    8001d834:	838d                	srli	a5,a5,0x3
    8001d836:	012787bb          	addw	a5,a5,s2
quickjs-nuttx/quickjs.c:21725
            fd->scope_size = new_size;
    8001d83a:	0ef42423          	sw	a5,232(s0)
quickjs-nuttx/quickjs.c:21727
        fd->scope_count++;
    8001d83e:	0ec42783          	lw	a5,236(s0)
quickjs-nuttx/quickjs.c:21728
        fd->scopes[scope].parent = fd->scope_level;
    8001d842:	7878                	ld	a4,240(s0)
    8001d844:	0e042683          	lw	a3,224(s0)
quickjs-nuttx/quickjs.c:21727
        fd->scope_count++;
    8001d848:	2785                	addiw	a5,a5,1
    8001d84a:	0ef42623          	sw	a5,236(s0)
quickjs-nuttx/quickjs.c:21728
        fd->scopes[scope].parent = fd->scope_level;
    8001d84e:	00399793          	slli	a5,s3,0x3
    8001d852:	973e                	add	a4,a4,a5
    8001d854:	c314                	sw	a3,0(a4)
quickjs-nuttx/quickjs.c:21729
        fd->scopes[scope].first = fd->scope_first;
    8001d856:	7878                	ld	a4,240(s0)
    8001d858:	0e442683          	lw	a3,228(s0)
quickjs-nuttx/quickjs.c:21730
        emit_op(s, OP_enter_scope);
    8001d85c:	0b600593          	li	a1,182
quickjs-nuttx/quickjs.c:21729
        fd->scopes[scope].first = fd->scope_first;
    8001d860:	97ba                	add	a5,a5,a4
    8001d862:	c3d4                	sw	a3,4(a5)
quickjs-nuttx/quickjs.c:21730
        emit_op(s, OP_enter_scope);
    8001d864:	8552                	mv	a0,s4
    8001d866:	891eb0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:21731
        emit_u16(s, scope);
    8001d86a:	03099593          	slli	a1,s3,0x30
    8001d86e:	91c1                	srli	a1,a1,0x30
    8001d870:	8552                	mv	a0,s4
    8001d872:	f52eb0ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:21732
        return fd->scope_level = scope;
    8001d876:	0f342023          	sw	s3,224(s0)
    8001d87a:	a031                	j	8001d886 <push_scope+0xbe>
quickjs-nuttx/quickjs.c:21719
                new_buf = js_realloc2(s->ctx, fd->scopes, new_size * sizeof(*fd->scopes), &slack);
    8001d87c:	e95fe0ef          	jal	ra,8001c710 <js_realloc2>
    8001d880:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:21720
                if (!new_buf)
    8001d882:	f55d                	bnez	a0,8001d830 <push_scope+0x68>
quickjs-nuttx/quickjs.c:21716
                    return -1;
    8001d884:	59fd                	li	s3,-1
quickjs-nuttx/quickjs.c:21735
}
    8001d886:	70e2                	ld	ra,56(sp)
    8001d888:	7442                	ld	s0,48(sp)
    8001d88a:	74a2                	ld	s1,40(sp)
    8001d88c:	7902                	ld	s2,32(sp)
    8001d88e:	6a42                	ld	s4,16(sp)
    8001d890:	854e                	mv	a0,s3
    8001d892:	69e2                	ld	s3,24(sp)
    8001d894:	6121                	addi	sp,sp,64
    8001d896:	8082                	ret

000000008001d898 <js_atof2>:
js_atof2():
quickjs-nuttx/quickjs.c:10193
{
    8001d898:	7111                	addi	sp,sp,-256
    8001d89a:	f9a2                	sd	s0,240(sp)
    8001d89c:	f1ca                	sd	s2,224(sp)
    8001d89e:	e9d2                	sd	s4,208(sp)
    8001d8a0:	fd5e                	sd	s7,184(sp)
    8001d8a2:	f16a                	sd	s10,160(sp)
quickjs-nuttx/quickjs.c:10197
    int atod_type = flags & ATOD_TYPE_MASK;
    8001d8a4:	18077b93          	andi	s7,a4,384
quickjs-nuttx/quickjs.c:10193
{
    8001d8a8:	8d3a                	mv	s10,a4
    8001d8aa:	fd86                	sd	ra,248(sp)
    8001d8ac:	f5a6                	sd	s1,232(sp)
    8001d8ae:	edce                	sd	s3,216(sp)
    8001d8b0:	e5d6                	sd	s5,200(sp)
    8001d8b2:	e1da                	sd	s6,192(sp)
    8001d8b4:	f962                	sd	s8,176(sp)
    8001d8b6:	f566                	sd	s9,168(sp)
    8001d8b8:	ed6e                	sd	s11,152(sp)
    8001d8ba:	e832                	sd	a2,16(sp)
    8001d8bc:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:10204
    sep = (flags & ATOD_ACCEPT_UNDERSCORES) ? '_' : 256;
    8001d8be:	02077713          	andi	a4,a4,32
quickjs-nuttx/quickjs.c:10193
{
    8001d8c2:	892a                	mv	s2,a0
    8001d8c4:	8436                	mv	s0,a3
quickjs-nuttx/quickjs.c:10204
    sep = (flags & ATOD_ACCEPT_UNDERSCORES) ? '_' : 256;
    8001d8c6:	10000a13          	li	s4,256
    8001d8ca:	c319                	beqz	a4,8001d8d0 <js_atof2+0x38>
    8001d8cc:	05f00a13          	li	s4,95
quickjs-nuttx/quickjs.c:10210 (discriminator 4)
    if (p[0] == '+') {
    8001d8d0:	0005c703          	lbu	a4,0(a1)
quickjs-nuttx/quickjs.c:10207 (discriminator 4)
    p = str;
    8001d8d4:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:10210 (discriminator 4)
    if (p[0] == '+') {
    8001d8d6:	02b00613          	li	a2,43
    8001d8da:	04c71863          	bne	a4,a2,8001d92a <js_atof2+0x92>
quickjs-nuttx/quickjs.c:10211
        p++;
    8001d8de:	0585                	addi	a1,a1,1
    8001d8e0:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:10213
        if (!(flags & ATOD_ACCEPT_PREFIX_AFTER_SIGN))
    8001d8e2:	400d7993          	andi	s3,s10,1024
    8001d8e6:	04098c63          	beqz	s3,8001d93e <js_atof2+0xa6>
quickjs-nuttx/quickjs.c:10209
    is_neg = 0;
    8001d8ea:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:10222
    if (p[0] == '0') {
    8001d8ec:	7622                	ld	a2,40(sp)
    8001d8ee:	03000713          	li	a4,48
    8001d8f2:	00064583          	lbu	a1,0(a2)
    8001d8f6:	04e59463          	bne	a1,a4,8001d93e <js_atof2+0xa6>
quickjs-nuttx/quickjs.c:10223
        if ((p[1] == 'x' || p[1] == 'X') &&
    8001d8fa:	00164583          	lbu	a1,1(a2)
    8001d8fe:	05800513          	li	a0,88
    8001d902:	0df5f713          	andi	a4,a1,223
    8001d906:	0aa71263          	bne	a4,a0,8001d9aa <js_atof2+0x112>
quickjs-nuttx/quickjs.c:10223 (discriminator 3)
    8001d90a:	fef47d93          	andi	s11,s0,-17
    8001d90e:	460d9963          	bnez	s11,8001dd80 <js_atof2+0x4e8>
quickjs-nuttx/quickjs.c:10225
            p += 2;
    8001d912:	0609                	addi	a2,a2,2
    8001d914:	f432                	sd	a2,40(sp)
quickjs-nuttx/quickjs.c:10226
            radix = 16;
    8001d916:	4441                	li	s0,16
quickjs-nuttx/quickjs.c:10250
        if (to_digit((uint8_t)*p) >= radix)
    8001d918:	7622                	ld	a2,40(sp)
    8001d91a:	00064503          	lbu	a0,0(a2)
    8001d91e:	cf2ea0ef          	jal	ra,80007e10 <to_digit>
    8001d922:	48854263          	blt	a0,s0,8001dda6 <js_atof2+0x50e>
quickjs-nuttx/quickjs.c:10200
    BOOL buf_allocated = FALSE;
    8001d926:	4a01                	li	s4,0
    8001d928:	a475                	j	8001dbd4 <js_atof2+0x33c>
quickjs-nuttx/quickjs.c:10215
    } else if (p[0] == '-') {
    8001d92a:	02d00613          	li	a2,45
    8001d92e:	fac71ee3          	bne	a4,a2,8001d8ea <js_atof2+0x52>
quickjs-nuttx/quickjs.c:10216
        p++;
    8001d932:	0585                	addi	a1,a1,1
    8001d934:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:10219
        if (!(flags & ATOD_ACCEPT_PREFIX_AFTER_SIGN))
    8001d936:	400d7713          	andi	a4,s10,1024
quickjs-nuttx/quickjs.c:10218
        is_neg = 1;
    8001d93a:	4985                	li	s3,1
quickjs-nuttx/quickjs.c:10219
        if (!(flags & ATOD_ACCEPT_PREFIX_AFTER_SIGN))
    8001d93c:	fb45                	bnez	a4,8001d8ec <js_atof2+0x54>
quickjs-nuttx/quickjs.c:10255
        if (!(flags & ATOD_INT_ONLY) &&
    8001d93e:	081d7713          	andi	a4,s10,129
    8001d942:	12071463          	bnez	a4,8001da6a <js_atof2+0x1d2>
quickjs-nuttx/quickjs.c:10261
            strstart(p, "Infinity", &p)) {
    8001d946:	7522                	ld	a0,40(sp)
    8001d948:	1030                	addi	a2,sp,40
    8001d94a:	0004d597          	auipc	a1,0x4d
    8001d94e:	e6658593          	addi	a1,a1,-410 # 8006a7b0 <qjsc_repl+0x5200>
    8001d952:	7bd330ef          	jal	ra,8005190e <strstart>
quickjs-nuttx/quickjs.c:10260
             ) &&
    8001d956:	10050a63          	beqz	a0,8001da6a <js_atof2+0x1d2>
quickjs-nuttx/quickjs.c:10263
            if (atod_type == ATOD_TYPE_BIG_FLOAT) {
    8001d95a:	10000713          	li	a4,256
    8001d95e:	0aeb9f63          	bne	s7,a4,8001da1c <js_atof2+0x184>
quickjs-nuttx/quickjs.c:10265
                val = JS_NewBigFloat(ctx);
    8001d962:	854a                	mv	a0,s2
    8001d964:	81dfc0ef          	jal	ra,8001a180 <JS_NewBigFloat>
    8001d968:	e42a                	sd	a0,8(sp)
quickjs-nuttx/quickjs.c:10266
                if (JS_IsException(val))
    8001d96a:	0005871b          	sext.w	a4,a1
    8001d96e:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:10265
                val = JS_NewBigFloat(ctx);
    8001d970:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:10266
                if (JS_IsException(val))
    8001d972:	00f70663          	beq	a4,a5,8001d97e <js_atof2+0xe6>
quickjs-nuttx/quickjs.c:10269
                bf_set_inf(a, is_neg);
    8001d976:	85ce                	mv	a1,s3
    8001d978:	0521                	addi	a0,a0,8
    8001d97a:	30a3a0ef          	jal	ra,80057c84 <bf_set_inf>
quickjs-nuttx/quickjs.c:10414
    if (pp)
    8001d97e:	67c2                	ld	a5,16(sp)
    8001d980:	c781                	beqz	a5,8001d988 <js_atof2+0xf0>
quickjs-nuttx/quickjs.c:10415
        *pp = p;
    8001d982:	77a2                	ld	a5,40(sp)
    8001d984:	6742                	ld	a4,16(sp)
    8001d986:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs.c:10423
}
    8001d988:	70ee                	ld	ra,248(sp)
    8001d98a:	85a2                	mv	a1,s0
    8001d98c:	744e                	ld	s0,240(sp)
quickjs-nuttx/quickjs.c:10416
    return val;
    8001d98e:	6522                	ld	a0,8(sp)
quickjs-nuttx/quickjs.c:10423
}
    8001d990:	74ae                	ld	s1,232(sp)
    8001d992:	790e                	ld	s2,224(sp)
    8001d994:	69ee                	ld	s3,216(sp)
    8001d996:	6a4e                	ld	s4,208(sp)
    8001d998:	6aae                	ld	s5,200(sp)
    8001d99a:	6b0e                	ld	s6,192(sp)
    8001d99c:	7bea                	ld	s7,184(sp)
    8001d99e:	7c4a                	ld	s8,176(sp)
    8001d9a0:	7caa                	ld	s9,168(sp)
    8001d9a2:	7d0a                	ld	s10,160(sp)
    8001d9a4:	6dea                	ld	s11,152(sp)
    8001d9a6:	6111                	addi	sp,sp,256
    8001d9a8:	8082                	ret
quickjs-nuttx/quickjs.c:10227
        } else if ((p[1] == 'o' || p[1] == 'O') &&
    8001d9aa:	06f00513          	li	a0,111
    8001d9ae:	3ca58563          	beq	a1,a0,8001dd78 <js_atof2+0x4e0>
quickjs-nuttx/quickjs.c:10227 (discriminator 2)
    8001d9b2:	04f00513          	li	a0,79
    8001d9b6:	00a59d63          	bne	a1,a0,8001d9d0 <js_atof2+0x138>
quickjs-nuttx/quickjs.c:10227 (discriminator 3)
    8001d9ba:	3c041763          	bnez	s0,8001dd88 <js_atof2+0x4f0>
quickjs-nuttx/quickjs.c:10228
                   radix == 0 && (flags & ATOD_ACCEPT_BIN_OCT)) {
    8001d9be:	004d7513          	andi	a0,s10,4
    8001d9c2:	4a050b63          	beqz	a0,8001de78 <js_atof2+0x5e0>
quickjs-nuttx/quickjs.c:10229
            p += 2;
    8001d9c6:	0609                	addi	a2,a2,2
    8001d9c8:	f432                	sd	a2,40(sp)
quickjs-nuttx/quickjs.c:10205
    has_legacy_octal = FALSE;
    8001d9ca:	4d81                	li	s11,0
quickjs-nuttx/quickjs.c:10245
            radix = 8;
    8001d9cc:	4421                	li	s0,8
quickjs-nuttx/quickjs.c:10236
                   radix == 0 && (flags & ATOD_ACCEPT_LEGACY_OCTAL)) {
    8001d9ce:	b7a9                	j	8001d918 <js_atof2+0x80>
quickjs-nuttx/quickjs.c:10231 (discriminator 2)
        } else if ((p[1] == 'b' || p[1] == 'B') &&
    8001d9d0:	04200513          	li	a0,66
    8001d9d4:	3aa71a63          	bne	a4,a0,8001dd88 <js_atof2+0x4f0>
quickjs-nuttx/quickjs.c:10231 (discriminator 3)
    8001d9d8:	3a041263          	bnez	s0,8001dd7c <js_atof2+0x4e4>
quickjs-nuttx/quickjs.c:10232
                   radix == 0 && (flags & ATOD_ACCEPT_BIN_OCT)) {
    8001d9dc:	004d7713          	andi	a4,s10,4
    8001d9e0:	c759                	beqz	a4,8001da6e <js_atof2+0x1d6>
quickjs-nuttx/quickjs.c:10233
            p += 2;
    8001d9e2:	0609                	addi	a2,a2,2
    8001d9e4:	f432                	sd	a2,40(sp)
quickjs-nuttx/quickjs.c:10205
    has_legacy_octal = FALSE;
    8001d9e6:	4d81                	li	s11,0
quickjs-nuttx/quickjs.c:10234
            radix = 2;
    8001d9e8:	4409                	li	s0,2
    8001d9ea:	b73d                	j	8001d918 <js_atof2+0x80>
quickjs-nuttx/quickjs.c:10240
            for (i = 1; (p[i] >= '0' && p[i] <= '7'); i++)
    8001d9ec:	2505                	addiw	a0,a0,1
quickjs-nuttx/quickjs.c:10240 (discriminator 1)
    8001d9ee:	00a60733          	add	a4,a2,a0
    8001d9f2:	00074703          	lbu	a4,0(a4)
    8001d9f6:	fd07059b          	addiw	a1,a4,-48
    8001d9fa:	0ff5f593          	zext.b	a1,a1
    8001d9fe:	feb877e3          	bgeu	a6,a1,8001d9ec <js_atof2+0x154>
quickjs-nuttx/quickjs.c:10242
            if (p[i] == '8' || p[i] == '9')
    8001da02:	fc87071b          	addiw	a4,a4,-56
    8001da06:	0ff77713          	zext.b	a4,a4
    8001da0a:	4585                	li	a1,1
    8001da0c:	06e5f363          	bgeu	a1,a4,8001da72 <js_atof2+0x1da>
quickjs-nuttx/quickjs.c:10244
            p += 1;
    8001da10:	0605                	addi	a2,a2,1
    8001da12:	f432                	sd	a2,40(sp)
quickjs-nuttx/quickjs.c:10238
            has_legacy_octal = TRUE;
    8001da14:	4d85                	li	s11,1
quickjs-nuttx/quickjs.c:10239
            sep = 256;
    8001da16:	10000a13          	li	s4,256
    8001da1a:	bf4d                	j	8001d9cc <js_atof2+0x134>
quickjs-nuttx/quickjs.c:10273
                double d = 1.0 / 0.0;
    8001da1c:	f2000753          	fmv.d.x	fa4,zero
    8001da20:	00076797          	auipc	a5,0x76
    8001da24:	1707b787          	fld	fa5,368(a5) # 80093b90 <_erodata+0x1e>
    8001da28:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
    8001da2c:	e20787d3          	fmv.x.d	a5,fa5
quickjs-nuttx/quickjs.c:10274
                if (is_neg)
    8001da30:	00098663          	beqz	s3,8001da3c <js_atof2+0x1a4>
quickjs-nuttx/quickjs.c:10275
                    d = -d;
    8001da34:	22f797d3          	fneg.d	fa5,fa5
    8001da38:	e20787d3          	fmv.x.d	a5,fa5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    8001da3c:	f20787d3          	fmv.d.x	fa5,a5
    8001da40:	c20796d3          	fcvt.w.d	a3,fa5,rtz
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8001da44:	d20687d3          	fcvt.d.w	fa5,a3
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    8001da48:	0006871b          	sext.w	a4,a3
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8001da4c:	e2078653          	fmv.x.d	a2,fa5
    8001da50:	00f61863          	bne	a2,a5,8001da60 <js_atof2+0x1c8>
quickjs-nuttx/quickjs.h:562
        v = JS_MKVAL(JS_TAG_INT, val);
    8001da54:	ca82                	sw	zero,84(sp)
    8001da56:	4401                	li	s0,0
quickjs-nuttx/quickjs.h:566
    return v;
    8001da58:	c8ba                	sw	a4,80(sp)
    8001da5a:	27c6                	fld	fa5,80(sp)
    8001da5c:	a43e                	fsd	fa5,8(sp)
    8001da5e:	b705                	j	8001d97e <js_atof2+0xe6>
js_atof2():
quickjs-nuttx/quickjs.h:230
    return v;
    8001da60:	e8be                	sd	a5,80(sp)
    8001da62:	0007871b          	sext.w	a4,a5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8001da66:	441d                	li	s0,7
    8001da68:	bfc5                	j	8001da58 <js_atof2+0x1c0>
js_atof2():
quickjs-nuttx/quickjs.c:10281
    if (radix == 0)
    8001da6a:	30041963          	bnez	s0,8001dd7c <js_atof2+0x4e4>
    8001da6e:	4d81                	li	s11,0
    8001da70:	ae15                	j	8001dda4 <js_atof2+0x50c>
quickjs-nuttx/quickjs.c:10238
            has_legacy_octal = TRUE;
    8001da72:	4d85                	li	s11,1
quickjs-nuttx/quickjs.c:10239
            sep = 256;
    8001da74:	10000a13          	li	s4,256
    8001da78:	a635                	j	8001dda4 <js_atof2+0x50c>
quickjs-nuttx/quickjs.c:10289
        p++;
    8001da7a:	001a8613          	addi	a2,s5,1
    8001da7e:	f432                	sd	a2,40(sp)
    8001da80:	a635                	j	8001ddac <js_atof2+0x514>
quickjs-nuttx/quickjs.c:10299
                p++;
    8001da82:	0c05                	addi	s8,s8,1
    8001da84:	f462                	sd	s8,40(sp)
    8001da86:	ae49                	j	8001de18 <js_atof2+0x580>
quickjs-nuttx/quickjs.c:10303
             ((*p == 'p' || *p == 'P') && (radix == 2 || radix == 8 || radix == 16)))) {
    8001da88:	05000513          	li	a0,80
    8001da8c:	00a61b63          	bne	a2,a0,8001daa2 <js_atof2+0x20a>
quickjs-nuttx/quickjs.c:10303 (discriminator 1)
    8001da90:	4609                	li	a2,2
    8001da92:	3cc40263          	beq	s0,a2,8001de56 <js_atof2+0x5be>
quickjs-nuttx/quickjs.c:10303 (discriminator 2)
    8001da96:	ff84061b          	addiw	a2,s0,-8
    8001da9a:	9a5d                	andi	a2,a2,-9
    8001da9c:	2601                	sext.w	a2,a2
    8001da9e:	3a060c63          	beqz	a2,8001de56 <js_atof2+0x5be>
quickjs-nuttx/quickjs.c:10318
    if (p == p_start)
    8001daa2:	7c22                	ld	s8,40(sp)
    8001daa4:	e96c01e3          	beq	s8,s6,8001d926 <js_atof2+0x8e>
quickjs-nuttx/quickjs.c:10323
    len = p - p_start;
    8001daa8:	416c0c3b          	subw	s8,s8,s6
quickjs-nuttx/quickjs.c:10324
    if (unlikely((len + 2) > sizeof(buf1))) {
    8001daac:	002c059b          	addiw	a1,s8,2
    8001dab0:	04000613          	li	a2,64
quickjs-nuttx/quickjs.c:10322
    buf_allocated = FALSE;
    8001dab4:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:10321
    buf = buf1;
    8001dab6:	0884                	addi	s1,sp,80
quickjs-nuttx/quickjs.c:10324
    if (unlikely((len + 2) > sizeof(buf1))) {
    8001dab8:	04b67f63          	bgeu	a2,a1,8001db16 <js_atof2+0x27e>
quickjs-nuttx/quickjs.c:10325
        buf = js_malloc_rt(ctx->rt, len + 2); /* no exception raised */
    8001dabc:	01893503          	ld	a0,24(s2)
quickjs-nuttx/quickjs.c:10328
        buf_allocated = TRUE;
    8001dac0:	4a05                	li	s4,1
quickjs-nuttx/quickjs.c:10325
        buf = js_malloc_rt(ctx->rt, len + 2); /* no exception raised */
    8001dac2:	edbec0ef          	jal	ra,8000a99c <js_malloc_rt>
    8001dac6:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:10326
        if (!buf)
    8001dac8:	e539                	bnez	a0,8001db16 <js_atof2+0x27e>
quickjs-nuttx/quickjs.c:10421
    val = JS_ThrowOutOfMemory(ctx);
    8001daca:	854a                	mv	a0,s2
    8001dacc:	e08fc0ef          	jal	ra,8001a0d4 <JS_ThrowOutOfMemory>
    8001dad0:	e42a                	sd	a0,8(sp)
    8001dad2:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:10412
    if (buf_allocated)
    8001dad4:	b56d                	j	8001d97e <js_atof2+0xe6>
quickjs-nuttx/quickjs.c:10308
            } else if (*p1 == '-') {
    8001dad6:	02d00813          	li	a6,45
quickjs-nuttx/quickjs.c:10309
                p1++;
    8001dada:	00258613          	addi	a2,a1,2
quickjs-nuttx/quickjs.c:10308
            } else if (*p1 == '-') {
    8001dade:	39050463          	beq	a0,a6,8001de66 <js_atof2+0x5ce>
quickjs-nuttx/quickjs.c:10304
            const char *p1 = p + 1;
    8001dae2:	00158613          	addi	a2,a1,1
    8001dae6:	a641                	j	8001de66 <js_atof2+0x5ce>
quickjs-nuttx/quickjs.c:10312
                p = p1 + 1;
    8001dae8:	0605                	addi	a2,a2,1
    8001daea:	f432                	sd	a2,40(sp)
quickjs-nuttx/quickjs.c:10313
                while (is_digit((uint8_t)*p) || (*p == sep && is_digit((uint8_t)p[1])))
    8001daec:	4525                	li	a0,9
    8001daee:	7622                	ld	a2,40(sp)
    8001daf0:	00064583          	lbu	a1,0(a2)
    8001daf4:	fd05881b          	addiw	a6,a1,-48
    8001daf8:	01057a63          	bgeu	a0,a6,8001db0c <js_atof2+0x274>
quickjs-nuttx/quickjs.c:10313 (discriminator 1)
    8001dafc:	37459c63          	bne	a1,s4,8001de74 <js_atof2+0x5dc>
is_digit():
quickjs-nuttx/quickjs.c:1459 (discriminator 2)
    return c >= '0' && c <= '9';
    8001db00:	00164583          	lbu	a1,1(a2)
js_atof2():
quickjs-nuttx/quickjs.c:10313 (discriminator 2)
                while (is_digit((uint8_t)*p) || (*p == sep && is_digit((uint8_t)p[1])))
    8001db04:	fd05859b          	addiw	a1,a1,-48
    8001db08:	36b56663          	bltu	a0,a1,8001de74 <js_atof2+0x5dc>
quickjs-nuttx/quickjs.c:10314
                    p++;
    8001db0c:	0605                	addi	a2,a2,1
    8001db0e:	f432                	sd	a2,40(sp)
    8001db10:	bff9                	j	8001daee <js_atof2+0x256>
quickjs-nuttx/quickjs.c:10283
    is_float = FALSE;
    8001db12:	4c81                	li	s9,0
    8001db14:	b779                	j	8001daa2 <js_atof2+0x20a>
quickjs-nuttx/quickjs.c:10332
    if (is_neg)
    8001db16:	00098663          	beqz	s3,8001db22 <js_atof2+0x28a>
quickjs-nuttx/quickjs.c:10333
        buf[j++] = '-';
    8001db1a:	02d00613          	li	a2,45
    8001db1e:	00c48023          	sb	a2,0(s1)
quickjs-nuttx/quickjs.c:10328 (discriminator 1)
        buf_allocated = TRUE;
    8001db22:	4601                	li	a2,0
quickjs-nuttx/quickjs.c:10335 (discriminator 1)
        if (p_start[i] != '_')
    8001db24:	05f00813          	li	a6,95
quickjs-nuttx/quickjs.c:10334 (discriminator 1)
    for (i = 0; i < len; i++) {
    8001db28:	0006051b          	sext.w	a0,a2
quickjs-nuttx/quickjs.c:10336 (discriminator 1)
            buf[j++] = p_start[i];
    8001db2c:	013485b3          	add	a1,s1,s3
quickjs-nuttx/quickjs.c:10334 (discriminator 1)
    for (i = 0; i < len; i++) {
    8001db30:	05854163          	blt	a0,s8,8001db72 <js_atof2+0x2da>
quickjs-nuttx/quickjs.c:10338
    buf[j] = '\0';
    8001db34:	00058023          	sb	zero,0(a1)
quickjs-nuttx/quickjs.c:10340
    if (flags & ATOD_ACCEPT_SUFFIX) {
    8001db38:	040d7613          	andi	a2,s10,64
    8001db3c:	c679                	beqz	a2,8001dc0a <js_atof2+0x372>
quickjs-nuttx/quickjs.c:10341
        if (*p == 'n') {
    8001db3e:	7622                	ld	a2,40(sp)
    8001db40:	06e00513          	li	a0,110
    8001db44:	00064583          	lbu	a1,0(a2)
    8001db48:	04a59063          	bne	a1,a0,8001db88 <js_atof2+0x2f0>
quickjs-nuttx/quickjs.c:10342
            p++;
    8001db4c:	0605                	addi	a2,a2,1
    8001db4e:	f432                	sd	a2,40(sp)
quickjs-nuttx/quickjs.c:10390
        if (has_legacy_octal || is_float)
    8001db50:	080d9263          	bnez	s11,8001dbd4 <js_atof2+0x33c>
    8001db54:	080c9063          	bnez	s9,8001dbd4 <js_atof2+0x33c>
quickjs-nuttx/quickjs.c:10392
        val = ctx->rt->bigint_ops.from_string(ctx, buf, radix, flags, NULL);
    8001db58:	01893783          	ld	a5,24(s2)
    8001db5c:	4701                	li	a4,0
    8001db5e:	2107b783          	ld	a5,528(a5)
quickjs-nuttx/quickjs.c:10398
        val = ctx->rt->bigfloat_ops.from_string(ctx, buf, radix, flags,
    8001db62:	86ea                	mv	a3,s10
    8001db64:	8622                	mv	a2,s0
quickjs-nuttx/quickjs.c:10404
        val = ctx->rt->bigdecimal_ops.from_string(ctx, buf, radix, flags, NULL);
    8001db66:	85a6                	mv	a1,s1
    8001db68:	854a                	mv	a0,s2
    8001db6a:	9782                	jalr	a5
    8001db6c:	e42a                	sd	a0,8(sp)
    8001db6e:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:10405
        break;
    8001db70:	aa8d                	j	8001dce2 <js_atof2+0x44a>
quickjs-nuttx/quickjs.c:10335
        if (p_start[i] != '_')
    8001db72:	00cb0533          	add	a0,s6,a2
    8001db76:	00054503          	lbu	a0,0(a0)
    8001db7a:	01050563          	beq	a0,a6,8001db84 <js_atof2+0x2ec>
quickjs-nuttx/quickjs.c:10336
            buf[j++] = p_start[i];
    8001db7e:	2985                	addiw	s3,s3,1
    8001db80:	00a58023          	sb	a0,0(a1)
quickjs-nuttx/quickjs.c:10334 (discriminator 2)
    for (i = 0; i < len; i++) {
    8001db84:	0605                	addi	a2,a2,1
    8001db86:	b74d                	j	8001db28 <js_atof2+0x290>
quickjs-nuttx/quickjs.c:10346
        if (*p == 'l') {
    8001db88:	06c00513          	li	a0,108
    8001db8c:	00a59c63          	bne	a1,a0,8001dba4 <js_atof2+0x30c>
quickjs-nuttx/quickjs.c:10347
            p++;
    8001db90:	0605                	addi	a2,a2,1
    8001db92:	f432                	sd	a2,40(sp)
quickjs-nuttx/quickjs.c:10396
        if (has_legacy_octal)
    8001db94:	040d9063          	bnez	s11,8001dbd4 <js_atof2+0x33c>
quickjs-nuttx/quickjs.c:10398
        val = ctx->rt->bigfloat_ops.from_string(ctx, buf, radix, flags,
    8001db98:	01893783          	ld	a5,24(s2)
    8001db9c:	6722                	ld	a4,8(sp)
    8001db9e:	2487b783          	ld	a5,584(a5)
    8001dba2:	b7c1                	j	8001db62 <js_atof2+0x2ca>
quickjs-nuttx/quickjs.c:10349
        } else if (*p == 'm') {
    8001dba4:	06d00513          	li	a0,109
    8001dba8:	00a59f63          	bne	a1,a0,8001dbc6 <js_atof2+0x32e>
quickjs-nuttx/quickjs.c:10350
            p++;
    8001dbac:	0605                	addi	a2,a2,1
    8001dbae:	f432                	sd	a2,40(sp)
quickjs-nuttx/quickjs.c:10402
        if (radix != 10)
    8001dbb0:	47a9                	li	a5,10
    8001dbb2:	02f41163          	bne	s0,a5,8001dbd4 <js_atof2+0x33c>
quickjs-nuttx/quickjs.c:10404
        val = ctx->rt->bigdecimal_ops.from_string(ctx, buf, radix, flags, NULL);
    8001dbb6:	01893783          	ld	a5,24(s2)
    8001dbba:	4701                	li	a4,0
    8001dbbc:	86ea                	mv	a3,s10
    8001dbbe:	2807b783          	ld	a5,640(a5)
    8001dbc2:	4629                	li	a2,10
    8001dbc4:	b74d                	j	8001db66 <js_atof2+0x2ce>
quickjs-nuttx/quickjs.c:10352
        } else if (flags & ATOD_MODE_BIGINT) {
    8001dbc6:	200d7613          	andi	a2,s10,512
    8001dbca:	c215                	beqz	a2,8001dbee <js_atof2+0x356>
quickjs-nuttx/quickjs.c:10353
            if (!is_float)
    8001dbcc:	180c8963          	beqz	s9,8001dd5e <js_atof2+0x4c6>
quickjs-nuttx/quickjs.c:10355
            if (has_legacy_octal)
    8001dbd0:	140d8d63          	beqz	s11,8001dd2a <js_atof2+0x492>
quickjs-nuttx/quickjs.c:10418
    val = JS_NAN;
    8001dbd4:	00076797          	auipc	a5,0x76
    8001dbd8:	fac7b787          	fld	fa5,-84(a5) # 80093b80 <_erodata+0xe>
    8001dbdc:	12f7f7d3          	fmul.d	fa5,fa5,fa5
    8001dbe0:	f2000753          	fmv.d.x	fa4,zero
    8001dbe4:	441d                	li	s0,7
    8001dbe6:	12e7f7d3          	fmul.d	fa5,fa5,fa4
    8001dbea:	a43e                	fsd	fa5,8(sp)
quickjs-nuttx/quickjs.c:10419
    goto done;
    8001dbec:	a8dd                	j	8001dce2 <js_atof2+0x44a>
quickjs-nuttx/quickjs.c:10360
            if (is_float && radix != 10)
    8001dbee:	140c8c63          	beqz	s9,8001dd46 <js_atof2+0x4ae>
quickjs-nuttx/quickjs.c:10360 (discriminator 1)
    8001dbf2:	4629                	li	a2,10
    8001dbf4:	fec410e3          	bne	s0,a2,8001dbd4 <js_atof2+0x33c>
quickjs-nuttx/quickjs.c:10380
    switch(atod_type) {
    8001dbf8:	10000613          	li	a2,256
    8001dbfc:	f8cb8ce3          	beq	s7,a2,8001db94 <js_atof2+0x2fc>
    8001dc00:	17764763          	blt	a2,s7,8001dd6e <js_atof2+0x4d6>
    8001dc04:	040b9d63          	bnez	s7,8001dc5e <js_atof2+0x3c6>
    8001dc08:	a835                	j	8001dc44 <js_atof2+0x3ac>
quickjs-nuttx/quickjs.c:10364
        if (atod_type == ATOD_TYPE_FLOAT64) {
    8001dc0a:	040b9463          	bnez	s7,8001dc52 <js_atof2+0x3ba>
quickjs-nuttx/quickjs.c:10366
            if (flags & ATOD_MODE_BIGINT) {
    8001dc0e:	200d7793          	andi	a5,s10,512
    8001dc12:	c785                	beqz	a5,8001dc3a <js_atof2+0x3a2>
quickjs-nuttx/quickjs.c:10367
                if (!is_float)
    8001dc14:	140c8563          	beqz	s9,8001dd5e <js_atof2+0x4c6>
quickjs-nuttx/quickjs.c:10369
                if (has_legacy_octal)
    8001dc18:	fa0d9ee3          	bnez	s11,8001dbd4 <js_atof2+0x33c>
js_strtod():
quickjs-nuttx/quickjs.c:10043
    if (!is_float || radix != 10) {
    8001dc1c:	47a9                	li	a5,10
    8001dc1e:	02f40363          	beq	s0,a5,8001dc44 <js_atof2+0x3ac>
quickjs-nuttx/quickjs.c:10049
        if (*p == '-') {
    8001dc22:	0004c703          	lbu	a4,0(s1)
    8001dc26:	02d00793          	li	a5,45
    8001dc2a:	0cf71463          	bne	a4,a5,8001dcf2 <js_atof2+0x45a>
quickjs-nuttx/quickjs.c:10051
            p++;
    8001dc2e:	00148993          	addi	s3,s1,1
quickjs-nuttx/quickjs.c:10050
            is_neg = 1;
    8001dc32:	4c85                	li	s9,1
quickjs-nuttx/quickjs.c:10055
        while (*p == '0')
    8001dc34:	03000793          	li	a5,48
    8001dc38:	a80d                	j	8001dc6a <js_atof2+0x3d2>
js_atof2():
quickjs-nuttx/quickjs.c:10374
                if (is_float && radix != 10)
    8001dc3a:	fe0c84e3          	beqz	s9,8001dc22 <js_atof2+0x38a>
quickjs-nuttx/quickjs.c:10374 (discriminator 1)
    8001dc3e:	47a9                	li	a5,10
    8001dc40:	f8f41ae3          	bne	s0,a5,8001dbd4 <js_atof2+0x33c>
js_strtod():
quickjs-nuttx/quickjs.c:10085
        d = strtod(str, NULL);
    8001dc44:	4581                	li	a1,0
    8001dc46:	8526                	mv	a0,s1
    8001dc48:	2b9450ef          	jal	ra,80063700 <strtod>
    8001dc4c:	e20509d3          	fmv.x.d	s3,fa0
    8001dc50:	a885                	j	8001dcc0 <js_atof2+0x428>
js_atof2():
quickjs-nuttx/quickjs.c:10380
    switch(atod_type) {
    8001dc52:	10000613          	li	a2,256
    8001dc56:	f2cb8fe3          	beq	s7,a2,8001db94 <js_atof2+0x2fc>
    8001dc5a:	11764563          	blt	a2,s7,8001dd64 <js_atof2+0x4cc>
    8001dc5e:	08000613          	li	a2,128
    8001dc62:	eecb87e3          	beq	s7,a2,8001db50 <js_atof2+0x2b8>
    8001dc66:	a8f1                	j	8001dd42 <js_atof2+0x4aa>
js_strtod():
quickjs-nuttx/quickjs.c:10056
            p++;
    8001dc68:	0985                	addi	s3,s3,1
quickjs-nuttx/quickjs.c:10055
        while (*p == '0')
    8001dc6a:	0009c703          	lbu	a4,0(s3)
    8001dc6e:	fef70de3          	beq	a4,a5,8001dc68 <js_atof2+0x3d0>
quickjs-nuttx/quickjs.c:10058
        if (radix == 10)
    8001dc72:	47a9                	li	a5,10
    8001dc74:	08f40263          	beq	s0,a5,8001dcf8 <js_atof2+0x460>
quickjs-nuttx/quickjs.c:10061
            n_max = ((uint64_t)-1 - (radix - 1)) / radix;
    8001dc78:	40800c3b          	negw	s8,s0
    8001dc7c:	028c5c33          	divu	s8,s8,s0
quickjs-nuttx/quickjs.c:10063
        int_exp = 0;
    8001dc80:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:10057
        n = 0;
    8001dc82:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:10071
                if (radix == 10)
    8001dc84:	4d29                	li	s10,10
quickjs-nuttx/quickjs.c:10064
        while (*p != '\0') {
    8001dc86:	0009c503          	lbu	a0,0(s3)
    8001dc8a:	ed25                	bnez	a0,8001dd02 <js_atof2+0x46a>
quickjs-nuttx/quickjs.c:10077
        d = n;
    8001dc8c:	d23b77d3          	fcvt.d.lu	fa5,s6
    8001dc90:	e20789d3          	fmv.x.d	s3,fa5
quickjs-nuttx/quickjs.c:10078
        if (int_exp != 0) {
    8001dc94:	000b8e63          	beqz	s7,8001dcb0 <js_atof2+0x418>
quickjs-nuttx/quickjs.c:10079
            d *= pow(radix, int_exp);
    8001dc98:	d20b85d3          	fcvt.d.w	fa1,s7
    8001dc9c:	d2040553          	fcvt.d.w	fa0,s0
    8001dca0:	c3ae30ef          	jal	ra,800010da <pow>
    8001dca4:	f20987d3          	fmv.d.x	fa5,s3
    8001dca8:	12a7f7d3          	fmul.d	fa5,fa5,fa0
    8001dcac:	e20789d3          	fmv.x.d	s3,fa5
quickjs-nuttx/quickjs.c:10081
        if (is_neg)
    8001dcb0:	000c8863          	beqz	s9,8001dcc0 <js_atof2+0x428>
quickjs-nuttx/quickjs.c:10082
            d = -d;
    8001dcb4:	f20987d3          	fmv.d.x	fa5,s3
    8001dcb8:	22f797d3          	fneg.d	fa5,fa5
    8001dcbc:	e20789d3          	fmv.x.d	s3,fa5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    8001dcc0:	f20987d3          	fmv.d.x	fa5,s3
    8001dcc4:	c2079753          	fcvt.w.d	a4,fa5,rtz
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8001dcc8:	d20707d3          	fcvt.d.w	fa5,a4
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    8001dccc:	0007079b          	sext.w	a5,a4
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8001dcd0:	e20786d3          	fmv.x.d	a3,fa5
    8001dcd4:	05369663          	bne	a3,s3,8001dd20 <js_atof2+0x488>
quickjs-nuttx/quickjs.h:562
        v = JS_MKVAL(JS_TAG_INT, val);
    8001dcd8:	c282                	sw	zero,68(sp)
    8001dcda:	4401                	li	s0,0
quickjs-nuttx/quickjs.h:566
    return v;
    8001dcdc:	c0be                	sw	a5,64(sp)
    8001dcde:	2786                	fld	fa5,64(sp)
    8001dce0:	a43e                	fsd	fa5,8(sp)
js_atof2():
quickjs-nuttx/quickjs.c:10412
    if (buf_allocated)
    8001dce2:	c80a0ee3          	beqz	s4,8001d97e <js_atof2+0xe6>
quickjs-nuttx/quickjs.c:10413
        js_free_rt(ctx->rt, buf);
    8001dce6:	01893503          	ld	a0,24(s2)
    8001dcea:	85a6                	mv	a1,s1
    8001dcec:	cf5ec0ef          	jal	ra,8000a9e0 <js_free_rt>
    8001dcf0:	b179                	j	8001d97e <js_atof2+0xe6>
js_strtod():
quickjs-nuttx/quickjs.c:10413
    8001dcf2:	89a6                	mv	s3,s1
quickjs-nuttx/quickjs.c:10048
        is_neg = 0;
    8001dcf4:	4c81                	li	s9,0
    8001dcf6:	bf3d                	j	8001dc34 <js_atof2+0x39c>
quickjs-nuttx/quickjs.c:10059
            n_max = ((uint64_t)-1 - 9) / 10; /* most common case */
    8001dcf8:	00076c17          	auipc	s8,0x76
    8001dcfc:	f00c3c03          	ld	s8,-256(s8) # 80093bf8 <_erodata+0x86>
    8001dd00:	b741                	j	8001dc80 <js_atof2+0x3e8>
quickjs-nuttx/quickjs.c:10065
            c = to_digit((uint8_t)*p);
    8001dd02:	90eea0ef          	jal	ra,80007e10 <to_digit>
quickjs-nuttx/quickjs.c:10066
            if (c >= radix)
    8001dd06:	f88553e3          	bge	a0,s0,8001dc8c <js_atof2+0x3f4>
quickjs-nuttx/quickjs.c:10068
            if (n <= n_max) {
    8001dd0a:	016c6763          	bltu	s8,s6,8001dd18 <js_atof2+0x480>
quickjs-nuttx/quickjs.c:10069
                n = n * radix + c;
    8001dd0e:	03640b33          	mul	s6,s0,s6
    8001dd12:	9b2a                	add	s6,s6,a0
quickjs-nuttx/quickjs.c:10075
            p++;
    8001dd14:	0985                	addi	s3,s3,1
    8001dd16:	bf85                	j	8001dc86 <js_atof2+0x3ee>
quickjs-nuttx/quickjs.c:10071
                if (radix == 10)
    8001dd18:	f3a406e3          	beq	s0,s10,8001dc44 <js_atof2+0x3ac>
quickjs-nuttx/quickjs.c:10073
                int_exp++;
    8001dd1c:	2b85                	addiw	s7,s7,1
    8001dd1e:	bfdd                	j	8001dd14 <js_atof2+0x47c>
js_atof2():
quickjs-nuttx/quickjs.h:230
    return v;
    8001dd20:	e0ce                	sd	s3,64(sp)
    8001dd22:	0009879b          	sext.w	a5,s3
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8001dd26:	441d                	li	s0,7
    8001dd28:	bf55                	j	8001dcdc <js_atof2+0x444>
js_atof2():
quickjs-nuttx/quickjs.c:10380
    switch(atod_type) {
    8001dd2a:	10000713          	li	a4,256
    8001dd2e:	e6eb85e3          	beq	s7,a4,8001db98 <js_atof2+0x300>
    8001dd32:	03774963          	blt	a4,s7,8001dd64 <js_atof2+0x4cc>
    8001dd36:	ee0b83e3          	beqz	s7,8001dc1c <js_atof2+0x384>
    8001dd3a:	08000713          	li	a4,128
    8001dd3e:	e8eb8be3          	beq	s7,a4,8001dbd4 <js_atof2+0x33c>
quickjs-nuttx/quickjs.c:10408
        abort();
    8001dd42:	641440ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:10380
    switch(atod_type) {
    8001dd46:	10000613          	li	a2,256
    8001dd4a:	e4cb85e3          	beq	s7,a2,8001db94 <js_atof2+0x2fc>
    8001dd4e:	01764b63          	blt	a2,s7,8001dd64 <js_atof2+0x4cc>
    8001dd52:	ec0b88e3          	beqz	s7,8001dc22 <js_atof2+0x38a>
    8001dd56:	08000613          	li	a2,128
    8001dd5a:	fecb94e3          	bne	s7,a2,8001dd42 <js_atof2+0x4aa>
quickjs-nuttx/quickjs.c:10390
        if (has_legacy_octal || is_float)
    8001dd5e:	e60d9be3          	bnez	s11,8001dbd4 <js_atof2+0x33c>
    8001dd62:	bbdd                	j	8001db58 <js_atof2+0x2c0>
quickjs-nuttx/quickjs.c:10380
    switch(atod_type) {
    8001dd64:	18000713          	li	a4,384
    8001dd68:	e4eb84e3          	beq	s7,a4,8001dbb0 <js_atof2+0x318>
    8001dd6c:	bfd9                	j	8001dd42 <js_atof2+0x4aa>
    8001dd6e:	18000713          	li	a4,384
    8001dd72:	e4eb82e3          	beq	s7,a4,8001dbb6 <js_atof2+0x31e>
    8001dd76:	b7f1                	j	8001dd42 <js_atof2+0x4aa>
quickjs-nuttx/quickjs.c:10227
        } else if ((p[1] == 'o' || p[1] == 'O') &&
    8001dd78:	c40403e3          	beqz	s0,8001d9be <js_atof2+0x126>
    8001dd7c:	4d81                	li	s11,0
    8001dd7e:	a025                	j	8001dda6 <js_atof2+0x50e>
    8001dd80:	06f00713          	li	a4,111
    8001dd84:	cee583e3          	beq	a1,a4,8001da6a <js_atof2+0x1d2>
quickjs-nuttx/quickjs.c:10235
        } else if ((p[1] >= '0' && p[1] <= '9') &&
    8001dd88:	fd05859b          	addiw	a1,a1,-48
    8001dd8c:	0ff5f593          	zext.b	a1,a1
    8001dd90:	4725                	li	a4,9
    8001dd92:	ccb76ce3          	bltu	a4,a1,8001da6a <js_atof2+0x1d2>
quickjs-nuttx/quickjs.c:10235 (discriminator 1)
    8001dd96:	f07d                	bnez	s0,8001dd7c <js_atof2+0x4e4>
quickjs-nuttx/quickjs.c:10236
                   radix == 0 && (flags & ATOD_ACCEPT_LEGACY_OCTAL)) {
    8001dd98:	010d7d93          	andi	s11,s10,16
quickjs-nuttx/quickjs.c:10240
            for (i = 1; (p[i] >= '0' && p[i] <= '7'); i++)
    8001dd9c:	4505                	li	a0,1
    8001dd9e:	481d                	li	a6,7
quickjs-nuttx/quickjs.c:10236
                   radix == 0 && (flags & ATOD_ACCEPT_LEGACY_OCTAL)) {
    8001dda0:	c40d97e3          	bnez	s11,8001d9ee <js_atof2+0x156>
quickjs-nuttx/quickjs.c:10282
        radix = 10;
    8001dda4:	4429                	li	s0,10
quickjs-nuttx/quickjs.c:10284
    p_start = p;
    8001dda6:	7b22                	ld	s6,40(sp)
quickjs-nuttx/quickjs.c:10287
                              p != p_start + 1 || p[-1] != '0') &&
    8001dda8:	001b0c93          	addi	s9,s6,1
quickjs-nuttx/quickjs.c:10285
    while (to_digit((uint8_t)*p) < radix
    8001ddac:	7aa2                	ld	s5,40(sp)
    8001ddae:	000acc03          	lbu	s8,0(s5)
    8001ddb2:	000c059b          	sext.w	a1,s8
    8001ddb6:	852e                	mv	a0,a1
    8001ddb8:	ec2e                	sd	a1,24(sp)
    8001ddba:	856ea0ef          	jal	ra,80007e10 <to_digit>
    8001ddbe:	ca854ee3          	blt	a0,s0,8001da7a <js_atof2+0x1e2>
quickjs-nuttx/quickjs.c:10286
           ||  (*p == sep && (radix != 10 ||
    8001ddc2:	65e2                	ld	a1,24(sp)
    8001ddc4:	03459363          	bne	a1,s4,8001ddea <js_atof2+0x552>
quickjs-nuttx/quickjs.c:10286 (discriminator 1)
    8001ddc8:	47a9                	li	a5,10
    8001ddca:	00f41a63          	bne	s0,a5,8001ddde <js_atof2+0x546>
quickjs-nuttx/quickjs.c:10286 (discriminator 2)
    8001ddce:	019a9863          	bne	s5,s9,8001ddde <js_atof2+0x546>
quickjs-nuttx/quickjs.c:10287
                              p != p_start + 1 || p[-1] != '0') &&
    8001ddd2:	fffcc583          	lbu	a1,-1(s9)
    8001ddd6:	03000793          	li	a5,48
    8001ddda:	00f58863          	beq	a1,a5,8001ddea <js_atof2+0x552>
quickjs-nuttx/quickjs.c:10288 (discriminator 1)
                to_digit((uint8_t)p[1]) < radix)) {
    8001ddde:	001ac503          	lbu	a0,1(s5)
    8001dde2:	82eea0ef          	jal	ra,80007e10 <to_digit>
quickjs-nuttx/quickjs.c:10287 (discriminator 1)
                              p != p_start + 1 || p[-1] != '0') &&
    8001dde6:	c8854ae3          	blt	a0,s0,8001da7a <js_atof2+0x1e2>
quickjs-nuttx/quickjs.c:10291
    if (!(flags & ATOD_INT_ONLY)) {
    8001ddea:	001d7c93          	andi	s9,s10,1
    8001ddee:	d20c92e3          	bnez	s9,8001db12 <js_atof2+0x27a>
quickjs-nuttx/quickjs.c:10292
        if (*p == '.' && (p > p_start || to_digit((uint8_t)p[1]) < radix)) {
    8001ddf2:	02e00593          	li	a1,46
    8001ddf6:	04bc1263          	bne	s8,a1,8001de3a <js_atof2+0x5a2>
quickjs-nuttx/quickjs.c:10292 (discriminator 1)
    8001ddfa:	015b6863          	bltu	s6,s5,8001de0a <js_atof2+0x572>
quickjs-nuttx/quickjs.c:10292 (discriminator 2)
    8001ddfe:	001ac503          	lbu	a0,1(s5)
    8001de02:	80eea0ef          	jal	ra,80007e10 <to_digit>
    8001de06:	02855a63          	bge	a0,s0,8001de3a <js_atof2+0x5a2>
quickjs-nuttx/quickjs.c:10294
            p++;
    8001de0a:	001a8593          	addi	a1,s5,1
    8001de0e:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:10295
            if (*p == sep)
    8001de10:	001ac603          	lbu	a2,1(s5)
    8001de14:	b14609e3          	beq	a2,s4,8001d926 <js_atof2+0x8e>
quickjs-nuttx/quickjs.c:10297
            while (to_digit((uint8_t)*p) < radix ||
    8001de18:	7c22                	ld	s8,40(sp)
    8001de1a:	000c4c83          	lbu	s9,0(s8)
    8001de1e:	8566                	mv	a0,s9
    8001de20:	ff1e90ef          	jal	ra,80007e10 <to_digit>
    8001de24:	c4854fe3          	blt	a0,s0,8001da82 <js_atof2+0x1ea>
quickjs-nuttx/quickjs.c:10297 (discriminator 1)
    8001de28:	014c9863          	bne	s9,s4,8001de38 <js_atof2+0x5a0>
quickjs-nuttx/quickjs.c:10298
                   (*p == sep && to_digit((uint8_t)p[1]) < radix))
    8001de2c:	001c4503          	lbu	a0,1(s8)
    8001de30:	fe1e90ef          	jal	ra,80007e10 <to_digit>
    8001de34:	c48547e3          	blt	a0,s0,8001da82 <js_atof2+0x1ea>
quickjs-nuttx/quickjs.c:10293
            is_float = TRUE;
    8001de38:	4c85                	li	s9,1
quickjs-nuttx/quickjs.c:10301
        if (p > p_start &&
    8001de3a:	75a2                	ld	a1,40(sp)
    8001de3c:	c6bb73e3          	bgeu	s6,a1,8001daa2 <js_atof2+0x20a>
quickjs-nuttx/quickjs.c:10302 (discriminator 1)
            (((*p == 'e' || *p == 'E') && radix == 10) ||
    8001de40:	0005c603          	lbu	a2,0(a1)
    8001de44:	04500513          	li	a0,69
    8001de48:	0df67613          	andi	a2,a2,223
    8001de4c:	c2a61ee3          	bne	a2,a0,8001da88 <js_atof2+0x1f0>
    8001de50:	4629                	li	a2,10
    8001de52:	c4c418e3          	bne	s0,a2,8001daa2 <js_atof2+0x20a>
quickjs-nuttx/quickjs.c:10306
            if (*p1 == '+') {
    8001de56:	0015c503          	lbu	a0,1(a1)
    8001de5a:	02b00613          	li	a2,43
    8001de5e:	c6c51ce3          	bne	a0,a2,8001dad6 <js_atof2+0x23e>
quickjs-nuttx/quickjs.c:10307
                p1++;
    8001de62:	00258613          	addi	a2,a1,2
is_digit():
quickjs-nuttx/quickjs.c:1459
    return c >= '0' && c <= '9';
    8001de66:	00064583          	lbu	a1,0(a2)
js_atof2():
quickjs-nuttx/quickjs.c:10311
            if (is_digit((uint8_t)*p1)) {
    8001de6a:	4525                	li	a0,9
    8001de6c:	fd05859b          	addiw	a1,a1,-48
    8001de70:	c6b57ce3          	bgeu	a0,a1,8001dae8 <js_atof2+0x250>
quickjs-nuttx/quickjs.c:10305
            is_float = TRUE;
    8001de74:	4c85                	li	s9,1
    8001de76:	b135                	j	8001daa2 <js_atof2+0x20a>
quickjs-nuttx/quickjs.c:10231
        } else if ((p[1] == 'b' || p[1] == 'B') &&
    8001de78:	04200513          	li	a0,66
    8001de7c:	b6a700e3          	beq	a4,a0,8001d9dc <js_atof2+0x144>
    8001de80:	b721                	j	8001dd88 <js_atof2+0x4f0>

000000008001de82 <JS_NewSymbol>:
JS_NewSymbol():
quickjs-nuttx/quickjs.c:3013
{
    8001de82:	7139                	addi	sp,sp,-64
    8001de84:	f822                	sd	s0,48(sp)
    8001de86:	fc06                	sd	ra,56(sp)
    8001de88:	f426                	sd	s1,40(sp)
quickjs-nuttx/quickjs.c:3014
    JSRuntime *rt = ctx->rt;
    8001de8a:	6d04                	ld	s1,24(a0)
quickjs-nuttx/quickjs.c:3013
{
    8001de8c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:3016
    atom = __JS_NewAtom(rt, p, atom_type);
    8001de8e:	8526                	mv	a0,s1
    8001de90:	defec0ef          	jal	ra,8000ac7e <__JS_NewAtom>
    8001de94:	0005079b          	sext.w	a5,a0
quickjs-nuttx/quickjs.c:3017
    if (atom == JS_ATOM_NULL)
    8001de98:	eb81                	bnez	a5,8001dea8 <JS_NewSymbol+0x26>
quickjs-nuttx/quickjs.c:3018
        return JS_ThrowOutOfMemory(ctx);
    8001de9a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:3020
}
    8001de9c:	7442                	ld	s0,48(sp)
    8001de9e:	70e2                	ld	ra,56(sp)
    8001dea0:	74a2                	ld	s1,40(sp)
    8001dea2:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:3018
        return JS_ThrowOutOfMemory(ctx);
    8001dea4:	a30fc06f          	j	8001a0d4 <JS_ThrowOutOfMemory>
quickjs-nuttx/quickjs.c:3019
    return JS_MKPTR(JS_TAG_SYMBOL, rt->atom_array[atom]);
    8001dea8:	70a8                	ld	a0,96(s1)
quickjs-nuttx/quickjs.c:3020
}
    8001deaa:	70e2                	ld	ra,56(sp)
    8001deac:	7442                	ld	s0,48(sp)
quickjs-nuttx/quickjs.c:3019
    return JS_MKPTR(JS_TAG_SYMBOL, rt->atom_array[atom]);
    8001deae:	02079713          	slli	a4,a5,0x20
    8001deb2:	01d75793          	srli	a5,a4,0x1d
    8001deb6:	97aa                	add	a5,a5,a0
quickjs-nuttx/quickjs.c:3020
}
    8001deb8:	6388                	ld	a0,0(a5)
    8001deba:	74a2                	ld	s1,40(sp)
    8001debc:	55e1                	li	a1,-8
    8001debe:	6121                	addi	sp,sp,64
    8001dec0:	8082                	ret

000000008001dec2 <JS_NewSymbolFromAtom.constprop.0>:
JS_NewSymbolFromAtom():
quickjs-nuttx/quickjs.c:3023
static JSValue JS_NewSymbolFromAtom(JSContext *ctx, JSAtom descr,
    8001dec2:	7139                	addi	sp,sp,-64
    8001dec4:	fc06                	sd	ra,56(sp)
    8001dec6:	f822                	sd	s0,48(sp)
    8001dec8:	f426                	sd	s1,40(sp)
quickjs-nuttx/quickjs.c:3026
    JSRuntime *rt = ctx->rt;
    8001deca:	6d1c                	ld	a5,24(a0)
quickjs-nuttx/quickjs.c:3029
    assert(!__JS_AtomIsTaggedInt(descr));
    8001decc:	0005dc63          	bgez	a1,8001dee4 <JS_NewSymbolFromAtom.constprop.0+0x22>
    8001ded0:	6585                	lui	a1,0x1
    8001ded2:	4601                	li	a2,0
    8001ded4:	bd558593          	addi	a1,a1,-1067 # bd5 <asinh-0x7ffff42b>
quickjs-nuttx/quickjs.c:3030
    assert(descr < rt->atom_size);
    8001ded8:	0004b517          	auipc	a0,0x4b
    8001dedc:	6c050513          	addi	a0,a0,1728 # 80069598 <qjsc_repl+0x3fe8>
    8001dee0:	27d420ef          	jal	ra,8006095c <__assert>
    8001dee4:	4bb8                	lw	a4,80(a5)
    8001dee6:	00e5e763          	bltu	a1,a4,8001def4 <JS_NewSymbolFromAtom.constprop.0+0x32>
    8001deea:	6585                	lui	a1,0x1
    8001deec:	4601                	li	a2,0
    8001deee:	bd658593          	addi	a1,a1,-1066 # bd6 <asinh-0x7ffff42a>
    8001def2:	b7dd                	j	8001ded8 <JS_NewSymbolFromAtom.constprop.0+0x16>
quickjs-nuttx/quickjs.c:3031
    p = rt->atom_array[descr];
    8001def4:	73bc                	ld	a5,96(a5)
    8001def6:	02059713          	slli	a4,a1,0x20
    8001defa:	01d75593          	srli	a1,a4,0x1d
    8001defe:	95be                	add	a1,a1,a5
    8001df00:	6184                	ld	s1,0(a1)
    8001df02:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:3032
    JS_DupValue(ctx, JS_MKPTR(JS_TAG_STRING, p));
    8001df04:	55e5                	li	a1,-7
    8001df06:	8526                	mv	a0,s1
    8001df08:	d12ec0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:3033
    return JS_NewSymbol(ctx, p, atom_type);
    8001df0c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:3034
}
    8001df0e:	7442                	ld	s0,48(sp)
    8001df10:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:3033
    return JS_NewSymbol(ctx, p, atom_type);
    8001df12:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:3034
}
    8001df14:	74a2                	ld	s1,40(sp)
quickjs-nuttx/quickjs.c:3033
    return JS_NewSymbol(ctx, p, atom_type);
    8001df16:	4611                	li	a2,4
quickjs-nuttx/quickjs.c:3034
}
    8001df18:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:3033
    return JS_NewSymbol(ctx, p, atom_type);
    8001df1a:	f69ff06f          	j	8001de82 <JS_NewSymbol>

000000008001df1e <js_alloc_string>:
js_alloc_string():
quickjs-nuttx/quickjs.c:1904
{
    8001df1e:	1101                	addi	sp,sp,-32
    8001df20:	e822                	sd	s0,16(sp)
    8001df22:	e426                	sd	s1,8(sp)
    8001df24:	ec06                	sd	ra,24(sp)
    8001df26:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:1906
    p = js_alloc_string_rt(ctx->rt, max_len, is_wide_char);
    8001df28:	6d08                	ld	a0,24(a0)
    8001df2a:	a7bec0ef          	jal	ra,8000a9a4 <js_alloc_string_rt>
    8001df2e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:1907
    if (unlikely(!p)) {
    8001df30:	e501                	bnez	a0,8001df38 <js_alloc_string+0x1a>
quickjs-nuttx/quickjs.c:1908
        JS_ThrowOutOfMemory(ctx);
    8001df32:	8526                	mv	a0,s1
    8001df34:	9a0fc0ef          	jal	ra,8001a0d4 <JS_ThrowOutOfMemory>
quickjs-nuttx/quickjs.c:1912
}
    8001df38:	60e2                	ld	ra,24(sp)
    8001df3a:	8522                	mv	a0,s0
    8001df3c:	6442                	ld	s0,16(sp)
    8001df3e:	64a2                	ld	s1,8(sp)
    8001df40:	6105                	addi	sp,sp,32
    8001df42:	8082                	ret

000000008001df44 <string_buffer_init2>:
string_buffer_init2():
quickjs-nuttx/quickjs.c:3555
{
    8001df44:	1141                	addi	sp,sp,-16
    8001df46:	e022                	sd	s0,0(sp)
    8001df48:	842e                	mv	s0,a1
    8001df4a:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:3556
    s->ctx = ctx;
    8001df4c:	e008                	sd	a0,0(s0)
quickjs-nuttx/quickjs.c:3555
{
    8001df4e:	8636                	mv	a2,a3
quickjs-nuttx/quickjs.c:3557
    s->size = size;
    8001df50:	c84c                	sw	a1,20(s0)
quickjs-nuttx/quickjs.c:3558
    s->len = 0;
    8001df52:	00042823          	sw	zero,16(s0)
quickjs-nuttx/quickjs.c:3559
    s->is_wide_char = is_wide;
    8001df56:	cc14                	sw	a3,24(s0)
quickjs-nuttx/quickjs.c:3560
    s->error_status = 0;
    8001df58:	00042e23          	sw	zero,28(s0)
quickjs-nuttx/quickjs.c:3555
{
    8001df5c:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs.c:3561
    s->str = js_alloc_string(ctx, size, is_wide);
    8001df5e:	fc1ff0ef          	jal	ra,8001df1e <js_alloc_string>
    8001df62:	e408                	sd	a0,8(s0)
quickjs-nuttx/quickjs.c:3562
    if (unlikely(!s->str)) {
    8001df64:	e911                	bnez	a0,8001df78 <string_buffer_init2+0x34>
quickjs-nuttx/quickjs.c:3564
        return s->error_status = -1;
    8001df66:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:3563
        s->size = 0;
    8001df68:	00042a23          	sw	zero,20(s0)
quickjs-nuttx/quickjs.c:3564
        return s->error_status = -1;
    8001df6c:	cc5c                	sw	a5,28(s0)
    8001df6e:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:3571
}
    8001df70:	60a2                	ld	ra,8(sp)
    8001df72:	6402                	ld	s0,0(sp)
    8001df74:	0141                	addi	sp,sp,16
    8001df76:	8082                	ret
quickjs-nuttx/quickjs.c:3570
    return 0;
    8001df78:	4501                	li	a0,0
    8001df7a:	bfdd                	j	8001df70 <string_buffer_init2+0x2c>

000000008001df7c <string_buffer_init>:
string_buffer_init():
quickjs-nuttx/quickjs.c:3575
    return string_buffer_init2(ctx, s, size, 0);
    8001df7c:	4681                	li	a3,0
    8001df7e:	fc7ff06f          	j	8001df44 <string_buffer_init2>

000000008001df82 <js_new_string16>:
js_new_string16():
quickjs-nuttx/quickjs.c:3491
{
    8001df82:	7179                	addi	sp,sp,-48
    8001df84:	f022                	sd	s0,32(sp)
    8001df86:	8432                	mv	s0,a2
    8001df88:	e84a                	sd	s2,16(sp)
quickjs-nuttx/quickjs.c:3493
    str = js_alloc_string(ctx, len, 1);
    8001df8a:	4605                	li	a2,1
quickjs-nuttx/quickjs.c:3491
{
    8001df8c:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:3493
    str = js_alloc_string(ctx, len, 1);
    8001df8e:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:3491
{
    8001df90:	f406                	sd	ra,40(sp)
    8001df92:	ec26                	sd	s1,24(sp)
quickjs-nuttx/quickjs.c:3493
    str = js_alloc_string(ctx, len, 1);
    8001df94:	f8bff0ef          	jal	ra,8001df1e <js_alloc_string>
quickjs-nuttx/quickjs.c:3494
    if (!str)
    8001df98:	ed01                	bnez	a0,8001dfb0 <js_new_string16+0x2e>
quickjs-nuttx/quickjs.c:3495
        return JS_EXCEPTION;
    8001df9a:	e002                	sd	zero,0(sp)
    8001df9c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:3498
}
    8001df9e:	70a2                	ld	ra,40(sp)
    8001dfa0:	7402                	ld	s0,32(sp)
quickjs-nuttx/quickjs.c:3497
    return JS_MKPTR(JS_TAG_STRING, str);
    8001dfa2:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:3498
}
    8001dfa4:	6502                	ld	a0,0(sp)
    8001dfa6:	65a2                	ld	a1,8(sp)
    8001dfa8:	64e2                	ld	s1,24(sp)
    8001dfaa:	6942                	ld	s2,16(sp)
    8001dfac:	6145                	addi	sp,sp,48
    8001dfae:	8082                	ret
    8001dfb0:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:3496
    memcpy(str->u.str16, buf, len * 2);
    8001dfb2:	0014161b          	slliw	a2,s0,0x1
    8001dfb6:	85ca                	mv	a1,s2
    8001dfb8:	0541                	addi	a0,a0,16
    8001dfba:	5f3450ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:3497
    return JS_MKPTR(JS_TAG_STRING, str);
    8001dfbe:	57e5                	li	a5,-7
    8001dfc0:	e026                	sd	s1,0(sp)
    8001dfc2:	bff1                	j	8001df9e <js_new_string16+0x1c>

000000008001dfc4 <JS_ReadString>:
JS_ReadString():
quickjs-nuttx/quickjs.c:35666
{
    8001dfc4:	7139                	addi	sp,sp,-64
quickjs-nuttx/quickjs.c:35672
    if (bc_get_leb128(s, &len))
    8001dfc6:	006c                	addi	a1,sp,12
quickjs-nuttx/quickjs.c:35666
{
    8001dfc8:	f822                	sd	s0,48(sp)
    8001dfca:	fc06                	sd	ra,56(sp)
    8001dfcc:	f426                	sd	s1,40(sp)
    8001dfce:	f04a                	sd	s2,32(sp)
    8001dfd0:	ec4e                	sd	s3,24(sp)
    8001dfd2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:35672
    if (bc_get_leb128(s, &len))
    8001dfd4:	cecfa0ef          	jal	ra,800184c0 <bc_get_leb128>
    8001dfd8:	e921                	bnez	a0,8001e028 <JS_ReadString+0x64>
quickjs-nuttx/quickjs.c:35674
    is_wide_char = len & 1;
    8001dfda:	45b2                	lw	a1,12(sp)
quickjs-nuttx/quickjs.c:35676
    p = js_alloc_string(s->ctx, len, is_wide_char);
    8001dfdc:	6008                	ld	a0,0(s0)
quickjs-nuttx/quickjs.c:35674
    is_wide_char = len & 1;
    8001dfde:	0015f993          	andi	s3,a1,1
quickjs-nuttx/quickjs.c:35676
    p = js_alloc_string(s->ctx, len, is_wide_char);
    8001dfe2:	864e                	mv	a2,s3
quickjs-nuttx/quickjs.c:35675
    len >>= 1;
    8001dfe4:	0015d59b          	srliw	a1,a1,0x1
    8001dfe8:	c62e                	sw	a1,12(sp)
quickjs-nuttx/quickjs.c:35676
    p = js_alloc_string(s->ctx, len, is_wide_char);
    8001dfea:	f35ff0ef          	jal	ra,8001df1e <js_alloc_string>
    8001dfee:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:35677
    if (!p) {
    8001dff0:	e919                	bnez	a0,8001e006 <JS_ReadString+0x42>
quickjs-nuttx/quickjs.c:35678
        s->error_state = -1;
    8001dff2:	57fd                	li	a5,-1
    8001dff4:	d81c                	sw	a5,48(s0)
quickjs-nuttx/quickjs.c:35696
}
    8001dff6:	70e2                	ld	ra,56(sp)
    8001dff8:	7442                	ld	s0,48(sp)
    8001dffa:	7902                	ld	s2,32(sp)
    8001dffc:	69e2                	ld	s3,24(sp)
    8001dffe:	8526                	mv	a0,s1
