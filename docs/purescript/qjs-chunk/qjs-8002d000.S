    8002c002:	9e99                	subw	a3,a3,a4
    8002c004:	0006861b          	sext.w	a2,a3
quickjs-nuttx/quickjs.c:32084
                    switch (re->size) {
    8002c008:	05a78a63          	beq	a5,s10,8002c05c <js_create_function+0x738>
    8002c00c:	4511                	li	a0,4
    8002c00e:	02a78063          	beq	a5,a0,8002c02e <js_create_function+0x70a>
    8002c012:	4685                	li	a3,1
    8002c014:	02d79f63          	bne	a5,a3,8002c052 <js_create_function+0x72e>
quickjs-nuttx/quickjs.c:32093
                        assert(diff == (int8_t)diff);
    8002c018:	0186179b          	slliw	a5,a2,0x18
    8002c01c:	4187d79b          	sraiw	a5,a5,0x18
    8002c020:	06c78363          	beq	a5,a2,8002c086 <js_create_function+0x762>
    8002c024:	65a1                	lui	a1,0x8
    8002c026:	4601                	li	a2,0
    8002c028:	d5d58593          	addi	a1,a1,-675 # 7d5d <asinh-0x7fff82a3>
    8002c02c:	b9fd                	j	8002bd2a <js_create_function+0x406>
put_u32():
quickjs-nuttx/cutils.h:180
    ((struct packed_u32 *)tab)->v = val;
    8002c02e:	7646                	ld	a2,112(sp)
resolve_labels():
quickjs-nuttx/quickjs.c:32086
                        put_u32(bc_out.buf + re->addr, diff);
    8002c030:	1702                	slli	a4,a4,0x20
    8002c032:	9301                	srli	a4,a4,0x20
put_u32():
quickjs-nuttx/cutils.h:180
    8002c034:	9732                	add	a4,a4,a2
    8002c036:	0086d79b          	srliw	a5,a3,0x8
    8002c03a:	00d70023          	sb	a3,0(a4)
    8002c03e:	00f700a3          	sb	a5,1(a4)
    8002c042:	0106d79b          	srliw	a5,a3,0x10
    8002c046:	0186d69b          	srliw	a3,a3,0x18
    8002c04a:	00f70123          	sb	a5,2(a4)
    8002c04e:	00d701a3          	sb	a3,3(a4)
resolve_labels():
quickjs-nuttx/quickjs.c:32097
                    js_free(ctx, re);
    8002c052:	856e                	mv	a0,s11
    8002c054:	fa3de0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:32081
                for(re = ls->first_reloc; re != NULL; re = re_next) {
    8002c058:	85ce                	mv	a1,s3
    8002c05a:	bf49                	j	8002bfec <js_create_function+0x6c8>
quickjs-nuttx/quickjs.c:32089
                        assert(diff == (int16_t)diff);
    8002c05c:	0106169b          	slliw	a3,a2,0x10
    8002c060:	4106d69b          	sraiw	a3,a3,0x10
    8002c064:	00c68763          	beq	a3,a2,8002c072 <js_create_function+0x74e>
    8002c068:	65a1                	lui	a1,0x8
    8002c06a:	4601                	li	a2,0
    8002c06c:	d5958593          	addi	a1,a1,-679 # 7d59 <asinh-0x7fff82a7>
    8002c070:	b96d                	j	8002bd2a <js_create_function+0x406>
put_u16():
quickjs-nuttx/cutils.h:195
    ((struct packed_u16 *)tab)->v = val;
    8002c072:	77c6                	ld	a5,112(sp)
resolve_labels():
quickjs-nuttx/quickjs.c:32090
                        put_u16(bc_out.buf + re->addr, diff);
    8002c074:	1702                	slli	a4,a4,0x20
    8002c076:	9301                	srli	a4,a4,0x20
put_u16():
quickjs-nuttx/cutils.h:195
    8002c078:	973e                	add	a4,a4,a5
    8002c07a:	00d70023          	sb	a3,0(a4)
    8002c07e:	82a1                	srli	a3,a3,0x8
    8002c080:	00d700a3          	sb	a3,1(a4)
quickjs-nuttx/cutils.h:196
}
    8002c084:	b7f9                	j	8002c052 <js_create_function+0x72e>
put_u8():
quickjs-nuttx/cutils.h:210
    *tab = val;
    8002c086:	76c6                	ld	a3,112(sp)
resolve_labels():
quickjs-nuttx/quickjs.c:32094
                        put_u8(bc_out.buf + re->addr, diff);
    8002c088:	1702                	slli	a4,a4,0x20
    8002c08a:	9301                	srli	a4,a4,0x20
put_u8():
quickjs-nuttx/cutils.h:210
    8002c08c:	9736                	add	a4,a4,a3
resolve_labels():
quickjs-nuttx/quickjs.c:32094
    8002c08e:	00f70023          	sb	a5,0(a4)
put_u8():
quickjs-nuttx/cutils.h:211
}
    8002c092:	b7c1                	j	8002c052 <js_create_function+0x72e>
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002c094:	002ac983          	lbu	s3,2(s5)
    8002c098:	001ac783          	lbu	a5,1(s5)
resolve_labels():
quickjs-nuttx/quickjs.c:32109
                if (code_match(&cc, pos_next, OP_return, -1)) {
    8002c09c:	85a6                	mv	a1,s1
get_u16():
quickjs-nuttx/cutils.h:185
    8002c09e:	09a2                	slli	s3,s3,0x8
resolve_labels():
quickjs-nuttx/quickjs.c:32109
    8002c0a0:	56fd                	li	a3,-1
    8002c0a2:	02800613          	li	a2,40
    8002c0a6:	00a8                	addi	a0,sp,72
quickjs-nuttx/quickjs.c:32108
                argc = get_u16(bc_buf + pos + 1);
    8002c0a8:	00f9e9b3          	or	s3,s3,a5
quickjs-nuttx/quickjs.c:32109
                if (code_match(&cc, pos_next, OP_return, -1)) {
    8002c0ac:	c75dc0ef          	jal	ra,80008d20 <code_match>
    8002c0b0:	75e6                	ld	a1,120(sp)
    8002c0b2:	18050fe3          	beqz	a0,8002ca50 <js_create_function+0x112c>
quickjs-nuttx/quickjs.c:32110
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002c0b6:	47e6                	lw	a5,88(sp)
    8002c0b8:	0007c363          	bltz	a5,8002c0be <js_create_function+0x79a>
    8002c0bc:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32111
                    add_pc2line_info(s, bc_out.size, line_num);
    8002c0be:	5642                	lw	a2,48(sp)
    8002c0c0:	2581                	sext.w	a1,a1
    8002c0c2:	8522                	mv	a0,s0
    8002c0c4:	f63db0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32112
                    put_short_code(&bc_out, op + 1, argc);
    8002c0c8:	864e                	mv	a2,s3
    8002c0ca:	0019059b          	addiw	a1,s2,1
    8002c0ce:	1888                	addi	a0,sp,112
    8002c0d0:	f2bdc0ef          	jal	ra,80008ffa <put_short_code>
quickjs-nuttx/quickjs.c:32113
                    pos_next = skip_dead_code(s, bc_buf, bc_len, cc.pos, &line_num);
    8002c0d4:	46d6                	lw	a3,84(sp)
    8002c0d6:	1818                	addi	a4,sp,48
quickjs-nuttx/quickjs.c:32149
                    pos_next = skip_dead_code(s, bc_buf, bc_len, pos_next, &line_num);
    8002c0d8:	8666                	mv	a2,s9
    8002c0da:	85de                	mv	a1,s7
    8002c0dc:	8522                	mv	a0,s0
    8002c0de:	ba0df0ef          	jal	ra,8000b47e <skip_dead_code>
    8002c0e2:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:32150
                    break;
    8002c0e4:	b739                	j	8002bff2 <js_create_function+0x6ce>
quickjs-nuttx/quickjs.c:32127
            pos_next = skip_dead_code(s, bc_buf, bc_len, pos_next, &line_num);
    8002c0e6:	86a6                	mv	a3,s1
    8002c0e8:	1818                	addi	a4,sp,48
    8002c0ea:	8666                	mv	a2,s9
    8002c0ec:	85de                	mv	a1,s7
    8002c0ee:	8522                	mv	a0,s0
    8002c0f0:	b8edf0ef          	jal	ra,8000b47e <skip_dead_code>
    8002c0f4:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:32128
            goto no_change;
    8002c0f6:	b1ed                	j	8002bde0 <js_create_function+0x4bc>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002c0f8:	002ac783          	lbu	a5,2(s5)
    8002c0fc:	001ac583          	lbu	a1,1(s5)
    8002c100:	07a2                	slli	a5,a5,0x8
    8002c102:	8fcd                	or	a5,a5,a1
    8002c104:	003ac583          	lbu	a1,3(s5)
    8002c108:	05c2                	slli	a1,a1,0x10
    8002c10a:	8fcd                	or	a5,a5,a1
    8002c10c:	004ac583          	lbu	a1,4(s5)
    8002c110:	05e2                	slli	a1,a1,0x18
    8002c112:	8ddd                	or	a1,a1,a5
resolve_labels():
quickjs-nuttx/quickjs.c:32131
            label = get_u32(bc_buf + pos + 1);
    8002c114:	2581                	sext.w	a1,a1
quickjs-nuttx/quickjs.c:32134
                int line1 = -1;
    8002c116:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:32136
                label = find_jump_target(s, label, &op1, &line1);
    8002c118:	1070                	addi	a2,sp,44
    8002c11a:	1854                	addi	a3,sp,52
    8002c11c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:32134
                int line1 = -1;
    8002c11e:	da3e                	sw	a5,52(sp)
quickjs-nuttx/quickjs.c:32136
                label = find_jump_target(s, label, &op1, &line1);
    8002c120:	e7cdd0ef          	jal	ra,8000979c <find_jump_target>
    8002c124:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:32137
                if (code_has_label(&cc, pos_next, label)) {
    8002c126:	862a                	mv	a2,a0
    8002c128:	85a6                	mv	a1,s1
    8002c12a:	00a8                	addi	a0,sp,72
    8002c12c:	f41db0ef          	jal	ra,8000806c <code_has_label>
    8002c130:	c519                	beqz	a0,8002c13e <js_create_function+0x81a>
quickjs-nuttx/quickjs.c:32139
                    update_label(s, label, -1);
    8002c132:	567d                	li	a2,-1
    8002c134:	85d6                	mv	a1,s5
quickjs-nuttx/quickjs.c:32353
                        update_label(s, cc.label, -1);
    8002c136:	8522                	mv	a0,s0
    8002c138:	e18dd0ef          	jal	ra,80009750 <update_label>
quickjs-nuttx/quickjs.c:32354
                        break;
    8002c13c:	bd5d                	j	8002bff2 <js_create_function+0x6ce>
quickjs-nuttx/quickjs.c:32142
                if (op1 == OP_return || op1 == OP_return_undef || op1 == OP_throw) {
    8002c13e:	5732                	lw	a4,44(sp)
    8002c140:	4785                	li	a5,1
    8002c142:	fd87069b          	addiw	a3,a4,-40
    8002c146:	00d7f663          	bgeu	a5,a3,8002c152 <js_create_function+0x82e>
    8002c14a:	02f00693          	li	a3,47
    8002c14e:	02d71463          	bne	a4,a3,8002c176 <js_create_function+0x852>
quickjs-nuttx/quickjs.c:32146
                    update_label(s, label, -1);
    8002c152:	567d                	li	a2,-1
    8002c154:	85d6                	mv	a1,s5
    8002c156:	8522                	mv	a0,s0
    8002c158:	df8dd0ef          	jal	ra,80009750 <update_label>
quickjs-nuttx/quickjs.c:32147
                    add_pc2line_info(s, bc_out.size, line_num);
    8002c15c:	5642                	lw	a2,48(sp)
    8002c15e:	55e6                	lw	a1,120(sp)
    8002c160:	8522                	mv	a0,s0
    8002c162:	ec5db0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32148
                    dbuf_putc(&bc_out, op1);
    8002c166:	02c14583          	lbu	a1,44(sp)
    8002c16a:	1888                	addi	a0,sp,112
    8002c16c:	177250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32149
                    pos_next = skip_dead_code(s, bc_buf, bc_len, pos_next, &line_num);
    8002c170:	1818                	addi	a4,sp,48
    8002c172:	86a6                	mv	a3,s1
    8002c174:	b795                	j	8002c0d8 <js_create_function+0x7b4>
quickjs-nuttx/quickjs.c:32159
            goto has_label;
    8002c176:	06c00913          	li	s2,108
quickjs-nuttx/quickjs.c:32202
            add_pc2line_info(s, bc_out.size, line_num);
    8002c17a:	5642                	lw	a2,48(sp)
    8002c17c:	55e6                	lw	a1,120(sp)
    8002c17e:	8522                	mv	a0,s0
    8002c180:	ea7db0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32203
            if (op == OP_goto) {
    8002c184:	06c00713          	li	a4,108
    8002c188:	00e91a63          	bne	s2,a4,8002c19c <js_create_function+0x878>
quickjs-nuttx/quickjs.c:32204
                pos_next = skip_dead_code(s, bc_buf, bc_len, pos_next, &line_num);
    8002c18c:	86a6                	mv	a3,s1
    8002c18e:	1818                	addi	a4,sp,48
    8002c190:	8666                	mv	a2,s9
    8002c192:	85de                	mv	a1,s7
    8002c194:	8522                	mv	a0,s0
    8002c196:	ae8df0ef          	jal	ra,8000b47e <skip_dead_code>
    8002c19a:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:32206
            assert(label >= 0 && label < s->label_count);
    8002c19c:	000ac663          	bltz	s5,8002c1a8 <js_create_function+0x884>
    8002c1a0:	17c42703          	lw	a4,380(s0)
    8002c1a4:	0eeac063          	blt	s5,a4,8002c284 <js_create_function+0x960>
    8002c1a8:	65a1                	lui	a1,0x8
    8002c1aa:	4601                	li	a2,0
    8002c1ac:	dce58593          	addi	a1,a1,-562 # 7dce <asinh-0x7fff8232>
    8002c1b0:	bead                	j	8002bd2a <js_create_function+0x406>
get_u32():
quickjs-nuttx/cutils.h:170
    8002c1b2:	002ac503          	lbu	a0,2(s5)
    8002c1b6:	001ac783          	lbu	a5,1(s5)
resolve_labels():
quickjs-nuttx/quickjs.c:32171
            goto has_label;
    8002c1ba:	06e00913          	li	s2,110
get_u32():
quickjs-nuttx/cutils.h:170
    8002c1be:	0522                	slli	a0,a0,0x8
    8002c1c0:	8d5d                	or	a0,a0,a5
    8002c1c2:	003ac783          	lbu	a5,3(s5)
    8002c1c6:	07c2                	slli	a5,a5,0x10
    8002c1c8:	8d5d                	or	a0,a0,a5
    8002c1ca:	004ac783          	lbu	a5,4(s5)
    8002c1ce:	07e2                	slli	a5,a5,0x18
    8002c1d0:	8fc9                	or	a5,a5,a0
resolve_labels():
quickjs-nuttx/quickjs.c:32162
            label = get_u32(bc_buf + pos + 1);
    8002c1d2:	00078a9b          	sext.w	s5,a5
quickjs-nuttx/quickjs.c:32171
            goto has_label;
    8002c1d6:	b755                	j	8002c17a <js_create_function+0x856>
get_u32():
quickjs-nuttx/cutils.h:170
    8002c1d8:	002ac503          	lbu	a0,2(s5)
    8002c1dc:	001ac783          	lbu	a5,1(s5)
resolve_labels():
quickjs-nuttx/quickjs.c:32175
            goto has_label;
    8002c1e0:	06d00913          	li	s2,109
get_u32():
quickjs-nuttx/cutils.h:170
    8002c1e4:	0522                	slli	a0,a0,0x8
    8002c1e6:	8d5d                	or	a0,a0,a5
    8002c1e8:	003ac783          	lbu	a5,3(s5)
    8002c1ec:	07c2                	slli	a5,a5,0x10
    8002c1ee:	8d5d                	or	a0,a0,a5
    8002c1f0:	004ac783          	lbu	a5,4(s5)
    8002c1f4:	07e2                	slli	a5,a5,0x18
    8002c1f6:	8fc9                	or	a5,a5,a0
resolve_labels():
quickjs-nuttx/quickjs.c:32174
            label = get_u32(bc_buf + pos + 1);
    8002c1f8:	00078a9b          	sext.w	s5,a5
quickjs-nuttx/quickjs.c:32175
            goto has_label;
    8002c1fc:	bfbd                	j	8002c17a <js_create_function+0x856>
get_u32():
quickjs-nuttx/cutils.h:170
    8002c1fe:	002ac783          	lbu	a5,2(s5)
    8002c202:	001ac583          	lbu	a1,1(s5)
resolve_labels():
quickjs-nuttx/quickjs.c:32181
                label = find_jump_target(s, label, &op1, NULL);
    8002c206:	1070                	addi	a2,sp,44
get_u32():
quickjs-nuttx/cutils.h:170
    8002c208:	07a2                	slli	a5,a5,0x8
    8002c20a:	8fcd                	or	a5,a5,a1
    8002c20c:	003ac583          	lbu	a1,3(s5)
resolve_labels():
quickjs-nuttx/quickjs.c:32181
    8002c210:	4681                	li	a3,0
    8002c212:	8522                	mv	a0,s0
get_u32():
quickjs-nuttx/cutils.h:170
    8002c214:	05c2                	slli	a1,a1,0x10
    8002c216:	8fcd                	or	a5,a5,a1
    8002c218:	004ac583          	lbu	a1,4(s5)
    8002c21c:	05e2                	slli	a1,a1,0x18
    8002c21e:	8ddd                	or	a1,a1,a5
resolve_labels():
quickjs-nuttx/quickjs.c:32181
    8002c220:	2581                	sext.w	a1,a1
    8002c222:	d7add0ef          	jal	ra,8000979c <find_jump_target>
    8002c226:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:32183
                if (code_has_label(&cc, pos_next, label)) {
    8002c228:	862a                	mv	a2,a0
    8002c22a:	85a6                	mv	a1,s1
    8002c22c:	00a8                	addi	a0,sp,72
    8002c22e:	e3fdb0ef          	jal	ra,8000806c <code_has_label>
    8002c232:	c919                	beqz	a0,8002c248 <js_create_function+0x924>
quickjs-nuttx/quickjs.c:32184
                    update_label(s, label, -1);
    8002c234:	85d6                	mv	a1,s5
    8002c236:	567d                	li	a2,-1
    8002c238:	8522                	mv	a0,s0
    8002c23a:	d16dd0ef          	jal	ra,80009750 <update_label>
quickjs-nuttx/quickjs.c:32185
                    dbuf_putc(&bc_out, OP_drop);
    8002c23e:	45b9                	li	a1,14
quickjs-nuttx/quickjs.c:32433
                    dbuf_putc(&bc_out, OP_push_empty_string);
    8002c240:	1888                	addi	a0,sp,112
    8002c242:	0a1250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32434
                    break;
    8002c246:	b375                	j	8002bff2 <js_create_function+0x6ce>
quickjs-nuttx/quickjs.c:32189
                if (code_match(&cc, pos_next, OP_goto, -1)) {
    8002c248:	56fd                	li	a3,-1
    8002c24a:	06c00613          	li	a2,108
    8002c24e:	85a6                	mv	a1,s1
    8002c250:	00a8                	addi	a0,sp,72
    8002c252:	acfdc0ef          	jal	ra,80008d20 <code_match>
    8002c256:	d115                	beqz	a0,8002c17a <js_create_function+0x856>
quickjs-nuttx/quickjs.c:32190
                    int pos1 = cc.pos;
    8002c258:	4c56                	lw	s8,84(sp)
quickjs-nuttx/quickjs.c:32192
                    if (code_has_label(&cc, pos1, label)) {
    8002c25a:	8656                	mv	a2,s5
    8002c25c:	00a8                	addi	a0,sp,72
    8002c25e:	85e2                	mv	a1,s8
    8002c260:	e0ddb0ef          	jal	ra,8000806c <code_has_label>
    8002c264:	f0050be3          	beqz	a0,8002c17a <js_create_function+0x856>
quickjs-nuttx/quickjs.c:32191
                    int line1 = cc.line_num;
    8002c268:	4766                	lw	a4,88(sp)
quickjs-nuttx/quickjs.c:32193
                        if (line1 >= 0) line_num = line1;
    8002c26a:	00074363          	bltz	a4,8002c270 <js_create_function+0x94c>
    8002c26e:	d83a                	sw	a4,48(sp)
quickjs-nuttx/quickjs.c:32195
                        update_label(s, label, -1);
    8002c270:	85d6                	mv	a1,s5
    8002c272:	567d                	li	a2,-1
    8002c274:	8522                	mv	a0,s0
    8002c276:	cdadd0ef          	jal	ra,80009750 <update_label>
quickjs-nuttx/quickjs.c:32197
                        op ^= OP_if_true ^ OP_if_false;
    8002c27a:	0019c913          	xori	s2,s3,1
quickjs-nuttx/quickjs.c:32196
                        label = cc.label;
    8002c27e:	5a96                	lw	s5,100(sp)
quickjs-nuttx/quickjs.c:32194
                        pos_next = pos1;
    8002c280:	84e2                	mv	s1,s8
    8002c282:	bde5                	j	8002c17a <js_create_function+0x856>
quickjs-nuttx/quickjs.c:32207
            ls = &label_slots[label];
    8002c284:	4c61                	li	s8,24
    8002c286:	038a8c33          	mul	s8,s5,s8
quickjs-nuttx/quickjs.c:32209
            jp = &s->jump_slots[s->jump_count++];
    8002c28a:	1b442683          	lw	a3,436(s0)
    8002c28e:	1a843703          	ld	a4,424(s0)
quickjs-nuttx/quickjs.c:32207
            ls = &label_slots[label];
    8002c292:	67c2                	ld	a5,16(sp)
quickjs-nuttx/quickjs.c:32209
            jp = &s->jump_slots[s->jump_count++];
    8002c294:	0016861b          	addiw	a2,a3,1
    8002c298:	0692                	slli	a3,a3,0x4
    8002c29a:	1ac42a23          	sw	a2,436(s0)
    8002c29e:	9736                	add	a4,a4,a3
quickjs-nuttx/quickjs.c:32210
            jp->op = op;
    8002c2a0:	01272023          	sw	s2,0(a4)
quickjs-nuttx/quickjs.c:32207
            ls = &label_slots[label];
    8002c2a4:	9c3e                	add	s8,s8,a5
quickjs-nuttx/quickjs.c:32211
            jp->size = 4;
    8002c2a6:	4791                	li	a5,4
    8002c2a8:	c35c                	sw	a5,4(a4)
quickjs-nuttx/quickjs.c:32212
            jp->pos = bc_out.size + 1;
    8002c2aa:	76e6                	ld	a3,120(sp)
quickjs-nuttx/quickjs.c:32213
            jp->label = label;
    8002c2ac:	01572623          	sw	s5,12(a4)
quickjs-nuttx/quickjs.c:32212
            jp->pos = bc_out.size + 1;
    8002c2b0:	2685                	addiw	a3,a3,1
    8002c2b2:	c714                	sw	a3,8(a4)
quickjs-nuttx/quickjs.c:32215
            if (ls->addr == -1) {
    8002c2b4:	00cc2783          	lw	a5,12(s8)
    8002c2b8:	56fd                	li	a3,-1
    8002c2ba:	08d79663          	bne	a5,a3,8002c346 <js_create_function+0xa22>
quickjs-nuttx/quickjs.c:32216
                int diff = ls->pos2 - pos - 1;
    8002c2be:	008c2783          	lw	a5,8(s8)
    8002c2c2:	fffa4a13          	not	s4,s4
    8002c2c6:	01478a3b          	addw	s4,a5,s4
quickjs-nuttx/quickjs.c:32217
                if (diff < 128 && (op == OP_if_false || op == OP_if_true || op == OP_goto)) {
    8002c2ca:	07f00793          	li	a5,127
    8002c2ce:	0547c363          	blt	a5,s4,8002c314 <js_create_function+0x9f0>
    8002c2d2:	f969079b          	addiw	a5,s2,-106
    8002c2d6:	0efd6163          	bltu	s10,a5,8002c3b8 <js_create_function+0xa94>
quickjs-nuttx/quickjs.c:32218
                    jp->size = 1;
    8002c2da:	4785                	li	a5,1
    8002c2dc:	c35c                	sw	a5,4(a4)
quickjs-nuttx/quickjs.c:32220
                    dbuf_putc(&bc_out, OP_if_false8 + (op - OP_if_false));
    8002c2de:	f829059b          	addiw	a1,s2,-126
quickjs-nuttx/quickjs.c:32219
                    jp->op = OP_if_false8 + (op - OP_if_false);
    8002c2e2:	0829079b          	addiw	a5,s2,130
    8002c2e6:	c31c                	sw	a5,0(a4)
quickjs-nuttx/quickjs.c:32220
                    dbuf_putc(&bc_out, OP_if_false8 + (op - OP_if_false));
    8002c2e8:	0ff5f593          	zext.b	a1,a1
    8002c2ec:	1888                	addi	a0,sp,112
    8002c2ee:	7f4250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32221
                    dbuf_putc(&bc_out, 0);
    8002c2f2:	4581                	li	a1,0
    8002c2f4:	1888                	addi	a0,sp,112
    8002c2f6:	7ec250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32222
                    if (!add_reloc(ctx, ls, bc_out.size - 1, 1))
    8002c2fa:	7666                	ld	a2,120(sp)
    8002c2fc:	4685                	li	a3,1
    8002c2fe:	367d                	addiw	a2,a2,-1
quickjs-nuttx/quickjs.c:32257
                if (!add_reloc(ctx, ls, bc_out.size - 4, 4))
    8002c300:	85e2                	mv	a1,s8
    8002c302:	856e                	mv	a0,s11
    8002c304:	943ee0ef          	jal	ra,8001ac46 <add_reloc>
    8002c308:	ce0515e3          	bnez	a0,8002bff2 <js_create_function+0x6ce>
quickjs-nuttx/quickjs.c:32840
    dbuf_free(&bc_out);
    8002c30c:	1888                	addi	a0,sp,112
    8002c30e:	099250ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs.c:32841
    return -1;
    8002c312:	b2e9                	j	8002bcdc <js_create_function+0x3b8>
quickjs-nuttx/quickjs.c:32226
                if (diff < 32768 && op == OP_goto) {
    8002c314:	67a1                	lui	a5,0x8
    8002c316:	0afa5163          	bge	s4,a5,8002c3b8 <js_create_function+0xa94>
    8002c31a:	06c00793          	li	a5,108
    8002c31e:	08f91d63          	bne	s2,a5,8002c3b8 <js_create_function+0xa94>
quickjs-nuttx/quickjs.c:32228
                    jp->op = OP_goto16;
    8002c322:	0ef00793          	li	a5,239
quickjs-nuttx/quickjs.c:32227
                    jp->size = 2;
    8002c326:	01a72223          	sw	s10,4(a4)
quickjs-nuttx/quickjs.c:32228
                    jp->op = OP_goto16;
    8002c32a:	c31c                	sw	a5,0(a4)
quickjs-nuttx/quickjs.c:32229
                    dbuf_putc(&bc_out, OP_goto16);
    8002c32c:	0ef00593          	li	a1,239
    8002c330:	1888                	addi	a0,sp,112
    8002c332:	7b0250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32230
                    dbuf_put_u16(&bc_out, 0);
    8002c336:	4581                	li	a1,0
    8002c338:	1888                	addi	a0,sp,112
    8002c33a:	c73dc0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:32231
                    if (!add_reloc(ctx, ls, bc_out.size - 2, 2))
    8002c33e:	7666                	ld	a2,120(sp)
    8002c340:	4689                	li	a3,2
    8002c342:	3679                	addiw	a2,a2,-2
    8002c344:	bf75                	j	8002c300 <js_create_function+0x9dc>
quickjs-nuttx/quickjs.c:32236
                int diff = ls->addr - bc_out.size - 1;
    8002c346:	79e6                	ld	s3,120(sp)
    8002c348:	fff9c993          	not	s3,s3
    8002c34c:	00f989bb          	addw	s3,s3,a5
quickjs-nuttx/quickjs.c:32237
                if (diff == (int8_t)diff && (op == OP_if_false || op == OP_if_true || op == OP_goto)) {
    8002c350:	01899a1b          	slliw	s4,s3,0x18
    8002c354:	418a5a1b          	sraiw	s4,s4,0x18
    8002c358:	033a1563          	bne	s4,s3,8002c382 <js_create_function+0xa5e>
    8002c35c:	f969079b          	addiw	a5,s2,-106
    8002c360:	02fd6163          	bltu	s10,a5,8002c382 <js_create_function+0xa5e>
quickjs-nuttx/quickjs.c:32238
                    jp->size = 1;
    8002c364:	4785                	li	a5,1
    8002c366:	c35c                	sw	a5,4(a4)
quickjs-nuttx/quickjs.c:32240
                    dbuf_putc(&bc_out, OP_if_false8 + (op - OP_if_false));
    8002c368:	f829059b          	addiw	a1,s2,-126
quickjs-nuttx/quickjs.c:32239
                    jp->op = OP_if_false8 + (op - OP_if_false);
    8002c36c:	0829079b          	addiw	a5,s2,130
quickjs-nuttx/quickjs.c:32240
                    dbuf_putc(&bc_out, OP_if_false8 + (op - OP_if_false));
    8002c370:	0ff5f593          	zext.b	a1,a1
quickjs-nuttx/quickjs.c:32239
                    jp->op = OP_if_false8 + (op - OP_if_false);
    8002c374:	c31c                	sw	a5,0(a4)
quickjs-nuttx/quickjs.c:32240
                    dbuf_putc(&bc_out, OP_if_false8 + (op - OP_if_false));
    8002c376:	1888                	addi	a0,sp,112
    8002c378:	76a250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32241
                    dbuf_putc(&bc_out, diff);
    8002c37c:	0ffa7593          	zext.b	a1,s4
    8002c380:	b5c1                	j	8002c240 <js_create_function+0x91c>
quickjs-nuttx/quickjs.c:32244
                if (diff == (int16_t)diff && op == OP_goto) {
    8002c382:	0109979b          	slliw	a5,s3,0x10
    8002c386:	4107d79b          	sraiw	a5,a5,0x10
    8002c38a:	03379763          	bne	a5,s3,8002c3b8 <js_create_function+0xa94>
    8002c38e:	06c00793          	li	a5,108
    8002c392:	02f91363          	bne	s2,a5,8002c3b8 <js_create_function+0xa94>
quickjs-nuttx/quickjs.c:32246
                    jp->op = OP_goto16;
    8002c396:	0ef00793          	li	a5,239
quickjs-nuttx/quickjs.c:32245
                    jp->size = 2;
    8002c39a:	01a72223          	sw	s10,4(a4)
quickjs-nuttx/quickjs.c:32246
                    jp->op = OP_goto16;
    8002c39e:	c31c                	sw	a5,0(a4)
quickjs-nuttx/quickjs.c:32247
                    dbuf_putc(&bc_out, OP_goto16);
    8002c3a0:	0ef00593          	li	a1,239
    8002c3a4:	1888                	addi	a0,sp,112
    8002c3a6:	73c250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32248
                    dbuf_put_u16(&bc_out, diff);
    8002c3aa:	03099593          	slli	a1,s3,0x30
    8002c3ae:	91c1                	srli	a1,a1,0x30
    8002c3b0:	1888                	addi	a0,sp,112
    8002c3b2:	bfbdc0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:32249
                    break;
    8002c3b6:	b935                	j	8002bff2 <js_create_function+0x6ce>
quickjs-nuttx/quickjs.c:32253
            dbuf_putc(&bc_out, op);
    8002c3b8:	0ff97593          	zext.b	a1,s2
    8002c3bc:	1888                	addi	a0,sp,112
    8002c3be:	724250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32254
            dbuf_put_u32(&bc_out, ls->addr - bc_out.size);
    8002c3c2:	77e6                	ld	a5,120(sp)
    8002c3c4:	00cc2583          	lw	a1,12(s8)
    8002c3c8:	1888                	addi	a0,sp,112
    8002c3ca:	9d9d                	subw	a1,a1,a5
    8002c3cc:	d17dc0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:32255
            if (ls->addr == -1) {
    8002c3d0:	00cc2703          	lw	a4,12(s8)
    8002c3d4:	57fd                	li	a5,-1
    8002c3d6:	c0f71ee3          	bne	a4,a5,8002bff2 <js_create_function+0x6ce>
quickjs-nuttx/quickjs.c:32257
                if (!add_reloc(ctx, ls, bc_out.size - 4, 4))
    8002c3da:	7666                	ld	a2,120(sp)
    8002c3dc:	4691                	li	a3,4
    8002c3de:	3671                	addiw	a2,a2,-4
    8002c3e0:	b705                	j	8002c300 <js_create_function+0x9dc>
get_u32():
quickjs-nuttx/cutils.h:170
    8002c3e2:	002ac783          	lbu	a5,2(s5)
    8002c3e6:	001acc03          	lbu	s8,1(s5)
    8002c3ea:	005ac583          	lbu	a1,5(s5)
    8002c3ee:	07a2                	slli	a5,a5,0x8
    8002c3f0:	0187e7b3          	or	a5,a5,s8
    8002c3f4:	003acc03          	lbu	s8,3(s5)
resolve_labels():
quickjs-nuttx/quickjs.c:32273
                is_with = bc_buf[pos + 9];
    8002c3f8:	2a25                	addiw	s4,s4,9
    8002c3fa:	9a5e                	add	s4,s4,s7
get_u32():
quickjs-nuttx/cutils.h:170
    8002c3fc:	0c42                	slli	s8,s8,0x10
    8002c3fe:	00fc67b3          	or	a5,s8,a5
    8002c402:	004acc03          	lbu	s8,4(s5)
resolve_labels():
quickjs-nuttx/quickjs.c:32275
                    label = find_jump_target(s, label, &op1, NULL);
    8002c406:	4681                	li	a3,0
    8002c408:	1070                	addi	a2,sp,44
get_u32():
quickjs-nuttx/cutils.h:170
    8002c40a:	0c62                	slli	s8,s8,0x18
    8002c40c:	00fc6c33          	or	s8,s8,a5
    8002c410:	006ac783          	lbu	a5,6(s5)
resolve_labels():
quickjs-nuttx/quickjs.c:32275
    8002c414:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:32273
                is_with = bc_buf[pos + 9];
    8002c416:	000a4a03          	lbu	s4,0(s4)
get_u32():
quickjs-nuttx/cutils.h:170
    8002c41a:	07a2                	slli	a5,a5,0x8
    8002c41c:	8fcd                	or	a5,a5,a1
    8002c41e:	007ac583          	lbu	a1,7(s5)
    8002c422:	2c01                	sext.w	s8,s8
    8002c424:	05c2                	slli	a1,a1,0x10
    8002c426:	8fcd                	or	a5,a5,a1
    8002c428:	008ac583          	lbu	a1,8(s5)
    8002c42c:	05e2                	slli	a1,a1,0x18
    8002c42e:	8ddd                	or	a1,a1,a5
resolve_labels():
quickjs-nuttx/quickjs.c:32275
                    label = find_jump_target(s, label, &op1, NULL);
    8002c430:	2581                	sext.w	a1,a1
    8002c432:	b6add0ef          	jal	ra,8000979c <find_jump_target>
quickjs-nuttx/quickjs.c:32277
                assert(label >= 0 && label < s->label_count);
    8002c436:	00054663          	bltz	a0,8002c442 <js_create_function+0xb1e>
    8002c43a:	17c42783          	lw	a5,380(s0)
    8002c43e:	00f54763          	blt	a0,a5,8002c44c <js_create_function+0xb28>
    8002c442:	65a1                	lui	a1,0x8
    8002c444:	4601                	li	a2,0
    8002c446:	e1558593          	addi	a1,a1,-491 # 7e15 <asinh-0x7fff81eb>
    8002c44a:	b0c5                	j	8002bd2a <js_create_function+0x406>
quickjs-nuttx/quickjs.c:32278
                ls = &label_slots[label];
    8002c44c:	47e1                	li	a5,24
    8002c44e:	02f507b3          	mul	a5,a0,a5
    8002c452:	6742                	ld	a4,16(sp)
quickjs-nuttx/quickjs.c:32279
                add_pc2line_info(s, bc_out.size, line_num);
    8002c454:	5642                	lw	a2,48(sp)
    8002c456:	55e6                	lw	a1,120(sp)
quickjs-nuttx/quickjs.c:32278
                ls = &label_slots[label];
    8002c458:	ec2a                	sd	a0,24(sp)
quickjs-nuttx/quickjs.c:32279
                add_pc2line_info(s, bc_out.size, line_num);
    8002c45a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:32278
                ls = &label_slots[label];
    8002c45c:	00f70ab3          	add	s5,a4,a5
quickjs-nuttx/quickjs.c:32279
                add_pc2line_info(s, bc_out.size, line_num);
    8002c460:	bc7db0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32281
                jp = &s->jump_slots[s->jump_count++];
    8002c464:	1b442603          	lw	a2,436(s0)
    8002c468:	1a843703          	ld	a4,424(s0)
quickjs-nuttx/quickjs.c:32283
                jp->size = 4;
    8002c46c:	4791                	li	a5,4
quickjs-nuttx/quickjs.c:32281
                jp = &s->jump_slots[s->jump_count++];
    8002c46e:	0016059b          	addiw	a1,a2,1
    8002c472:	0612                	slli	a2,a2,0x4
    8002c474:	9732                	add	a4,a4,a2
    8002c476:	1ab42a23          	sw	a1,436(s0)
quickjs-nuttx/quickjs.c:32283
                jp->size = 4;
    8002c47a:	c35c                	sw	a5,4(a4)
quickjs-nuttx/quickjs.c:32282
                jp->op = op;
    8002c47c:	01272023          	sw	s2,0(a4)
quickjs-nuttx/quickjs.c:32284
                jp->pos = bc_out.size + 5;
    8002c480:	7666                	ld	a2,120(sp)
quickjs-nuttx/quickjs.c:32285
                jp->label = label;
    8002c482:	66e2                	ld	a3,24(sp)
quickjs-nuttx/quickjs.c:32287
                dbuf_putc(&bc_out, op);
    8002c484:	85ce                	mv	a1,s3
quickjs-nuttx/quickjs.c:32284
                jp->pos = bc_out.size + 5;
    8002c486:	2615                	addiw	a2,a2,5
quickjs-nuttx/quickjs.c:32285
                jp->label = label;
    8002c488:	c754                	sw	a3,12(a4)
quickjs-nuttx/quickjs.c:32284
                jp->pos = bc_out.size + 5;
    8002c48a:	c710                	sw	a2,8(a4)
quickjs-nuttx/quickjs.c:32287
                dbuf_putc(&bc_out, op);
    8002c48c:	1888                	addi	a0,sp,112
    8002c48e:	654250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32288
                dbuf_put_u32(&bc_out, atom);
    8002c492:	85e2                	mv	a1,s8
    8002c494:	1888                	addi	a0,sp,112
    8002c496:	c4ddc0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:32289
                dbuf_put_u32(&bc_out, ls->addr - bc_out.size);
    8002c49a:	7766                	ld	a4,120(sp)
    8002c49c:	00caa583          	lw	a1,12(s5)
    8002c4a0:	1888                	addi	a0,sp,112
    8002c4a2:	9d99                	subw	a1,a1,a4
    8002c4a4:	c3fdc0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:32290
                if (ls->addr == -1) {
    8002c4a8:	00caa683          	lw	a3,12(s5)
    8002c4ac:	577d                	li	a4,-1
    8002c4ae:	00e68463          	beq	a3,a4,8002c4b6 <js_create_function+0xb92>
quickjs-nuttx/quickjs.c:32295
                dbuf_putc(&bc_out, is_with);
    8002c4b2:	85d2                	mv	a1,s4
    8002c4b4:	b371                	j	8002c240 <js_create_function+0x91c>
quickjs-nuttx/quickjs.c:32292
                    if (!add_reloc(ctx, ls, bc_out.size - 4, 4))
    8002c4b6:	7666                	ld	a2,120(sp)
    8002c4b8:	4691                	li	a3,4
    8002c4ba:	85d6                	mv	a1,s5
    8002c4bc:	3671                	addiw	a2,a2,-4
    8002c4be:	856e                	mv	a0,s11
    8002c4c0:	f86ee0ef          	jal	ra,8001ac46 <add_reloc>
    8002c4c4:	f57d                	bnez	a0,8002c4b2 <js_create_function+0xb8e>
    8002c4c6:	b599                	j	8002c30c <js_create_function+0x9e8>
quickjs-nuttx/quickjs.c:32302
                if (code_match(&cc, pos_next, OP_return_undef, -1)) {
    8002c4c8:	56fd                	li	a3,-1
    8002c4ca:	02900613          	li	a2,41
    8002c4ce:	85a6                	mv	a1,s1
    8002c4d0:	00a8                	addi	a0,sp,72
    8002c4d2:	84fdc0ef          	jal	ra,80008d20 <code_match>
    8002c4d6:	900505e3          	beqz	a0,8002bde0 <js_create_function+0x4bc>
quickjs-nuttx/quickjs.c:32303
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002c4da:	47e6                	lw	a5,88(sp)
    8002c4dc:	aa07d7e3          	bgez	a5,8002bf8a <js_create_function+0x666>
    8002c4e0:	be09                	j	8002bff2 <js_create_function+0x6ce>
quickjs-nuttx/quickjs.c:32313
                if (code_match(&cc, pos_next, OP_strict_eq, -1)) {
    8002c4e2:	56fd                	li	a3,-1
    8002c4e4:	0ac00613          	li	a2,172
    8002c4e8:	85a6                	mv	a1,s1
    8002c4ea:	00a8                	addi	a0,sp,72
    8002c4ec:	835dc0ef          	jal	ra,80008d20 <code_match>
    8002c4f0:	c105                	beqz	a0,8002c510 <js_create_function+0xbec>
quickjs-nuttx/quickjs.c:32314
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002c4f2:	47e6                	lw	a5,88(sp)
    8002c4f4:	0007c363          	bltz	a5,8002c4fa <js_create_function+0xbd6>
    8002c4f8:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32315
                    add_pc2line_info(s, bc_out.size, line_num);
    8002c4fa:	55e6                	lw	a1,120(sp)
    8002c4fc:	5642                	lw	a2,48(sp)
    8002c4fe:	8522                	mv	a0,s0
    8002c500:	b27db0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32316
                    dbuf_putc(&bc_out, OP_is_null);
    8002c504:	0f500593          	li	a1,245
quickjs-nuttx/quickjs.c:32683
                    dbuf_putc(&bc_out, OP_put_array_el);
    8002c508:	1888                	addi	a0,sp,112
    8002c50a:	5d8250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32684
                    pos_next = cc.pos;
    8002c50e:	a0e5                	j	8002c5f6 <js_create_function+0xcd2>
quickjs-nuttx/quickjs.c:32321
                if (code_match(&cc, pos_next, OP_strict_neq, M2(OP_if_false, OP_if_true), -1)) {
    8002c510:	669d                	lui	a3,0x7
    8002c512:	577d                	li	a4,-1
    8002c514:	b6a68693          	addi	a3,a3,-1174 # 6b6a <asinh-0x7fff9496>
    8002c518:	0ad00613          	li	a2,173
    8002c51c:	85a6                	mv	a1,s1
    8002c51e:	00a8                	addi	a0,sp,72
    8002c520:	801dc0ef          	jal	ra,80008d20 <code_match>
    8002c524:	c50d                	beqz	a0,8002c54e <js_create_function+0xc2a>
quickjs-nuttx/quickjs.c:32322
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002c526:	47e6                	lw	a5,88(sp)
    8002c528:	0007c363          	bltz	a5,8002c52e <js_create_function+0xc0a>
    8002c52c:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32323
                    add_pc2line_info(s, bc_out.size, line_num);
    8002c52e:	55e6                	lw	a1,120(sp)
    8002c530:	5642                	lw	a2,48(sp)
    8002c532:	8522                	mv	a0,s0
    8002c534:	af3db0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32324
                    dbuf_putc(&bc_out, OP_is_null);
    8002c538:	0f500593          	li	a1,245
quickjs-nuttx/quickjs.c:32486
                    dbuf_putc(&bc_out, OP_is_undefined);
    8002c53c:	1888                	addi	a0,sp,112
    8002c53e:	5a4250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32489
                    op = cc.op ^ OP_if_false ^ OP_if_true;
    8002c542:	4976                	lw	s2,92(sp)
quickjs-nuttx/quickjs.c:32487
                    pos_next = cc.pos;
    8002c544:	44d6                	lw	s1,84(sp)
quickjs-nuttx/quickjs.c:32488
                    label = cc.label;
    8002c546:	5a96                	lw	s5,100(sp)
quickjs-nuttx/quickjs.c:32489
                    op = cc.op ^ OP_if_false ^ OP_if_true;
    8002c548:	00194913          	xori	s2,s2,1
quickjs-nuttx/quickjs.c:32490
                    goto has_label;
    8002c54c:	b13d                	j	8002c17a <js_create_function+0x856>
quickjs-nuttx/quickjs.c:32337
                if (code_match(&cc, pos_next, M2(OP_if_false, OP_if_true), -1)) {
    8002c54e:	661d                	lui	a2,0x7
    8002c550:	56fd                	li	a3,-1
    8002c552:	b6a60613          	addi	a2,a2,-1174 # 6b6a <asinh-0x7fff9496>
    8002c556:	85a6                	mv	a1,s1
    8002c558:	00a8                	addi	a0,sp,72
    8002c55a:	fc6dc0ef          	jal	ra,80008d20 <code_match>
    8002c55e:	880501e3          	beqz	a0,8002bde0 <js_create_function+0x4bc>
quickjs-nuttx/quickjs.c:32336
                val = (op == OP_push_true);
    8002c562:	1959                	addi	s2,s2,-10
    8002c564:	00193913          	seqz	s2,s2
quickjs-nuttx/quickjs.c:32339
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002c568:	47e6                	lw	a5,88(sp)
    8002c56a:	0007c363          	bltz	a5,8002c570 <js_create_function+0xc4c>
    8002c56e:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32340
                    if (val == cc.op - OP_if_false) {
    8002c570:	47f6                	lw	a5,92(sp)
quickjs-nuttx/quickjs.c:32344
                        pos_next = cc.pos;
    8002c572:	44d6                	lw	s1,84(sp)
quickjs-nuttx/quickjs.c:32346
                        label = cc.label;
    8002c574:	5596                	lw	a1,100(sp)
quickjs-nuttx/quickjs.c:32340
                    if (val == cc.op - OP_if_false) {
    8002c576:	f967879b          	addiw	a5,a5,-106
    8002c57a:	b9278ee3          	beq	a5,s2,8002c116 <js_create_function+0x7f2>
quickjs-nuttx/quickjs.c:32353
                        update_label(s, cc.label, -1);
    8002c57e:	567d                	li	a2,-1
    8002c580:	be5d                	j	8002c136 <js_create_function+0x812>
get_i32():
quickjs-nuttx/cutils.h:175
    return (int32_t)((const struct packed_u32 *)tab)->v;
    8002c582:	002ac503          	lbu	a0,2(s5)
    8002c586:	001ac903          	lbu	s2,1(s5)
resolve_labels():
quickjs-nuttx/quickjs.c:32364
                if ((val != INT32_MIN && val != 0)
    8002c58a:	800007b7          	lui	a5,0x80000
get_i32():
quickjs-nuttx/cutils.h:175
    8002c58e:	0522                	slli	a0,a0,0x8
    8002c590:	01256533          	or	a0,a0,s2
    8002c594:	003ac903          	lbu	s2,3(s5)
    8002c598:	0942                	slli	s2,s2,0x10
    8002c59a:	00a96533          	or	a0,s2,a0
    8002c59e:	004ac903          	lbu	s2,4(s5)
    8002c5a2:	0962                	slli	s2,s2,0x18
    8002c5a4:	00a96933          	or	s2,s2,a0
    8002c5a8:	2901                	sext.w	s2,s2
resolve_labels():
quickjs-nuttx/quickjs.c:32364
    8002c5aa:	04f90863          	beq	s2,a5,8002c5fa <js_create_function+0xcd6>
    8002c5ae:	04090663          	beqz	s2,8002c5fa <js_create_function+0xcd6>
quickjs-nuttx/quickjs.c:32365
                &&  code_match(&cc, pos_next, OP_neg, -1)) {
    8002c5b2:	56fd                	li	a3,-1
    8002c5b4:	08d00613          	li	a2,141
    8002c5b8:	85a6                	mv	a1,s1
    8002c5ba:	00a8                	addi	a0,sp,72
    8002c5bc:	f64dc0ef          	jal	ra,80008d20 <code_match>
    8002c5c0:	cd0d                	beqz	a0,8002c5fa <js_create_function+0xcd6>
quickjs-nuttx/quickjs.c:32366
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002c5c2:	47e6                	lw	a5,88(sp)
    8002c5c4:	0007c363          	bltz	a5,8002c5ca <js_create_function+0xca6>
    8002c5c8:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32367
                    if (code_match(&cc, cc.pos, OP_drop, -1)) {
    8002c5ca:	45d6                	lw	a1,84(sp)
    8002c5cc:	56fd                	li	a3,-1
    8002c5ce:	4639                	li	a2,14
    8002c5d0:	00a8                	addi	a0,sp,72
    8002c5d2:	f4edc0ef          	jal	ra,80008d20 <code_match>
    8002c5d6:	c511                	beqz	a0,8002c5e2 <js_create_function+0xcbe>
quickjs-nuttx/quickjs.c:32456
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002c5d8:	47e6                	lw	a5,88(sp)
    8002c5da:	0007ce63          	bltz	a5,8002c5f6 <js_create_function+0xcd2>
    8002c5de:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32457
                    pos_next = cc.pos;
    8002c5e0:	a819                	j	8002c5f6 <js_create_function+0xcd2>
quickjs-nuttx/quickjs.c:32370
                        add_pc2line_info(s, bc_out.size, line_num);
    8002c5e2:	55e6                	lw	a1,120(sp)
    8002c5e4:	5642                	lw	a2,48(sp)
    8002c5e6:	8522                	mv	a0,s0
    8002c5e8:	a3fdb0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32371
                        push_short_int(&bc_out, -val);
    8002c5ec:	412005bb          	negw	a1,s2
    8002c5f0:	1888                	addi	a0,sp,112
    8002c5f2:	ceddc0ef          	jal	ra,800092de <push_short_int>
quickjs-nuttx/quickjs.c:32712
                            pos_next = cc.pos;
    8002c5f6:	44d6                	lw	s1,84(sp)
quickjs-nuttx/quickjs.c:32713
                            break;
    8002c5f8:	baed                	j	8002bff2 <js_create_function+0x6ce>
quickjs-nuttx/quickjs.c:32377
                if (code_match(&cc, pos_next, OP_drop, -1)) {
    8002c5fa:	56fd                	li	a3,-1
    8002c5fc:	4639                	li	a2,14
    8002c5fe:	85a6                	mv	a1,s1
    8002c600:	00a8                	addi	a0,sp,72
    8002c602:	f1edc0ef          	jal	ra,80008d20 <code_match>
    8002c606:	f969                	bnez	a0,8002c5d8 <js_create_function+0xcb4>
quickjs-nuttx/quickjs.c:32383
                if (code_match(&cc, pos_next, M2(OP_if_false, OP_if_true), -1)) {
    8002c608:	661d                	lui	a2,0x7
    8002c60a:	56fd                	li	a3,-1
    8002c60c:	b6a60613          	addi	a2,a2,-1174 # 6b6a <asinh-0x7fff9496>
    8002c610:	85a6                	mv	a1,s1
    8002c612:	00a8                	addi	a0,sp,72
    8002c614:	f0cdc0ef          	jal	ra,80008d20 <code_match>
    8002c618:	c501                	beqz	a0,8002c620 <js_create_function+0xcfc>
quickjs-nuttx/quickjs.c:32384
                    val = (val != 0);
    8002c61a:	01203933          	snez	s2,s2
quickjs-nuttx/quickjs.c:32385
                    goto has_constant_test;
    8002c61e:	b7a9                	j	8002c568 <js_create_function+0xc44>
quickjs-nuttx/quickjs.c:32387
                add_pc2line_info(s, bc_out.size, line_num);
    8002c620:	55e6                	lw	a1,120(sp)
    8002c622:	5642                	lw	a2,48(sp)
    8002c624:	8522                	mv	a0,s0
    8002c626:	a01db0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32388
                push_short_int(&bc_out, val);
    8002c62a:	85ca                	mv	a1,s2
    8002c62c:	1888                	addi	a0,sp,112
    8002c62e:	cb1dc0ef          	jal	ra,800092de <push_short_int>
quickjs-nuttx/quickjs.c:32389
                break;
    8002c632:	b2c1                	j	8002bff2 <js_create_function+0x6ce>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002c634:	002ac703          	lbu	a4,2(s5)
    8002c638:	001ac783          	lbu	a5,1(s5)
    8002c63c:	0722                	slli	a4,a4,0x8
    8002c63e:	8f5d                	or	a4,a4,a5
    8002c640:	003ac783          	lbu	a5,3(s5)
    8002c644:	07c2                	slli	a5,a5,0x10
    8002c646:	8f5d                	or	a4,a4,a5
    8002c648:	004ac783          	lbu	a5,4(s5)
    8002c64c:	07e2                	slli	a5,a5,0x18
    8002c64e:	8fd9                	or	a5,a5,a4
    8002c650:	0007891b          	sext.w	s2,a5
resolve_labels():
quickjs-nuttx/quickjs.c:32398
                if (idx < 256) {
    8002c654:	0ff00713          	li	a4,255
    8002c658:	f9274463          	blt	a4,s2,8002bde0 <js_create_function+0x4bc>
quickjs-nuttx/quickjs.c:32399
                    add_pc2line_info(s, bc_out.size, line_num);
    8002c65c:	5642                	lw	a2,48(sp)
    8002c65e:	55e6                	lw	a1,120(sp)
    8002c660:	8522                	mv	a0,s0
    8002c662:	9c5db0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32400
                    dbuf_putc(&bc_out, OP_push_const8 + op - OP_push_const);
    8002c666:	fbf9859b          	addiw	a1,s3,-65
    8002c66a:	0ff5f593          	zext.b	a1,a1
    8002c66e:	1888                	addi	a0,sp,112
    8002c670:	472250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32401
                    dbuf_putc(&bc_out, idx);
    8002c674:	0ff97593          	zext.b	a1,s2
    8002c678:	b6e1                	j	8002c240 <js_create_function+0x91c>
get_u32():
quickjs-nuttx/cutils.h:170
    8002c67a:	002ac783          	lbu	a5,2(s5)
    8002c67e:	001ac903          	lbu	s2,1(s5)
resolve_labels():
quickjs-nuttx/quickjs.c:32423
                if (code_match(&cc, pos_next, OP_drop, -1)) {
    8002c682:	56fd                	li	a3,-1
get_u32():
quickjs-nuttx/cutils.h:170
    8002c684:	07a2                	slli	a5,a5,0x8
    8002c686:	0127e7b3          	or	a5,a5,s2
    8002c68a:	003ac903          	lbu	s2,3(s5)
resolve_labels():
quickjs-nuttx/quickjs.c:32423
    8002c68e:	4639                	li	a2,14
    8002c690:	85a6                	mv	a1,s1
get_u32():
quickjs-nuttx/cutils.h:170
    8002c692:	0942                	slli	s2,s2,0x10
    8002c694:	00f967b3          	or	a5,s2,a5
    8002c698:	004ac903          	lbu	s2,4(s5)
resolve_labels():
quickjs-nuttx/quickjs.c:32423
    8002c69c:	00a8                	addi	a0,sp,72
get_u32():
quickjs-nuttx/cutils.h:170
    8002c69e:	0962                	slli	s2,s2,0x18
    8002c6a0:	00f96933          	or	s2,s2,a5
    8002c6a4:	2901                	sext.w	s2,s2
resolve_labels():
quickjs-nuttx/quickjs.c:32423
    8002c6a6:	e7adc0ef          	jal	ra,80008d20 <code_match>
    8002c6aa:	c511                	beqz	a0,8002c6b6 <js_create_function+0xd92>
quickjs-nuttx/quickjs.c:32424
                    JS_FreeAtom(ctx, atom);
    8002c6ac:	85ca                	mv	a1,s2
    8002c6ae:	856e                	mv	a0,s11
    8002c6b0:	a99de0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:32425
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002c6b4:	b715                	j	8002c5d8 <js_create_function+0xcb4>
quickjs-nuttx/quickjs.c:32430
                if (atom == JS_ATOM_empty_string) {
    8002c6b6:	02f00793          	li	a5,47
    8002c6ba:	f2f91363          	bne	s2,a5,8002bde0 <js_create_function+0x4bc>
quickjs-nuttx/quickjs.c:32432
                    add_pc2line_info(s, bc_out.size, line_num);
    8002c6be:	55e6                	lw	a1,120(sp)
    8002c6c0:	5642                	lw	a2,48(sp)
    8002c6c2:	8522                	mv	a0,s0
    8002c6c4:	963db0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32433
                    dbuf_putc(&bc_out, OP_push_empty_string);
    8002c6c8:	0c300593          	li	a1,195
    8002c6cc:	be95                	j	8002c240 <js_create_function+0x91c>
quickjs-nuttx/quickjs.c:32444
                if (code_match(&cc, pos_next, M3(OP_get_loc, OP_get_arg, OP_get_var_ref), -1, OP_put_array_el, -1)
    8002c6ce:	005e6637          	lui	a2,0x5e6
    8002c6d2:	57fd                	li	a5,-1
    8002c6d4:	04900713          	li	a4,73
    8002c6d8:	56fd                	li	a3,-1
    8002c6da:	b5860613          	addi	a2,a2,-1192 # 5e5b58 <asinh-0x7fa1a4a8>
    8002c6de:	85a6                	mv	a1,s1
    8002c6e0:	00a8                	addi	a0,sp,72
    8002c6e2:	e3edc0ef          	jal	ra,80008d20 <code_match>
    8002c6e6:	900516e3          	bnez	a0,8002bff2 <js_create_function+0x6ce>
quickjs-nuttx/quickjs.c:32445
                ||  code_match(&cc, pos_next, M3(OP_push_i32, OP_push_const, OP_push_atom_value), OP_put_array_el, -1)
    8002c6ea:	00040637          	lui	a2,0x40
    8002c6ee:	577d                	li	a4,-1
    8002c6f0:	04900693          	li	a3,73
    8002c6f4:	20160613          	addi	a2,a2,513 # 40201 <asinh-0x7ffbfdff>
    8002c6f8:	85a6                	mv	a1,s1
    8002c6fa:	00a8                	addi	a0,sp,72
    8002c6fc:	e24dc0ef          	jal	ra,80008d20 <code_match>
    8002c700:	8e0519e3          	bnez	a0,8002bff2 <js_create_function+0x6ce>
quickjs-nuttx/quickjs.c:32446
                ||  code_match(&cc, pos_next, M4(OP_undefined, OP_null, OP_push_true, OP_push_false), OP_put_array_el, -1)) {
    8002c704:	090a0637          	lui	a2,0x90a0
    8002c708:	577d                	li	a4,-1
    8002c70a:	04900693          	li	a3,73
    8002c70e:	70660613          	addi	a2,a2,1798 # 90a0706 <asinh-0x76f5f8fa>
    8002c712:	85a6                	mv	a1,s1
    8002c714:	00a8                	addi	a0,sp,72
    8002c716:	e0adc0ef          	jal	ra,80008d20 <code_match>
    8002c71a:	8c051ce3          	bnez	a0,8002bff2 <js_create_function+0x6ce>
    8002c71e:	ec2ff06f          	j	8002bde0 <js_create_function+0x4bc>
quickjs-nuttx/quickjs.c:32455
                if (code_match(&cc, pos_next, OP_drop, -1)) {
    8002c722:	56fd                	li	a3,-1
    8002c724:	4639                	li	a2,14
    8002c726:	85a6                	mv	a1,s1
    8002c728:	00a8                	addi	a0,sp,72
    8002c72a:	df6dc0ef          	jal	ra,80008d20 <code_match>
    8002c72e:	ea0515e3          	bnez	a0,8002c5d8 <js_create_function+0xcb4>
quickjs-nuttx/quickjs.c:32461
                if (code_match(&cc, pos_next, OP_return, -1)) {
    8002c732:	56fd                	li	a3,-1
    8002c734:	02800613          	li	a2,40
    8002c738:	85a6                	mv	a1,s1
    8002c73a:	00a8                	addi	a0,sp,72
    8002c73c:	de4dc0ef          	jal	ra,80008d20 <code_match>
    8002c740:	892a                	mv	s2,a0
    8002c742:	cd09                	beqz	a0,8002c75c <js_create_function+0xe38>
quickjs-nuttx/quickjs.c:32462
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002c744:	47e6                	lw	a5,88(sp)
    8002c746:	0007c363          	bltz	a5,8002c74c <js_create_function+0xe28>
    8002c74a:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32463
                    add_pc2line_info(s, bc_out.size, line_num);
    8002c74c:	55e6                	lw	a1,120(sp)
    8002c74e:	5642                	lw	a2,48(sp)
    8002c750:	8522                	mv	a0,s0
    8002c752:	8d5db0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32464
                    dbuf_putc(&bc_out, OP_return_undef);
    8002c756:	02900593          	li	a1,41
    8002c75a:	b37d                	j	8002c508 <js_create_function+0xbe4>
quickjs-nuttx/quickjs.c:32469
                if (code_match(&cc, pos_next, M2(OP_if_false, OP_if_true), -1)) {
    8002c75c:	699d                	lui	s3,0x7
    8002c75e:	56fd                	li	a3,-1
    8002c760:	b6a98613          	addi	a2,s3,-1174 # 6b6a <asinh-0x7fff9496>
    8002c764:	85a6                	mv	a1,s1
    8002c766:	00a8                	addi	a0,sp,72
    8002c768:	db8dc0ef          	jal	ra,80008d20 <code_match>
    8002c76c:	de051ee3          	bnez	a0,8002c568 <js_create_function+0xc44>
quickjs-nuttx/quickjs.c:32475
                if (code_match(&cc, pos_next, OP_strict_eq, -1)) {
    8002c770:	56fd                	li	a3,-1
    8002c772:	0ac00613          	li	a2,172
    8002c776:	85a6                	mv	a1,s1
    8002c778:	00a8                	addi	a0,sp,72
    8002c77a:	da6dc0ef          	jal	ra,80008d20 <code_match>
    8002c77e:	cd09                	beqz	a0,8002c798 <js_create_function+0xe74>
quickjs-nuttx/quickjs.c:32476
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002c780:	47e6                	lw	a5,88(sp)
    8002c782:	0007c363          	bltz	a5,8002c788 <js_create_function+0xe64>
    8002c786:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32477
                    add_pc2line_info(s, bc_out.size, line_num);
    8002c788:	55e6                	lw	a1,120(sp)
    8002c78a:	5642                	lw	a2,48(sp)
    8002c78c:	8522                	mv	a0,s0
    8002c78e:	899db0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32478
                    dbuf_putc(&bc_out, OP_is_undefined);
    8002c792:	0f400593          	li	a1,244
    8002c796:	bb8d                	j	8002c508 <js_create_function+0xbe4>
quickjs-nuttx/quickjs.c:32483
                if (code_match(&cc, pos_next, OP_strict_neq, M2(OP_if_false, OP_if_true), -1)) {
    8002c798:	577d                	li	a4,-1
    8002c79a:	b6a98693          	addi	a3,s3,-1174
    8002c79e:	0ad00613          	li	a2,173
    8002c7a2:	85a6                	mv	a1,s1
    8002c7a4:	00a8                	addi	a0,sp,72
    8002c7a6:	d7adc0ef          	jal	ra,80008d20 <code_match>
    8002c7aa:	e2050b63          	beqz	a0,8002bde0 <js_create_function+0x4bc>
quickjs-nuttx/quickjs.c:32484
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002c7ae:	47e6                	lw	a5,88(sp)
    8002c7b0:	0007c363          	bltz	a5,8002c7b6 <js_create_function+0xe92>
    8002c7b4:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32485
                    add_pc2line_info(s, bc_out.size, line_num);
    8002c7b6:	55e6                	lw	a1,120(sp)
    8002c7b8:	5642                	lw	a2,48(sp)
    8002c7ba:	8522                	mv	a0,s0
    8002c7bc:	86bdb0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32486
                    dbuf_putc(&bc_out, OP_is_undefined);
    8002c7c0:	0f400593          	li	a1,244
    8002c7c4:	bba5                	j	8002c53c <js_create_function+0xc18>
quickjs-nuttx/quickjs.c:32502
                if (code_match(&cc, pos_next, M2(OP_put_field, OP_put_var_strict), OP_drop, -1)) {
    8002c7c6:	6611                	lui	a2,0x4
    8002c7c8:	577d                	li	a4,-1
    8002c7ca:	46b9                	li	a3,14
    8002c7cc:	b4360613          	addi	a2,a2,-1213 # 3b43 <asinh-0x7fffc4bd>
    8002c7d0:	85a6                	mv	a1,s1
    8002c7d2:	00a8                	addi	a0,sp,72
    8002c7d4:	d4cdc0ef          	jal	ra,80008d20 <code_match>
    8002c7d8:	e0050463          	beqz	a0,8002bde0 <js_create_function+0x4bc>
quickjs-nuttx/quickjs.c:32503
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002c7dc:	47e6                	lw	a5,88(sp)
    8002c7de:	0007c363          	bltz	a5,8002c7e4 <js_create_function+0xec0>
    8002c7e2:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32504
                    add_pc2line_info(s, bc_out.size, line_num);
    8002c7e4:	5642                	lw	a2,48(sp)
    8002c7e6:	55e6                	lw	a1,120(sp)
    8002c7e8:	8522                	mv	a0,s0
    8002c7ea:	83ddb0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32674
                    dbuf_putc(&bc_out, cc.op);
    8002c7ee:	05c14583          	lbu	a1,92(sp)
    8002c7f2:	1888                	addi	a0,sp,112
    8002c7f4:	2ee250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32675
                    dbuf_put_u32(&bc_out, cc.atom);
    8002c7f8:	55b6                	lw	a1,108(sp)
    8002c7fa:	1888                	addi	a0,sp,112
    8002c7fc:	8e7dc0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:32676
                    pos_next = cc.pos;
    8002c800:	bbdd                	j	8002c5f6 <js_create_function+0xcd2>
quickjs-nuttx/quickjs.c:32518
                if (code_match(&cc, pos_next, M3(OP_put_loc, OP_put_arg, OP_put_var_ref), -1, -1)) {
    8002c802:	005f6637          	lui	a2,0x5f6
    8002c806:	577d                	li	a4,-1
    8002c808:	56fd                	li	a3,-1
    8002c80a:	c5960613          	addi	a2,a2,-935 # 5f5c59 <asinh-0x7fa0a3a7>
    8002c80e:	85a6                	mv	a1,s1
    8002c810:	00a8                	addi	a0,sp,72
    8002c812:	d0edc0ef          	jal	ra,80008d20 <code_match>
    8002c816:	dc050563          	beqz	a0,8002bde0 <js_create_function+0x4bc>
quickjs-nuttx/quickjs.c:32519
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002c81a:	47e6                	lw	a5,88(sp)
    8002c81c:	0007c363          	bltz	a5,8002c822 <js_create_function+0xefe>
    8002c820:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32521
                    pos_next = cc.pos;
    8002c822:	44d6                	lw	s1,84(sp)
quickjs-nuttx/quickjs.c:32520
                    op1 = cc.op + 1;  /* put_x -> set_x */
    8002c824:	4a76                	lw	s4,92(sp)
quickjs-nuttx/quickjs.c:32522
                    if (code_match(&cc, cc.pos, OP_drop, -1)) {
    8002c826:	56fd                	li	a3,-1
    8002c828:	4639                	li	a2,14
    8002c82a:	85a6                	mv	a1,s1
    8002c82c:	00a8                	addi	a0,sp,72
    8002c82e:	cf2dc0ef          	jal	ra,80008d20 <code_match>
quickjs-nuttx/quickjs.c:32520
                    op1 = cc.op + 1;  /* put_x -> set_x */
    8002c832:	001a091b          	addiw	s2,s4,1
quickjs-nuttx/quickjs.c:32516
                int op1, line2 = -1;
    8002c836:	59fd                	li	s3,-1
quickjs-nuttx/quickjs.c:32522
                    if (code_match(&cc, cc.pos, OP_drop, -1)) {
    8002c838:	c10d                	beqz	a0,8002c85a <js_create_function+0xf36>
quickjs-nuttx/quickjs.c:32523
                        if (cc.line_num >= 0) line_num = cc.line_num;
    8002c83a:	47e6                	lw	a5,88(sp)
    8002c83c:	0007c363          	bltz	a5,8002c842 <js_create_function+0xf1e>
    8002c840:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32525
                        pos_next = cc.pos;
    8002c842:	44d6                	lw	s1,84(sp)
quickjs-nuttx/quickjs.c:32526
                        if (code_match(&cc, cc.pos, op1 - 1, cc.idx, -1)) {
    8002c844:	5686                	lw	a3,96(sp)
    8002c846:	577d                	li	a4,-1
    8002c848:	fffa061b          	addiw	a2,s4,-1
    8002c84c:	85a6                	mv	a1,s1
    8002c84e:	00a8                	addi	a0,sp,72
    8002c850:	cd0dc0ef          	jal	ra,80008d20 <code_match>
    8002c854:	c115                	beqz	a0,8002c878 <js_create_function+0xf54>
quickjs-nuttx/quickjs.c:32527
                            line2 = cc.line_num; /* delay line number update */
    8002c856:	49e6                	lw	s3,88(sp)
quickjs-nuttx/quickjs.c:32529
                            pos_next = cc.pos;
    8002c858:	44d6                	lw	s1,84(sp)
quickjs-nuttx/quickjs.c:32532
                    add_pc2line_info(s, bc_out.size, line_num);
    8002c85a:	5642                	lw	a2,48(sp)
    8002c85c:	55e6                	lw	a1,120(sp)
    8002c85e:	8522                	mv	a0,s0
    8002c860:	fc6db0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32533
                    put_short_code(&bc_out, op1, cc.idx);
    8002c864:	5606                	lw	a2,96(sp)
    8002c866:	85ca                	mv	a1,s2
    8002c868:	1888                	addi	a0,sp,112
    8002c86a:	f90dc0ef          	jal	ra,80008ffa <put_short_code>
quickjs-nuttx/quickjs.c:32534
                    if (line2 >= 0) line_num = line2;
    8002c86e:	f809c263          	bltz	s3,8002bff2 <js_create_function+0x6ce>
    8002c872:	d84e                	sw	s3,48(sp)
    8002c874:	f7eff06f          	j	8002bff2 <js_create_function+0x6ce>
quickjs-nuttx/quickjs.c:32524
                        op1 -= 1; /* set_x drop -> put_x */
    8002c878:	8952                	mv	s2,s4
quickjs-nuttx/quickjs.c:32516
                int op1, line2 = -1;
    8002c87a:	59fd                	li	s3,-1
    8002c87c:	bff9                	j	8002c85a <js_create_function+0xf36>
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002c87e:	002ac903          	lbu	s2,2(s5)
    8002c882:	001ac783          	lbu	a5,1(s5)
    8002c886:	0922                	slli	s2,s2,0x8
    8002c888:	00f969b3          	or	s3,s2,a5
resolve_labels():
quickjs-nuttx/quickjs.c:32550
                if (idx >= 256)
    8002c88c:	0ff00793          	li	a5,255
    8002c890:	d537c863          	blt	a5,s3,8002bde0 <js_create_function+0x4bc>
quickjs-nuttx/quickjs.c:32552
                if (code_match(&cc, pos_next, M2(OP_post_dec, OP_post_inc), OP_put_loc, idx, OP_drop, -1) ||
    8002c894:	6a25                	lui	s4,0x9
    8002c896:	587d                	li	a6,-1
    8002c898:	47b9                	li	a5,14
    8002c89a:	874e                	mv	a4,s3
    8002c89c:	05900693          	li	a3,89
    8002c8a0:	291a0613          	addi	a2,s4,657 # 9291 <asinh-0x7fff6d6f>
    8002c8a4:	85a6                	mv	a1,s1
    8002c8a6:	00a8                	addi	a0,sp,72
    8002c8a8:	c78dc0ef          	jal	ra,80008d20 <code_match>
    8002c8ac:	c90d                	beqz	a0,8002c8de <js_create_function+0xfba>
quickjs-nuttx/quickjs.c:32554
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002c8ae:	47e6                	lw	a5,88(sp)
    8002c8b0:	0807d963          	bgez	a5,8002c942 <js_create_function+0x101e>
quickjs-nuttx/quickjs.c:32555
                    add_pc2line_info(s, bc_out.size, line_num);
    8002c8b4:	55e6                	lw	a1,120(sp)
    8002c8b6:	5642                	lw	a2,48(sp)
    8002c8b8:	8522                	mv	a0,s0
    8002c8ba:	f6cdb0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32556
                    dbuf_putc(&bc_out, (cc.op == OP_inc || cc.op == OP_post_inc) ? OP_inc_loc : OP_dec_loc);
    8002c8be:	47f6                	lw	a5,92(sp)
    8002c8c0:	09000713          	li	a4,144
    8002c8c4:	09400593          	li	a1,148
    8002c8c8:	9bf5                	andi	a5,a5,-3
    8002c8ca:	00e78463          	beq	a5,a4,8002c8d2 <js_create_function+0xfae>
    8002c8ce:	09300593          	li	a1,147
quickjs-nuttx/quickjs.c:32603
                    dbuf_putc(&bc_out, OP_add_loc);
    8002c8d2:	1888                	addi	a0,sp,112
    8002c8d4:	20e250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32604
                    dbuf_putc(&bc_out, idx);
    8002c8d8:	0ff9f593          	zext.b	a1,s3
    8002c8dc:	b135                	j	8002c508 <js_create_function+0xbe4>
quickjs-nuttx/quickjs.c:32553
                    code_match(&cc, pos_next, M2(OP_dec, OP_inc), OP_dup, OP_put_loc, idx, OP_drop, -1)) {
    8002c8de:	58fd                	li	a7,-1
    8002c8e0:	4839                	li	a6,14
    8002c8e2:	87ce                	mv	a5,s3
    8002c8e4:	05900713          	li	a4,89
    8002c8e8:	46c5                	li	a3,17
    8002c8ea:	08fa0613          	addi	a2,s4,143
    8002c8ee:	85a6                	mv	a1,s1
    8002c8f0:	00a8                	addi	a0,sp,72
    8002c8f2:	c2edc0ef          	jal	ra,80008d20 <code_match>
quickjs-nuttx/quickjs.c:32552
                if (code_match(&cc, pos_next, M2(OP_post_dec, OP_post_inc), OP_put_loc, idx, OP_drop, -1) ||
    8002c8f6:	fd45                	bnez	a0,8002c8ae <js_create_function+0xf8a>
quickjs-nuttx/quickjs.c:32564
                if (code_match(&cc, pos_next, OP_push_atom_value, OP_add, OP_dup, OP_put_loc, idx, OP_drop, -1)) {
    8002c8f8:	5a7d                	li	s4,-1
    8002c8fa:	e052                	sd	s4,0(sp)
    8002c8fc:	48b9                	li	a7,14
    8002c8fe:	884e                	mv	a6,s3
    8002c900:	05900793          	li	a5,89
    8002c904:	4745                	li	a4,17
    8002c906:	09e00693          	li	a3,158
    8002c90a:	4611                	li	a2,4
    8002c90c:	85a6                	mv	a1,s1
    8002c90e:	00a8                	addi	a0,sp,72
    8002c910:	c10dc0ef          	jal	ra,80008d20 <code_match>
    8002c914:	c131                	beqz	a0,8002c958 <js_create_function+0x1034>
quickjs-nuttx/quickjs.c:32565
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002c916:	47e6                	lw	a5,88(sp)
    8002c918:	0007c363          	bltz	a5,8002c91e <js_create_function+0xffa>
    8002c91c:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32566
                    add_pc2line_info(s, bc_out.size, line_num);
    8002c91e:	5642                	lw	a2,48(sp)
    8002c920:	55e6                	lw	a1,120(sp)
    8002c922:	8522                	mv	a0,s0
    8002c924:	f02db0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32568
                    if (cc.atom == JS_ATOM_empty_string) {
    8002c928:	5736                	lw	a4,108(sp)
    8002c92a:	02f00793          	li	a5,47
    8002c92e:	00f71c63          	bne	a4,a5,8002c946 <js_create_function+0x1022>
quickjs-nuttx/quickjs.c:32570
                        dbuf_putc(&bc_out, OP_push_empty_string);
    8002c932:	0c300593          	li	a1,195
    8002c936:	1888                	addi	a0,sp,112
    8002c938:	1aa250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32603
                    dbuf_putc(&bc_out, OP_add_loc);
    8002c93c:	09500593          	li	a1,149
    8002c940:	bf49                	j	8002c8d2 <js_create_function+0xfae>
quickjs-nuttx/quickjs.c:32554
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002c942:	d83e                	sw	a5,48(sp)
    8002c944:	bf85                	j	8002c8b4 <js_create_function+0xf90>
quickjs-nuttx/quickjs.c:32574
                        dbuf_putc(&bc_out, OP_push_atom_value);
    8002c946:	4591                	li	a1,4
    8002c948:	1888                	addi	a0,sp,112
    8002c94a:	198250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32575
                        dbuf_put_u32(&bc_out, cc.atom);
    8002c94e:	55b6                	lw	a1,108(sp)
    8002c950:	1888                	addi	a0,sp,112
    8002c952:	f90dc0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:32577
                    dbuf_putc(&bc_out, OP_add_loc);
    8002c956:	b7dd                	j	8002c93c <js_create_function+0x1018>
quickjs-nuttx/quickjs.c:32585
                if (code_match(&cc, pos_next, OP_push_i32, OP_add, OP_dup, OP_put_loc, idx, OP_drop, -1)) {
    8002c958:	e052                	sd	s4,0(sp)
    8002c95a:	48b9                	li	a7,14
    8002c95c:	884e                	mv	a6,s3
    8002c95e:	05900793          	li	a5,89
    8002c962:	4745                	li	a4,17
    8002c964:	09e00693          	li	a3,158
    8002c968:	4605                	li	a2,1
    8002c96a:	85a6                	mv	a1,s1
    8002c96c:	00a8                	addi	a0,sp,72
    8002c96e:	bb2dc0ef          	jal	ra,80008d20 <code_match>
    8002c972:	cd19                	beqz	a0,8002c990 <js_create_function+0x106c>
quickjs-nuttx/quickjs.c:32586
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002c974:	47e6                	lw	a5,88(sp)
    8002c976:	0007c363          	bltz	a5,8002c97c <js_create_function+0x1058>
    8002c97a:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32587
                    add_pc2line_info(s, bc_out.size, line_num);
    8002c97c:	55e6                	lw	a1,120(sp)
    8002c97e:	5642                	lw	a2,48(sp)
    8002c980:	8522                	mv	a0,s0
    8002c982:	ea4db0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32588
                    push_short_int(&bc_out, cc.label);
    8002c986:	5596                	lw	a1,100(sp)
    8002c988:	1888                	addi	a0,sp,112
    8002c98a:	955dc0ef          	jal	ra,800092de <push_short_int>
quickjs-nuttx/quickjs.c:32589
                    dbuf_putc(&bc_out, OP_add_loc);
    8002c98e:	b77d                	j	8002c93c <js_create_function+0x1018>
quickjs-nuttx/quickjs.c:32599
                if (code_match(&cc, pos_next, M3(OP_get_loc, OP_get_arg, OP_get_var_ref), -1, OP_add, OP_dup, OP_put_loc, idx, OP_drop, -1)) {
    8002c990:	47b9                	li	a5,14
    8002c992:	005e6637          	lui	a2,0x5e6
    8002c996:	e03e                	sd	a5,0(sp)
    8002c998:	85a6                	mv	a1,s1
    8002c99a:	e452                	sd	s4,8(sp)
    8002c99c:	88ce                	mv	a7,s3
    8002c99e:	05900813          	li	a6,89
    8002c9a2:	47c5                	li	a5,17
    8002c9a4:	09e00713          	li	a4,158
    8002c9a8:	56fd                	li	a3,-1
    8002c9aa:	b5860613          	addi	a2,a2,-1192 # 5e5b58 <asinh-0x7fa1a4a8>
    8002c9ae:	00a8                	addi	a0,sp,72
    8002c9b0:	b70dc0ef          	jal	ra,80008d20 <code_match>
    8002c9b4:	75e6                	ld	a1,120(sp)
    8002c9b6:	c105                	beqz	a0,8002c9d6 <js_create_function+0x10b2>
quickjs-nuttx/quickjs.c:32600
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002c9b8:	47e6                	lw	a5,88(sp)
    8002c9ba:	0007c363          	bltz	a5,8002c9c0 <js_create_function+0x109c>
    8002c9be:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32601
                    add_pc2line_info(s, bc_out.size, line_num);
    8002c9c0:	5642                	lw	a2,48(sp)
    8002c9c2:	8522                	mv	a0,s0
    8002c9c4:	2581                	sext.w	a1,a1
    8002c9c6:	e60db0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32602
                    put_short_code(&bc_out, cc.op, cc.idx);
    8002c9ca:	5606                	lw	a2,96(sp)
    8002c9cc:	45f6                	lw	a1,92(sp)
    8002c9ce:	1888                	addi	a0,sp,112
    8002c9d0:	e2adc0ef          	jal	ra,80008ffa <put_short_code>
    8002c9d4:	b7a5                	j	8002c93c <js_create_function+0x1018>
quickjs-nuttx/quickjs.c:32608
                add_pc2line_info(s, bc_out.size, line_num);
    8002c9d6:	5642                	lw	a2,48(sp)
    8002c9d8:	2581                	sext.w	a1,a1
    8002c9da:	8522                	mv	a0,s0
    8002c9dc:	e4adb0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32609
                put_short_code(&bc_out, op, idx);
    8002c9e0:	864e                	mv	a2,s3
    8002c9e2:	05800593          	li	a1,88
quickjs-nuttx/quickjs.c:32667
                    put_short_code(&bc_out, op1, idx);
    8002c9e6:	1888                	addi	a0,sp,112
    8002c9e8:	e12dc0ef          	jal	ra,80008ffa <put_short_code>
quickjs-nuttx/quickjs.c:32668
                    break;
    8002c9ec:	e06ff06f          	j	8002bff2 <js_create_function+0x6ce>
get_u16():
quickjs-nuttx/cutils.h:185
    8002c9f0:	002ac983          	lbu	s3,2(s5)
    8002c9f4:	001ac783          	lbu	a5,1(s5)
resolve_labels():
quickjs-nuttx/quickjs.c:32619
                add_pc2line_info(s, bc_out.size, line_num);
    8002c9f8:	5642                	lw	a2,48(sp)
    8002c9fa:	55e6                	lw	a1,120(sp)
get_u16():
quickjs-nuttx/cutils.h:185
    8002c9fc:	09a2                	slli	s3,s3,0x8
resolve_labels():
quickjs-nuttx/quickjs.c:32618
                idx = get_u16(bc_buf + pos + 1);
    8002c9fe:	00f9e9b3          	or	s3,s3,a5
quickjs-nuttx/quickjs.c:32639
                add_pc2line_info(s, bc_out.size, line_num);
    8002ca02:	8522                	mv	a0,s0
    8002ca04:	e22db0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32640
                put_short_code(&bc_out, op, idx);
    8002ca08:	864e                	mv	a2,s3
quickjs-nuttx/quickjs.c:32667
                    put_short_code(&bc_out, op1, idx);
    8002ca0a:	85ca                	mv	a1,s2
    8002ca0c:	bfe9                	j	8002c9e6 <js_create_function+0x10c2>
get_u16():
quickjs-nuttx/cutils.h:185
    8002ca0e:	002ac983          	lbu	s3,2(s5)
    8002ca12:	001ac783          	lbu	a5,1(s5)
resolve_labels():
quickjs-nuttx/quickjs.c:32632
                if (code_match(&cc, pos_next, op - 1, idx, -1)) {
    8002ca16:	85a6                	mv	a1,s1
get_u16():
quickjs-nuttx/cutils.h:185
    8002ca18:	09a2                	slli	s3,s3,0x8
resolve_labels():
quickjs-nuttx/quickjs.c:32631
                idx = get_u16(bc_buf + pos + 1);
    8002ca1a:	00f9e9b3          	or	s3,s3,a5
quickjs-nuttx/quickjs.c:32632
                if (code_match(&cc, pos_next, op - 1, idx, -1)) {
    8002ca1e:	577d                	li	a4,-1
    8002ca20:	86ce                	mv	a3,s3
    8002ca22:	fff9061b          	addiw	a2,s2,-1
    8002ca26:	00a8                	addi	a0,sp,72
    8002ca28:	af8dc0ef          	jal	ra,80008d20 <code_match>
    8002ca2c:	75e6                	ld	a1,120(sp)
    8002ca2e:	c10d                	beqz	a0,8002ca50 <js_create_function+0x112c>
quickjs-nuttx/quickjs.c:32633
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002ca30:	47e6                	lw	a5,88(sp)
    8002ca32:	0007c363          	bltz	a5,8002ca38 <js_create_function+0x1114>
    8002ca36:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32634
                    add_pc2line_info(s, bc_out.size, line_num);
    8002ca38:	5642                	lw	a2,48(sp)
    8002ca3a:	8522                	mv	a0,s0
    8002ca3c:	2581                	sext.w	a1,a1
    8002ca3e:	de8db0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32635
                    put_short_code(&bc_out, op + 1, idx);
    8002ca42:	864e                	mv	a2,s3
    8002ca44:	0019059b          	addiw	a1,s2,1
    8002ca48:	1888                	addi	a0,sp,112
    8002ca4a:	db0dc0ef          	jal	ra,80008ffa <put_short_code>
quickjs-nuttx/quickjs.c:32636
                    pos_next = cc.pos;
    8002ca4e:	b665                	j	8002c5f6 <js_create_function+0xcd2>
quickjs-nuttx/quickjs.c:32639
                add_pc2line_info(s, bc_out.size, line_num);
    8002ca50:	5642                	lw	a2,48(sp)
    8002ca52:	2581                	sext.w	a1,a1
    8002ca54:	b77d                	j	8002ca02 <js_create_function+0x10de>
quickjs-nuttx/quickjs.c:32670
                if (code_match(&cc, pos_next, OP_perm3, M2(OP_put_field, OP_put_var_strict), OP_drop, -1)) {
    8002ca56:	6691                	lui	a3,0x4
    8002ca58:	57fd                	li	a5,-1
    8002ca5a:	4739                	li	a4,14
    8002ca5c:	b4368693          	addi	a3,a3,-1213 # 3b43 <asinh-0x7fffc4bd>
    8002ca60:	4661                	li	a2,24
    8002ca62:	85a6                	mv	a1,s1
    8002ca64:	00a8                	addi	a0,sp,72
    8002ca66:	abadc0ef          	jal	ra,80008d20 <code_match>
    8002ca6a:	c115                	beqz	a0,8002ca8e <js_create_function+0x116a>
quickjs-nuttx/quickjs.c:32671
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002ca6c:	47e6                	lw	a5,88(sp)
    8002ca6e:	0007c363          	bltz	a5,8002ca74 <js_create_function+0x1150>
    8002ca72:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32672
                    add_pc2line_info(s, bc_out.size, line_num);
    8002ca74:	55e6                	lw	a1,120(sp)
    8002ca76:	5642                	lw	a2,48(sp)
    8002ca78:	8522                	mv	a0,s0
    8002ca7a:	dacdb0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32673
                    dbuf_putc(&bc_out, OP_dec + (op - OP_post_dec));
    8002ca7e:	ffe9859b          	addiw	a1,s3,-2
    8002ca82:	0ff5f593          	zext.b	a1,a1
    8002ca86:	1888                	addi	a0,sp,112
    8002ca88:	05a250ef          	jal	ra,80051ae2 <dbuf_putc>
    8002ca8c:	b38d                	j	8002c7ee <js_create_function+0xeca>
quickjs-nuttx/quickjs.c:32679
                if (code_match(&cc, pos_next, OP_perm4, OP_put_array_el, OP_drop, -1)) {
    8002ca8e:	57fd                	li	a5,-1
    8002ca90:	4739                	li	a4,14
    8002ca92:	04900693          	li	a3,73
    8002ca96:	4665                	li	a2,25
    8002ca98:	85a6                	mv	a1,s1
    8002ca9a:	00a8                	addi	a0,sp,72
    8002ca9c:	a84dc0ef          	jal	ra,80008d20 <code_match>
    8002caa0:	b4050063          	beqz	a0,8002bde0 <js_create_function+0x4bc>
quickjs-nuttx/quickjs.c:32680
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002caa4:	47e6                	lw	a5,88(sp)
    8002caa6:	0007c363          	bltz	a5,8002caac <js_create_function+0x1188>
    8002caaa:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32681
                    add_pc2line_info(s, bc_out.size, line_num);
    8002caac:	5642                	lw	a2,48(sp)
    8002caae:	55e6                	lw	a1,120(sp)
    8002cab0:	8522                	mv	a0,s0
    8002cab2:	d74db0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32682
                    dbuf_putc(&bc_out, OP_dec + (op - OP_post_dec));
    8002cab6:	ffe9859b          	addiw	a1,s3,-2
    8002caba:	0ff5f593          	zext.b	a1,a1
    8002cabe:	1888                	addi	a0,sp,112
    8002cac0:	022250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32683
                    dbuf_putc(&bc_out, OP_put_array_el);
    8002cac4:	04900593          	li	a1,73
    8002cac8:	b481                	j	8002c508 <js_create_function+0xbe4>
quickjs-nuttx/quickjs.c:32703
                        op2 = OP_typeof_is_function;
    8002caca:	0f700913          	li	s2,247
    8002cace:	c74ff06f          	j	8002bf42 <js_create_function+0x61e>
quickjs-nuttx/quickjs.c:32715
                        if (op1 == OP_strict_neq && code_match(&cc, cc.pos, OP_if_false, -1)) {
    8002cad2:	45d6                	lw	a1,84(sp)
    8002cad4:	56fd                	li	a3,-1
    8002cad6:	06a00613          	li	a2,106
    8002cada:	00a8                	addi	a0,sp,72
    8002cadc:	a44dc0ef          	jal	ra,80008d20 <code_match>
    8002cae0:	b0050063          	beqz	a0,8002bde0 <js_create_function+0x4bc>
quickjs-nuttx/quickjs.c:32717
                            if (cc.line_num >= 0) line_num = cc.line_num;
    8002cae4:	47e6                	lw	a5,88(sp)
    8002cae6:	0007c363          	bltz	a5,8002caec <js_create_function+0x11c8>
    8002caea:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32718
                            add_pc2line_info(s, bc_out.size, line_num);
    8002caec:	5642                	lw	a2,48(sp)
    8002caee:	55e6                	lw	a1,120(sp)
    8002caf0:	8522                	mv	a0,s0
    8002caf2:	d34db0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32719
                            dbuf_putc(&bc_out, op2);
    8002caf6:	85ca                	mv	a1,s2
    8002caf8:	1888                	addi	a0,sp,112
    8002cafa:	7e9240ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32720
                            JS_FreeAtom(ctx, cc.atom);
    8002cafe:	55b6                	lw	a1,108(sp)
    8002cb00:	856e                	mv	a0,s11
quickjs-nuttx/quickjs.c:32723
                            op = OP_if_true;
    8002cb02:	06b00913          	li	s2,107
quickjs-nuttx/quickjs.c:32720
                            JS_FreeAtom(ctx, cc.atom);
    8002cb06:	e42de0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:32721
                            pos_next = cc.pos;
    8002cb0a:	44d6                	lw	s1,84(sp)
quickjs-nuttx/quickjs.c:32722
                            label = cc.label;
    8002cb0c:	5a96                	lw	s5,100(sp)
quickjs-nuttx/quickjs.c:32724
                            goto has_label;
    8002cb0e:	e6cff06f          	j	8002c17a <js_create_function+0x856>
quickjs-nuttx/quickjs.c:32742
        assert(label_slots[i].first_reloc == NULL);
    8002cb12:	000ab683          	ld	a3,0(s5)
    8002cb16:	0ae1                	addi	s5,s5,24
    8002cb18:	c691                	beqz	a3,8002cb24 <js_create_function+0x1200>
    8002cb1a:	65a1                	lui	a1,0x8
    8002cb1c:	4601                	li	a2,0
    8002cb1e:	1599                	addi	a1,a1,-26
    8002cb20:	a0aff06f          	j	8002bd2a <js_create_function+0x406>
quickjs-nuttx/quickjs.c:32741
    for(i = 0; i < s->label_count; i++) {
    8002cb24:	2785                	addiw	a5,a5,1
    8002cb26:	844ff06f          	j	8002bb6a <js_create_function+0x246>
quickjs-nuttx/quickjs.c:32754
            switch (op = jp->op) {
    8002cb2a:	ff04a703          	lw	a4,-16(s1)
    8002cb2e:	87a6                	mv	a5,s1
    8002cb30:	0cec4163          	blt	s8,a4,8002cbf2 <js_create_function+0x12ce>
    8002cb34:	06900693          	li	a3,105
    8002cb38:	0ce6d063          	bge	a3,a4,8002cbf8 <js_create_function+0x12d4>
    8002cb3c:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:32762
                diff = s->label_slots[jp->label].addr - pos;
    8002cb3e:	ffc4a603          	lw	a2,-4(s1)
    8002cb42:	17043683          	ld	a3,368(s0)
quickjs-nuttx/quickjs.c:32761
                pos = jp->pos;
    8002cb46:	ff84a983          	lw	s3,-8(s1)
quickjs-nuttx/quickjs.c:32762
                diff = s->label_slots[jp->label].addr - pos;
    8002cb4a:	03960633          	mul	a2,a2,s9
    8002cb4e:	96b2                	add	a3,a3,a2
    8002cb50:	46d4                	lw	a3,12(a3)
    8002cb52:	413686bb          	subw	a3,a3,s3
quickjs-nuttx/quickjs.c:32763
                if (diff >= -128 && diff <= 127 + delta) {
    8002cb56:	0ba6cc63          	blt	a3,s10,8002cc0e <js_create_function+0x12ea>
    8002cb5a:	07f90613          	addi	a2,s2,127
    8002cb5e:	0ad64863          	blt	a2,a3,8002cc0e <js_create_function+0x12ea>
quickjs-nuttx/quickjs.c:32765
                    jp->size = 1;
    8002cb62:	ff14aa23          	sw	a7,-12(s1)
quickjs-nuttx/quickjs.c:32767
                        bc_out.buf[pos - 1] = jp->op = OP_goto8;
    8002cb66:	fff9861b          	addiw	a2,s3,-1
quickjs-nuttx/quickjs.c:32766
                    if (op == OP_goto16) {
    8002cb6a:	09771b63          	bne	a4,s7,8002cc00 <js_create_function+0x12dc>
quickjs-nuttx/quickjs.c:32767
                        bc_out.buf[pos - 1] = jp->op = OP_goto8;
    8002cb6e:	0ee00713          	li	a4,238
    8002cb72:	fee4a823          	sw	a4,-16(s1)
    8002cb76:	76c6                	ld	a3,112(sp)
    8002cb78:	5739                	li	a4,-18
    8002cb7a:	96b2                	add	a3,a3,a2
quickjs-nuttx/quickjs.c:32769
                        bc_out.buf[pos - 1] = jp->op = OP_if_false8 + (op - OP_if_false);
    8002cb7c:	00e68023          	sb	a4,0(a3)
quickjs-nuttx/quickjs.c:32780
                    memmove(bc_out.buf + pos + jp->size, bc_out.buf + pos + jp->size + delta,
    8002cb80:	ff44a703          	lw	a4,-12(s1)
quickjs-nuttx/quickjs.c:32781
                            bc_out.size - pos - jp->size - delta);
    8002cb84:	7666                	ld	a2,120(sp)
quickjs-nuttx/quickjs.c:32780
                    memmove(bc_out.buf + pos + jp->size, bc_out.buf + pos + jp->size + delta,
    8002cb86:	7546                	ld	a0,112(sp)
    8002cb88:	974e                	add	a4,a4,s3
quickjs-nuttx/quickjs.c:32781
                            bc_out.size - pos - jp->size - delta);
    8002cb8a:	8e19                	sub	a2,a2,a4
quickjs-nuttx/quickjs.c:32780
                    memmove(bc_out.buf + pos + jp->size, bc_out.buf + pos + jp->size + delta,
    8002cb8c:	012705b3          	add	a1,a4,s2
    8002cb90:	41260633          	sub	a2,a2,s2
    8002cb94:	95aa                	add	a1,a1,a0
    8002cb96:	953a                	add	a0,a0,a4
    8002cb98:	e83e                	sd	a5,16(sp)
    8002cb9a:	066370ef          	jal	ra,80063c00 <memmove>
quickjs-nuttx/quickjs.c:32782
                    bc_out.size -= delta;
    8002cb9e:	7766                	ld	a4,120(sp)
quickjs-nuttx/quickjs.c:32784
                    for (j = 0, ls = s->label_slots; j < s->label_count; j++, ls++) {
    8002cba0:	67c2                	ld	a5,16(sp)
quickjs-nuttx/quickjs.c:32783
                    patch_offsets++;
    8002cba2:	2a85                	addiw	s5,s5,1
quickjs-nuttx/quickjs.c:32782
                    bc_out.size -= delta;
    8002cba4:	41270733          	sub	a4,a4,s2
    8002cba8:	fcba                	sd	a4,120(sp)
quickjs-nuttx/quickjs.c:32784
                    for (j = 0, ls = s->label_slots; j < s->label_count; j++, ls++) {
    8002cbaa:	17043703          	ld	a4,368(s0)
    8002cbae:	4601                	li	a2,0
    8002cbb0:	4309                	li	t1,2
    8002cbb2:	583d                	li	a6,-17
    8002cbb4:	4885                	li	a7,1
    8002cbb6:	17c42683          	lw	a3,380(s0)
    8002cbba:	06d64e63          	blt	a2,a3,8002cc36 <js_create_function+0x1312>
quickjs-nuttx/quickjs.c:32788
                    for (j = i + 1, jp1 = jp + 1; j < s->jump_count; j++, jp1++) {
    8002cbbe:	001a069b          	addiw	a3,s4,1
    8002cbc2:	1b442703          	lw	a4,436(s0)
    8002cbc6:	08e6c163          	blt	a3,a4,8002cc48 <js_create_function+0x1324>
quickjs-nuttx/quickjs.c:32792
                    for (j = 0; j < s->line_number_count; j++) {
    8002cbca:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:32793
                        if (s->line_number_slots[j].pc > pos)
    8002cbcc:	0009879b          	sext.w	a5,s3
quickjs-nuttx/quickjs.c:32792
                    for (j = 0; j < s->line_number_count; j++) {
    8002cbd0:	1c442683          	lw	a3,452(s0)
    8002cbd4:	02d75263          	bge	a4,a3,8002cbf8 <js_create_function+0x12d4>
quickjs-nuttx/quickjs.c:32793
                        if (s->line_number_slots[j].pc > pos)
    8002cbd8:	1b843603          	ld	a2,440(s0)
    8002cbdc:	00371693          	slli	a3,a4,0x3
    8002cbe0:	96b2                	add	a3,a3,a2
    8002cbe2:	4290                	lw	a2,0(a3)
    8002cbe4:	00c7f563          	bgeu	a5,a2,8002cbee <js_create_function+0x12ca>
quickjs-nuttx/quickjs.c:32794
                            s->line_number_slots[j].pc -= delta;
    8002cbe8:	4126063b          	subw	a2,a2,s2
    8002cbec:	c290                	sw	a2,0(a3)
quickjs-nuttx/quickjs.c:32792
                    for (j = 0; j < s->line_number_count; j++) {
    8002cbee:	2705                	addiw	a4,a4,1
    8002cbf0:	b7c5                	j	8002cbd0 <js_create_function+0x12ac>
quickjs-nuttx/quickjs.c:32756
                delta = 1;
    8002cbf2:	4905                	li	s2,1
quickjs-nuttx/quickjs.c:32754
            switch (op = jp->op) {
    8002cbf4:	f57705e3          	beq	a4,s7,8002cb3e <js_create_function+0x121a>
quickjs-nuttx/quickjs.c:32748
        for (i = 0, jp = s->jump_slots; i < s->jump_count; i++, jp++) {
    8002cbf8:	2a05                	addiw	s4,s4,1
    8002cbfa:	04c1                	addi	s1,s1,16
    8002cbfc:	f95fe06f          	j	8002bb90 <js_create_function+0x26c>
quickjs-nuttx/quickjs.c:32769
                        bc_out.buf[pos - 1] = jp->op = OP_if_false8 + (op - OP_if_false);
    8002cc00:	0827071b          	addiw	a4,a4,130
    8002cc04:	fee4a823          	sw	a4,-16(s1)
    8002cc08:	76c6                	ld	a3,112(sp)
    8002cc0a:	96b2                	add	a3,a3,a2
    8002cc0c:	bf85                	j	8002cb7c <js_create_function+0x1258>
quickjs-nuttx/quickjs.c:32773
                if (diff == (int16_t)diff && op == OP_goto) {
    8002cc0e:	0106961b          	slliw	a2,a3,0x10
    8002cc12:	4106561b          	sraiw	a2,a2,0x10
    8002cc16:	fed611e3          	bne	a2,a3,8002cbf8 <js_create_function+0x12d4>
    8002cc1a:	fd871fe3          	bne	a4,s8,8002cbf8 <js_create_function+0x12d4>
quickjs-nuttx/quickjs.c:32775
                    jp->size = 2;
    8002cc1e:	fe64aa23          	sw	t1,-12(s1)
quickjs-nuttx/quickjs.c:32777
                    bc_out.buf[pos - 1] = jp->op = OP_goto16;
    8002cc22:	ff74a823          	sw	s7,-16(s1)
    8002cc26:	76c6                	ld	a3,112(sp)
    8002cc28:	fff9871b          	addiw	a4,s3,-1
quickjs-nuttx/quickjs.c:32776
                    delta = 2;
    8002cc2c:	4909                	li	s2,2
quickjs-nuttx/quickjs.c:32777
                    bc_out.buf[pos - 1] = jp->op = OP_goto16;
    8002cc2e:	9736                	add	a4,a4,a3
    8002cc30:	01070023          	sb	a6,0(a4)
    8002cc34:	b7b1                	j	8002cb80 <js_create_function+0x125c>
quickjs-nuttx/quickjs.c:32785
                        if (ls->addr > pos)
    8002cc36:	4754                	lw	a3,12(a4)
    8002cc38:	00d9d563          	bge	s3,a3,8002cc42 <js_create_function+0x131e>
quickjs-nuttx/quickjs.c:32786
                            ls->addr -= delta;
    8002cc3c:	412686bb          	subw	a3,a3,s2
    8002cc40:	c754                	sw	a3,12(a4)
quickjs-nuttx/quickjs.c:32784
                    for (j = 0, ls = s->label_slots; j < s->label_count; j++, ls++) {
    8002cc42:	2605                	addiw	a2,a2,1
    8002cc44:	0761                	addi	a4,a4,24
    8002cc46:	bf85                	j	8002cbb6 <js_create_function+0x1292>
quickjs-nuttx/quickjs.c:32789
                        if (jp1->pos > pos)
    8002cc48:	4798                	lw	a4,8(a5)
    8002cc4a:	00e9d563          	bge	s3,a4,8002cc54 <js_create_function+0x1330>
quickjs-nuttx/quickjs.c:32790
                            jp1->pos -= delta;
    8002cc4e:	4127073b          	subw	a4,a4,s2
    8002cc52:	c798                	sw	a4,8(a5)
quickjs-nuttx/quickjs.c:32788
                    for (j = i + 1, jp1 = jp + 1; j < s->jump_count; j++, jp1++) {
    8002cc54:	2685                	addiw	a3,a3,1
    8002cc56:	07c1                	addi	a5,a5,16
    8002cc58:	b7ad                	j	8002cbc2 <js_create_function+0x129e>
quickjs-nuttx/quickjs.c:32805
                int diff1 = s->label_slots[jp1->label].addr - jp1->pos;
    8002cc5a:	45d8                	lw	a4,12(a1)
    8002cc5c:	17043783          	ld	a5,368(s0)
    8002cc60:	4590                	lw	a2,8(a1)
    8002cc62:	03070733          	mul	a4,a4,a6
    8002cc66:	97ba                	add	a5,a5,a4
    8002cc68:	47dc                	lw	a5,12(a5)
quickjs-nuttx/quickjs.c:32806
                switch (jp1->size) {
    8002cc6a:	41d8                	lw	a4,4(a1)
quickjs-nuttx/quickjs.c:32805
                int diff1 = s->label_slots[jp1->label].addr - jp1->pos;
    8002cc6c:	9f91                	subw	a5,a5,a2
    8002cc6e:	0007869b          	sext.w	a3,a5
quickjs-nuttx/quickjs.c:32806
                switch (jp1->size) {
    8002cc72:	01170e63          	beq	a4,a7,8002cc8e <js_create_function+0x136a>
    8002cc76:	02670463          	beq	a4,t1,8002cc9e <js_create_function+0x137a>
    8002cc7a:	01c71663          	bne	a4,t3,8002cc86 <js_create_function+0x1362>
put_u8():
quickjs-nuttx/cutils.h:210
    *tab = val;
    8002cc7e:	7746                	ld	a4,112(sp)
    8002cc80:	9732                	add	a4,a4,a2
resolve_labels():
quickjs-nuttx/quickjs.c:32808
                    put_u8(bc_out.buf + jp1->pos, diff1);
    8002cc82:	00d70023          	sb	a3,0(a4)
quickjs-nuttx/quickjs.c:32804
            for (j = 0, jp1 = s->jump_slots; j < s->jump_count; j++, jp1++) {
    8002cc86:	2505                	addiw	a0,a0,1
    8002cc88:	05c1                	addi	a1,a1,16
    8002cc8a:	f25fe06f          	j	8002bbae <js_create_function+0x28a>
put_u16():
quickjs-nuttx/cutils.h:195
    ((struct packed_u16 *)tab)->v = val;
    8002cc8e:	7746                	ld	a4,112(sp)
    8002cc90:	9732                	add	a4,a4,a2
    8002cc92:	00d70023          	sb	a3,0(a4)
    8002cc96:	82a1                	srli	a3,a3,0x8
    8002cc98:	00d700a3          	sb	a3,1(a4)
quickjs-nuttx/cutils.h:196
}
    8002cc9c:	b7ed                	j	8002cc86 <js_create_function+0x1362>
put_u32():
quickjs-nuttx/cutils.h:180
    ((struct packed_u32 *)tab)->v = val;
    8002cc9e:	7746                	ld	a4,112(sp)
    8002cca0:	0087d69b          	srliw	a3,a5,0x8
    8002cca4:	9732                	add	a4,a4,a2
    8002cca6:	00f70023          	sb	a5,0(a4)
    8002ccaa:	00d700a3          	sb	a3,1(a4)
    8002ccae:	0107d69b          	srliw	a3,a5,0x10
    8002ccb2:	0187d79b          	srliw	a5,a5,0x18
    8002ccb6:	00d70123          	sb	a3,2(a4)
    8002ccba:	00f701a3          	sb	a5,3(a4)
quickjs-nuttx/cutils.h:181
}
    8002ccbe:	b7e1                	j	8002cc86 <js_create_function+0x1362>
compute_pc2line_info():
quickjs-nuttx/quickjs.c:31765
    if (!(s->js_mode & JS_MODE_STRIP) && s->line_number_slots) {
    8002ccc0:	1b843783          	ld	a5,440(s0)
    8002ccc4:	e399                	bnez	a5,8002ccca <js_create_function+0x13a6>
    8002ccc6:	f1dfe06f          	j	8002bbe2 <js_create_function+0x2be>
quickjs-nuttx/quickjs.c:31770
        js_dbuf_init(s->ctx, &s->pc2line);
    8002ccca:	6008                	ld	a0,0(s0)
    8002cccc:	1d840913          	addi	s2,s0,472
    8002ccd0:	85ca                	mv	a1,s2
quickjs-nuttx/quickjs.c:31766
        int last_line_num = s->line_num;
    8002ccd2:	1d442c03          	lw	s8,468(s0)
quickjs-nuttx/quickjs.c:31770
        js_dbuf_init(s->ctx, &s->pc2line);
    8002ccd6:	838dc0ef          	jal	ra,80008d0e <js_dbuf_init>
quickjs-nuttx/quickjs.c:31767
        uint32_t last_pc = 0;
    8002ccda:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:31784
            if (diff_line >= PC2LINE_BASE &&
    8002ccdc:	4991                	li	s3,4
quickjs-nuttx/quickjs.c:31785
                diff_line < PC2LINE_BASE + PC2LINE_RANGE &&
    8002ccde:	03200a13          	li	s4,50
quickjs-nuttx/quickjs.c:31787
                dbuf_putc(&s->pc2line, (diff_line - PC2LINE_BASE) +
    8002cce2:	4a95                	li	s5,5
quickjs-nuttx/quickjs.c:31771
        for (i = 0; i < s->line_number_count; i++) {
    8002cce4:	1c442683          	lw	a3,452(s0)
quickjs-nuttx/quickjs.c:31772
            uint32_t pc = s->line_number_slots[i].pc;
    8002cce8:	1b843783          	ld	a5,440(s0)
quickjs-nuttx/quickjs.c:31771
        for (i = 0; i < s->line_number_count; i++) {
    8002ccec:	00db4463          	blt	s6,a3,8002ccf4 <js_create_function+0x13d0>
    8002ccf0:	ef3fe06f          	j	8002bbe2 <js_create_function+0x2be>
quickjs-nuttx/quickjs.c:31772
            uint32_t pc = s->line_number_slots[i].pc;
    8002ccf4:	003b1693          	slli	a3,s6,0x3
    8002ccf8:	97b6                	add	a5,a5,a3
quickjs-nuttx/quickjs.c:31773
            int line_num = s->line_number_slots[i].line_num;
    8002ccfa:	0047ab83          	lw	s7,4(a5) # ffffffff80000004 <_ebss+0xfffffffeffefee9e>
quickjs-nuttx/quickjs.c:31776
            if (line_num < 0)
    8002ccfe:	020bce63          	bltz	s7,8002cd3a <js_create_function+0x1416>
quickjs-nuttx/quickjs.c:31780
            diff_line = line_num - last_line_num;
    8002cd02:	418b86bb          	subw	a3,s7,s8
    8002cd06:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:31781
            if (diff_line == 0 || diff_pc < 0)
    8002cd08:	ca8d                	beqz	a3,8002cd3a <js_create_function+0x1416>
quickjs-nuttx/quickjs.c:31772
            uint32_t pc = s->line_number_slots[i].pc;
    8002cd0a:	0007ac83          	lw	s9,0(a5)
quickjs-nuttx/quickjs.c:31779
            diff_pc = pc - last_pc;
    8002cd0e:	40ec8d3b          	subw	s10,s9,a4
quickjs-nuttx/quickjs.c:31781
            if (diff_line == 0 || diff_pc < 0)
    8002cd12:	020d4463          	bltz	s10,8002cd3a <js_create_function+0x1416>
quickjs-nuttx/quickjs.c:31784
            if (diff_line >= PC2LINE_BASE &&
    8002cd16:	0016879b          	addiw	a5,a3,1
    8002cd1a:	02f9e263          	bltu	s3,a5,8002cd3e <js_create_function+0x141a>
quickjs-nuttx/quickjs.c:31785
                diff_line < PC2LINE_BASE + PC2LINE_RANGE &&
    8002cd1e:	03aa4063          	blt	s4,s10,8002cd3e <js_create_function+0x141a>
quickjs-nuttx/quickjs.c:31787
                dbuf_putc(&s->pc2line, (diff_line - PC2LINE_BASE) +
    8002cd22:	035d05bb          	mulw	a1,s10,s5
quickjs-nuttx/quickjs.c:31788
                          diff_pc * PC2LINE_RANGE + PC2LINE_OP_FIRST);
    8002cd26:	0026849b          	addiw	s1,a3,2
quickjs-nuttx/quickjs.c:31787
                dbuf_putc(&s->pc2line, (diff_line - PC2LINE_BASE) +
    8002cd2a:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:31788
                          diff_pc * PC2LINE_RANGE + PC2LINE_OP_FIRST);
    8002cd2c:	9da5                	addw	a1,a1,s1
quickjs-nuttx/quickjs.c:31787
                dbuf_putc(&s->pc2line, (diff_line - PC2LINE_BASE) +
    8002cd2e:	0ff5f593          	zext.b	a1,a1
    8002cd32:	5b1240ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31795
            last_pc = pc;
    8002cd36:	8766                	mv	a4,s9
dbuf_put_sleb128():
quickjs-nuttx/quickjs.c:6401
}
    8002cd38:	8c5e                	mv	s8,s7
compute_pc2line_info():
quickjs-nuttx/quickjs.c:31771
        for (i = 0; i < s->line_number_count; i++) {
    8002cd3a:	2b05                	addiw	s6,s6,1
    8002cd3c:	b765                	j	8002cce4 <js_create_function+0x13c0>
quickjs-nuttx/quickjs.c:31791
                dbuf_putc(&s->pc2line, 0);
    8002cd3e:	4581                	li	a1,0
    8002cd40:	854a                	mv	a0,s2
    8002cd42:	5a1240ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31792
                dbuf_put_leb128(&s->pc2line, diff_pc);
    8002cd46:	85ea                	mv	a1,s10
    8002cd48:	854a                	mv	a0,s2
    8002cd4a:	f87db0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
dbuf_put_sleb128():
quickjs-nuttx/quickjs.c:6400
    dbuf_put_leb128(s, (2 * v) ^ -(v >> 31));
    8002cd4e:	0014959b          	slliw	a1,s1,0x1
    8002cd52:	41f4d49b          	sraiw	s1,s1,0x1f
    8002cd56:	8da5                	xor	a1,a1,s1
    8002cd58:	2581                	sext.w	a1,a1
    8002cd5a:	854a                	mv	a0,s2
    8002cd5c:	f75db0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
    8002cd60:	bfd9                	j	8002cd36 <js_create_function+0x1412>
compute_stack_size():
quickjs-nuttx/quickjs.c:32908
    s->bc_len = fd->byte_code.size;
    8002cd62:	13842583          	lw	a1,312(s0)
quickjs-nuttx/quickjs.c:32910
    s->stack_level_tab = js_malloc(ctx, sizeof(s->stack_level_tab[0]) *
    8002cd66:	856e                	mv	a0,s11
quickjs-nuttx/quickjs.c:32907
    bc_buf = fd->byte_code.buf;
    8002cd68:	13043a83          	ld	s5,304(s0)
quickjs-nuttx/quickjs.c:32908
    s->bc_len = fd->byte_code.size;
    8002cd6c:	d8ae                	sw	a1,112(sp)
quickjs-nuttx/quickjs.c:32910
    s->stack_level_tab = js_malloc(ctx, sizeof(s->stack_level_tab[0]) *
    8002cd6e:	0586                	slli	a1,a1,0x1
    8002cd70:	b94ed0ef          	jal	ra,8001a104 <js_malloc>
    8002cd74:	fcaa                	sd	a0,120(sp)
quickjs-nuttx/quickjs.c:32915
        s->stack_level_tab[i] = 0xffff;
    8002cd76:	577d                	li	a4,-1
quickjs-nuttx/quickjs.c:32912
    if (!s->stack_level_tab)
    8002cd78:	e119                	bnez	a0,8002cd7e <js_create_function+0x145a>
    8002cd7a:	f63fe06f          	j	8002bcdc <js_create_function+0x3b8>
quickjs-nuttx/quickjs.c:32914
    for(i = 0; i < s->bc_len; i++)
    8002cd7e:	55c6                	lw	a1,112(sp)
    8002cd80:	14b4c763          	blt	s1,a1,8002cece <js_create_function+0x15aa>
quickjs-nuttx/quickjs.c:32917
    s->catch_pos_tab = js_malloc(ctx, sizeof(s->catch_pos_tab[0]) *
    8002cd84:	058a                	slli	a1,a1,0x2
    8002cd86:	856e                	mv	a0,s11
quickjs-nuttx/quickjs.c:32916
    s->pc_stack = NULL;
    8002cd88:	e502                	sd	zero,136(sp)
quickjs-nuttx/quickjs.c:32917
    s->catch_pos_tab = js_malloc(ctx, sizeof(s->catch_pos_tab[0]) *
    8002cd8a:	b7aed0ef          	jal	ra,8001a104 <js_malloc>
    8002cd8e:	e12a                	sd	a0,128(sp)
quickjs-nuttx/quickjs.c:32919
    if (!s->catch_pos_tab)
    8002cd90:	18050d63          	beqz	a0,8002cf2a <js_create_function+0x1606>
quickjs-nuttx/quickjs.c:32927
    if (ss_check(ctx, s, 0, OP_invalid, 0, -1))
    8002cd94:	57fd                	li	a5,-1
    8002cd96:	4701                	li	a4,0
    8002cd98:	4681                	li	a3,0
    8002cd9a:	4601                	li	a2,0
    8002cd9c:	188c                	addi	a1,sp,112
    8002cd9e:	856e                	mv	a0,s11
quickjs-nuttx/quickjs.c:32922
    s->stack_len_max = 0;
    8002cda0:	da82                	sw	zero,116(sp)
quickjs-nuttx/quickjs.c:32923
    s->pc_stack_len = 0;
    8002cda2:	e902                	sd	zero,144(sp)
quickjs-nuttx/quickjs.c:32927
    if (ss_check(ctx, s, 0, OP_invalid, 0, -1))
    8002cda4:	ab3fe0ef          	jal	ra,8002b856 <ss_check>
    8002cda8:	18051163          	bnez	a0,8002cf2a <js_create_function+0x1606>
quickjs-nuttx/quickjs.c:32967
            if (s->stack_len_max > JS_STACK_SIZE_MAX) {
    8002cdac:	6b41                	lui	s6,0x10
    8002cdae:	03865bb7          	lui	s7,0x3865
quickjs-nuttx/quickjs.c:32943
        pos_next = pos + oi->size;
    8002cdb2:	00048c17          	auipc	s8,0x48
    8002cdb6:	ffec0c13          	addi	s8,s8,-2 # 80074db0 <opcode_info>
quickjs-nuttx/quickjs.c:32967
            if (s->stack_len_max > JS_STACK_SIZE_MAX) {
    8002cdba:	1b79                	addi	s6,s6,-2
    8002cdbc:	0ba2                	slli	s7,s7,0x8
quickjs-nuttx/quickjs.c:32944
        if (pos_next > s->bc_len) {
    8002cdbe:	57c6                	lw	a5,112(sp)
quickjs-nuttx/quickjs.c:32931
        pos = s->pc_stack[--s->pc_stack_len];
    8002cdc0:	65aa                	ld	a1,136(sp)
quickjs-nuttx/quickjs.c:32932
        stack_len = s->stack_level_tab[pos];
    8002cdc2:	7666                	ld	a2,120(sp)
quickjs-nuttx/quickjs.c:32933
        catch_pos = s->catch_pos_tab[pos];
    8002cdc4:	680a                	ld	a6,128(sp)
quickjs-nuttx/quickjs.c:32944
        if (pos_next > s->bc_len) {
    8002cdc6:	e83e                	sd	a5,16(sp)
quickjs-nuttx/quickjs.c:32954
            if (oi->fmt == OP_FMT_npopx) {
    8002cdc8:	48b9                	li	a7,14
quickjs-nuttx/quickjs.c:32972
        switch(op) {
    8002cdca:	06900f93          	li	t6,105
    8002cdce:	42ed                	li	t0,27
    8002cdd0:	0003f317          	auipc	t1,0x3f
    8002cdd4:	9b030313          	addi	t1,t1,-1616 # 8006b780 <qjsc_repl+0x61d0>
    8002cdd8:	02100393          	li	t2,33
    8002cddc:	4d05                	li	s10,1
quickjs-nuttx/quickjs.c:32930
    while (s->pc_stack_len > 0) {
    8002cdde:	47ca                	lw	a5,144(sp)
    8002cde0:	0ef04f63          	bgtz	a5,8002cede <js_create_function+0x15ba>
quickjs-nuttx/quickjs.c:33087
    js_free(ctx, s->pc_stack);
    8002cde4:	856e                	mv	a0,s11
    8002cde6:	a10de0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:33088
    js_free(ctx, s->catch_pos_tab);
    8002cdea:	658a                	ld	a1,128(sp)
    8002cdec:	856e                	mv	a0,s11
js_create_function():
quickjs-nuttx/quickjs.c:33234
        function_size = offsetof(JSFunctionBytecode, debug);
    8002cdee:	06000a13          	li	s4,96
compute_stack_size():
quickjs-nuttx/quickjs.c:33088
    js_free(ctx, s->catch_pos_tab);
    8002cdf2:	a04de0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:33089
    js_free(ctx, s->stack_level_tab);
    8002cdf6:	75e6                	ld	a1,120(sp)
    8002cdf8:	856e                	mv	a0,s11
    8002cdfa:	9fcde0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:33090
    *pstack_size = s->stack_len_max;
    8002cdfe:	08644703          	lbu	a4,134(s0)
    8002ce02:	5ad6                	lw	s5,116(sp)
js_create_function():
quickjs-nuttx/quickjs.c:33233
    if (fd->js_mode & JS_MODE_STRIP) {
    8002ce04:	8b09                	andi	a4,a4,2
    8002ce06:	e319                	bnez	a4,8002ce0c <js_create_function+0x14e8>
quickjs-nuttx/quickjs.c:33236
        function_size = sizeof(*b);
    8002ce08:	08000a13          	li	s4,128
quickjs-nuttx/quickjs.c:33239
    function_size += fd->cpool_count * sizeof(*fd->cpool);
    8002ce0c:	19042783          	lw	a5,400(s0)
    8002ce10:	0047979b          	slliw	a5,a5,0x4
    8002ce14:	01478b3b          	addw	s6,a5,s4
    8002ce18:	87da                	mv	a5,s6
quickjs-nuttx/quickjs.c:33241
    if (!(fd->js_mode & JS_MODE_STRIP) || fd->has_eval_call) {
    8002ce1a:	c701                	beqz	a4,8002ce22 <js_create_function+0x14fe>
quickjs-nuttx/quickjs.c:33241 (discriminator 1)
    8002ce1c:	4c78                	lw	a4,92(s0)
quickjs-nuttx/quickjs.c:33239 (discriminator 1)
    function_size += fd->cpool_count * sizeof(*fd->cpool);
    8002ce1e:	89da                	mv	s3,s6
quickjs-nuttx/quickjs.c:33241 (discriminator 1)
    if (!(fd->js_mode & JS_MODE_STRIP) || fd->has_eval_call) {
    8002ce20:	cb19                	beqz	a4,8002ce36 <js_create_function+0x1512>
quickjs-nuttx/quickjs.c:33242
        function_size += (fd->arg_count + fd->var_count) * sizeof(*b->vardefs);
    8002ce22:	0ac42983          	lw	s3,172(s0)
    8002ce26:	09c42503          	lw	a0,156(s0)
    8002ce2a:	00a989bb          	addw	s3,s3,a0
    8002ce2e:	0049999b          	slliw	s3,s3,0x4
    8002ce32:	00f989bb          	addw	s3,s3,a5
quickjs-nuttx/quickjs.c:33245
    function_size += fd->closure_var_count * sizeof(*fd->closure_var);
    8002ce36:	19842903          	lw	s2,408(s0)
quickjs-nuttx/quickjs.c:33247
    function_size += fd->byte_code.size;
    8002ce3a:	13843583          	ld	a1,312(s0)
quickjs-nuttx/quickjs.c:33249
    b = js_mallocz(ctx, function_size);
    8002ce3e:	856e                	mv	a0,s11
quickjs-nuttx/quickjs.c:33245
    function_size += fd->closure_var_count * sizeof(*fd->closure_var);
    8002ce40:	0039191b          	slliw	s2,s2,0x3
    8002ce44:	0139093b          	addw	s2,s2,s3
quickjs-nuttx/quickjs.c:33249
    b = js_mallocz(ctx, function_size);
    8002ce48:	00b905bb          	addw	a1,s2,a1
    8002ce4c:	aecee0ef          	jal	ra,8001b138 <js_mallocz>
    8002ce50:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:33250
    if (!b)
    8002ce52:	e119                	bnez	a0,8002ce58 <js_create_function+0x1534>
    8002ce54:	e89fe06f          	j	8002bcdc <js_create_function+0x3b8>
quickjs-nuttx/quickjs.c:33252
    b->header.ref_count = 1;
    8002ce58:	4785                	li	a5,1
    8002ce5a:	c11c                	sw	a5,0(a0)
quickjs-nuttx/quickjs.c:33254
    b->byte_code_buf = (void *)((uint8_t*)b + byte_code_offset);
    8002ce5c:	954a                	add	a0,a0,s2
    8002ce5e:	f088                	sd	a0,32(s1)
quickjs-nuttx/quickjs.c:33255
    b->byte_code_len = fd->byte_code.size;
    8002ce60:	13843783          	ld	a5,312(s0)
    8002ce64:	d49c                	sw	a5,40(s1)
quickjs-nuttx/quickjs.c:33256
    memcpy(b->byte_code_buf, fd->byte_code.buf, fd->byte_code.size);
    8002ce66:	13843603          	ld	a2,312(s0)
    8002ce6a:	13043583          	ld	a1,304(s0)
    8002ce6e:	73f360ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:33257
    js_free(ctx, fd->byte_code.buf);
    8002ce72:	13043583          	ld	a1,304(s0)
    8002ce76:	856e                	mv	a0,s11
    8002ce78:	97ede0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:33260
    b->func_name = fd->func_name;
    8002ce7c:	08842783          	lw	a5,136(s0)
quickjs-nuttx/quickjs.c:33258
    fd->byte_code.buf = NULL;
    8002ce80:	12043823          	sd	zero,304(s0)
quickjs-nuttx/quickjs.c:33260
    b->func_name = fd->func_name;
    8002ce84:	d4dc                	sw	a5,44(s1)
quickjs-nuttx/quickjs.c:33261
    if (fd->arg_count + fd->var_count > 0) {
    8002ce86:	0ac42783          	lw	a5,172(s0)
    8002ce8a:	09c42703          	lw	a4,156(s0)
    8002ce8e:	9fb9                	addw	a5,a5,a4
    8002ce90:	46f05563          	blez	a5,8002d2fa <js_create_function+0x19d6>
quickjs-nuttx/quickjs.c:33262
        if ((fd->js_mode & JS_MODE_STRIP) && !fd->has_eval_call) {
    8002ce94:	08644783          	lbu	a5,134(s0)
    8002ce98:	8b89                	andi	a5,a5,2
    8002ce9a:	c789                	beqz	a5,8002cea4 <js_create_function+0x1580>
quickjs-nuttx/quickjs.c:33262 (discriminator 1)
    8002ce9c:	05c42903          	lw	s2,92(s0)
    8002cea0:	62090063          	beqz	s2,8002d4c0 <js_create_function+0x1b9c>
quickjs-nuttx/quickjs.c:33276
            b->vardefs = (void *)((uint8_t*)b + vardefs_offset);
    8002cea4:	01648533          	add	a0,s1,s6
    8002cea8:	f888                	sd	a0,48(s1)
quickjs-nuttx/quickjs.c:33277
            memcpy(b->vardefs, fd->args, fd->arg_count * sizeof(fd->args[0]));
    8002ceaa:	0ac42603          	lw	a2,172(s0)
    8002ceae:	704c                	ld	a1,160(s0)
    8002ceb0:	0612                	slli	a2,a2,0x4
    8002ceb2:	6fb360ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:33278
            memcpy(b->vardefs + fd->arg_count, fd->vars, fd->var_count * sizeof(fd->vars[0]));
    8002ceb6:	0ac42783          	lw	a5,172(s0)
    8002ceba:	7888                	ld	a0,48(s1)
    8002cebc:	09c42603          	lw	a2,156(s0)
    8002cec0:	684c                	ld	a1,144(s0)
    8002cec2:	0792                	slli	a5,a5,0x4
    8002cec4:	0612                	slli	a2,a2,0x4
    8002cec6:	953e                	add	a0,a0,a5
    8002cec8:	6e5360ef          	jal	ra,80063dac <memcpy>
    8002cecc:	a119                	j	8002d2d2 <js_create_function+0x19ae>
compute_stack_size():
quickjs-nuttx/quickjs.c:32915
        s->stack_level_tab[i] = 0xffff;
    8002cece:	77e6                	ld	a5,120(sp)
    8002ced0:	00149693          	slli	a3,s1,0x1
quickjs-nuttx/quickjs.c:32914
    for(i = 0; i < s->bc_len; i++)
    8002ced4:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:32915
        s->stack_level_tab[i] = 0xffff;
    8002ced6:	97b6                	add	a5,a5,a3
    8002ced8:	00e79023          	sh	a4,0(a5)
quickjs-nuttx/quickjs.c:32914
    for(i = 0; i < s->bc_len; i++)
    8002cedc:	b54d                	j	8002cd7e <js_create_function+0x145a>
quickjs-nuttx/quickjs.c:32931
        pos = s->pc_stack[--s->pc_stack_len];
    8002cede:	fff7871b          	addiw	a4,a5,-1
    8002cee2:	00271793          	slli	a5,a4,0x2
    8002cee6:	c93a                	sw	a4,144(sp)
    8002cee8:	97ae                	add	a5,a5,a1
    8002ceea:	4384                	lw	s1,0(a5)
quickjs-nuttx/quickjs.c:32932
        stack_len = s->stack_level_tab[pos];
    8002ceec:	00149793          	slli	a5,s1,0x1
    8002cef0:	97b2                	add	a5,a5,a2
quickjs-nuttx/quickjs.c:32934
        op = bc_buf[pos];
    8002cef2:	009a8533          	add	a0,s5,s1
quickjs-nuttx/quickjs.c:32932
        stack_len = s->stack_level_tab[pos];
    8002cef6:	0007dc83          	lhu	s9,0(a5)
quickjs-nuttx/quickjs.c:32934
        op = bc_buf[pos];
    8002cefa:	00054683          	lbu	a3,0(a0)
quickjs-nuttx/quickjs.c:32933
        catch_pos = s->catch_pos_tab[pos];
    8002cefe:	00249793          	slli	a5,s1,0x2
    8002cf02:	97c2                	add	a5,a5,a6
    8002cf04:	0007a903          	lw	s2,0(a5)
quickjs-nuttx/quickjs.c:32932
        stack_len = s->stack_level_tab[pos];
    8002cf08:	8e66                	mv	t3,s9
quickjs-nuttx/quickjs.c:32934
        op = bc_buf[pos];
    8002cf0a:	0006899b          	sext.w	s3,a3
quickjs-nuttx/quickjs.c:32935
        if (op == 0 || op >= OP_COUNT) {
    8002cf0e:	c689                	beqz	a3,8002cf18 <js_create_function+0x15f4>
    8002cf10:	0f700793          	li	a5,247
    8002cf14:	0337d963          	bge	a5,s3,8002cf46 <js_create_function+0x1622>
quickjs-nuttx/quickjs.c:32936
            JS_ThrowInternalError(ctx, "invalid opcode (op=%d, pc=%d)", op, pos);
    8002cf18:	86a6                	mv	a3,s1
    8002cf1a:	864e                	mv	a2,s3
    8002cf1c:	0003e597          	auipc	a1,0x3e
    8002cf20:	6bc58593          	addi	a1,a1,1724 # 8006b5d8 <qjsc_repl+0x6028>
quickjs-nuttx/quickjs.c:32945
            JS_ThrowInternalError(ctx, "bytecode buffer overflow (op=%d, pc=%d)", op, pos);
    8002cf24:	856e                	mv	a0,s11
    8002cf26:	9d3ec0ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:33093
    js_free(ctx, s->pc_stack);
    8002cf2a:	65aa                	ld	a1,136(sp)
    8002cf2c:	856e                	mv	a0,s11
    8002cf2e:	8c8de0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:33094
    js_free(ctx, s->catch_pos_tab);
    8002cf32:	658a                	ld	a1,128(sp)
    8002cf34:	856e                	mv	a0,s11
    8002cf36:	8c0de0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:33095
    js_free(ctx, s->stack_level_tab);
    8002cf3a:	75e6                	ld	a1,120(sp)
    8002cf3c:	856e                	mv	a0,s11
    8002cf3e:	8b8de0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:33097
    return -1;
    8002cf42:	d9bfe06f          	j	8002bcdc <js_create_function+0x3b8>
quickjs-nuttx/quickjs.c:32939
        oi = &short_opcode_info(op);
    8002cf46:	0b500793          	li	a5,181
    8002cf4a:	874e                	mv	a4,s3
    8002cf4c:	0137d463          	bge	a5,s3,8002cf54 <js_create_function+0x1630>
    8002cf50:	01398713          	addi	a4,s3,19
quickjs-nuttx/quickjs.c:32943
        pos_next = pos + oi->size;
    8002cf54:	070a                	slli	a4,a4,0x2
    8002cf56:	00ec07b3          	add	a5,s8,a4
    8002cf5a:	0007ca03          	lbu	s4,0(a5)
quickjs-nuttx/quickjs.c:32944
        if (pos_next > s->bc_len) {
    8002cf5e:	6ec2                	ld	t4,16(sp)
quickjs-nuttx/quickjs.c:32943
        pos_next = pos + oi->size;
    8002cf60:	009a0a3b          	addw	s4,s4,s1
quickjs-nuttx/quickjs.c:32944
        if (pos_next > s->bc_len) {
    8002cf64:	014ed963          	bge	t4,s4,8002cf76 <js_create_function+0x1652>
quickjs-nuttx/quickjs.c:32945
            JS_ThrowInternalError(ctx, "bytecode buffer overflow (op=%d, pc=%d)", op, pos);
    8002cf68:	86a6                	mv	a3,s1
    8002cf6a:	864e                	mv	a2,s3
    8002cf6c:	0003e597          	auipc	a1,0x3e
    8002cf70:	5a458593          	addi	a1,a1,1444 # 8006b510 <qjsc_repl+0x5f60>
    8002cf74:	bf45                	j	8002cf24 <js_create_function+0x1600>
quickjs-nuttx/quickjs.c:32950
        if (oi->fmt == OP_FMT_npop || oi->fmt == OP_FMT_npop_u16) {
    8002cf76:	0037c083          	lbu	ra,3(a5)
quickjs-nuttx/quickjs.c:32948
        n_pop = oi->n_pop;
    8002cf7a:	0017ce83          	lbu	t4,1(a5)
quickjs-nuttx/quickjs.c:32950
        if (oi->fmt == OP_FMT_npop || oi->fmt == OP_FMT_npop_u16) {
    8002cf7e:	4f35                	li	t5,13
    8002cf80:	0fd0f793          	andi	a5,ra,253
    8002cf84:	03e79463          	bne	a5,t5,8002cfac <js_create_function+0x1688>
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002cf88:	00254783          	lbu	a5,2(a0)
    8002cf8c:	00154083          	lbu	ra,1(a0)
    8002cf90:	07a2                	slli	a5,a5,0x8
    8002cf92:	0017e7b3          	or	a5,a5,ra
compute_stack_size():
quickjs-nuttx/quickjs.c:32955
                n_pop += op - OP_call0;
    8002cf96:	01d78ebb          	addw	t4,a5,t4
quickjs-nuttx/quickjs.c:32960
        if (stack_len < n_pop) {
    8002cf9a:	01dcdf63          	bge	s9,t4,8002cfb8 <js_create_function+0x1694>
quickjs-nuttx/quickjs.c:32961
            JS_ThrowInternalError(ctx, "stack underflow (op=%d, pc=%d)", op, pos);
    8002cf9e:	86a6                	mv	a3,s1
    8002cfa0:	864e                	mv	a2,s3
    8002cfa2:	0003e597          	auipc	a1,0x3e
    8002cfa6:	65658593          	addi	a1,a1,1622 # 8006b5f8 <qjsc_repl+0x6048>
    8002cfaa:	bfad                	j	8002cf24 <js_create_function+0x1600>
quickjs-nuttx/quickjs.c:32948
        n_pop = oi->n_pop;
    8002cfac:	2e81                	sext.w	t4,t4
quickjs-nuttx/quickjs.c:32954
            if (oi->fmt == OP_FMT_npopx) {
    8002cfae:	ff1096e3          	bne	ra,a7,8002cf9a <js_create_function+0x1676>
quickjs-nuttx/quickjs.c:32955
                n_pop += op - OP_call0;
    8002cfb2:	f109879b          	addiw	a5,s3,-240
    8002cfb6:	b7c5                	j	8002cf96 <js_create_function+0x1672>
quickjs-nuttx/quickjs.c:32964
        stack_len += oi->n_push - n_pop;
    8002cfb8:	9762                	add	a4,a4,s8
    8002cfba:	00274783          	lbu	a5,2(a4)
    8002cfbe:	01c78e3b          	addw	t3,a5,t3
quickjs-nuttx/quickjs.c:32965
        if (stack_len > s->stack_len_max) {
    8002cfc2:	57d6                	lw	a5,116(sp)
quickjs-nuttx/quickjs.c:32964
        stack_len += oi->n_push - n_pop;
    8002cfc4:	41de0cbb          	subw	s9,t3,t4
quickjs-nuttx/quickjs.c:32965
        if (stack_len > s->stack_len_max) {
    8002cfc8:	0197dc63          	bge	a5,s9,8002cfe0 <js_create_function+0x16bc>
quickjs-nuttx/quickjs.c:32966
            s->stack_len_max = stack_len;
    8002cfcc:	dae6                	sw	s9,116(sp)
quickjs-nuttx/quickjs.c:32967
            if (s->stack_len_max > JS_STACK_SIZE_MAX) {
    8002cfce:	019b5963          	bge	s6,s9,8002cfe0 <js_create_function+0x16bc>
quickjs-nuttx/quickjs.c:32968
                JS_ThrowInternalError(ctx, "stack overflow (op=%d, pc=%d)", op, pos);
    8002cfd2:	86a6                	mv	a3,s1
    8002cfd4:	864e                	mv	a2,s3
    8002cfd6:	0003e597          	auipc	a1,0x3e
    8002cfda:	56258593          	addi	a1,a1,1378 # 8006b538 <qjsc_repl+0x5f88>
    8002cfde:	b799                	j	8002cf24 <js_create_function+0x1600>
quickjs-nuttx/quickjs.c:32972
        switch(op) {
    8002cfe0:	08500793          	li	a5,133
    8002cfe4:	06d7ec63          	bltu	a5,a3,8002d05c <js_create_function+0x1738>
    8002cfe8:	04dfef63          	bltu	t6,a3,8002d046 <js_create_function+0x1722>
    8002cfec:	27168763          	beq	a3,a7,8002d25a <js_create_function+0x1936>
    8002cff0:	36c5                	addiw	a3,a3,-15
    8002cff2:	0ff6f693          	zext.b	a3,a3
    8002cff6:	06d3ef63          	bltu	t2,a3,8002d074 <js_create_function+0x1750>
    8002cffa:	00dd16b3          	sll	a3,s10,a3
    8002cffe:	0176f7b3          	and	a5,a3,s7
