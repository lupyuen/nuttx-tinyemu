    80035000:	2981                	sext.w	s3,s3
quickjs-nuttx/quickjs.c:25996
    JSContext *ctx = s->ctx;
    80035002:	00053a03          	ld	s4,0(a0)
quickjs-nuttx/quickjs.c:25997
    JSFunctionDef *fd = s->cur_func;
    80035006:	06853b03          	ld	s6,104(a0)
quickjs-nuttx/quickjs.c:25995
{
    8003500a:	842a                	mv	s0,a0
    8003500c:	8aae                	mv	s5,a1
    8003500e:	8932                	mv	s2,a2
    80035010:	8bb6                	mv	s7,a3
    80035012:	0bf00793          	li	a5,191
    80035016:	00098463          	beqz	s3,8003501e <js_parse_var+0x42>
    8003501a:	0bb00793          	li	a5,187
    8003501e:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:26001
        if (s->token.val == TOK_IDENT) {
    80035020:	f8300c93          	li	s9,-125
quickjs-nuttx/quickjs.c:26065
            if ((s->token.val == '[' || s->token.val == '{')
    80035024:	05b00d13          	li	s10,91
quickjs-nuttx/quickjs.c:26066
            &&  js_parse_skip_parens_token(s, &skip_bits, FALSE) == '=') {
    80035028:	03d00c13          	li	s8,61
quickjs-nuttx/quickjs.c:26006
            if (name == JS_ATOM_let && (tok == TOK_LET || tok == TOK_CONST)) {
    8003502c:	02700d93          	li	s11,39
quickjs-nuttx/quickjs.c:26001
        if (s->token.val == TOK_IDENT) {
    80035030:	4c1c                	lw	a5,24(s0)
    80035032:	17979a63          	bne	a5,s9,800351a6 <js_parse_var+0x1ca>
quickjs-nuttx/quickjs.c:26002
            if (s->token.u.ident.is_reserved) {
    80035036:	581c                	lw	a5,48(s0)
    80035038:	c395                	beqz	a5,8003505c <js_parse_var+0x80>
quickjs-nuttx/quickjs.c:26003
                return js_parse_error_reserved_identifier(s);
    8003503a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:26084
}
    8003503c:	640a                	ld	s0,128(sp)
    8003503e:	60aa                	ld	ra,136(sp)
    80035040:	74e6                	ld	s1,120(sp)
    80035042:	7946                	ld	s2,112(sp)
    80035044:	79a6                	ld	s3,104(sp)
    80035046:	7a06                	ld	s4,96(sp)
    80035048:	6ae6                	ld	s5,88(sp)
    8003504a:	6b46                	ld	s6,80(sp)
    8003504c:	6ba6                	ld	s7,72(sp)
    8003504e:	6c06                	ld	s8,64(sp)
    80035050:	7ce2                	ld	s9,56(sp)
    80035052:	7d42                	ld	s10,48(sp)
    80035054:	7da2                	ld	s11,40(sp)
    80035056:	6149                	addi	sp,sp,144
quickjs-nuttx/quickjs.c:26003
                return js_parse_error_reserved_identifier(s);
    80035058:	f18fa06f          	j	8002f770 <js_parse_error_reserved_identifier>
quickjs-nuttx/quickjs.c:26005
            name = JS_DupAtom(ctx, s->token.u.ident.atom);
    8003505c:	540c                	lw	a1,40(s0)
    8003505e:	8552                	mv	a0,s4
    80035060:	8a6d60ef          	jal	ra,8000b106 <JS_DupAtom>
    80035064:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:26006
            if (name == JS_ATOM_let && (tok == TOK_LET || tok == TOK_CONST)) {
    80035068:	01b49c63          	bne	s1,s11,80035080 <js_parse_var+0xa4>
quickjs-nuttx/quickjs.c:26006 (discriminator 2)
    8003506c:	00099a63          	bnez	s3,80035080 <js_parse_var+0xa4>
quickjs-nuttx/quickjs.c:26007
                js_parse_error(s, "'let' is not a valid lexical identifier");
    80035070:	00037597          	auipc	a1,0x37
    80035074:	78058593          	addi	a1,a1,1920 # 8006c7f0 <qjsc_repl+0x7240>
quickjs-nuttx/quickjs.c:26051
                    js_parse_error(s, "missing initializer for const variable");
    80035078:	8522                	mv	a0,s0
    8003507a:	bf9f80ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:26052
                    goto var_error;
    8003507e:	a841                	j	8003510e <js_parse_var+0x132>
quickjs-nuttx/quickjs.c:26010
            if (next_token(s))
    80035080:	8522                	mv	a0,s0
    80035082:	d04f90ef          	jal	ra,8002e586 <next_token>
    80035086:	e541                	bnez	a0,8003510e <js_parse_var+0x132>
quickjs-nuttx/quickjs.c:26012
            if (js_define_var(s, name, tok))
    80035088:	864a                	mv	a2,s2
    8003508a:	85a6                	mv	a1,s1
    8003508c:	8522                	mv	a0,s0
    8003508e:	a9ffa0ef          	jal	ra,8002fb2c <js_define_var>
    80035092:	ed35                	bnez	a0,8003510e <js_parse_var+0x132>
quickjs-nuttx/quickjs.c:26014
            if (export_flag) {
    80035094:	060b9263          	bnez	s7,800350f8 <js_parse_var+0x11c>
quickjs-nuttx/quickjs.c:26020
            if (s->token.val == '=') {
    80035098:	4c1c                	lw	a5,24(s0)
    8003509a:	0f879263          	bne	a5,s8,8003517e <js_parse_var+0x1a2>
quickjs-nuttx/quickjs.c:26021
                if (next_token(s))
    8003509e:	8522                	mv	a0,s0
    800350a0:	ce6f90ef          	jal	ra,8002e586 <next_token>
    800350a4:	e52d                	bnez	a0,8003510e <js_parse_var+0x132>
quickjs-nuttx/quickjs.c:26023
                if (tok == TOK_VAR) {
    800350a6:	fb300793          	li	a5,-77
    800350aa:	0af91363          	bne	s2,a5,80035150 <js_parse_var+0x174>
quickjs-nuttx/quickjs.c:26028
                    emit_op(s, OP_scope_get_var);
    800350ae:	0ba00593          	li	a1,186
    800350b2:	8522                	mv	a0,s0
    800350b4:	842d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26029
                    emit_atom(s, name);
    800350b8:	85a6                	mv	a1,s1
    800350ba:	8522                	mv	a0,s0
    800350bc:	86ed60ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:26030
                    emit_u16(s, fd->scope_level);
    800350c0:	0e0b5583          	lhu	a1,224(s6)
    800350c4:	8522                	mv	a0,s0
    800350c6:	effd30ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:26031
                    if (get_lvalue(s, &opcode, &scope, &name1, &label, NULL, FALSE, '=') < 0)
    800350ca:	03d00893          	li	a7,61
    800350ce:	4801                	li	a6,0
    800350d0:	4781                	li	a5,0
    800350d2:	0838                	addi	a4,sp,24
    800350d4:	0874                	addi	a3,sp,28
    800350d6:	0850                	addi	a2,sp,20
    800350d8:	080c                	addi	a1,sp,16
    800350da:	8522                	mv	a0,s0
    800350dc:	b6cfa0ef          	jal	ra,8002f448 <get_lvalue>
    800350e0:	02054763          	bltz	a0,8003510e <js_parse_var+0x132>
quickjs-nuttx/quickjs.c:26033
                    if (js_parse_assign_expr2(s, parse_flags)) {
    800350e4:	85d6                	mv	a1,s5
    800350e6:	8522                	mv	a0,s0
    800350e8:	c9aff0ef          	jal	ra,80034582 <js_parse_assign_expr2>
    800350ec:	c515                	beqz	a0,80035118 <js_parse_var+0x13c>
quickjs-nuttx/quickjs.c:26034
                        JS_FreeAtom(ctx, name1);
    800350ee:	45f2                	lw	a1,28(sp)
    800350f0:	8552                	mv	a0,s4
    800350f2:	856d60ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:26035
                        goto var_error;
    800350f6:	a821                	j	8003510e <js_parse_var+0x132>
quickjs-nuttx/quickjs.c:26015
                if (!add_export_entry(s, s->cur_func->module, name, name,
    800350f8:	7430                	ld	a2,104(s0)
add_export_entry():
quickjs-nuttx/quickjs.c:27283
    return add_export_entry2(s->ctx, s, m, local_name, export_name,
    800350fa:	6008                	ld	a0,0(s0)
    800350fc:	4781                	li	a5,0
    800350fe:	21863603          	ld	a2,536(a2)
    80035102:	8726                	mv	a4,s1
    80035104:	86a6                	mv	a3,s1
    80035106:	85a2                	mv	a1,s0
    80035108:	bbff80ef          	jal	ra,8002dcc6 <add_export_entry2>
js_parse_var():
quickjs-nuttx/quickjs.c:26015
                if (!add_export_entry(s, s->cur_func->module, name, name,
    8003510c:	f551                	bnez	a0,80035098 <js_parse_var+0xbc>
quickjs-nuttx/quickjs.c:26082
    JS_FreeAtom(ctx, name);
    8003510e:	85a6                	mv	a1,s1
    80035110:	8552                	mv	a0,s4
    80035112:	836d60ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:26083
    return -1;
    80035116:	a0d1                	j	800351da <js_parse_var+0x1fe>
quickjs-nuttx/quickjs.c:26037
                    set_object_name(s, name);
    80035118:	85a6                	mv	a1,s1
    8003511a:	8522                	mv	a0,s0
    8003511c:	a56d60ef          	jal	ra,8000b372 <set_object_name>
quickjs-nuttx/quickjs.c:26038
                    put_lvalue(s, opcode, scope, name1, label,
    80035120:	4762                	lw	a4,24(sp)
    80035122:	46f2                	lw	a3,28(sp)
    80035124:	4652                	lw	a2,20(sp)
    80035126:	45c2                	lw	a1,16(sp)
    80035128:	4801                	li	a6,0
    8003512a:	4781                	li	a5,0
    8003512c:	8522                	mv	a0,s0
    8003512e:	86cd60ef          	jal	ra,8000b19a <put_lvalue>
quickjs-nuttx/quickjs.c:26062
            JS_FreeAtom(ctx, name);
    80035132:	85a6                	mv	a1,s1
    80035134:	8552                	mv	a0,s4
    80035136:	812d60ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:26074
        if (s->token.val != ',')
    8003513a:	4c18                	lw	a4,24(s0)
    8003513c:	02c00793          	li	a5,44
    80035140:	0cf71563          	bne	a4,a5,8003520a <js_parse_var+0x22e>
quickjs-nuttx/quickjs.c:26076
        if (next_token(s))
    80035144:	8522                	mv	a0,s0
    80035146:	c40f90ef          	jal	ra,8002e586 <next_token>
    8003514a:	ee0503e3          	beqz	a0,80035030 <js_parse_var+0x54>
    8003514e:	a071                	j	800351da <js_parse_var+0x1fe>
quickjs-nuttx/quickjs.c:26041
                    if (js_parse_assign_expr2(s, parse_flags))
    80035150:	85d6                	mv	a1,s5
    80035152:	8522                	mv	a0,s0
    80035154:	c2eff0ef          	jal	ra,80034582 <js_parse_assign_expr2>
    80035158:	f95d                	bnez	a0,8003510e <js_parse_var+0x132>
quickjs-nuttx/quickjs.c:26043
                    set_object_name(s, name);
    8003515a:	85a6                	mv	a1,s1
    8003515c:	8522                	mv	a0,s0
    8003515e:	a14d60ef          	jal	ra,8000b372 <set_object_name>
quickjs-nuttx/quickjs.c:26044
                    emit_op(s, (tok == TOK_CONST || tok == TOK_LET) ?
    80035162:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:26057
                    emit_op(s, OP_scope_put_var_init);
    80035164:	8522                	mv	a0,s0
    80035166:	f91d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26058
                    emit_atom(s, name);
    8003516a:	85a6                	mv	a1,s1
    8003516c:	8522                	mv	a0,s0
    8003516e:	fbdd50ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:26059
                    emit_u16(s, fd->scope_level);
    80035172:	0e0b5583          	lhu	a1,224(s6)
    80035176:	8522                	mv	a0,s0
    80035178:	e4dd30ef          	jal	ra,80008fc4 <emit_u16>
    8003517c:	bf5d                	j	80035132 <js_parse_var+0x156>
quickjs-nuttx/quickjs.c:26050
                if (tok == TOK_CONST) {
    8003517e:	fcb00793          	li	a5,-53
    80035182:	00f91763          	bne	s2,a5,80035190 <js_parse_var+0x1b4>
quickjs-nuttx/quickjs.c:26051
                    js_parse_error(s, "missing initializer for const variable");
    80035186:	00037597          	auipc	a1,0x37
    8003518a:	69258593          	addi	a1,a1,1682 # 8006c818 <qjsc_repl+0x7268>
    8003518e:	b5ed                	j	80035078 <js_parse_var+0x9c>
quickjs-nuttx/quickjs.c:26054
                if (tok == TOK_LET) {
    80035190:	fd300793          	li	a5,-45
    80035194:	f8f91fe3          	bne	s2,a5,80035132 <js_parse_var+0x156>
quickjs-nuttx/quickjs.c:26056
                    emit_op(s, OP_undefined);
    80035198:	4599                	li	a1,6
    8003519a:	8522                	mv	a0,s0
    8003519c:	f5bd30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26057
                    emit_op(s, OP_scope_put_var_init);
    800351a0:	0bf00593          	li	a1,191
    800351a4:	b7c1                	j	80035164 <js_parse_var+0x188>
quickjs-nuttx/quickjs.c:26065
            if ((s->token.val == '[' || s->token.val == '{')
    800351a6:	fdf7f793          	andi	a5,a5,-33
    800351aa:	03a79a63          	bne	a5,s10,800351de <js_parse_var+0x202>
quickjs-nuttx/quickjs.c:26066
            &&  js_parse_skip_parens_token(s, &skip_bits, FALSE) == '=') {
    800351ae:	4601                	li	a2,0
    800351b0:	086c                	addi	a1,sp,28
    800351b2:	8522                	mv	a0,s0
    800351b4:	fb9f90ef          	jal	ra,8002f16c <js_parse_skip_parens_token>
    800351b8:	03851363          	bne	a0,s8,800351de <js_parse_var+0x202>
quickjs-nuttx/quickjs.c:26067
                emit_op(s, OP_undefined);
    800351bc:	4599                	li	a1,6
    800351be:	8522                	mv	a0,s0
    800351c0:	f37d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26068
                if (js_parse_destructuring_element(s, tok, 0, TRUE, skip_bits & SKIP_HAS_ELLIPSIS, TRUE) < 0)
    800351c4:	4772                	lw	a4,28(sp)
    800351c6:	4785                	li	a5,1
    800351c8:	4685                	li	a3,1
    800351ca:	8b09                	andi	a4,a4,2
    800351cc:	4601                	li	a2,0
    800351ce:	85ca                	mv	a1,s2
    800351d0:	8522                	mv	a0,s0
    800351d2:	8defe0ef          	jal	ra,800332b0 <js_parse_destructuring_element>
    800351d6:	f60552e3          	bgez	a0,8003513a <js_parse_var+0x15e>
quickjs-nuttx/quickjs.c:26077
            return -1;
    800351da:	557d                	li	a0,-1
    800351dc:	a801                	j	800351ec <js_parse_var+0x210>
quickjs-nuttx/quickjs.c:26071
                return js_parse_error(s, "variable name expected");
    800351de:	00037597          	auipc	a1,0x37
    800351e2:	66258593          	addi	a1,a1,1634 # 8006c840 <qjsc_repl+0x7290>
    800351e6:	8522                	mv	a0,s0
    800351e8:	a8bf80ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:26084
}
    800351ec:	60aa                	ld	ra,136(sp)
    800351ee:	640a                	ld	s0,128(sp)
    800351f0:	74e6                	ld	s1,120(sp)
    800351f2:	7946                	ld	s2,112(sp)
    800351f4:	79a6                	ld	s3,104(sp)
    800351f6:	7a06                	ld	s4,96(sp)
    800351f8:	6ae6                	ld	s5,88(sp)
    800351fa:	6b46                	ld	s6,80(sp)
    800351fc:	6ba6                	ld	s7,72(sp)
    800351fe:	6c06                	ld	s8,64(sp)
    80035200:	7ce2                	ld	s9,56(sp)
    80035202:	7d42                	ld	s10,48(sp)
    80035204:	7da2                	ld	s11,40(sp)
    80035206:	6149                	addi	sp,sp,144
    80035208:	8082                	ret
quickjs-nuttx/quickjs.c:26079
    return 0;
    8003520a:	4501                	li	a0,0
    8003520c:	b7c5                	j	800351ec <js_parse_var+0x210>

000000008003520e <js_parse_class>:
js_parse_class():
quickjs-nuttx/quickjs.c:22843
{
    8003520e:	716d                	addi	sp,sp,-272
    80035210:	e222                	sd	s0,256(sp)
    80035212:	f9ca                	sd	s2,240(sp)
    80035214:	e1e2                	sd	s8,192(sp)
    80035216:	e606                	sd	ra,264(sp)
    80035218:	fda6                	sd	s1,248(sp)
    8003521a:	f5ce                	sd	s3,232(sp)
    8003521c:	f1d2                	sd	s4,224(sp)
    8003521e:	edd6                	sd	s5,216(sp)
    80035220:	e9da                	sd	s6,208(sp)
    80035222:	e5de                	sd	s7,200(sp)
    80035224:	fd66                	sd	s9,184(sp)
    80035226:	f96a                	sd	s10,176(sp)
    80035228:	f56e                	sd	s11,168(sp)
quickjs-nuttx/quickjs.c:22845
    JSFunctionDef *fd = s->cur_func;
    8003522a:	7524                	ld	s1,104(a0)
quickjs-nuttx/quickjs.c:22852
    const uint8_t *class_start_ptr = s->token.ptr;
    8003522c:	711c                	ld	a5,32(a0)
quickjs-nuttx/quickjs.c:22844
    JSContext *ctx = s->ctx;
    8003522e:	00053a83          	ld	s5,0(a0)
quickjs-nuttx/quickjs.c:22857
    saved_js_mode = fd->js_mode;
    80035232:	0864cd03          	lbu	s10,134(s1)
quickjs-nuttx/quickjs.c:22852
    const uint8_t *class_start_ptr = s->token.ptr;
    80035236:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:22843
{
    80035238:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:22858
    fd->js_mode |= JS_MODE_STRICT;
    8003523a:	001d6793          	ori	a5,s10,1
    8003523e:	08f48323          	sb	a5,134(s1)
quickjs-nuttx/quickjs.c:22843
{
    80035242:	892e                	mv	s2,a1
    80035244:	8c32                	mv	s8,a2
quickjs-nuttx/quickjs.c:22846
    JSAtom name = JS_ATOM_NULL, class_name = JS_ATOM_NULL, class_name1;
    80035246:	c282                	sw	zero,68(sp)
quickjs-nuttx/quickjs.c:22859
    if (next_token(s))
    80035248:	b3ef90ef          	jal	ra,8002e586 <next_token>
    8003524c:	ed01                	bnez	a0,80035264 <js_parse_class+0x56>
quickjs-nuttx/quickjs.c:22861
    if (s->token.val == TOK_IDENT) {
    8003524e:	4c18                	lw	a4,24(s0)
    80035250:	f8300793          	li	a5,-125
    80035254:	8b2a                	mv	s6,a0
    80035256:	02f71663          	bne	a4,a5,80035282 <js_parse_class+0x74>
quickjs-nuttx/quickjs.c:22862
        if (s->token.u.ident.is_reserved) {
    8003525a:	581c                	lw	a5,48(s0)
    8003525c:	c799                	beqz	a5,8003526a <js_parse_class+0x5c>
quickjs-nuttx/quickjs.c:22863
            js_parse_error_reserved_identifier(s);
    8003525e:	8522                	mv	a0,s0
    80035260:	d10fa0ef          	jal	ra,8002f770 <js_parse_error_reserved_identifier>
quickjs-nuttx/quickjs.c:22847
    JSAtom class_var_name = JS_ATOM_NULL;
    80035264:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:22846
    JSAtom name = JS_ATOM_NULL, class_name = JS_ATOM_NULL, class_name1;
    80035266:	4981                	li	s3,0
    80035268:	a8a5                	j	800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:22866
        class_name = JS_DupAtom(ctx, s->token.u.ident.atom);
    8003526a:	540c                	lw	a1,40(s0)
    8003526c:	8556                	mv	a0,s5
    8003526e:	e99d50ef          	jal	ra,8000b106 <JS_DupAtom>
    80035272:	0005099b          	sext.w	s3,a0
quickjs-nuttx/quickjs.c:22867
        if (next_token(s))
    80035276:	8522                	mv	a0,s0
    80035278:	b0ef90ef          	jal	ra,8002e586 <next_token>
    8003527c:	c11d                	beqz	a0,800352a2 <js_parse_class+0x94>
quickjs-nuttx/quickjs.c:22847
    JSAtom class_var_name = JS_ATOM_NULL;
    8003527e:	4a01                	li	s4,0
    80035280:	a085                	j	800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:22869
    } else if (!is_class_expr && export_flag != JS_PARSE_EXPORT_DEFAULT) {
    80035282:	06091f63          	bnez	s2,80035300 <js_parse_class+0xf2>
quickjs-nuttx/quickjs.c:22869 (discriminator 1)
    80035286:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:22846 (discriminator 1)
    JSAtom name = JS_ATOM_NULL, class_name = JS_ATOM_NULL, class_name1;
    80035288:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:22875 (discriminator 1)
            class_var_name = JS_ATOM__default_; /* export default */
    8003528a:	07d00593          	li	a1,125
quickjs-nuttx/quickjs.c:22869 (discriminator 1)
    } else if (!is_class_expr && export_flag != JS_PARSE_EXPORT_DEFAULT) {
    8003528e:	02fc0263          	beq	s8,a5,800352b2 <js_parse_class+0xa4>
quickjs-nuttx/quickjs.c:22870
        js_parse_error(s, "class statement requires a name");
    80035292:	00037597          	auipc	a1,0x37
    80035296:	5ee58593          	addi	a1,a1,1518 # 8006c880 <qjsc_repl+0x72d0>
    8003529a:	8522                	mv	a0,s0
    8003529c:	9d7f80ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:22871
        goto fail;
    800352a0:	bff9                	j	8003527e <js_parse_class+0x70>
quickjs-nuttx/quickjs.c:22847
    JSAtom class_var_name = JS_ATOM_NULL;
    800352a2:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:22873
    if (!is_class_expr) {
    800352a4:	00091c63          	bnez	s2,800352bc <js_parse_class+0xae>
quickjs-nuttx/quickjs.c:22875
            class_var_name = JS_ATOM__default_; /* export default */
    800352a8:	07d00593          	li	a1,125
quickjs-nuttx/quickjs.c:22874
        if (class_name == JS_ATOM_NULL)
    800352ac:	00098363          	beqz	s3,800352b2 <js_parse_class+0xa4>
    800352b0:	85ce                	mv	a1,s3
quickjs-nuttx/quickjs.c:22878
        class_var_name = JS_DupAtom(ctx, class_var_name);
    800352b2:	8556                	mv	a0,s5
    800352b4:	e53d50ef          	jal	ra,8000b106 <JS_DupAtom>
    800352b8:	00050a1b          	sext.w	s4,a0
quickjs-nuttx/quickjs.c:22881
    push_scope(s);
    800352bc:	8522                	mv	a0,s0
    800352be:	d0ae80ef          	jal	ra,8001d7c8 <push_scope>
quickjs-nuttx/quickjs.c:22883
    if (s->token.val == TOK_EXTENDS) {
    800352c2:	4c18                	lw	a4,24(s0)
    800352c4:	fce00793          	li	a5,-50
    800352c8:	02f71f63          	bne	a4,a5,80035306 <js_parse_class+0xf8>
quickjs-nuttx/quickjs.c:22885
        if (next_token(s))
    800352cc:	8522                	mv	a0,s0
    800352ce:	ab8f90ef          	jal	ra,8002e586 <next_token>
    800352d2:	e519                	bnez	a0,800352e0 <js_parse_class+0xd2>
js_parse_left_hand_side_expr():
quickjs-nuttx/quickjs.c:22694
    return js_parse_postfix_expr(s, PF_POSTFIX_CALL);
    800352d4:	4589                	li	a1,2
    800352d6:	8522                	mv	a0,s0
    800352d8:	ff6fc0ef          	jal	ra,80031ace <js_parse_postfix_expr>
js_parse_class():
quickjs-nuttx/quickjs.c:22884
        class_flags = JS_DEFINE_CLASS_HAS_HERITAGE;
    800352dc:	4b05                	li	s6,1
quickjs-nuttx/quickjs.c:22887
        if (js_parse_left_hand_side_expr(s))
    800352de:	c905                	beqz	a0,8003530e <js_parse_class+0x100>
quickjs-nuttx/quickjs.c:23341
    JS_FreeAtom(ctx, name);
    800352e0:	4596                	lw	a1,68(sp)
    800352e2:	8556                	mv	a0,s5
quickjs-nuttx/quickjs.c:23345
    return -1;
    800352e4:	597d                	li	s2,-1
quickjs-nuttx/quickjs.c:23341
    JS_FreeAtom(ctx, name);
    800352e6:	e63d50ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:23342
    JS_FreeAtom(ctx, class_name);
    800352ea:	85ce                	mv	a1,s3
    800352ec:	8556                	mv	a0,s5
    800352ee:	e5bd50ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:23343
    JS_FreeAtom(ctx, class_var_name);
    800352f2:	85d2                	mv	a1,s4
    800352f4:	8556                	mv	a0,s5
    800352f6:	e53d50ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:23344
    fd->js_mode = saved_js_mode;
    800352fa:	09a48323          	sb	s10,134(s1)
quickjs-nuttx/quickjs.c:23345
    return -1;
    800352fe:	a405                	j	8003551e <js_parse_class+0x310>
quickjs-nuttx/quickjs.c:22846
    JSAtom name = JS_ATOM_NULL, class_name = JS_ATOM_NULL, class_name1;
    80035300:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:22847
    JSAtom class_var_name = JS_ATOM_NULL;
    80035302:	4a01                	li	s4,0
    80035304:	bf65                	j	800352bc <js_parse_class+0xae>
quickjs-nuttx/quickjs.c:22890
        emit_op(s, OP_undefined);
    80035306:	4599                	li	a1,6
    80035308:	8522                	mv	a0,s0
    8003530a:	dedd30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22894
    if (class_name != JS_ATOM_NULL) {
    8003530e:	22099863          	bnez	s3,8003553e <js_parse_class+0x330>
quickjs-nuttx/quickjs.c:22900
    if (js_parse_expect(s, '{'))
    80035312:	07b00593          	li	a1,123
    80035316:	8522                	mv	a0,s0
    80035318:	c9bf90ef          	jal	ra,8002efb2 <js_parse_expect>
    8003531c:	f171                	bnez	a0,800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:22904
    push_scope(s);
    8003531e:	8522                	mv	a0,s0
    80035320:	ca8e80ef          	jal	ra,8001d7c8 <push_scope>
quickjs-nuttx/quickjs.c:22906
    emit_op(s, OP_push_const);
    80035324:	4589                	li	a1,2
    80035326:	8522                	mv	a0,s0
    80035328:	dcfd30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22907
    ctor_cpool_offset = fd->byte_code.size;
    8003532c:	1384b783          	ld	a5,312(s1)
quickjs-nuttx/quickjs.c:22908
    emit_u32(s, 0); /* will be patched at the end of the class parsing */
    80035330:	4581                	li	a1,0
    80035332:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:22907
    ctor_cpool_offset = fd->byte_code.size;
    80035334:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:22908
    emit_u32(s, 0); /* will be patched at the end of the class parsing */
    80035336:	894e                	mv	s2,s3
    80035338:	f55d30ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:22910
    if (class_name == JS_ATOM_NULL) {
    8003533c:	00099763          	bnez	s3,8003534a <js_parse_class+0x13c>
quickjs-nuttx/quickjs.c:22912
            class_name1 = JS_ATOM_default;
    80035340:	4959                	li	s2,22
quickjs-nuttx/quickjs.c:22911
        if (class_var_name != JS_ATOM_NULL)
    80035342:	000a1463          	bnez	s4,8003534a <js_parse_class+0x13c>
quickjs-nuttx/quickjs.c:22914
            class_name1 = JS_ATOM_empty_string;
    80035346:	02f00913          	li	s2,47
quickjs-nuttx/quickjs.c:22919
    emit_op(s, OP_define_class);
    8003534a:	05600593          	li	a1,86
    8003534e:	8522                	mv	a0,s0
    80035350:	da7d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22920
    emit_atom(s, class_name1);
    80035354:	85ca                	mv	a1,s2
    80035356:	8522                	mv	a0,s0
    80035358:	dd3d50ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:22921
    emit_u8(s, class_flags);
    8003535c:	0ffb7593          	zext.b	a1,s6
    80035360:	8522                	mv	a0,s0
    80035362:	9a3d30ef          	jal	ra,80008d04 <emit_u8>
quickjs-nuttx/quickjs.c:22922
    define_class_offset = fd->last_opcode_pos;
    80035366:	1604a783          	lw	a5,352(s1)
quickjs-nuttx/quickjs.c:22926
        cf->fields_init_fd = NULL;
    8003536a:	f882                	sd	zero,112(sp)
quickjs-nuttx/quickjs.c:22927
        cf->computed_fields_count = 0;
    8003536c:	fc82                	sd	zero,120(sp)
quickjs-nuttx/quickjs.c:22922
    define_class_offset = fd->last_opcode_pos;
    8003536e:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:22929
        cf->is_static = i;
    80035370:	4785                	li	a5,1
    80035372:	cf3e                	sw	a5,156(sp)
quickjs-nuttx/quickjs.c:23169
                if (class_flags & JS_DEFINE_CLASS_HAS_HERITAGE)
    80035374:	008b079b          	addiw	a5,s6,8
quickjs-nuttx/quickjs.c:22929
        cf->is_static = i;
    80035378:	c302                	sw	zero,132(sp)
quickjs-nuttx/quickjs.c:22926
        cf->fields_init_fd = NULL;
    8003537a:	e502                	sd	zero,136(sp)
quickjs-nuttx/quickjs.c:22927
        cf->computed_fields_count = 0;
    8003537c:	e902                	sd	zero,144(sp)
quickjs-nuttx/quickjs.c:22932
    ctor_fd = NULL;
    8003537e:	e882                	sd	zero,80(sp)
quickjs-nuttx/quickjs.c:23169
                if (class_flags & JS_DEFINE_CLASS_HAS_HERITAGE)
    80035380:	f83e                	sd	a5,48(sp)
quickjs-nuttx/quickjs.c:22933
    while (s->token.val != '}') {
    80035382:	4c1c                	lw	a5,24(s0)
    80035384:	07d00713          	li	a4,125
    80035388:	1ce79463          	bne	a5,a4,80035550 <js_parse_class+0x342>
quickjs-nuttx/quickjs.c:23220
    if (!ctor_fd) {
    8003538c:	67c6                	ld	a5,80(sp)
    8003538e:	76078763          	beqz	a5,80035afc <js_parse_class+0x8ee>
put_u32():
quickjs-nuttx/cutils.h:180
    ((struct packed_u32 *)tab)->v = val;
    80035392:	1304b783          	ld	a5,304(s1)
js_parse_class():
quickjs-nuttx/quickjs.c:23225
    put_u32(fd->byte_code.buf + ctor_cpool_offset, ctor_fd->parent_cpool_idx);
    80035396:	5702                	lw	a4,32(sp)
put_u32():
quickjs-nuttx/cutils.h:180
    80035398:	97ba                	add	a5,a5,a4
js_parse_class():
quickjs-nuttx/quickjs.c:23225
    8003539a:	6746                	ld	a4,80(sp)
put_u32():
quickjs-nuttx/cutils.h:180
    8003539c:	01074683          	lbu	a3,16(a4)
    800353a0:	00d78023          	sb	a3,0(a5)
    800353a4:	01174683          	lbu	a3,17(a4)
    800353a8:	00d780a3          	sb	a3,1(a5)
    800353ac:	01274683          	lbu	a3,18(a4)
    800353b0:	00d78123          	sb	a3,2(a5)
    800353b4:	01374703          	lbu	a4,19(a4)
    800353b8:	00e781a3          	sb	a4,3(a5)
js_parse_class():
quickjs-nuttx/quickjs.c:23228
    if (!(fd->js_mode & JS_MODE_STRIP)) {
    800353bc:	0864c783          	lbu	a5,134(s1)
    800353c0:	8b89                	andi	a5,a5,2
    800353c2:	7a078b63          	beqz	a5,80035b78 <js_parse_class+0x96a>
quickjs-nuttx/quickjs.c:23238
    if (next_token(s))
    800353c6:	8522                	mv	a0,s0
    800353c8:	9bef90ef          	jal	ra,8002e586 <next_token>
    800353cc:	892a                	mv	s2,a0
    800353ce:	f00519e3          	bnez	a0,800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:23245
        if (cf->need_brand) {
    800353d2:	57f6                	lw	a5,124(sp)
    800353d4:	cf8d                	beqz	a5,8003540e <js_parse_class+0x200>
quickjs-nuttx/quickjs.c:23247
            emit_op(s, OP_dup);
    800353d6:	45c5                	li	a1,17
    800353d8:	8522                	mv	a0,s0
    800353da:	d1dd30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23248
            emit_op(s, OP_null);
    800353de:	459d                	li	a1,7
    800353e0:	8522                	mv	a0,s0
    800353e2:	d15d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23249
            emit_op(s, OP_swap);
    800353e6:	45ed                	li	a1,27
    800353e8:	8522                	mv	a0,s0
    800353ea:	d0dd30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23250
            emit_op(s, OP_add_brand);
    800353ee:	02d00593          	li	a1,45
    800353f2:	8522                	mv	a0,s0
    800353f4:	d03d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23253
            if (!cf->fields_init_fd) {
    800353f8:	77c6                	ld	a5,112(sp)
    800353fa:	7a078863          	beqz	a5,80035baa <js_parse_class+0x99c>
quickjs-nuttx/quickjs.c:23259
            cf->fields_init_fd->byte_code.buf[cf->brand_push_pos] = OP_push_true;
    800353fe:	77c6                	ld	a5,112(sp)
    80035400:	470a                	lw	a4,128(sp)
    80035402:	1307b783          	ld	a5,304(a5)
    80035406:	97ba                	add	a5,a5,a4
    80035408:	4729                	li	a4,10
    8003540a:	00e78023          	sb	a4,0(a5)
quickjs-nuttx/quickjs.c:23264
        var_idx = define_var(s, fd, JS_ATOM_class_fields_init,
    8003540e:	4689                	li	a3,2
    80035410:	07700613          	li	a2,119
    80035414:	85a6                	mv	a1,s1
    80035416:	8522                	mv	a0,s0
    80035418:	c86fa0ef          	jal	ra,8002f89e <define_var>
quickjs-nuttx/quickjs.c:23266
        if (var_idx < 0)
    8003541c:	ec0542e3          	bltz	a0,800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:23268
        if (cf->fields_init_fd) {
    80035420:	77c6                	ld	a5,112(sp)
    80035422:	78078c63          	beqz	a5,80035bba <js_parse_class+0x9ac>
quickjs-nuttx/quickjs.c:23269
            emit_class_init_end(s, cf);
    80035426:	188c                	addi	a1,sp,112
    80035428:	8522                	mv	a0,s0
    8003542a:	864e80ef          	jal	ra,8001d48e <emit_class_init_end>
quickjs-nuttx/quickjs.c:23273
        emit_op(s, OP_scope_put_var_init);
    8003542e:	0bf00593          	li	a1,191
    80035432:	8522                	mv	a0,s0
    80035434:	cc3d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23274
        emit_atom(s, JS_ATOM_class_fields_init);
    80035438:	07700593          	li	a1,119
    8003543c:	8522                	mv	a0,s0
    8003543e:	cedd50ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:23275
        emit_u16(s, s->cur_func->scope_level);
    80035442:	743c                	ld	a5,104(s0)
    80035444:	8522                	mv	a0,s0
    80035446:	0e07d583          	lhu	a1,224(a5)
    8003544a:	b7bd30ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:23279
    emit_op(s, OP_drop);
    8003544e:	45b9                	li	a1,14
    80035450:	8522                	mv	a0,s0
    80035452:	ca5d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23281
    if (class_fields[1].need_brand) {
    80035456:	47da                	lw	a5,148(sp)
    80035458:	cf91                	beqz	a5,80035474 <js_parse_class+0x266>
quickjs-nuttx/quickjs.c:23283
        emit_op(s, OP_dup);
    8003545a:	45c5                	li	a1,17
    8003545c:	8522                	mv	a0,s0
    8003545e:	c99d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23284
        emit_op(s, OP_dup);
    80035462:	45c5                	li	a1,17
    80035464:	8522                	mv	a0,s0
    80035466:	c91d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23285
        emit_op(s, OP_add_brand);
    8003546a:	02d00593          	li	a1,45
    8003546e:	8522                	mv	a0,s0
    80035470:	c87d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23288
    if (class_name != JS_ATOM_NULL) {
    80035474:	02098463          	beqz	s3,8003549c <js_parse_class+0x28e>
quickjs-nuttx/quickjs.c:23292
        emit_op(s, OP_dup);
    80035478:	45c5                	li	a1,17
    8003547a:	8522                	mv	a0,s0
    8003547c:	c7bd30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23293
        emit_op(s, OP_scope_put_var_init);
    80035480:	0bf00593          	li	a1,191
    80035484:	8522                	mv	a0,s0
    80035486:	c71d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23294
        emit_atom(s, class_name);
    8003548a:	85ce                	mv	a1,s3
    8003548c:	8522                	mv	a0,s0
    8003548e:	c9dd50ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:23295
        emit_u16(s, fd->scope_level);
    80035492:	0e04d583          	lhu	a1,224(s1)
    80035496:	8522                	mv	a0,s0
    80035498:	b2dd30ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:23299
    if (class_fields[1].fields_init_fd != NULL) {
    8003549c:	67aa                	ld	a5,136(sp)
    8003549e:	c795                	beqz	a5,800354ca <js_parse_class+0x2bc>
quickjs-nuttx/quickjs.c:23301
        emit_op(s, OP_dup);
    800354a0:	45c5                	li	a1,17
    800354a2:	8522                	mv	a0,s0
    800354a4:	c53d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23302
        emit_class_init_end(s, cf);
    800354a8:	012c                	addi	a1,sp,136
    800354aa:	8522                	mv	a0,s0
    800354ac:	fe3e70ef          	jal	ra,8001d48e <emit_class_init_end>
quickjs-nuttx/quickjs.c:23303
        emit_op(s, OP_call_method);
    800354b0:	02400593          	li	a1,36
    800354b4:	8522                	mv	a0,s0
    800354b6:	c41d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23304
        emit_u16(s, 0);
    800354ba:	4581                	li	a1,0
    800354bc:	8522                	mv	a0,s0
    800354be:	b07d30ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:23305
        emit_op(s, OP_drop);
    800354c2:	45b9                	li	a1,14
    800354c4:	8522                	mv	a0,s0
    800354c6:	c31d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23308
    pop_scope(s);
    800354ca:	8522                	mv	a0,s0
    800354cc:	d27d30ef          	jal	ra,800091f2 <pop_scope>
quickjs-nuttx/quickjs.c:23309
    pop_scope(s);
    800354d0:	8522                	mv	a0,s0
    800354d2:	d21d30ef          	jal	ra,800091f2 <pop_scope>
quickjs-nuttx/quickjs.c:23312
    if (class_var_name != JS_ATOM_NULL) {
    800354d6:	6e0a0863          	beqz	s4,80035bc6 <js_parse_class+0x9b8>
quickjs-nuttx/quickjs.c:23313
        if (define_var(s, fd, class_var_name, JS_VAR_DEF_LET) < 0)
    800354da:	4685                	li	a3,1
    800354dc:	8652                	mv	a2,s4
    800354de:	85a6                	mv	a1,s1
    800354e0:	8522                	mv	a0,s0
    800354e2:	bbcfa0ef          	jal	ra,8002f89e <define_var>
    800354e6:	de054de3          	bltz	a0,800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:23315
        emit_op(s, OP_scope_put_var_init);
    800354ea:	0bf00593          	li	a1,191
    800354ee:	8522                	mv	a0,s0
    800354f0:	c07d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23316
        emit_atom(s, class_var_name);
    800354f4:	85d2                	mv	a1,s4
    800354f6:	8522                	mv	a0,s0
    800354f8:	c33d50ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:23317
        emit_u16(s, fd->scope_level);
    800354fc:	0e04d583          	lhu	a1,224(s1)
    80035500:	8522                	mv	a0,s0
    80035502:	ac3d30ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:23328
    if (export_flag != JS_PARSE_EXPORT_NONE) {
    80035506:	6e0c1163          	bnez	s8,80035be8 <js_parse_class+0x9da>
quickjs-nuttx/quickjs.c:23336
    JS_FreeAtom(ctx, class_name);
    8003550a:	85ce                	mv	a1,s3
    8003550c:	8556                	mv	a0,s5
    8003550e:	c3bd50ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:23337
    JS_FreeAtom(ctx, class_var_name);
    80035512:	85d2                	mv	a1,s4
    80035514:	8556                	mv	a0,s5
    80035516:	c33d50ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:23338
    fd->js_mode = saved_js_mode;
    8003551a:	09a48323          	sb	s10,134(s1)
quickjs-nuttx/quickjs.c:23346
}
    8003551e:	60b2                	ld	ra,264(sp)
    80035520:	6412                	ld	s0,256(sp)
    80035522:	74ee                	ld	s1,248(sp)
    80035524:	79ae                	ld	s3,232(sp)
    80035526:	7a0e                	ld	s4,224(sp)
    80035528:	6aee                	ld	s5,216(sp)
    8003552a:	6b4e                	ld	s6,208(sp)
    8003552c:	6bae                	ld	s7,200(sp)
    8003552e:	6c0e                	ld	s8,192(sp)
    80035530:	7cea                	ld	s9,184(sp)
    80035532:	7d4a                	ld	s10,176(sp)
    80035534:	7daa                	ld	s11,168(sp)
    80035536:	854a                	mv	a0,s2
    80035538:	794e                	ld	s2,240(sp)
    8003553a:	6151                	addi	sp,sp,272
    8003553c:	8082                	ret
quickjs-nuttx/quickjs.c:22895
        class_name_var_idx = define_var(s, fd, class_name, JS_VAR_DEF_CONST);
    8003553e:	4689                	li	a3,2
    80035540:	864e                	mv	a2,s3
    80035542:	85a6                	mv	a1,s1
    80035544:	8522                	mv	a0,s0
    80035546:	b58fa0ef          	jal	ra,8002f89e <define_var>
quickjs-nuttx/quickjs.c:22896
        if (class_name_var_idx < 0)
    8003554a:	dc0554e3          	bgez	a0,80035312 <js_parse_class+0x104>
    8003554e:	bb49                	j	800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:22934
        if (s->token.val == ';') {
    80035550:	03b00713          	li	a4,59
    80035554:	00e79863          	bne	a5,a4,80035564 <js_parse_class+0x356>
quickjs-nuttx/quickjs.c:22935
            if (next_token(s))
    80035558:	8522                	mv	a0,s0
    8003555a:	82cf90ef          	jal	ra,8002e586 <next_token>
    8003555e:	e20502e3          	beqz	a0,80035382 <js_parse_class+0x174>
    80035562:	bbbd                	j	800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:22941
        if (is_static) {
    80035564:	fd800713          	li	a4,-40
    80035568:	0ee79b63          	bne	a5,a4,8003565e <js_parse_class+0x450>
quickjs-nuttx/quickjs.c:22942
            if (next_token(s))
    8003556c:	8522                	mv	a0,s0
    8003556e:	818f90ef          	jal	ra,8002e586 <next_token>
    80035572:	872a                	mv	a4,a0
    80035574:	d60516e3          	bnez	a0,800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:22944
            if (s->token.val == '{') {
    80035578:	4c1c                	lw	a5,24(s0)
    8003557a:	07b00693          	li	a3,123
    8003557e:	08d79163          	bne	a5,a3,80035600 <js_parse_class+0x3f2>
quickjs-nuttx/quickjs.c:22947
                if (!cf->fields_init_fd) {
    80035582:	67aa                	ld	a5,136(sp)
    80035584:	cba5                	beqz	a5,800355f4 <js_parse_class+0x3e6>
quickjs-nuttx/quickjs.c:22951
                s->cur_func = cf->fields_init_fd;
    80035586:	67aa                	ld	a5,136(sp)
quickjs-nuttx/quickjs.c:22956
                if (js_parse_function_decl2(s, JS_PARSE_FUNC_CLASS_STATIC_INIT,
    80035588:	7018                	ld	a4,32(s0)
    8003558a:	05810893          	addi	a7,sp,88
quickjs-nuttx/quickjs.c:22951
                s->cur_func = cf->fields_init_fd;
    8003558e:	f43c                	sd	a5,104(s0)
quickjs-nuttx/quickjs.c:22956
                if (js_parse_function_decl2(s, JS_PARSE_FUNC_CLASS_STATIC_INIT,
    80035590:	4c5c                	lw	a5,28(s0)
    80035592:	4801                	li	a6,0
    80035594:	4681                	li	a3,0
    80035596:	4601                	li	a2,0
    80035598:	459d                	li	a1,7
    8003559a:	8522                	mv	a0,s0
    8003559c:	dc6fe0ef          	jal	ra,80033b62 <js_parse_function_decl2.constprop.0>
    800355a0:	d40540e3          	bltz	a0,800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:22963
                push_scope(s);
    800355a4:	8522                	mv	a0,s0
    800355a6:	a22e80ef          	jal	ra,8001d7c8 <push_scope>
quickjs-nuttx/quickjs.c:22964
                emit_op(s, OP_scope_get_var);
    800355aa:	0ba00593          	li	a1,186
    800355ae:	8522                	mv	a0,s0
    800355b0:	b47d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22965
                emit_atom(s, JS_ATOM_this);
    800355b4:	45a1                	li	a1,8
    800355b6:	8522                	mv	a0,s0
    800355b8:	b73d50ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:22966
                emit_u16(s, 0);
    800355bc:	4581                	li	a1,0
    800355be:	8522                	mv	a0,s0
    800355c0:	a05d30ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:22968
                emit_op(s, OP_swap);
    800355c4:	45ed                	li	a1,27
    800355c6:	8522                	mv	a0,s0
    800355c8:	b2fd30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22970
                emit_op(s, OP_call_method);
    800355cc:	02400593          	li	a1,36
    800355d0:	8522                	mv	a0,s0
    800355d2:	b25d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22971
                emit_u16(s, 0);
    800355d6:	4581                	li	a1,0
    800355d8:	8522                	mv	a0,s0
    800355da:	9ebd30ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:22973
                emit_op(s, OP_drop);
    800355de:	45b9                	li	a1,14
    800355e0:	8522                	mv	a0,s0
    800355e2:	b15d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22975
                pop_scope(s);
    800355e6:	8522                	mv	a0,s0
    800355e8:	c0bd30ef          	jal	ra,800091f2 <pop_scope>
quickjs-nuttx/quickjs.c:22976
                s->cur_func = s->cur_func->parent;
    800355ec:	743c                	ld	a5,104(s0)
    800355ee:	679c                	ld	a5,8(a5)
    800355f0:	f43c                	sd	a5,104(s0)
quickjs-nuttx/quickjs.c:22977
                continue;
    800355f2:	bb41                	j	80035382 <js_parse_class+0x174>
quickjs-nuttx/quickjs.c:22948
                    if (emit_class_init_start(s, cf))
    800355f4:	012c                	addi	a1,sp,136
    800355f6:	8522                	mv	a0,s0
    800355f8:	9f8ea0ef          	jal	ra,8001f7f0 <emit_class_init_start>
    800355fc:	d549                	beqz	a0,80035586 <js_parse_class+0x378>
    800355fe:	b1cd                	j	800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:22980
            if (s->token.val == ';' || s->token.val == '=') {
    80035600:	fc57879b          	addiw	a5,a5,-59
    80035604:	9bf5                	andi	a5,a5,-3
    80035606:	2781                	sext.w	a5,a5
    80035608:	60079163          	bnez	a5,80035c0a <js_parse_class+0x9fc>
quickjs-nuttx/quickjs.c:22982
                name = JS_DupAtom(ctx, JS_ATOM_static);
    8003560c:	02c00793          	li	a5,44
    80035610:	c2be                	sw	a5,68(sp)
quickjs-nuttx/quickjs.c:22981
                is_static = FALSE;
    80035612:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:22988
        start_ptr = s->token.ptr;
    80035614:	701c                	ld	a5,32(s0)
    80035616:	4501                	li	a0,0
    80035618:	e83e                	sd	a5,16(sp)
quickjs-nuttx/quickjs.c:22989
        if (prop_type < 0) {
    8003561a:	57fd                	li	a5,-1
    8003561c:	00f71b63          	bne	a4,a5,80035632 <js_parse_class+0x424>
quickjs-nuttx/quickjs.c:22990
            prop_type = js_parse_property_name(s, &name, TRUE, FALSE, TRUE);
    80035620:	4705                	li	a4,1
    80035622:	4681                	li	a3,0
    80035624:	4605                	li	a2,1
    80035626:	00cc                	addi	a1,sp,68
    80035628:	8522                	mv	a0,s0
    8003562a:	ef8ff0ef          	jal	ra,80034d22 <js_parse_property_name>
quickjs-nuttx/quickjs.c:22991
            if (prop_type < 0)
    8003562e:	ca0549e3          	bltz	a0,800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:22997
        if ((name == JS_ATOM_constructor && !is_static &&
    80035632:	4596                	lw	a1,68(sp)
quickjs-nuttx/quickjs.c:22994
        is_private = prop_type & PROP_TYPE_PRIVATE;
    80035634:	01057b93          	andi	s7,a0,16
quickjs-nuttx/quickjs.c:22997
        if ((name == JS_ATOM_constructor && !is_static &&
    80035638:	03d00793          	li	a5,61
quickjs-nuttx/quickjs.c:22995
        prop_type &= ~PROP_TYPE_PRIVATE;
    8003563c:	993d                	andi	a0,a0,-17
    8003563e:	00050d9b          	sext.w	s11,a0
quickjs-nuttx/quickjs.c:22997
        if ((name == JS_ATOM_constructor && !is_static &&
    80035642:	02f59163          	bne	a1,a5,80035664 <js_parse_class+0x456>
quickjs-nuttx/quickjs.c:22997 (discriminator 1)
    80035646:	02091563          	bnez	s2,80035670 <js_parse_class+0x462>
quickjs-nuttx/quickjs.c:22997 (discriminator 2)
    8003564a:	180d8f63          	beqz	s11,800357e8 <js_parse_class+0x5da>
quickjs-nuttx/quickjs.c:23001
            js_parse_error(s, "invalid method name");
    8003564e:	00037597          	auipc	a1,0x37
    80035652:	25258593          	addi	a1,a1,594 # 8006c8a0 <qjsc_repl+0x72f0>
quickjs-nuttx/quickjs.c:23075
                js_parse_error(s, "invalid field name");
    80035656:	8522                	mv	a0,s0
    80035658:	e1af80ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:23076
                goto fail;
    8003565c:	b151                	j	800352e0 <js_parse_class+0xd2>
    8003565e:	4901                	li	s2,0
    80035660:	577d                	li	a4,-1
    80035662:	bf4d                	j	80035614 <js_parse_class+0x406>
quickjs-nuttx/quickjs.c:22998
             prop_type != PROP_TYPE_IDENT) ||
    80035664:	03c00793          	li	a5,60
    80035668:	12f59463          	bne	a1,a5,80035790 <js_parse_class+0x582>
quickjs-nuttx/quickjs.c:22999
            (name == JS_ATOM_prototype && is_static) ||
    8003566c:	fe0911e3          	bnez	s2,8003564e <js_parse_class+0x440>
quickjs-nuttx/quickjs.c:23004
        if (prop_type == PROP_TYPE_GET || prop_type == PROP_TYPE_SET) {
    80035670:	ffed8c9b          	addiw	s9,s11,-2
    80035674:	cc66                	sw	s9,24(sp)
    80035676:	4685                	li	a3,1
    80035678:	1796e663          	bltu	a3,s9,800357e4 <js_parse_class+0x5d6>
quickjs-nuttx/quickjs.c:23008
            if (is_private) {
    8003567c:	060b8a63          	beqz	s7,800356f0 <js_parse_class+0x4e2>
quickjs-nuttx/quickjs.c:23010
                idx = find_private_class_field(ctx, fd, name, fd->scope_level);
    80035680:	0e04a603          	lw	a2,224(s1)
    80035684:	8526                	mv	a0,s1
    80035686:	fc2e                	sd	a1,56(sp)
    80035688:	963d40ef          	jal	ra,80009fea <find_private_class_field.constprop.0>
quickjs-nuttx/quickjs.c:23011
                if (idx >= 0) {
    8003568c:	75e2                	ld	a1,56(sp)
    8003568e:	10054663          	bltz	a0,8003579a <js_parse_class+0x58c>
quickjs-nuttx/quickjs.c:23012
                    var_kind = fd->vars[idx].var_kind;
    80035692:	68dc                	ld	a5,144(s1)
    80035694:	0512                	slli	a0,a0,0x4
quickjs-nuttx/quickjs.c:23014
                    if (var_kind == JS_VAR_PRIVATE_FIELD ||
    80035696:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:23012
                    var_kind = fd->vars[idx].var_kind;
    80035698:	953e                	add	a0,a0,a5
    8003569a:	455c                	lw	a5,12(a0)
    8003569c:	0047d71b          	srliw	a4,a5,0x4
    800356a0:	00f77613          	andi	a2,a4,15
    800356a4:	8732                	mv	a4,a2
quickjs-nuttx/quickjs.c:23013
                    is_static1 = fd->vars[idx].is_static_private;
    800356a6:	0037d79b          	srliw	a5,a5,0x3
quickjs-nuttx/quickjs.c:23014
                    if (var_kind == JS_VAR_PRIVATE_FIELD ||
    800356aa:	366d                	addiw	a2,a2,-5
quickjs-nuttx/quickjs.c:23013
                    is_static1 = fd->vars[idx].is_static_private;
    800356ac:	8b85                	andi	a5,a5,1
quickjs-nuttx/quickjs.c:23014
                    if (var_kind == JS_VAR_PRIVATE_FIELD ||
    800356ae:	3cc6fe63          	bgeu	a3,a2,80035a8a <js_parse_class+0x87c>
quickjs-nuttx/quickjs.c:23015
                        var_kind == JS_VAR_PRIVATE_METHOD ||
    800356b2:	46a5                	li	a3,9
    800356b4:	3cd70b63          	beq	a4,a3,80035a8a <js_parse_class+0x87c>
quickjs-nuttx/quickjs.c:23017
                        var_kind == (JS_VAR_PRIVATE_GETTER + is_set) ||
    800356b8:	4609                	li	a2,2
    800356ba:	46a1                	li	a3,8
    800356bc:	00cd9363          	bne	s11,a2,800356c2 <js_parse_class+0x4b4>
    800356c0:	469d                	li	a3,7
quickjs-nuttx/quickjs.c:23016
                        var_kind == JS_VAR_PRIVATE_GETTER_SETTER ||
    800356c2:	3ce68463          	beq	a3,a4,80035a8a <js_parse_class+0x87c>
quickjs-nuttx/quickjs.c:23018
                        (var_kind == (JS_VAR_PRIVATE_GETTER + 1 - is_set) &&
    800356c6:	001cb693          	seqz	a3,s9
quickjs-nuttx/quickjs.c:23017
                        var_kind == (JS_VAR_PRIVATE_GETTER + is_set) ||
    800356ca:	269d                	addiw	a3,a3,7
    800356cc:	00e69463          	bne	a3,a4,800356d4 <js_parse_class+0x4c6>
quickjs-nuttx/quickjs.c:23018
                        (var_kind == (JS_VAR_PRIVATE_GETTER + 1 - is_set) &&
    800356d0:	3af91d63          	bne	s2,a5,80035a8a <js_parse_class+0x87c>
quickjs-nuttx/quickjs.c:23022
                    fd->vars[idx].var_kind = JS_VAR_PRIVATE_GETTER_SETTER;
    800356d4:	455c                	lw	a5,12(a0)
    800356d6:	f0f7f793          	andi	a5,a5,-241
    800356da:	0907e793          	ori	a5,a5,144
    800356de:	c55c                	sw	a5,12(a0)
quickjs-nuttx/quickjs.c:23028
                class_fields[is_static].need_brand = TRUE;
    800356e0:	47e1                	li	a5,24
    800356e2:	02f907b3          	mul	a5,s2,a5
    800356e6:	1118                	addi	a4,sp,160
    800356e8:	97ba                	add	a5,a5,a4
    800356ea:	4705                	li	a4,1
    800356ec:	fce7ae23          	sw	a4,-36(a5)
quickjs-nuttx/quickjs.c:23031
            if (js_parse_function_decl2(s, JS_PARSE_FUNC_GETTER + is_set,
    800356f0:	4c5c                	lw	a5,28(s0)
    800356f2:	6742                	ld	a4,16(sp)
    800356f4:	05810893          	addi	a7,sp,88
    800356f8:	4801                	li	a6,0
    800356fa:	4681                	li	a3,0
    800356fc:	4601                	li	a2,0
    800356fe:	002d859b          	addiw	a1,s11,2
    80035702:	8522                	mv	a0,s0
    80035704:	c5efe0ef          	jal	ra,80033b62 <js_parse_function_decl2.constprop.0>
    80035708:	bc051ce3          	bnez	a0,800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:23036
            if (is_private) {
    8003570c:	0a0b8263          	beqz	s7,800357b0 <js_parse_class+0x5a2>
quickjs-nuttx/quickjs.c:23037
                method_fd->need_home_object = TRUE; /* needed for brand check */
    80035710:	67e6                	ld	a5,88(sp)
    80035712:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:23038
                emit_op(s, OP_set_home_object);
    80035714:	05000593          	li	a1,80
quickjs-nuttx/quickjs.c:23037
                method_fd->need_home_object = TRUE; /* needed for brand check */
    80035718:	0ce7ae23          	sw	a4,220(a5)
quickjs-nuttx/quickjs.c:23038
                emit_op(s, OP_set_home_object);
    8003571c:	8522                	mv	a0,s0
    8003571e:	9d9d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23040
                emit_op(s, OP_scope_put_var_init);
    80035722:	0bf00593          	li	a1,191
    80035726:	8522                	mv	a0,s0
    80035728:	9cfd30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23041
                if (is_set) {
    8003572c:	4596                	lw	a1,68(sp)
    8003572e:	3a0c8063          	beqz	s9,80035ace <js_parse_class+0x8c0>
get_private_setter_name():
quickjs-nuttx/quickjs.c:22779
    return js_atom_concat_str(ctx, name, "<set>");
    80035732:	00036617          	auipc	a2,0x36
    80035736:	d1e60613          	addi	a2,a2,-738 # 8006b450 <qjsc_repl+0x5ea0>
    8003573a:	8556                	mv	a0,s5
    8003573c:	ca6f20ef          	jal	ra,80027be2 <js_atom_concat_str>
    80035740:	00050b9b          	sext.w	s7,a0
js_parse_class():
quickjs-nuttx/quickjs.c:23046
                    if (setter_name == JS_ATOM_NULL)
    80035744:	b80b8ee3          	beqz	s7,800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:23048
                    emit_atom(s, setter_name);
    80035748:	85de                	mv	a1,s7
    8003574a:	8522                	mv	a0,s0
    8003574c:	9dfd50ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:23049
                    ret = add_private_class_field(s, fd, setter_name,
    80035750:	85a6                	mv	a1,s1
    80035752:	874a                	mv	a4,s2
    80035754:	46a1                	li	a3,8
    80035756:	865e                	mv	a2,s7
    80035758:	8522                	mv	a0,s0
    8003575a:	aa2f40ef          	jal	ra,800299fc <add_private_class_field>
    8003575e:	8caa                	mv	s9,a0
quickjs-nuttx/quickjs.c:23051
                    JS_FreeAtom(ctx, setter_name);
    80035760:	85de                	mv	a1,s7
    80035762:	8556                	mv	a0,s5
    80035764:	9e5d50ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:23052
                    if (ret < 0)
    80035768:	b60ccce3          	bltz	s9,800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:23057
                emit_u16(s, s->cur_func->scope_level);
    8003576c:	743c                	ld	a5,104(s0)
    8003576e:	8522                	mv	a0,s0
    80035770:	0e07d583          	lhu	a1,224(a5)
    80035774:	851d30ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:23209
        if (is_static)
    80035778:	00090663          	beqz	s2,80035784 <js_parse_class+0x576>
quickjs-nuttx/quickjs.c:23210
            emit_op(s, OP_swap);
    8003577c:	45ed                	li	a1,27
    8003577e:	8522                	mv	a0,s0
    80035780:	977d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23211
        JS_FreeAtom(ctx, name);
    80035784:	4596                	lw	a1,68(sp)
    80035786:	8556                	mv	a0,s5
    80035788:	9c1d50ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:23212
        name = JS_ATOM_NULL;
    8003578c:	c282                	sw	zero,68(sp)
    8003578e:	bed5                	j	80035382 <js_parse_class+0x174>
quickjs-nuttx/quickjs.c:22999 (discriminator 1)
            (name == JS_ATOM_prototype && is_static) ||
    80035790:	07900793          	li	a5,121
    80035794:	ecf59ee3          	bne	a1,a5,80035670 <js_parse_class+0x462>
    80035798:	bd5d                	j	8003564e <js_parse_class+0x440>
quickjs-nuttx/quickjs.c:23024
                    if (add_private_class_field(s, fd, name,
    8003579a:	862e                	mv	a2,a1
    8003579c:	874a                	mv	a4,s2
    8003579e:	005d869b          	addiw	a3,s11,5
    800357a2:	85a6                	mv	a1,s1
    800357a4:	8522                	mv	a0,s0
    800357a6:	a56f40ef          	jal	ra,800299fc <add_private_class_field>
    800357aa:	f2055be3          	bgez	a0,800356e0 <js_parse_class+0x4d2>
    800357ae:	be0d                	j	800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:23059
                if (name == JS_ATOM_NULL) {
    800357b0:	4796                	lw	a5,68(sp)
    800357b2:	ef99                	bnez	a5,800357d0 <js_parse_class+0x5c2>
quickjs-nuttx/quickjs.c:23060
                    emit_op(s, OP_define_method_computed);
    800357b4:	05500593          	li	a1,85
    800357b8:	8522                	mv	a0,s0
    800357ba:	93dd30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23065
                emit_u8(s, OP_DEFINE_METHOD_GETTER + is_set);
    800357be:	47e2                	lw	a5,24(sp)
    800357c0:	0017859b          	addiw	a1,a5,1
    800357c4:	0ff5f593          	zext.b	a1,a1
quickjs-nuttx/quickjs.c:23206
                emit_u8(s, OP_DEFINE_METHOD_METHOD);
    800357c8:	8522                	mv	a0,s0
    800357ca:	d3ad30ef          	jal	ra,80008d04 <emit_u8>
    800357ce:	b76d                	j	80035778 <js_parse_class+0x56a>
quickjs-nuttx/quickjs.c:23062
                    emit_op(s, OP_define_method);
    800357d0:	8522                	mv	a0,s0
    800357d2:	05400593          	li	a1,84
    800357d6:	921d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23063
                    emit_atom(s, name);
    800357da:	4596                	lw	a1,68(sp)
    800357dc:	8522                	mv	a0,s0
    800357de:	94dd50ef          	jal	ra,8000b12a <emit_atom>
    800357e2:	bff1                	j	800357be <js_parse_class+0x5b0>
quickjs-nuttx/quickjs.c:23067
        } else if (prop_type == PROP_TYPE_IDENT && s->token.val != '(') {
    800357e4:	200d9963          	bnez	s11,800359f6 <js_parse_class+0x7e8>
quickjs-nuttx/quickjs.c:23067 (discriminator 1)
    800357e8:	4c18                	lw	a4,24(s0)
    800357ea:	02800793          	li	a5,40
    800357ee:	20f70f63          	beq	a4,a5,80035a0c <js_parse_class+0x7fe>
quickjs-nuttx/quickjs.c:23074
            if (name == JS_ATOM_constructor || name == JS_ATOM_prototype) {
    800357f2:	fc45879b          	addiw	a5,a1,-60
    800357f6:	4705                	li	a4,1
    800357f8:	00f76763          	bltu	a4,a5,80035806 <js_parse_class+0x5f8>
quickjs-nuttx/quickjs.c:23075
                js_parse_error(s, "invalid field name");
    800357fc:	00037597          	auipc	a1,0x37
    80035800:	0bc58593          	addi	a1,a1,188 # 8006c8b8 <qjsc_repl+0x7308>
    80035804:	bd89                	j	80035656 <js_parse_class+0x448>
quickjs-nuttx/quickjs.c:23079
            if (is_private) {
    80035806:	040b8b63          	beqz	s7,8003585c <js_parse_class+0x64e>
quickjs-nuttx/quickjs.c:23080
                if (find_private_class_field(ctx, fd, name,
    8003580a:	0e04a603          	lw	a2,224(s1)
    8003580e:	8526                	mv	a0,s1
    80035810:	e82e                	sd	a1,16(sp)
    80035812:	fd8d40ef          	jal	ra,80009fea <find_private_class_field.constprop.0>
    80035816:	26055a63          	bgez	a0,80035a8a <js_parse_class+0x87c>
quickjs-nuttx/quickjs.c:23084
                if (add_private_class_field(s, fd, name,
    8003581a:	65c2                	ld	a1,16(sp)
    8003581c:	874a                	mv	a4,s2
    8003581e:	4695                	li	a3,5
    80035820:	862e                	mv	a2,a1
    80035822:	8522                	mv	a0,s0
    80035824:	85a6                	mv	a1,s1
    80035826:	9d6f40ef          	jal	ra,800299fc <add_private_class_field>
    8003582a:	aa054be3          	bltz	a0,800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:23087
                emit_op(s, OP_private_symbol);
    8003582e:	4595                	li	a1,5
    80035830:	8522                	mv	a0,s0
    80035832:	8c5d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23088
                emit_atom(s, name);
    80035836:	4596                	lw	a1,68(sp)
    80035838:	8522                	mv	a0,s0
    8003583a:	8f1d50ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:23089
                emit_op(s, OP_scope_put_var_init);
    8003583e:	0bf00593          	li	a1,191
    80035842:	8522                	mv	a0,s0
    80035844:	8b3d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23090
                emit_atom(s, name);
    80035848:	4596                	lw	a1,68(sp)
    8003584a:	8522                	mv	a0,s0
    8003584c:	8dfd50ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:23091
                emit_u16(s, s->cur_func->scope_level);
    80035850:	743c                	ld	a5,104(s0)
    80035852:	8522                	mv	a0,s0
    80035854:	0e07d583          	lhu	a1,224(a5)
    80035858:	f6cd30ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:23094
            if (!cf->fields_init_fd) {
    8003585c:	45e1                	li	a1,24
    8003585e:	02b905b3          	mul	a1,s2,a1
    80035862:	111c                	addi	a5,sp,160
    80035864:	97ae                	add	a5,a5,a1
    80035866:	fd07b783          	ld	a5,-48(a5)
    8003586a:	cbb1                	beqz	a5,800358be <js_parse_class+0x6b0>
quickjs-nuttx/quickjs.c:23098
            if (name == JS_ATOM_NULL ) {
    8003586c:	4796                	lw	a5,68(sp)
quickjs-nuttx/quickjs.c:23069
            JSAtom field_var_name = JS_ATOM_NULL;
    8003586e:	4c81                	li	s9,0
quickjs-nuttx/quickjs.c:23098
            if (name == JS_ATOM_NULL ) {
    80035870:	e3d1                	bnez	a5,800358f4 <js_parse_class+0x6e6>
quickjs-nuttx/quickjs.c:23100
                field_var_name = js_atom_concat_num(ctx, JS_ATOM_computed_field + is_static, cf->computed_fields_count);
    80035872:	47e1                	li	a5,24
    80035874:	02f907b3          	mul	a5,s2,a5
    80035878:	1118                	addi	a4,sp,160
js_atom_concat_num():
quickjs-nuttx/quickjs.c:3368
    snprintf(buf, sizeof(buf), "%u", n);
    8003587a:	00034617          	auipc	a2,0x34
    8003587e:	e5e60613          	addi	a2,a2,-418 # 800696d8 <qjsc_repl+0x4128>
    80035882:	45c1                	li	a1,16
    80035884:	08a8                	addi	a0,sp,88
js_parse_class():
quickjs-nuttx/quickjs.c:23100
                field_var_name = js_atom_concat_num(ctx, JS_ATOM_computed_field + is_static, cf->computed_fields_count);
    80035886:	97ba                	add	a5,a5,a4
js_atom_concat_num():
quickjs-nuttx/quickjs.c:3368
    snprintf(buf, sizeof(buf), "%u", n);
    80035888:	fd87a683          	lw	a3,-40(a5)
    8003588c:	1b52b0ef          	jal	ra,80061240 <snprintf>
quickjs-nuttx/quickjs.c:3369
    return js_atom_concat_str(ctx, name, buf);
    80035890:	08b0                	addi	a2,sp,88
    80035892:	07590593          	addi	a1,s2,117
    80035896:	8556                	mv	a0,s5
    80035898:	b4af20ef          	jal	ra,80027be2 <js_atom_concat_str>
    8003589c:	00050c9b          	sext.w	s9,a0
js_parse_class():
quickjs-nuttx/quickjs.c:23101
                if (field_var_name == JS_ATOM_NULL)
    800358a0:	a40c80e3          	beqz	s9,800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:23103
                if (define_var(s, fd, field_var_name, JS_VAR_DEF_CONST) < 0) {
    800358a4:	4689                	li	a3,2
    800358a6:	8666                	mv	a2,s9
    800358a8:	85a6                	mv	a1,s1
    800358aa:	8522                	mv	a0,s0
    800358ac:	ff3f90ef          	jal	ra,8002f89e <define_var>
    800358b0:	00055e63          	bgez	a0,800358cc <js_parse_class+0x6be>
quickjs-nuttx/quickjs.c:23104
                    JS_FreeAtom(ctx, field_var_name);
    800358b4:	85e6                	mv	a1,s9
    800358b6:	8556                	mv	a0,s5
    800358b8:	891d50ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:23105
                    goto fail;
    800358bc:	b415                	j	800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:23095
                if (emit_class_init_start(s, cf))
    800358be:	189c                	addi	a5,sp,112
    800358c0:	95be                	add	a1,a1,a5
    800358c2:	8522                	mv	a0,s0
    800358c4:	f2de90ef          	jal	ra,8001f7f0 <emit_class_init_start>
    800358c8:	d155                	beqz	a0,8003586c <js_parse_class+0x65e>
    800358ca:	bc19                	j	800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:23107
                emit_op(s, OP_to_propkey);
    800358cc:	07200593          	li	a1,114
    800358d0:	8522                	mv	a0,s0
    800358d2:	825d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23108
                emit_op(s, OP_scope_put_var_init);
    800358d6:	0bf00593          	li	a1,191
    800358da:	8522                	mv	a0,s0
    800358dc:	81bd30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23109
                emit_atom(s, field_var_name);
    800358e0:	85e6                	mv	a1,s9
    800358e2:	8522                	mv	a0,s0
    800358e4:	847d50ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:23110
                emit_u16(s, s->cur_func->scope_level);
    800358e8:	743c                	ld	a5,104(s0)
    800358ea:	8522                	mv	a0,s0
    800358ec:	0e07d583          	lhu	a1,224(a5)
    800358f0:	ed4d30ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:23112
            s->cur_func = cf->fields_init_fd;
    800358f4:	4de1                	li	s11,24
    800358f6:	03b90db3          	mul	s11,s2,s11
    800358fa:	111c                	addi	a5,sp,160
quickjs-nuttx/quickjs.c:23113
            emit_op(s, OP_scope_get_var);
    800358fc:	0ba00593          	li	a1,186
    80035900:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:23112
            s->cur_func = cf->fields_init_fd;
    80035902:	9dbe                	add	s11,s11,a5
    80035904:	fd0db783          	ld	a5,-48(s11)
    80035908:	f43c                	sd	a5,104(s0)
quickjs-nuttx/quickjs.c:23113
            emit_op(s, OP_scope_get_var);
    8003590a:	fecd30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23114
            emit_atom(s, JS_ATOM_this);
    8003590e:	45a1                	li	a1,8
    80035910:	8522                	mv	a0,s0
    80035912:	819d50ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:23115
            emit_u16(s, 0);
    80035916:	4581                	li	a1,0
    80035918:	8522                	mv	a0,s0
    8003591a:	eaad30ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:23117
            if (name == JS_ATOM_NULL) {
    8003591e:	4796                	lw	a5,68(sp)
    80035920:	efa5                	bnez	a5,80035998 <js_parse_class+0x78a>
quickjs-nuttx/quickjs.c:23118
                emit_op(s, OP_scope_get_var);
    80035922:	0ba00593          	li	a1,186
    80035926:	8522                	mv	a0,s0
    80035928:	fced30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23119
                emit_atom(s, field_var_name);
    8003592c:	85e6                	mv	a1,s9
    8003592e:	8522                	mv	a0,s0
    80035930:	ffad50ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:23120
                emit_u16(s, s->cur_func->scope_level);
    80035934:	743c                	ld	a5,104(s0)
    80035936:	8522                	mv	a0,s0
    80035938:	0e07d583          	lhu	a1,224(a5)
    8003593c:	e88d30ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:23121
                cf->computed_fields_count++;
    80035940:	fd8da783          	lw	a5,-40(s11)
quickjs-nuttx/quickjs.c:23122
                JS_FreeAtom(ctx, field_var_name);
    80035944:	85e6                	mv	a1,s9
    80035946:	8556                	mv	a0,s5
quickjs-nuttx/quickjs.c:23121
                cf->computed_fields_count++;
    80035948:	2785                	addiw	a5,a5,1
    8003594a:	fcfdac23          	sw	a5,-40(s11)
quickjs-nuttx/quickjs.c:23122
                JS_FreeAtom(ctx, field_var_name);
    8003594e:	ffad50ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:23129
            if (s->token.val == '=') {
    80035952:	4c18                	lw	a4,24(s0)
    80035954:	03d00793          	li	a5,61
    80035958:	06f71263          	bne	a4,a5,800359bc <js_parse_class+0x7ae>
quickjs-nuttx/quickjs.c:23130
                if (next_token(s))
    8003595c:	8522                	mv	a0,s0
    8003595e:	c29f80ef          	jal	ra,8002e586 <next_token>
    80035962:	96051fe3          	bnez	a0,800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:23132
                if (js_parse_assign_expr(s))
    80035966:	8522                	mv	a0,s0
    80035968:	e6eff0ef          	jal	ra,80034fd6 <js_parse_assign_expr>
    8003596c:	96051ae3          	bnez	a0,800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:23137
            if (is_private) {
    80035970:	040b8b63          	beqz	s7,800359c6 <js_parse_class+0x7b8>
quickjs-nuttx/quickjs.c:23138
                set_object_name_computed(s);
    80035974:	8522                	mv	a0,s0
    80035976:	fd4d30ef          	jal	ra,8000914a <set_object_name_computed>
quickjs-nuttx/quickjs.c:23139
                emit_op(s, OP_define_private_field);
    8003597a:	04600593          	li	a1,70
quickjs-nuttx/quickjs.c:23143
                emit_op(s, OP_drop);
    8003597e:	8522                	mv	a0,s0
    80035980:	f76d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23149
            s->cur_func = s->cur_func->parent;
    80035984:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:23150
            if (js_parse_expect_semi(s))
    80035986:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:23149
            s->cur_func = s->cur_func->parent;
    80035988:	679c                	ld	a5,8(a5)
    8003598a:	f43c                	sd	a5,104(s0)
quickjs-nuttx/quickjs.c:23150
            if (js_parse_expect_semi(s))
    8003598c:	a37f90ef          	jal	ra,8002f3c2 <js_parse_expect_semi>
    80035990:	de0504e3          	beqz	a0,80035778 <js_parse_class+0x56a>
    80035994:	94dff06f          	j	800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:23123
            } else if (is_private) {
    80035998:	fa0b8de3          	beqz	s7,80035952 <js_parse_class+0x744>
quickjs-nuttx/quickjs.c:23124
                emit_op(s, OP_scope_get_var);
    8003599c:	8522                	mv	a0,s0
    8003599e:	0ba00593          	li	a1,186
    800359a2:	f54d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23125
                emit_atom(s, name);
    800359a6:	4596                	lw	a1,68(sp)
    800359a8:	8522                	mv	a0,s0
    800359aa:	f80d50ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:23126
                emit_u16(s, s->cur_func->scope_level);
    800359ae:	743c                	ld	a5,104(s0)
    800359b0:	8522                	mv	a0,s0
    800359b2:	0e07d583          	lhu	a1,224(a5)
    800359b6:	e0ed30ef          	jal	ra,80008fc4 <emit_u16>
    800359ba:	bf61                	j	80035952 <js_parse_class+0x744>
quickjs-nuttx/quickjs.c:23135
                emit_op(s, OP_undefined);
    800359bc:	4599                	li	a1,6
    800359be:	8522                	mv	a0,s0
    800359c0:	f36d30ef          	jal	ra,800090f6 <emit_op>
    800359c4:	b775                	j	80035970 <js_parse_class+0x762>
quickjs-nuttx/quickjs.c:23140
            } else if (name == JS_ATOM_NULL) {
    800359c6:	4596                	lw	a1,68(sp)
quickjs-nuttx/quickjs.c:23141
                set_object_name_computed(s);
    800359c8:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:23140
            } else if (name == JS_ATOM_NULL) {
    800359ca:	e991                	bnez	a1,800359de <js_parse_class+0x7d0>
quickjs-nuttx/quickjs.c:23141
                set_object_name_computed(s);
    800359cc:	f7ed30ef          	jal	ra,8000914a <set_object_name_computed>
quickjs-nuttx/quickjs.c:23142
                emit_op(s, OP_define_array_el);
    800359d0:	05100593          	li	a1,81
    800359d4:	8522                	mv	a0,s0
    800359d6:	f20d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23143
                emit_op(s, OP_drop);
    800359da:	45b9                	li	a1,14
    800359dc:	b74d                	j	8003597e <js_parse_class+0x770>
quickjs-nuttx/quickjs.c:23145
                set_object_name(s, name);
    800359de:	995d50ef          	jal	ra,8000b372 <set_object_name>
quickjs-nuttx/quickjs.c:23146
                emit_op(s, OP_define_field);
    800359e2:	8522                	mv	a0,s0
    800359e4:	04c00593          	li	a1,76
    800359e8:	f0ed30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23147
                emit_atom(s, name);
    800359ec:	4596                	lw	a1,68(sp)
    800359ee:	8522                	mv	a0,s0
    800359f0:	f3ad50ef          	jal	ra,8000b12a <emit_atom>
    800359f4:	bf41                	j	80035984 <js_parse_class+0x776>
quickjs-nuttx/quickjs.c:23158
            if (prop_type == PROP_TYPE_STAR) {
    800359f6:	4791                	li	a5,4
    800359f8:	06fd8663          	beq	s11,a5,80035a64 <js_parse_class+0x856>
quickjs-nuttx/quickjs.c:23160
            } else if (prop_type == PROP_TYPE_ASYNC) {
    800359fc:	4795                	li	a5,5
quickjs-nuttx/quickjs.c:23161
                func_kind = JS_FUNC_ASYNC;
    800359fe:	4609                	li	a2,2
quickjs-nuttx/quickjs.c:23160
            } else if (prop_type == PROP_TYPE_ASYNC) {
    80035a00:	06fd8363          	beq	s11,a5,80035a66 <js_parse_class+0x858>
quickjs-nuttx/quickjs.c:23162
            } else if (prop_type == PROP_TYPE_ASYNC_STAR) {
    80035a04:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:23163
                func_kind = JS_FUNC_ASYNC_GENERATOR;
    80035a06:	460d                	li	a2,3
quickjs-nuttx/quickjs.c:23162
            } else if (prop_type == PROP_TYPE_ASYNC_STAR) {
    80035a08:	04fd8f63          	beq	s11,a5,80035a66 <js_parse_class+0x858>
quickjs-nuttx/quickjs.c:23164
            } else if (name == JS_ATOM_constructor && !is_static) {
    80035a0c:	03d00793          	li	a5,61
    80035a10:	04f59d63          	bne	a1,a5,80035a6a <js_parse_class+0x85c>
quickjs-nuttx/quickjs.c:23164 (discriminator 1)
    80035a14:	04091b63          	bnez	s2,80035a6a <js_parse_class+0x85c>
quickjs-nuttx/quickjs.c:23165
                if (ctor_fd) {
    80035a18:	67c6                	ld	a5,80(sp)
    80035a1a:	c791                	beqz	a5,80035a26 <js_parse_class+0x818>
quickjs-nuttx/quickjs.c:23166
                    js_parse_error(s, "property constructor appears more than once");
    80035a1c:	00037597          	auipc	a1,0x37
    80035a20:	eb458593          	addi	a1,a1,-332 # 8006c8d0 <qjsc_repl+0x7320>
    80035a24:	b90d                	j	80035656 <js_parse_class+0x448>
quickjs-nuttx/quickjs.c:23169
                if (class_flags & JS_DEFINE_CLASS_HAS_HERITAGE)
    80035a26:	7cc2                	ld	s9,48(sp)
quickjs-nuttx/quickjs.c:23157
            func_kind = JS_FUNC_NORMAL;
    80035a28:	4601                	li	a2,0
quickjs-nuttx/quickjs.c:23174
            if (is_private) {
    80035a2a:	000b8a63          	beqz	s7,80035a3e <js_parse_class+0x830>
quickjs-nuttx/quickjs.c:23175
                class_fields[is_static].need_brand = TRUE;
    80035a2e:	47e1                	li	a5,24
    80035a30:	02f907b3          	mul	a5,s2,a5
    80035a34:	1118                	addi	a4,sp,160
    80035a36:	97ba                	add	a5,a5,a4
    80035a38:	4705                	li	a4,1
    80035a3a:	fce7ae23          	sw	a4,-36(a5)
quickjs-nuttx/quickjs.c:23177
            if (js_parse_function_decl2(s, func_type, func_kind, JS_ATOM_NULL, start_ptr, s->token.line_num, JS_PARSE_EXPORT_NONE, &method_fd))
    80035a3e:	4c5c                	lw	a5,28(s0)
    80035a40:	6742                	ld	a4,16(sp)
    80035a42:	04810893          	addi	a7,sp,72
    80035a46:	4801                	li	a6,0
    80035a48:	4681                	li	a3,0
    80035a4a:	85e6                	mv	a1,s9
    80035a4c:	8522                	mv	a0,s0
    80035a4e:	914fe0ef          	jal	ra,80033b62 <js_parse_function_decl2.constprop.0>
    80035a52:	880517e3          	bnez	a0,800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:23179
            if (func_type == JS_PARSE_FUNC_DERIVED_CLASS_CONSTRUCTOR ||
    80035a56:	3ce1                	addiw	s9,s9,-8
    80035a58:	4785                	li	a5,1
    80035a5a:	0197ea63          	bltu	a5,s9,80035a6e <js_parse_class+0x860>
quickjs-nuttx/quickjs.c:23181
                ctor_fd = method_fd;
    80035a5e:	67a6                	ld	a5,72(sp)
    80035a60:	e8be                	sd	a5,80(sp)
    80035a62:	bb19                	j	80035778 <js_parse_class+0x56a>
quickjs-nuttx/quickjs.c:23159
                func_kind = JS_FUNC_GENERATOR;
    80035a64:	4605                	li	a2,1
quickjs-nuttx/quickjs.c:23156
            func_type = JS_PARSE_FUNC_METHOD;
    80035a66:	4c99                	li	s9,6
    80035a68:	b7c9                	j	80035a2a <js_parse_class+0x81c>
quickjs-nuttx/quickjs.c:23157
            func_kind = JS_FUNC_NORMAL;
    80035a6a:	4601                	li	a2,0
    80035a6c:	bfed                	j	80035a66 <js_parse_class+0x858>
quickjs-nuttx/quickjs.c:23184
                if (find_private_class_field(ctx, fd, name,
    80035a6e:	4c96                	lw	s9,68(sp)
quickjs-nuttx/quickjs.c:23182
            } else if (is_private) {
    80035a70:	060b8363          	beqz	s7,80035ad6 <js_parse_class+0x8c8>
quickjs-nuttx/quickjs.c:23183
                method_fd->need_home_object = TRUE; /* needed for brand check */
    80035a74:	6726                	ld	a4,72(sp)
quickjs-nuttx/quickjs.c:23184
                if (find_private_class_field(ctx, fd, name,
    80035a76:	85e6                	mv	a1,s9
    80035a78:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:23183
                method_fd->need_home_object = TRUE; /* needed for brand check */
    80035a7a:	0cf72e23          	sw	a5,220(a4)
quickjs-nuttx/quickjs.c:23184
                if (find_private_class_field(ctx, fd, name,
    80035a7e:	0e04a603          	lw	a2,224(s1)
    80035a82:	d68d40ef          	jal	ra,80009fea <find_private_class_field.constprop.0>
    80035a86:	00054763          	bltz	a0,80035a94 <js_parse_class+0x886>
quickjs-nuttx/quickjs.c:23187
                    js_parse_error(s, "private class field is already defined");
    80035a8a:	00037597          	auipc	a1,0x37
    80035a8e:	e7658593          	addi	a1,a1,-394 # 8006c900 <qjsc_repl+0x7350>
    80035a92:	b6d1                	j	80035656 <js_parse_class+0x448>
quickjs-nuttx/quickjs.c:23190
                if (add_private_class_field(s, fd, name,
    80035a94:	874a                	mv	a4,s2
    80035a96:	4699                	li	a3,6
    80035a98:	8666                	mv	a2,s9
    80035a9a:	85a6                	mv	a1,s1
    80035a9c:	8522                	mv	a0,s0
    80035a9e:	f5ff30ef          	jal	ra,800299fc <add_private_class_field>
    80035aa2:	82054fe3          	bltz	a0,800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:23193
                emit_op(s, OP_set_home_object);
    80035aa6:	05000593          	li	a1,80
    80035aaa:	8522                	mv	a0,s0
    80035aac:	e4ad30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23194
                emit_op(s, OP_set_name);
    80035ab0:	04d00593          	li	a1,77
    80035ab4:	8522                	mv	a0,s0
    80035ab6:	e40d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23195
                emit_atom(s, name);
    80035aba:	4596                	lw	a1,68(sp)
    80035abc:	8522                	mv	a0,s0
    80035abe:	e6cd50ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:23196
                emit_op(s, OP_scope_put_var_init);
    80035ac2:	0bf00593          	li	a1,191
    80035ac6:	8522                	mv	a0,s0
    80035ac8:	e2ed30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23197
                emit_atom(s, name);
    80035acc:	4596                	lw	a1,68(sp)
quickjs-nuttx/quickjs.c:23055
                    emit_atom(s, name);
    80035ace:	8522                	mv	a0,s0
    80035ad0:	e5ad50ef          	jal	ra,8000b12a <emit_atom>
    80035ad4:	b961                	j	8003576c <js_parse_class+0x55e>
quickjs-nuttx/quickjs.c:23200
                if (name == JS_ATOM_NULL) {
    80035ad6:	000c9963          	bnez	s9,80035ae8 <js_parse_class+0x8da>
quickjs-nuttx/quickjs.c:23201
                    emit_op(s, OP_define_method_computed);
    80035ada:	05500593          	li	a1,85
    80035ade:	8522                	mv	a0,s0
    80035ae0:	e16d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23206
                emit_u8(s, OP_DEFINE_METHOD_METHOD);
    80035ae4:	4581                	li	a1,0
    80035ae6:	b1cd                	j	800357c8 <js_parse_class+0x5ba>
quickjs-nuttx/quickjs.c:23203
                    emit_op(s, OP_define_method);
    80035ae8:	8522                	mv	a0,s0
    80035aea:	05400593          	li	a1,84
    80035aee:	e08d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23204
                    emit_atom(s, name);
    80035af2:	4596                	lw	a1,68(sp)
    80035af4:	8522                	mv	a0,s0
    80035af6:	e34d50ef          	jal	ra,8000b12a <emit_atom>
    80035afa:	b7ed                	j	80035ae4 <js_parse_class+0x8d6>
js_parse_get_pos():
quickjs-nuttx/quickjs.c:22355
    sp->last_line_num = s->last_line_num;
    80035afc:	441c                	lw	a5,8(s0)
quickjs-nuttx/quickjs.c:22357
    sp->ptr = s->token.ptr;
    80035afe:	7018                	ld	a4,32(s0)
quickjs-nuttx/quickjs.c:22355
    sp->last_line_num = s->last_line_num;
    80035b00:	ccbe                	sw	a5,88(sp)
quickjs-nuttx/quickjs.c:22357
    sp->ptr = s->token.ptr;
    80035b02:	f4ba                	sd	a4,104(sp)
quickjs-nuttx/quickjs.c:22356
    sp->line_num = s->token.line_num;
    80035b04:	4c5c                	lw	a5,28(s0)
quickjs-nuttx/quickjs.c:22358
    sp->got_lf = s->got_lf;
    80035b06:	4438                	lw	a4,72(s0)
quickjs-nuttx/quickjs.c:22356
    sp->line_num = s->token.line_num;
    80035b08:	cebe                	sw	a5,92(sp)
quickjs-nuttx/quickjs.c:22358
    sp->got_lf = s->got_lf;
    80035b0a:	d0ba                	sw	a4,96(sp)
js_parse_class_default_ctor():
quickjs-nuttx/quickjs.c:22709
    if (has_super) {
    80035b0c:	060b1063          	bnez	s6,80035b6c <js_parse_class+0x95e>
quickjs-nuttx/quickjs.c:22715
        func_type = JS_PARSE_FUNC_CLASS_CONSTRUCTOR;
    80035b10:	45a1                	li	a1,8
quickjs-nuttx/quickjs.c:22714
        str = "(){}";
    80035b12:	00037b97          	auipc	s7,0x37
    80035b16:	d66b8b93          	addi	s7,s7,-666 # 8006c878 <qjsc_repl+0x72c8>
quickjs-nuttx/quickjs.c:22719
    s->buf_ptr = (uint8_t *)str;
    80035b1a:	05743c23          	sd	s7,88(s0)
quickjs-nuttx/quickjs.c:22720
    s->buf_end = (uint8_t *)(str + strlen(str));
    80035b1e:	855e                	mv	a0,s7
    80035b20:	ec3e                	sd	a5,24(sp)
    80035b22:	e82e                	sd	a1,16(sp)
    80035b24:	25e2e0ef          	jal	ra,80063d82 <strlen>
    80035b28:	955e                	add	a0,a0,s7
quickjs-nuttx/quickjs.c:22718
    saved_buf_end = s->buf_end;
    80035b2a:	06043b03          	ld	s6,96(s0)
quickjs-nuttx/quickjs.c:22720
    s->buf_end = (uint8_t *)(str + strlen(str));
    80035b2e:	f028                	sd	a0,96(s0)
quickjs-nuttx/quickjs.c:22721
    ret = next_token(s);
    80035b30:	8522                	mv	a0,s0
    80035b32:	a55f80ef          	jal	ra,8002e586 <next_token>
quickjs-nuttx/quickjs.c:22722
    if (!ret) {
    80035b36:	65c2                	ld	a1,16(sp)
    80035b38:	67e2                	ld	a5,24(sp)
quickjs-nuttx/quickjs.c:22721
    ret = next_token(s);
    80035b3a:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:22722
    if (!ret) {
    80035b3c:	e919                	bnez	a0,80035b52 <js_parse_class+0x944>
quickjs-nuttx/quickjs.c:22723
        ret = js_parse_function_decl2(s, func_type, JS_FUNC_NORMAL,
    80035b3e:	05010893          	addi	a7,sp,80
    80035b42:	4801                	li	a6,0
    80035b44:	875e                	mv	a4,s7
    80035b46:	4681                	li	a3,0
    80035b48:	4601                	li	a2,0
    80035b4a:	8522                	mv	a0,s0
    80035b4c:	816fe0ef          	jal	ra,80033b62 <js_parse_function_decl2.constprop.0>
    80035b50:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:22727
    s->buf_end = saved_buf_end;
    80035b52:	07643023          	sd	s6,96(s0)
quickjs-nuttx/quickjs.c:22728
    ret |= js_parse_seek_token(s, &pos);
    80035b56:	08ac                	addi	a1,sp,88
    80035b58:	8522                	mv	a0,s0
    80035b5a:	a5af90ef          	jal	ra,8002edb4 <js_parse_seek_token>
    80035b5e:	01256933          	or	s2,a0,s2
js_parse_class():
quickjs-nuttx/quickjs.c:23221
        if (js_parse_class_default_ctor(s, class_flags & JS_DEFINE_CLASS_HAS_HERITAGE, &ctor_fd))
    80035b62:	2901                	sext.w	s2,s2
    80035b64:	820907e3          	beqz	s2,80035392 <js_parse_class+0x184>
    80035b68:	f78ff06f          	j	800352e0 <js_parse_class+0xd2>
js_parse_class_default_ctor():
quickjs-nuttx/quickjs.c:22712
        func_type = JS_PARSE_FUNC_DERIVED_CLASS_CONSTRUCTOR;
    80035b6c:	45a5                	li	a1,9
quickjs-nuttx/quickjs.c:22711
        str = "(){super(...arguments);}";
    80035b6e:	00037b97          	auipc	s7,0x37
    80035b72:	ceab8b93          	addi	s7,s7,-790 # 8006c858 <qjsc_repl+0x72a8>
    80035b76:	b755                	j	80035b1a <js_parse_class+0x90c>
js_parse_class():
quickjs-nuttx/quickjs.c:23229
        js_free(ctx, ctor_fd->source);
    80035b78:	67c6                	ld	a5,80(sp)
    80035b7a:	8556                	mv	a0,s5
    80035b7c:	2087b583          	ld	a1,520(a5)
    80035b80:	c76d50ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:23230
        ctor_fd->source_len = s->buf_ptr - class_start_ptr;
    80035b84:	67a2                	ld	a5,8(sp)
    80035b86:	6c30                	ld	a2,88(s0)
    80035b88:	6946                	ld	s2,80(sp)
quickjs-nuttx/quickjs.c:23231
        ctor_fd->source = js_strndup(ctx, (const char *)class_start_ptr,
    80035b8a:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:23230
        ctor_fd->source_len = s->buf_ptr - class_start_ptr;
    80035b8c:	9e1d                	subw	a2,a2,a5
    80035b8e:	20c92823          	sw	a2,528(s2)
quickjs-nuttx/quickjs.c:23231
        ctor_fd->source = js_strndup(ctx, (const char *)class_start_ptr,
    80035b92:	8556                	mv	a0,s5
    80035b94:	d96e40ef          	jal	ra,8001a12a <js_strndup>
quickjs-nuttx/quickjs.c:23233
        if (!ctor_fd->source)
    80035b98:	67c6                	ld	a5,80(sp)
quickjs-nuttx/quickjs.c:23231
        ctor_fd->source = js_strndup(ctx, (const char *)class_start_ptr,
    80035b9a:	20a93423          	sd	a0,520(s2)
quickjs-nuttx/quickjs.c:23233
        if (!ctor_fd->source)
    80035b9e:	2087b783          	ld	a5,520(a5)
    80035ba2:	820792e3          	bnez	a5,800353c6 <js_parse_class+0x1b8>
    80035ba6:	f3aff06f          	j	800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:23254
                if (emit_class_init_start(s, cf))
    80035baa:	188c                	addi	a1,sp,112
    80035bac:	8522                	mv	a0,s0
    80035bae:	c43e90ef          	jal	ra,8001f7f0 <emit_class_init_start>
    80035bb2:	840506e3          	beqz	a0,800353fe <js_parse_class+0x1f0>
    80035bb6:	f2aff06f          	j	800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:23271
            emit_op(s, OP_undefined);
    80035bba:	4599                	li	a1,6
    80035bbc:	8522                	mv	a0,s0
    80035bbe:	d38d30ef          	jal	ra,800090f6 <emit_op>
    80035bc2:	86dff06f          	j	8003542e <js_parse_class+0x220>
quickjs-nuttx/quickjs.c:23319
        if (class_name == JS_ATOM_NULL) {
    80035bc6:	940990e3          	bnez	s3,80035506 <js_parse_class+0x2f8>
quickjs-nuttx/quickjs.c:23323
            emit_op(s, OP_set_class_name);
    80035bca:	8522                	mv	a0,s0
    80035bcc:	0c700593          	li	a1,199
    80035bd0:	d26d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23324
            emit_u32(s, fd->last_opcode_pos + 1 - define_class_offset);
    80035bd4:	1604a583          	lw	a1,352(s1)
    80035bd8:	77a2                	ld	a5,40(sp)
    80035bda:	8522                	mv	a0,s0
    80035bdc:	2585                	addiw	a1,a1,1
    80035bde:	9d9d                	subw	a1,a1,a5
    80035be0:	eacd30ef          	jal	ra,8000928c <emit_u32>
    80035be4:	923ff06f          	j	80035506 <js_parse_class+0x2f8>
quickjs-nuttx/quickjs.c:23329
        if (!add_export_entry(s, fd->module,
    80035be8:	4785                	li	a5,1
    80035bea:	2184b603          	ld	a2,536(s1)
    80035bee:	8752                	mv	a4,s4
    80035bf0:	00fc0363          	beq	s8,a5,80035bf6 <js_parse_class+0x9e8>
    80035bf4:	4759                	li	a4,22
add_export_entry():
quickjs-nuttx/quickjs.c:27283 (discriminator 4)
    return add_export_entry2(s->ctx, s, m, local_name, export_name,
    80035bf6:	6008                	ld	a0,0(s0)
    80035bf8:	4781                	li	a5,0
    80035bfa:	86d2                	mv	a3,s4
    80035bfc:	85a2                	mv	a1,s0
    80035bfe:	8c8f80ef          	jal	ra,8002dcc6 <add_export_entry2>
js_parse_class():
quickjs-nuttx/quickjs.c:23329 (discriminator 4)
        if (!add_export_entry(s, fd->module,
    80035c02:	900514e3          	bnez	a0,8003550a <js_parse_class+0x2fc>
    80035c06:	edaff06f          	j	800352e0 <js_parse_class+0xd2>
quickjs-nuttx/quickjs.c:22987
            emit_op(s, OP_swap);
    80035c0a:	45ed                	li	a1,27
    80035c0c:	8522                	mv	a0,s0
    80035c0e:	ce8d30ef          	jal	ra,800090f6 <emit_op>
    80035c12:	4905                	li	s2,1
    80035c14:	b4b1                	j	80035660 <js_parse_class+0x452>

0000000080035c16 <js_parse_statement_or_decl>:
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26380
{
    80035c16:	7111                	addi	sp,sp,-256
    80035c18:	f9a2                	sd	s0,240(sp)
    80035c1a:	f1ca                	sd	s2,224(sp)
    80035c1c:	fd86                	sd	ra,248(sp)
    80035c1e:	f5a6                	sd	s1,232(sp)
    80035c20:	edce                	sd	s3,216(sp)
    80035c22:	e9d2                	sd	s4,208(sp)
    80035c24:	e5d6                	sd	s5,200(sp)
    80035c26:	e1da                	sd	s6,192(sp)
    80035c28:	fd5e                	sd	s7,184(sp)
    80035c2a:	f962                	sd	s8,176(sp)
    80035c2c:	f566                	sd	s9,168(sp)
    80035c2e:	f16a                	sd	s10,160(sp)
    80035c30:	ed6e                	sd	s11,152(sp)
is_label():
quickjs-nuttx/quickjs.c:26089
    return (s->token.val == TOK_IDENT && !s->token.u.ident.is_reserved &&
    80035c32:	4d18                	lw	a4,24(a0)
    80035c34:	f8300793          	li	a5,-125
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26381
    JSContext *ctx = s->ctx;
    80035c38:	00053b83          	ld	s7,0(a0)
quickjs-nuttx/quickjs.c:26380
{
    80035c3c:	842a                	mv	s0,a0
    80035c3e:	892e                	mv	s2,a1
is_label():
quickjs-nuttx/quickjs.c:26089
    return (s->token.val == TOK_IDENT && !s->token.u.ident.is_reserved &&
    80035c40:	0cf71163          	bne	a4,a5,80035d02 <js_parse_statement_or_decl+0xec>
    80035c44:	591c                	lw	a5,48(a0)
    80035c46:	efd5                	bnez	a5,80035d02 <js_parse_statement_or_decl+0xec>
quickjs-nuttx/quickjs.c:26090
            peek_token(s, FALSE) == ':');
    80035c48:	4581                	li	a1,0
    80035c4a:	822d40ef          	jal	ra,80009c6c <peek_token>
quickjs-nuttx/quickjs.c:26089
    return (s->token.val == TOK_IDENT && !s->token.u.ident.is_reserved &&
    80035c4e:	03a00793          	li	a5,58
    80035c52:	0af51863          	bne	a0,a5,80035d02 <js_parse_statement_or_decl+0xec>
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26391
        label_name = JS_DupAtom(ctx, s->token.u.ident.atom);
    80035c56:	540c                	lw	a1,40(s0)
    80035c58:	855e                	mv	a0,s7
    80035c5a:	cacd50ef          	jal	ra,8000b106 <JS_DupAtom>
quickjs-nuttx/quickjs.c:26393
        for (be = s->cur_func->top_break; be; be = be->prev) {
    80035c5e:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:26391
        label_name = JS_DupAtom(ctx, s->token.u.ident.atom);
    80035c60:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:26393
        for (be = s->cur_func->top_break; be; be = be->prev) {
    80035c64:	1807b783          	ld	a5,384(a5)
quickjs-nuttx/quickjs.c:26393 (discriminator 1)
    80035c68:	e3c1                	bnez	a5,80035ce8 <js_parse_statement_or_decl+0xd2>
quickjs-nuttx/quickjs.c:26400
        if (next_token(s))
    80035c6a:	8522                	mv	a0,s0
    80035c6c:	91bf80ef          	jal	ra,8002e586 <next_token>
    80035c70:	e52d                	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26402
        if (js_parse_expect(s, ':'))
    80035c72:	03a00593          	li	a1,58
    80035c76:	8522                	mv	a0,s0
    80035c78:	b3af90ef          	jal	ra,8002efb2 <js_parse_expect>
    80035c7c:	89aa                	mv	s3,a0
    80035c7e:	ed31                	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26405
        &&  s->token.val != TOK_DO
    80035c80:	4c1c                	lw	a5,24(s0)
    80035c82:	4709                	li	a4,2
    80035c84:	0457879b          	addiw	a5,a5,69
    80035c88:	06f77e63          	bgeu	a4,a5,80035d04 <js_parse_statement_or_decl+0xee>
quickjs-nuttx/quickjs.c:26411
            label_break = new_label(s);
    80035c8c:	8522                	mv	a0,s0
    80035c8e:	adee70ef          	jal	ra,8001cf6c <new_label>
quickjs-nuttx/quickjs.c:26412
            push_break_entry(s->cur_func, &break_entry,
    80035c92:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:26411
            label_break = new_label(s);
    80035c94:	8a2a                	mv	s4,a0
push_break_entry():
quickjs-nuttx/quickjs.c:25803
    be->prev = fd->top_break;
    80035c96:	1807b703          	ld	a4,384(a5)
    80035c9a:	e8ba                	sd	a4,80(sp)
quickjs-nuttx/quickjs.c:25804
    fd->top_break = be;
    80035c9c:	0898                	addi	a4,sp,80
    80035c9e:	18e7b023          	sd	a4,384(a5)
quickjs-nuttx/quickjs.c:25807
    be->label_cont = label_cont;
    80035ca2:	577d                	li	a4,-1
    80035ca4:	02075693          	srli	a3,a4,0x20
quickjs-nuttx/quickjs.c:25805
    be->label_name = label_name;
    80035ca8:	cca6                	sw	s1,88(sp)
quickjs-nuttx/quickjs.c:25806
    be->label_break = label_break;
    80035caa:	ceaa                	sw	a0,92(sp)
quickjs-nuttx/quickjs.c:25807
    be->label_cont = label_cont;
    80035cac:	f0b6                	sd	a3,96(sp)
quickjs-nuttx/quickjs.c:25809
    be->label_finally = -1;
    80035cae:	d4ba                	sw	a4,104(sp)
quickjs-nuttx/quickjs.c:25810
    be->scope_level = fd->scope_level;
    80035cb0:	0e07a783          	lw	a5,224(a5)
quickjs-nuttx/quickjs.c:25811
    be->has_iterator = FALSE;
    80035cb4:	d882                	sw	zero,112(sp)
quickjs-nuttx/quickjs.c:25810
    be->scope_level = fd->scope_level;
    80035cb6:	d6be                	sw	a5,108(sp)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26414
            if (!(s->cur_func->js_mode & JS_MODE_STRICT) &&
    80035cb8:	743c                	ld	a5,104(s0)
    80035cba:	0867c783          	lbu	a5,134(a5)
    80035cbe:	8b85                	andi	a5,a5,1
    80035cc0:	e791                	bnez	a5,80035ccc <js_parse_statement_or_decl+0xb6>
quickjs-nuttx/quickjs.c:26415 (discriminator 1)
                (decl_mask & DECL_MASK_FUNC_WITH_LABEL)) {
    80035cc2:	00297993          	andi	s3,s2,2
quickjs-nuttx/quickjs.c:26414 (discriminator 1)
            if (!(s->cur_func->js_mode & JS_MODE_STRICT) &&
    80035cc6:	00098363          	beqz	s3,80035ccc <js_parse_statement_or_decl+0xb6>
quickjs-nuttx/quickjs.c:26416
                mask = DECL_MASK_FUNC | DECL_MASK_FUNC_WITH_LABEL;
    80035cca:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:26420
            if (js_parse_statement_or_decl(s, mask))
    80035ccc:	85ce                	mv	a1,s3
    80035cce:	8522                	mv	a0,s0
    80035cd0:	f47ff0ef          	jal	ra,80035c16 <js_parse_statement_or_decl>
quickjs-nuttx/quickjs.c:26422
            emit_label(s, label_break);
    80035cd4:	85d2                	mv	a1,s4
quickjs-nuttx/quickjs.c:26420
            if (js_parse_statement_or_decl(s, mask))
    80035cd6:	24050d63          	beqz	a0,80035f30 <js_parse_statement_or_decl+0x31a>
quickjs-nuttx/quickjs.c:27122
    JS_FreeAtom(ctx, label_name);
    80035cda:	85a6                	mv	a1,s1
    80035cdc:	855e                	mv	a0,s7
    80035cde:	c6ad50ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:27123
    return -1;
    80035ce2:	57fd                	li	a5,-1
    80035ce4:	1b60106f          	j	80036e9a <js_parse_statement_or_decl+0x1284>
quickjs-nuttx/quickjs.c:26394
            if (be->label_name == label_name) {
    80035ce8:	4798                	lw	a4,8(a5)
    80035cea:	00971a63          	bne	a4,s1,80035cfe <js_parse_statement_or_decl+0xe8>
quickjs-nuttx/quickjs.c:26395
                js_parse_error(s, "duplicate label name");
    80035cee:	00037597          	auipc	a1,0x37
    80035cf2:	c4258593          	addi	a1,a1,-958 # 8006c930 <qjsc_repl+0x7380>
quickjs-nuttx/quickjs.c:27081
            js_parse_error(s, "class declarations can't appear in single-statement context");
    80035cf6:	8522                	mv	a0,s0
    80035cf8:	f7bf70ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:27082
            goto fail;
    80035cfc:	bff9                	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26393 (discriminator 2)
        for (be = s->cur_func->top_break; be; be = be->prev) {
    80035cfe:	639c                	ld	a5,0(a5)
    80035d00:	b7a5                	j	80035c68 <js_parse_statement_or_decl+0x52>
quickjs-nuttx/quickjs.c:26387
    label_name = JS_ATOM_NULL;
    80035d02:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:26428
    switch(tok = s->token.val) {
    80035d04:	01842983          	lw	s3,24(s0)
    80035d08:	fd400793          	li	a5,-44
    80035d0c:	06f9d763          	bge	s3,a5,80035d7a <js_parse_statement_or_decl+0x164>
    80035d10:	fb000793          	li	a5,-80
    80035d14:	02f9df63          	bge	s3,a5,80035d52 <js_parse_statement_or_decl+0x13c>
    80035d18:	f8300793          	li	a5,-125
    80035d1c:	00f99463          	bne	s3,a5,80035d24 <js_parse_statement_or_decl+0x10e>
    80035d20:	0ca0106f          	j	80036dea <js_parse_statement_or_decl+0x11d4>
quickjs-nuttx/quickjs.c:27104
        if (js_parse_expr(s))
    80035d24:	8522                	mv	a0,s0
    80035d26:	ff7fe0ef          	jal	ra,80034d1c <js_parse_expr>
    80035d2a:	f945                	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:27106
        if (s->cur_func->eval_ret_idx >= 0) {
    80035d2c:	743c                	ld	a5,104(s0)
    80035d2e:	0c87a783          	lw	a5,200(a5)
    80035d32:	0007d463          	bgez	a5,80035d3a <js_parse_statement_or_decl+0x124>
    80035d36:	1a20106f          	j	80036ed8 <js_parse_statement_or_decl+0x12c2>
quickjs-nuttx/quickjs.c:27109
            emit_op(s, OP_put_loc);
    80035d3a:	8522                	mv	a0,s0
    80035d3c:	05900593          	li	a1,89
    80035d40:	bb6d30ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:27110
            emit_u16(s, s->cur_func->eval_ret_idx);
    80035d44:	743c                	ld	a5,104(s0)
    80035d46:	8522                	mv	a0,s0
    80035d48:	0c87d583          	lhu	a1,200(a5)
    80035d4c:	a78d30ef          	jal	ra,80008fc4 <emit_u16>
    80035d50:	a871                	j	80035dec <js_parse_statement_or_decl+0x1d6>
    80035d52:	0509879b          	addiw	a5,s3,80
    80035d56:	0007869b          	sext.w	a3,a5
    80035d5a:	02300713          	li	a4,35
    80035d5e:	fcd763e3          	bltu	a4,a3,80035d24 <js_parse_statement_or_decl+0x10e>
    80035d62:	02079713          	slli	a4,a5,0x20
    80035d66:	01e75793          	srli	a5,a4,0x1e
    80035d6a:	00037717          	auipc	a4,0x37
    80035d6e:	f2670713          	addi	a4,a4,-218 # 8006cc90 <qjsc_repl+0x76e0>
    80035d72:	97ba                	add	a5,a5,a4
    80035d74:	439c                	lw	a5,0(a5)
    80035d76:	97ba                	add	a5,a5,a4
    80035d78:	8782                	jr	a5
quickjs-nuttx/quickjs.c:26428
    switch(tok = s->token.val) {
    80035d7a:	03b00793          	li	a5,59
    80035d7e:	00f99463          	bne	s3,a5,80035d86 <js_parse_statement_or_decl+0x170>
    80035d82:	79d0006f          	j	80036d1e <js_parse_statement_or_decl+0x1108>
    80035d86:	07b00793          	li	a5,123
    80035d8a:	f8f99de3          	bne	s3,a5,80035d24 <js_parse_statement_or_decl+0x10e>
quickjs-nuttx/quickjs.c:26430
        if (js_parse_block(s))
    80035d8e:	8522                	mv	a0,s0
    80035d90:	786010ef          	jal	ra,80037516 <js_parse_block>
quickjs-nuttx/quickjs.c:27114
        if (js_parse_expect_semi(s))
    80035d94:	1a050763          	beqz	a0,80035f42 <js_parse_statement_or_decl+0x32c>
    80035d98:	b789                	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26434
        if (s->cur_func->is_eval) {
    80035d9a:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:26435
            js_parse_error(s, "return not in a function");
    80035d9c:	00037597          	auipc	a1,0x37
    80035da0:	bac58593          	addi	a1,a1,-1108 # 8006c948 <qjsc_repl+0x7398>
quickjs-nuttx/quickjs.c:26434
        if (s->cur_func->is_eval) {
    80035da4:	5f98                	lw	a4,56(a5)
    80035da6:	fb21                	bnez	a4,80035cf6 <js_parse_statement_or_decl+0xe0>
quickjs-nuttx/quickjs.c:26438
        if (s->cur_func->func_type == JS_PARSE_FUNC_CLASS_STATIC_INIT) {
    80035da8:	0857c703          	lbu	a4,133(a5)
    80035dac:	479d                	li	a5,7
quickjs-nuttx/quickjs.c:26439
            js_parse_error(s, "return in a static initializer block");
    80035dae:	00037597          	auipc	a1,0x37
    80035db2:	bba58593          	addi	a1,a1,-1094 # 8006c968 <qjsc_repl+0x73b8>
quickjs-nuttx/quickjs.c:26438
        if (s->cur_func->func_type == JS_PARSE_FUNC_CLASS_STATIC_INIT) {
    80035db6:	f4f700e3          	beq	a4,a5,80035cf6 <js_parse_statement_or_decl+0xe0>
quickjs-nuttx/quickjs.c:26442
        if (next_token(s))
    80035dba:	8522                	mv	a0,s0
    80035dbc:	fcaf80ef          	jal	ra,8002e586 <next_token>
    80035dc0:	f0051de3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26444
        if (s->token.val != ';' && s->token.val != '}' && !s->got_lf) {
    80035dc4:	4c1c                	lw	a5,24(s0)
    80035dc6:	03b00713          	li	a4,59
    80035dca:	02e78563          	beq	a5,a4,80035df4 <js_parse_statement_or_decl+0x1de>
quickjs-nuttx/quickjs.c:26444 (discriminator 1)
    80035dce:	07d00713          	li	a4,125
    80035dd2:	02e78163          	beq	a5,a4,80035df4 <js_parse_statement_or_decl+0x1de>
quickjs-nuttx/quickjs.c:26444 (discriminator 2)
    80035dd6:	443c                	lw	a5,72(s0)
    80035dd8:	ef91                	bnez	a5,80035df4 <js_parse_statement_or_decl+0x1de>
quickjs-nuttx/quickjs.c:26445
            if (js_parse_expr(s))
    80035dda:	8522                	mv	a0,s0
    80035ddc:	f41fe0ef          	jal	ra,80034d1c <js_parse_expr>
quickjs-nuttx/quickjs.c:26447
            emit_return(s, TRUE);
    80035de0:	4585                	li	a1,1
quickjs-nuttx/quickjs.c:26445
            if (js_parse_expr(s))
    80035de2:	ee051ce3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26449
            emit_return(s, FALSE);
    80035de6:	8522                	mv	a0,s0
    80035de8:	a72e70ef          	jal	ra,8001d05a <emit_return>
quickjs-nuttx/quickjs.c:27114
        if (js_parse_expect_semi(s))
    80035dec:	8522                	mv	a0,s0
    80035dee:	dd4f90ef          	jal	ra,8002f3c2 <js_parse_expect_semi>
    80035df2:	b74d                	j	80035d94 <js_parse_statement_or_decl+0x17e>
quickjs-nuttx/quickjs.c:26449
            emit_return(s, FALSE);
    80035df4:	4581                	li	a1,0
    80035df6:	bfc5                	j	80035de6 <js_parse_statement_or_decl+0x1d0>
quickjs-nuttx/quickjs.c:26455
        if (next_token(s))
    80035df8:	8522                	mv	a0,s0
    80035dfa:	f8cf80ef          	jal	ra,8002e586 <next_token>
    80035dfe:	ec051ee3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26457
        if (s->got_lf) {
    80035e02:	443c                	lw	a5,72(s0)
quickjs-nuttx/quickjs.c:26458
            js_parse_error(s, "line terminator not allowed after throw");
    80035e04:	00037597          	auipc	a1,0x37
    80035e08:	b8c58593          	addi	a1,a1,-1140 # 8006c990 <qjsc_repl+0x73e0>
quickjs-nuttx/quickjs.c:26457
        if (s->got_lf) {
    80035e0c:	ee0795e3          	bnez	a5,80035cf6 <js_parse_statement_or_decl+0xe0>
quickjs-nuttx/quickjs.c:26461
        if (js_parse_expr(s))
    80035e10:	8522                	mv	a0,s0
    80035e12:	f0bfe0ef          	jal	ra,80034d1c <js_parse_expr>
quickjs-nuttx/quickjs.c:26463
        emit_op(s, OP_throw);
    80035e16:	02f00593          	li	a1,47
quickjs-nuttx/quickjs.c:26461
        if (js_parse_expr(s))
    80035e1a:	ec0510e3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:27112
            emit_op(s, OP_drop); /* drop the result */
    80035e1e:	8522                	mv	a0,s0
    80035e20:	ad6d30ef          	jal	ra,800090f6 <emit_op>
    80035e24:	b7e1                	j	80035dec <js_parse_statement_or_decl+0x1d6>
quickjs-nuttx/quickjs.c:26486
            if (next_token(s))
    80035e26:	8522                	mv	a0,s0
    80035e28:	f5ef80ef          	jal	ra,8002e586 <next_token>
    80035e2c:	ea0517e3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26489
            push_scope(s);
    80035e30:	8522                	mv	a0,s0
    80035e32:	997e70ef          	jal	ra,8001d7c8 <push_scope>
quickjs-nuttx/quickjs.c:26490
            set_eval_ret_undefined(s);
    80035e36:	8522                	mv	a0,s0
    80035e38:	eebd30ef          	jal	ra,80009d22 <set_eval_ret_undefined>
quickjs-nuttx/quickjs.c:26491
            if (js_parse_expr_paren(s))
    80035e3c:	8522                	mv	a0,s0
    80035e3e:	960ff0ef          	jal	ra,80034f9e <js_parse_expr_paren>
    80035e42:	e8051ce3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26493
            label1 = emit_goto(s, OP_if_false, -1);
    80035e46:	06a00593          	li	a1,106
    80035e4a:	567d                	li	a2,-1
    80035e4c:	8522                	mv	a0,s0
    80035e4e:	926e70ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:26494
            if (s->cur_func->js_mode & JS_MODE_STRICT)
    80035e52:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:26493
            label1 = emit_goto(s, OP_if_false, -1);
    80035e54:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:26499
            if (js_parse_statement_or_decl(s, mask))
    80035e56:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:26494
            if (s->cur_func->js_mode & JS_MODE_STRICT)
    80035e58:	0867c903          	lbu	s2,134(a5)
    80035e5c:	00197913          	andi	s2,s2,1
    80035e60:	00194913          	xori	s2,s2,1
quickjs-nuttx/quickjs.c:26499
            if (js_parse_statement_or_decl(s, mask))
    80035e64:	85ca                	mv	a1,s2
    80035e66:	db1ff0ef          	jal	ra,80035c16 <js_parse_statement_or_decl>
    80035e6a:	e60518e3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26502
            if (s->token.val == TOK_ELSE) {
    80035e6e:	4c18                	lw	a4,24(s0)
    80035e70:	fb100793          	li	a5,-79
    80035e74:	02f71963          	bne	a4,a5,80035ea6 <js_parse_statement_or_decl+0x290>
quickjs-nuttx/quickjs.c:26503
                label2 = emit_goto(s, OP_goto, -1);
    80035e78:	567d                	li	a2,-1
    80035e7a:	06c00593          	li	a1,108
    80035e7e:	8522                	mv	a0,s0
    80035e80:	8f4e70ef          	jal	ra,8001cf74 <emit_goto>
    80035e84:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:26504
                if (next_token(s))
    80035e86:	8522                	mv	a0,s0
    80035e88:	efef80ef          	jal	ra,8002e586 <next_token>
    80035e8c:	e40517e3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26507
                emit_label(s, label1);
    80035e90:	85ce                	mv	a1,s3
    80035e92:	8522                	mv	a0,s0
    80035e94:	c00d30ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:26508
                if (js_parse_statement_or_decl(s, mask))
    80035e98:	85ca                	mv	a1,s2
    80035e9a:	8522                	mv	a0,s0
    80035e9c:	d7bff0ef          	jal	ra,80035c16 <js_parse_statement_or_decl>
    80035ea0:	e2051de3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26511
                label1 = label2;
    80035ea4:	89d2                	mv	s3,s4
quickjs-nuttx/quickjs.c:26513
            emit_label(s, label1);
    80035ea6:	85ce                	mv	a1,s3
    80035ea8:	8522                	mv	a0,s0
    80035eaa:	bead30ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:27038
            pop_scope(s);
    80035eae:	8522                	mv	a0,s0
    80035eb0:	b42d30ef          	jal	ra,800091f2 <pop_scope>
quickjs-nuttx/quickjs.c:27040
        break;
    80035eb4:	a079                	j	80035f42 <js_parse_statement_or_decl+0x32c>
quickjs-nuttx/quickjs.c:26522
            label_cont = new_label(s);
    80035eb6:	8522                	mv	a0,s0
    80035eb8:	8b4e70ef          	jal	ra,8001cf6c <new_label>
    80035ebc:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:26523
            label_break = new_label(s);
    80035ebe:	8522                	mv	a0,s0
    80035ec0:	8ace70ef          	jal	ra,8001cf6c <new_label>
quickjs-nuttx/quickjs.c:26525
            push_break_entry(s->cur_func, &break_entry,
    80035ec4:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:26523
            label_break = new_label(s);
    80035ec6:	892a                	mv	s2,a0
push_break_entry():
quickjs-nuttx/quickjs.c:25803
    be->prev = fd->top_break;
    80035ec8:	1807b703          	ld	a4,384(a5)
    80035ecc:	e8ba                	sd	a4,80(sp)
quickjs-nuttx/quickjs.c:25804
    fd->top_break = be;
    80035ece:	0898                	addi	a4,sp,80
    80035ed0:	18e7b023          	sd	a4,384(a5)
quickjs-nuttx/quickjs.c:25809
    be->label_finally = -1;
    80035ed4:	577d                	li	a4,-1
quickjs-nuttx/quickjs.c:25806
    be->label_break = label_break;
    80035ed6:	ceaa                	sw	a0,92(sp)
quickjs-nuttx/quickjs.c:25805
    be->label_name = label_name;
    80035ed8:	cca6                	sw	s1,88(sp)
quickjs-nuttx/quickjs.c:25807
    be->label_cont = label_cont;
    80035eda:	d0ce                	sw	s3,96(sp)
quickjs-nuttx/quickjs.c:25808
    be->drop_count = drop_count;
    80035edc:	d282                	sw	zero,100(sp)
quickjs-nuttx/quickjs.c:25809
    be->label_finally = -1;
    80035ede:	d4ba                	sw	a4,104(sp)
quickjs-nuttx/quickjs.c:25810
    be->scope_level = fd->scope_level;
    80035ee0:	0e07a783          	lw	a5,224(a5)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26528
            if (next_token(s))
    80035ee4:	8522                	mv	a0,s0
push_break_entry():
quickjs-nuttx/quickjs.c:25811
    be->has_iterator = FALSE;
    80035ee6:	d882                	sw	zero,112(sp)
quickjs-nuttx/quickjs.c:25810
    be->scope_level = fd->scope_level;
    80035ee8:	d6be                	sw	a5,108(sp)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26528
            if (next_token(s))
    80035eea:	e9cf80ef          	jal	ra,8002e586 <next_token>
    80035eee:	de0516e3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26531
            set_eval_ret_undefined(s);
    80035ef2:	8522                	mv	a0,s0
    80035ef4:	e2fd30ef          	jal	ra,80009d22 <set_eval_ret_undefined>
quickjs-nuttx/quickjs.c:26533
            emit_label(s, label_cont);
    80035ef8:	85ce                	mv	a1,s3
    80035efa:	8522                	mv	a0,s0
    80035efc:	b98d30ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:26534
            if (js_parse_expr_paren(s))
    80035f00:	8522                	mv	a0,s0
    80035f02:	89cff0ef          	jal	ra,80034f9e <js_parse_expr_paren>
    80035f06:	dc051ae3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26536
            emit_goto(s, OP_if_false, label_break);
    80035f0a:	06a00593          	li	a1,106
    80035f0e:	864a                	mv	a2,s2
    80035f10:	8522                	mv	a0,s0
    80035f12:	862e70ef          	jal	ra,8001cf74 <emit_goto>
js_parse_statement():
quickjs-nuttx/quickjs.c:25970
    return js_parse_statement_or_decl(s, 0);
    80035f16:	4581                	li	a1,0
    80035f18:	8522                	mv	a0,s0
    80035f1a:	cfdff0ef          	jal	ra,80035c16 <js_parse_statement_or_decl>
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26538
            if (js_parse_statement(s))
    80035f1e:	da051ee3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26540
            emit_goto(s, OP_goto, label_cont);
    80035f22:	864e                	mv	a2,s3
    80035f24:	06c00593          	li	a1,108
quickjs-nuttx/quickjs.c:26579
            emit_goto(s, OP_if_true, label1);
    80035f28:	8522                	mv	a0,s0
    80035f2a:	84ae70ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:26581
            emit_label(s, label_break);
    80035f2e:	85ca                	mv	a1,s2
    80035f30:	8522                	mv	a0,s0
    80035f32:	b62d30ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:26583
            pop_break_entry(s->cur_func);
    80035f36:	743c                	ld	a5,104(s0)
pop_break_entry():
quickjs-nuttx/quickjs.c:25818
    fd->top_break = be->prev;
    80035f38:	1807b703          	ld	a4,384(a5)
    80035f3c:	6318                	ld	a4,0(a4)
    80035f3e:	18e7b023          	sd	a4,384(a5)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:27119
    JS_FreeAtom(ctx, label_name);
    80035f42:	85a6                	mv	a1,s1
    80035f44:	855e                	mv	a0,s7
    80035f46:	a02d50ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:27120
    return 0;
    80035f4a:	4781                	li	a5,0
    80035f4c:	74f0006f          	j	80036e9a <js_parse_statement_or_decl+0x1284>
quickjs-nuttx/quickjs.c:26552
            label_cont = new_label(s);
    80035f50:	8522                	mv	a0,s0
    80035f52:	81ae70ef          	jal	ra,8001cf6c <new_label>
    80035f56:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:26553
            label_break = new_label(s);
    80035f58:	8522                	mv	a0,s0
    80035f5a:	812e70ef          	jal	ra,8001cf6c <new_label>
    80035f5e:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:26554
            label1 = new_label(s);
    80035f60:	8522                	mv	a0,s0
    80035f62:	80ae70ef          	jal	ra,8001cf6c <new_label>
quickjs-nuttx/quickjs.c:26556
            push_break_entry(s->cur_func, &break_entry,
    80035f66:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:26554
            label1 = new_label(s);
    80035f68:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:26559
            if (next_token(s))
    80035f6a:	8522                	mv	a0,s0
push_break_entry():
quickjs-nuttx/quickjs.c:25803
    be->prev = fd->top_break;
    80035f6c:	1807b703          	ld	a4,384(a5)
    80035f70:	e8ba                	sd	a4,80(sp)
quickjs-nuttx/quickjs.c:25804
    fd->top_break = be;
    80035f72:	0898                	addi	a4,sp,80
    80035f74:	18e7b023          	sd	a4,384(a5)
quickjs-nuttx/quickjs.c:25809
    be->label_finally = -1;
    80035f78:	577d                	li	a4,-1
quickjs-nuttx/quickjs.c:25805
    be->label_name = label_name;
    80035f7a:	cca6                	sw	s1,88(sp)
quickjs-nuttx/quickjs.c:25806
    be->label_break = label_break;
    80035f7c:	ceca                	sw	s2,92(sp)
quickjs-nuttx/quickjs.c:25807
    be->label_cont = label_cont;
    80035f7e:	d0d2                	sw	s4,96(sp)
quickjs-nuttx/quickjs.c:25808
    be->drop_count = drop_count;
    80035f80:	d282                	sw	zero,100(sp)
quickjs-nuttx/quickjs.c:25809
    be->label_finally = -1;
    80035f82:	d4ba                	sw	a4,104(sp)
quickjs-nuttx/quickjs.c:25810
    be->scope_level = fd->scope_level;
    80035f84:	0e07a783          	lw	a5,224(a5)
quickjs-nuttx/quickjs.c:25811
    be->has_iterator = FALSE;
    80035f88:	d882                	sw	zero,112(sp)
quickjs-nuttx/quickjs.c:25810
    be->scope_level = fd->scope_level;
    80035f8a:	d6be                	sw	a5,108(sp)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26559
            if (next_token(s))
    80035f8c:	dfaf80ef          	jal	ra,8002e586 <next_token>
    80035f90:	d40515e3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26562
            emit_label(s, label1);
    80035f94:	85ce                	mv	a1,s3
    80035f96:	8522                	mv	a0,s0
    80035f98:	afcd30ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:26564
            set_eval_ret_undefined(s);
    80035f9c:	8522                	mv	a0,s0
    80035f9e:	d85d30ef          	jal	ra,80009d22 <set_eval_ret_undefined>
js_parse_statement():
quickjs-nuttx/quickjs.c:25970
    return js_parse_statement_or_decl(s, 0);
    80035fa2:	4581                	li	a1,0
    80035fa4:	8522                	mv	a0,s0
    80035fa6:	c71ff0ef          	jal	ra,80035c16 <js_parse_statement_or_decl>
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26566
            if (js_parse_statement(s))
    80035faa:	d20518e3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26569
            emit_label(s, label_cont);
    80035fae:	85d2                	mv	a1,s4
    80035fb0:	8522                	mv	a0,s0
    80035fb2:	ae2d30ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:26570
            if (js_parse_expect(s, TOK_WHILE))
    80035fb6:	fbc00593          	li	a1,-68
    80035fba:	8522                	mv	a0,s0
    80035fbc:	ff7f80ef          	jal	ra,8002efb2 <js_parse_expect>
    80035fc0:	d0051de3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26572
            if (js_parse_expr_paren(s))
    80035fc4:	8522                	mv	a0,s0
    80035fc6:	fd9fe0ef          	jal	ra,80034f9e <js_parse_expr_paren>
    80035fca:	d00518e3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26575
            if (s->token.val == ';') {
    80035fce:	4c18                	lw	a4,24(s0)
    80035fd0:	03b00793          	li	a5,59
    80035fd4:	00f70663          	beq	a4,a5,80035fe0 <js_parse_statement_or_decl+0x3ca>
quickjs-nuttx/quickjs.c:26579
            emit_goto(s, OP_if_true, label1);
    80035fd8:	864e                	mv	a2,s3
    80035fda:	06b00593          	li	a1,107
    80035fde:	b7a9                	j	80035f28 <js_parse_statement_or_decl+0x312>
quickjs-nuttx/quickjs.c:26576
                if (next_token(s))
    80035fe0:	8522                	mv	a0,s0
    80035fe2:	da4f80ef          	jal	ra,8002e586 <next_token>
    80035fe6:	d96d                	beqz	a0,80035fd8 <js_parse_statement_or_decl+0x3c2>
    80035fe8:	b9cd                	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26594
            if (next_token(s))
    80035fea:	8522                	mv	a0,s0
    80035fec:	d9af80ef          	jal	ra,8002e586 <next_token>
    80035ff0:	89aa                	mv	s3,a0
    80035ff2:	ce0514e3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26597
            set_eval_ret_undefined(s);
    80035ff6:	8522                	mv	a0,s0
    80035ff8:	d2bd30ef          	jal	ra,80009d22 <set_eval_ret_undefined>
quickjs-nuttx/quickjs.c:26600
            if (s->token.val == '(') {
    80035ffc:	4c1c                	lw	a5,24(s0)
quickjs-nuttx/quickjs.c:26598
            bits = 0;
    80035ffe:	dc02                	sw	zero,56(sp)
quickjs-nuttx/quickjs.c:26600
            if (s->token.val == '(') {
