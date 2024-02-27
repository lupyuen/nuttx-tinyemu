    80008000:	02e69263          	bne	a3,a4,80008024 <can_opt_put_global_ref_value+0x3a>
quickjs-nuttx/quickjs.c:29970 (discriminator 1)
    80008004:	46d9                	li	a3,22
quickjs-nuttx/quickjs.c:29969 (discriminator 1)
    int opcode = bc_buf[pos];
    80008006:	0007871b          	sext.w	a4,a5
quickjs-nuttx/quickjs.c:29970 (discriminator 1)
    return (bc_buf[pos + 1] == OP_put_ref_value &&
    8000800a:	4505                	li	a0,1
    8000800c:	00d78c63          	beq	a5,a3,80008024 <can_opt_put_global_ref_value+0x3a>
quickjs-nuttx/quickjs.c:29971
            (opcode == OP_insert3 ||
    80008010:	0fb7f793          	andi	a5,a5,251
    80008014:	46e5                	li	a3,25
    80008016:	00d78763          	beq	a5,a3,80008024 <can_opt_put_global_ref_value+0x3a>
quickjs-nuttx/quickjs.c:29972
             opcode == OP_perm4 ||
    8000801a:	f4b70513          	addi	a0,a4,-181
quickjs-nuttx/quickjs.c:29970
    return (bc_buf[pos + 1] == OP_put_ref_value &&
    8000801e:	00153513          	seqz	a0,a0
    80008022:	8082                	ret
quickjs-nuttx/quickjs.c:29975 (discriminator 5)
             opcode == OP_nop ||
             opcode == OP_rot3l));
}
    80008024:	8082                	ret

0000000080008026 <add_pc2line_info>:
add_pc2line_info():
quickjs-nuttx/quickjs.c:31751
}

/* the pc2line table gives a line number for each PC value */
static void add_pc2line_info(JSFunctionDef *s, uint32_t pc, int line_num)
{
    if (s->line_number_slots != NULL
    80008026:	1b853783          	ld	a5,440(a0)
    8000802a:	c3a1                	beqz	a5,8000806a <add_pc2line_info+0x44>
quickjs-nuttx/quickjs.c:31752
    &&  s->line_number_count < s->line_number_size
    8000802c:	1c452703          	lw	a4,452(a0)
    80008030:	1c052683          	lw	a3,448(a0)
    80008034:	02d75b63          	bge	a4,a3,8000806a <add_pc2line_info+0x44>
quickjs-nuttx/quickjs.c:31753
    &&  pc >= s->line_number_last_pc
    80008038:	1cc52683          	lw	a3,460(a0)
    8000803c:	02d5e763          	bltu	a1,a3,8000806a <add_pc2line_info+0x44>
quickjs-nuttx/quickjs.c:31754
    &&  line_num != s->line_number_last) {
    80008040:	1c852683          	lw	a3,456(a0)
    80008044:	02c68363          	beq	a3,a2,8000806a <add_pc2line_info+0x44>
quickjs-nuttx/quickjs.c:31755
        s->line_number_slots[s->line_number_count].pc = pc;
    80008048:	070e                	slli	a4,a4,0x3
    8000804a:	97ba                	add	a5,a5,a4
    8000804c:	c38c                	sw	a1,0(a5)
quickjs-nuttx/quickjs.c:31756
        s->line_number_slots[s->line_number_count].line_num = line_num;
    8000804e:	1c452703          	lw	a4,452(a0)
    80008052:	1b853783          	ld	a5,440(a0)
quickjs-nuttx/quickjs.c:31757
        s->line_number_count++;
    80008056:	18050513          	addi	a0,a0,384
quickjs-nuttx/quickjs.c:31756
        s->line_number_slots[s->line_number_count].line_num = line_num;
    8000805a:	070e                	slli	a4,a4,0x3
    8000805c:	97ba                	add	a5,a5,a4
    8000805e:	c3d0                	sw	a2,4(a5)
quickjs-nuttx/quickjs.c:31757
        s->line_number_count++;
    80008060:	417c                	lw	a5,68(a0)
quickjs-nuttx/quickjs.c:31758
        s->line_number_last_pc = pc;
    80008062:	c56c                	sw	a1,76(a0)
quickjs-nuttx/quickjs.c:31759
        s->line_number_last = line_num;
    80008064:	c530                	sw	a2,72(a0)
quickjs-nuttx/quickjs.c:31757
        s->line_number_count++;
    80008066:	2785                	addiw	a5,a5,1
    80008068:	c17c                	sw	a5,68(a0)
quickjs-nuttx/quickjs.c:31761
    }
}
    8000806a:	8082                	ret

000000008000806c <code_has_label>:
code_has_label():
quickjs-nuttx/quickjs.c:31815
    ls->first_reloc = re;
    return re;
}

static BOOL code_has_label(CodeContext *s, int pos, int label)
{
    8000806c:	882a                	mv	a6,a0
quickjs-nuttx/quickjs.c:31816
    while (pos < s->bc_len) {
    8000806e:	4508                	lw	a0,8(a0)
quickjs-nuttx/quickjs.c:31818
        int op = s->bc_buf[pos];
        if (op == OP_line_num) {
    80008070:	0c800893          	li	a7,200
quickjs-nuttx/quickjs.c:31822
            pos += 5;
            continue;
        }
        if (op == OP_label) {
    80008074:	0b800313          	li	t1,184
    80008078:	0005871b          	sext.w	a4,a1
quickjs-nuttx/quickjs.c:31816
    while (pos < s->bc_len) {
    8000807c:	00a5c463          	blt	a1,a0,80008084 <code_has_label+0x18>
quickjs-nuttx/quickjs.c:31836
            if (lab == label)
                return TRUE;
        }
        break;
    }
    return FALSE;
    80008080:	4501                	li	a0,0
    80008082:	8082                	ret
quickjs-nuttx/quickjs.c:31817
        int op = s->bc_buf[pos];
    80008084:	00083783          	ld	a5,0(a6)
    80008088:	97ba                	add	a5,a5,a4
    8000808a:	0007c703          	lbu	a4,0(a5)
quickjs-nuttx/quickjs.c:31818
        if (op == OP_line_num) {
    8000808e:	05170f63          	beq	a4,a7,800080ec <code_has_label+0x80>
quickjs-nuttx/quickjs.c:31822
        if (op == OP_label) {
    80008092:	02671563          	bne	a4,t1,800080bc <code_has_label+0x50>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    80008096:	0027c703          	lbu	a4,2(a5)
    8000809a:	0017c683          	lbu	a3,1(a5)
    8000809e:	0722                	slli	a4,a4,0x8
    800080a0:	8ed9                	or	a3,a3,a4
    800080a2:	0037c703          	lbu	a4,3(a5)
    800080a6:	0047c783          	lbu	a5,4(a5)
    800080aa:	0742                	slli	a4,a4,0x10
    800080ac:	8f55                	or	a4,a4,a3
    800080ae:	07e2                	slli	a5,a5,0x18
    800080b0:	8fd9                	or	a5,a5,a4
code_has_label():
quickjs-nuttx/quickjs.c:31824
            if (lab == label)
    800080b2:	2781                	sext.w	a5,a5
    800080b4:	02f61c63          	bne	a2,a5,800080ec <code_has_label+0x80>
quickjs-nuttx/quickjs.c:31825
                return TRUE;
    800080b8:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:31837
}
    800080ba:	8082                	ret
quickjs-nuttx/quickjs.c:31829
        if (op == OP_goto) {
    800080bc:	06c00693          	li	a3,108
quickjs-nuttx/quickjs.c:31836
    return FALSE;
    800080c0:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:31829
        if (op == OP_goto) {
    800080c2:	fed71ce3          	bne	a4,a3,800080ba <code_has_label+0x4e>
get_u32():
quickjs-nuttx/cutils.h:170
    800080c6:	0027c703          	lbu	a4,2(a5)
    800080ca:	0017c503          	lbu	a0,1(a5)
    800080ce:	0722                	slli	a4,a4,0x8
    800080d0:	8d59                	or	a0,a0,a4
    800080d2:	0037c703          	lbu	a4,3(a5)
    800080d6:	0742                	slli	a4,a4,0x10
    800080d8:	8f49                	or	a4,a4,a0
    800080da:	0047c503          	lbu	a0,4(a5)
    800080de:	0562                	slli	a0,a0,0x18
    800080e0:	8d59                	or	a0,a0,a4
code_has_label():
quickjs-nuttx/quickjs.c:31831
            if (lab == label)
    800080e2:	2501                	sext.w	a0,a0
    800080e4:	8d11                	sub	a0,a0,a2
quickjs-nuttx/quickjs.c:31825
                return TRUE;
    800080e6:	00153513          	seqz	a0,a0
    800080ea:	8082                	ret
    800080ec:	2595                	addiw	a1,a1,5
    800080ee:	b769                	j	80008078 <code_has_label+0xc>

00000000800080f0 <bc_set_flags>:
bc_set_flags():
quickjs-nuttx/quickjs.c:34668
    dbuf_put_sleb128(&s->dbuf, v);
}

static void bc_set_flags(uint32_t *pflags, int *pidx, uint32_t val, int n)
{
    *pflags = *pflags | (val << *pidx);
    800080f0:	419c                	lw	a5,0(a1)
    800080f2:	00f6163b          	sllw	a2,a2,a5
    800080f6:	411c                	lw	a5,0(a0)
    800080f8:	8e5d                	or	a2,a2,a5
    800080fa:	c110                	sw	a2,0(a0)
quickjs-nuttx/quickjs.c:34669
    *pidx += n;
    800080fc:	419c                	lw	a5,0(a1)
    800080fe:	9fb5                	addw	a5,a5,a3
    80008100:	c19c                	sw	a5,0(a1)
quickjs-nuttx/quickjs.c:34670
}
    80008102:	8082                	ret

0000000080008104 <js_function_proto>:
js_function_proto():
quickjs-nuttx/quickjs.c:38204

/* Function class */

static JSValue js_function_proto(JSContext *ctx, JSValueConst this_val,
                                 int argc, JSValueConst *argv)
{
    80008104:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:38206
    return JS_UNDEFINED;
}
    80008106:	4501                	li	a0,0
    80008108:	458d                	li	a1,3
    8000810a:	6105                	addi	sp,sp,32
    8000810c:	8082                	ret

000000008000810e <js_string_delete_property>:
js_string_delete_property():
quickjs-nuttx/quickjs.c:41202
    }
}

static int js_string_delete_property(JSContext *ctx,
                                     JSValueConst obj, JSAtom prop)
{
    8000810e:	1141                	addi	sp,sp,-16
    80008110:	e02e                	sd	a1,0(sp)
    80008112:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:41211
        idx = __JS_AtomToUInt32(prop);
        if (idx < js_string_obj_get_length(ctx, obj)) {
            return FALSE;
        }
    }
    return TRUE;
    80008114:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:41205
    if (__JS_AtomIsTaggedInt(prop)) {
    80008116:	0206d363          	bgez	a3,8000813c <js_string_delete_property+0x2e>
js_string_obj_get_length():
quickjs-nuttx/quickjs.c:7453
    if (JS_VALUE_GET_TAG(p->u.object_data) == JS_TAG_STRING) {
    8000811a:	5d98                	lw	a4,56(a1)
    8000811c:	57e5                	li	a5,-7
    8000811e:	00f71f63          	bne	a4,a5,8000813c <js_string_delete_property+0x2e>
quickjs-nuttx/quickjs.c:7455
        len = p1->len;
    80008122:	7998                	ld	a4,48(a1)
    80008124:	800007b7          	lui	a5,0x80000
    80008128:	fff7c793          	not	a5,a5
    8000812c:	4348                	lw	a0,4(a4)
js_string_delete_property():
quickjs-nuttx/quickjs.c:41207
        if (idx < js_string_obj_get_length(ctx, obj)) {
    8000812e:	8efd                	and	a3,a3,a5
    80008130:	8d7d                	and	a0,a0,a5
    80008132:	00a6b533          	sltu	a0,a3,a0
    80008136:	00154513          	xori	a0,a0,1
quickjs-nuttx/quickjs.c:41208
            return FALSE;
    8000813a:	2501                	sext.w	a0,a0
quickjs-nuttx/quickjs.c:41212
}
    8000813c:	0141                	addi	sp,sp,16
    8000813e:	8082                	ret

0000000080008140 <string_cmp>:
string_cmp():
quickjs-nuttx/quickjs.c:41500
    }
    return r;
}

static int string_cmp(JSString *p1, JSString *p2, int x1, int x2, int len)
{
    80008140:	715d                	addi	sp,sp,-80
    80008142:	fc26                	sd	s1,56(sp)
    80008144:	f84a                	sd	s2,48(sp)
    80008146:	f44e                	sd	s3,40(sp)
    80008148:	f052                	sd	s4,32(sp)
    8000814a:	ec56                	sd	s5,24(sp)
    8000814c:	e85a                	sd	s6,16(sp)
    8000814e:	e486                	sd	ra,72(sp)
    80008150:	e0a2                	sd	s0,64(sp)
    80008152:	e45e                	sd	s7,8(sp)
    80008154:	89aa                	mv	s3,a0
    80008156:	8a2e                	mv	s4,a1
    80008158:	8ab2                	mv	s5,a2
    8000815a:	8b36                	mv	s6,a3
    8000815c:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:41502
    int i, c1, c2;
    for (i = 0; i < len; i++) {
    8000815e:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:41502 (discriminator 1)
    80008160:	01249463          	bne	s1,s2,80008168 <string_cmp+0x28>
quickjs-nuttx/quickjs.c:41506
        if ((c1 = string_get(p1, x1 + i)) != (c2 = string_get(p2, x2 + i)))
            return c1 - c2;
    }
    return 0;
    80008164:	4501                	li	a0,0
    80008166:	a015                	j	8000818a <string_cmp+0x4a>
quickjs-nuttx/quickjs.c:41503
        if ((c1 = string_get(p1, x1 + i)) != (c2 = string_get(p2, x2 + i)))
    80008168:	009a85bb          	addw	a1,s5,s1
    8000816c:	854e                	mv	a0,s3
    8000816e:	af7ff0ef          	jal	ra,80007c64 <string_get>
    80008172:	00048b9b          	sext.w	s7,s1
    80008176:	842a                	mv	s0,a0
    80008178:	017b05bb          	addw	a1,s6,s7
    8000817c:	8552                	mv	a0,s4
    8000817e:	ae7ff0ef          	jal	ra,80007c64 <string_get>
    80008182:	00a40f63          	beq	s0,a0,800081a0 <string_cmp+0x60>
quickjs-nuttx/quickjs.c:41504
            return c1 - c2;
    80008186:	40a4053b          	subw	a0,s0,a0
quickjs-nuttx/quickjs.c:41507
}
    8000818a:	60a6                	ld	ra,72(sp)
    8000818c:	6406                	ld	s0,64(sp)
    8000818e:	74e2                	ld	s1,56(sp)
    80008190:	7942                	ld	s2,48(sp)
    80008192:	79a2                	ld	s3,40(sp)
    80008194:	7a02                	ld	s4,32(sp)
    80008196:	6ae2                	ld	s5,24(sp)
    80008198:	6b42                	ld	s6,16(sp)
    8000819a:	6ba2                	ld	s7,8(sp)
    8000819c:	6161                	addi	sp,sp,80
    8000819e:	8082                	ret
quickjs-nuttx/quickjs.c:41502 (discriminator 2)
    for (i = 0; i < len; i++) {
    800081a0:	2485                	addiw	s1,s1,1
    800081a2:	bf7d                	j	80008160 <string_cmp+0x20>

00000000800081a4 <string_indexof_char>:
string_indexof_char():
quickjs-nuttx/quickjs.c:41510

static int string_indexof_char(JSString *p, int c, int from)
{
    800081a4:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:41512
    /* assuming 0 <= from <= p->len */
    int i, len = p->len;
    800081a6:	43d4                	lw	a3,4(a5)
quickjs-nuttx/quickjs.c:41510
{
    800081a8:	8532                	mv	a0,a2
quickjs-nuttx/quickjs.c:41512
    int i, len = p->len;
    800081aa:	02169713          	slli	a4,a3,0x21
quickjs-nuttx/quickjs.c:41513
    if (p->is_wide_char) {
    800081ae:	2681                	sext.w	a3,a3
quickjs-nuttx/quickjs.c:41512
    int i, len = p->len;
    800081b0:	9305                	srli	a4,a4,0x21
quickjs-nuttx/quickjs.c:41513
    if (p->is_wide_char) {
    800081b2:	0206d063          	bgez	a3,800081d2 <string_indexof_char+0x2e>
    800081b6:	00161693          	slli	a3,a2,0x1
    800081ba:	97b6                	add	a5,a5,a3
quickjs-nuttx/quickjs.c:41514 (discriminator 1)
        for (i = from; i < len; i++) {
    800081bc:	00e54463          	blt	a0,a4,800081c4 <string_indexof_char+0x20>
quickjs-nuttx/quickjs.c:41526
                if (p->u.str8[i] == (uint8_t)c)
                    return i;
            }
        }
    }
    return -1;
    800081c0:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:41527
}
    800081c2:	8082                	ret
quickjs-nuttx/quickjs.c:41515
            if (p->u.str16[i] == c)
    800081c4:	0107d683          	lhu	a3,16(a5) # ffffffff80000010 <_ebss+0xfffffffeffefeeaa>
    800081c8:	0789                	addi	a5,a5,2
    800081ca:	feb68ce3          	beq	a3,a1,800081c2 <string_indexof_char+0x1e>
quickjs-nuttx/quickjs.c:41514 (discriminator 2)
        for (i = from; i < len; i++) {
    800081ce:	2505                	addiw	a0,a0,1
    800081d0:	b7f5                	j	800081bc <string_indexof_char+0x18>
quickjs-nuttx/quickjs.c:41519
        if ((c & ~0xff) == 0) {
    800081d2:	f005f693          	andi	a3,a1,-256
    800081d6:	f6ed                	bnez	a3,800081c0 <string_indexof_char+0x1c>
    800081d8:	97b2                	add	a5,a5,a2
quickjs-nuttx/quickjs.c:41521
                if (p->u.str8[i] == (uint8_t)c)
    800081da:	0ff5f593          	zext.b	a1,a1
quickjs-nuttx/quickjs.c:41520 (discriminator 1)
            for (i = from; i < len; i++) {
    800081de:	fee551e3          	bge	a0,a4,800081c0 <string_indexof_char+0x1c>
quickjs-nuttx/quickjs.c:41521
                if (p->u.str8[i] == (uint8_t)c)
    800081e2:	0107c683          	lbu	a3,16(a5)
    800081e6:	0785                	addi	a5,a5,1
    800081e8:	fcb68de3          	beq	a3,a1,800081c2 <string_indexof_char+0x1e>
quickjs-nuttx/quickjs.c:41520 (discriminator 2)
            for (i = from; i < len; i++) {
    800081ec:	2505                	addiw	a0,a0,1
    800081ee:	bfc5                	j	800081de <string_indexof_char+0x3a>

00000000800081f0 <string_indexof>:
string_indexof():
quickjs-nuttx/quickjs.c:41530

static int string_indexof(JSString *p1, JSString *p2, int from)
{
    800081f0:	715d                	addi	sp,sp,-80
    800081f2:	e0a2                	sd	s0,64(sp)
    800081f4:	e486                	sd	ra,72(sp)
    800081f6:	fc26                	sd	s1,56(sp)
    800081f8:	f84a                	sd	s2,48(sp)
    800081fa:	f44e                	sd	s3,40(sp)
    800081fc:	f052                	sd	s4,32(sp)
    800081fe:	ec56                	sd	s5,24(sp)
    80008200:	e85a                	sd	s6,16(sp)
quickjs-nuttx/quickjs.c:41532
    /* assuming 0 <= from <= p1->len */
    int c, i, j, len1 = p1->len, len2 = p2->len;
    80008202:	41dc                	lw	a5,4(a1)
quickjs-nuttx/quickjs.c:41530
{
    80008204:	8432                	mv	s0,a2
quickjs-nuttx/quickjs.c:41532
    int c, i, j, len1 = p1->len, len2 = p2->len;
    80008206:	02179713          	slli	a4,a5,0x21
quickjs-nuttx/quickjs.c:41533
    if (len2 == 0)
    8000820a:	c325                	beqz	a4,8000826a <string_indexof+0x7a>
string_get():
quickjs-nuttx/quickjs.c:3704
    return p->is_wide_char ? p->u.str16[idx] : p->u.str8[idx];
    8000820c:	2781                	sext.w	a5,a5
    8000820e:	89aa                	mv	s3,a0
    80008210:	892e                	mv	s2,a1
    80008212:	02175a13          	srli	s4,a4,0x21
    80008216:	0207d163          	bgez	a5,80008238 <string_indexof+0x48>
    8000821a:	0105da83          	lhu	s5,16(a1)
string_indexof():
quickjs-nuttx/quickjs.c:41532
    int c, i, j, len1 = p1->len, len2 = p2->len;
    8000821e:	0049a483          	lw	s1,4(s3)
quickjs-nuttx/quickjs.c:41535
        return from;
    for (i = from, c = string_get(p2, 0); i + len2 <= len1; i = j + 1) {
    80008222:	8622                	mv	a2,s0
quickjs-nuttx/quickjs.c:41539
        j = string_indexof_char(p1, c, i);
        if (j < 0 || j + len2 > len1)
            break;
        if (!string_cmp(p1, p2, j + 1, 1, len2 - 1))
    80008224:	fffa0b1b          	addiw	s6,s4,-1
quickjs-nuttx/quickjs.c:41532
    int c, i, j, len1 = p1->len, len2 = p2->len;
    80008228:	1486                	slli	s1,s1,0x21
    8000822a:	9085                	srli	s1,s1,0x21
quickjs-nuttx/quickjs.c:41535 (discriminator 1)
    for (i = from, c = string_get(p2, 0); i + len2 <= len1; i = j + 1) {
    8000822c:	014607bb          	addw	a5,a2,s4
    80008230:	00f4d763          	bge	s1,a5,8000823e <string_indexof+0x4e>
quickjs-nuttx/quickjs.c:41542
            return j;
    }
    return -1;
    80008234:	547d                	li	s0,-1
    80008236:	a815                	j	8000826a <string_indexof+0x7a>
string_get():
quickjs-nuttx/quickjs.c:3704
    return p->is_wide_char ? p->u.str16[idx] : p->u.str8[idx];
    80008238:	0105ca83          	lbu	s5,16(a1)
    8000823c:	b7cd                	j	8000821e <string_indexof+0x2e>
string_indexof():
quickjs-nuttx/quickjs.c:41536
        j = string_indexof_char(p1, c, i);
    8000823e:	85d6                	mv	a1,s5
    80008240:	854e                	mv	a0,s3
    80008242:	f63ff0ef          	jal	ra,800081a4 <string_indexof_char>
    80008246:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:41537
        if (j < 0 || j + len2 > len1)
    80008248:	fe0546e3          	bltz	a0,80008234 <string_indexof+0x44>
quickjs-nuttx/quickjs.c:41537 (discriminator 1)
    8000824c:	00aa07bb          	addw	a5,s4,a0
    80008250:	fef4c2e3          	blt	s1,a5,80008234 <string_indexof+0x44>
quickjs-nuttx/quickjs.c:41539
        if (!string_cmp(p1, p2, j + 1, 1, len2 - 1))
    80008254:	0015061b          	addiw	a2,a0,1
    80008258:	875a                	mv	a4,s6
    8000825a:	4685                	li	a3,1
    8000825c:	85ca                	mv	a1,s2
    8000825e:	854e                	mv	a0,s3
    80008260:	e432                	sd	a2,8(sp)
    80008262:	edfff0ef          	jal	ra,80008140 <string_cmp>
    80008266:	6622                	ld	a2,8(sp)
    80008268:	f171                	bnez	a0,8000822c <string_indexof+0x3c>
quickjs-nuttx/quickjs.c:41543
}
    8000826a:	60a6                	ld	ra,72(sp)
    8000826c:	8522                	mv	a0,s0
    8000826e:	6406                	ld	s0,64(sp)
    80008270:	74e2                	ld	s1,56(sp)
    80008272:	7942                	ld	s2,48(sp)
    80008274:	79a2                	ld	s3,40(sp)
    80008276:	7a02                	ld	s4,32(sp)
    80008278:	6ae2                	ld	s5,24(sp)
    8000827a:	6b42                	ld	s6,16(sp)
    8000827c:	6161                	addi	sp,sp,80
    8000827e:	8082                	ret

0000000080008280 <js_math_sign>:
js_math_sign():
quickjs-nuttx/quickjs.c:43008
    }
}

static double js_math_sign(double a)
{
    if (isnan(a) || a == 0.0)
    80008280:	a2a527d3          	feq.d	a5,fa0,fa0
    80008284:	c395                	beqz	a5,800082a8 <js_math_sign+0x28>
quickjs-nuttx/quickjs.c:43008 (discriminator 1)
    80008286:	f20007d3          	fmv.d.x	fa5,zero
    8000828a:	a2f527d3          	feq.d	a5,fa0,fa5
    8000828e:	ef89                	bnez	a5,800082a8 <js_math_sign+0x28>
quickjs-nuttx/quickjs.c:43010
        return a;
    if (a < 0)
    80008290:	a2f517d3          	flt.d	a5,fa0,fa5
    80008294:	e791                	bnez	a5,800082a0 <js_math_sign+0x20>
quickjs-nuttx/quickjs.c:43013
        return -1;
    else
        return 1;
    80008296:	0008c797          	auipc	a5,0x8c
    8000829a:	8fa7b507          	fld	fa0,-1798(a5) # 80093b90 <_erodata+0x1e>
    8000829e:	8082                	ret
quickjs-nuttx/quickjs.c:43011
        return -1;
    800082a0:	0008c797          	auipc	a5,0x8c
    800082a4:	8e87b507          	fld	fa0,-1816(a5) # 80093b88 <_erodata+0x16>
quickjs-nuttx/quickjs.c:43014
}
    800082a8:	8082                	ret

00000000800082aa <js_math_round>:
js_math_round():
quickjs-nuttx/quickjs.c:43017

static double js_math_round(double a)
{
    800082aa:	e20507d3          	fmv.x.d	a5,fa0
quickjs-nuttx/quickjs.c:43024
    uint64_t frac_mask, one;
    unsigned int e, s;

    u.d = a;
    e = (u.u64 >> 52) & 0x7ff;
    if (e < 1023) {
    800082ae:	3fe00613          	li	a2,1022
quickjs-nuttx/quickjs.c:43023
    e = (u.u64 >> 52) & 0x7ff;
    800082b2:	0347d693          	srli	a3,a5,0x34
    800082b6:	7ff6f693          	andi	a3,a3,2047
quickjs-nuttx/quickjs.c:43022
    u.d = a;
    800082ba:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:43024
    if (e < 1023) {
    800082bc:	02d66363          	bltu	a2,a3,800082e2 <js_math_round+0x38>
quickjs-nuttx/quickjs.c:43028
        /* abs(a) < 1 */
        if (e == (1023 - 1) && u.u64 != 0xbfe0000000000000) {
            /* abs(a) > 0.5 or a = 0.5: return +/-1.0 */
            u.u64 = (u.u64 & ((uint64_t)1 << 63)) | ((uint64_t)1023 << 52);
    800082c0:	93fd                	srli	a5,a5,0x3f
    800082c2:	03f79713          	slli	a4,a5,0x3f
quickjs-nuttx/quickjs.c:43026
        if (e == (1023 - 1) && u.u64 != 0xbfe0000000000000) {
    800082c6:	00c69b63          	bne	a3,a2,800082dc <js_math_round+0x32>
quickjs-nuttx/quickjs.c:43026 (discriminator 1)
    800082ca:	dff00793          	li	a5,-513
    800082ce:	17d6                	slli	a5,a5,0x35
    800082d0:	00f58663          	beq	a1,a5,800082dc <js_math_round+0x32>
quickjs-nuttx/quickjs.c:43028
            u.u64 = (u.u64 & ((uint64_t)1 << 63)) | ((uint64_t)1023 << 52);
    800082d4:	3ff00793          	li	a5,1023
    800082d8:	17d2                	slli	a5,a5,0x34
    800082da:	8f5d                	or	a4,a4,a5
quickjs-nuttx/quickjs.c:43042
        u.u64 += (one >> 1) - s;
        u.u64 &= ~frac_mask; /* truncate to an integer */
    }
    /* otherwise: abs(a) >= 2^52, or NaN, +/-Infinity: no change */
    return u.d;
}
    800082dc:	f2070553          	fmv.d.x	fa0,a4
    800082e0:	8082                	ret
quickjs-nuttx/quickjs.c:43033
    } else if (e < (1023 + 52)) {
    800082e2:	43200613          	li	a2,1074
quickjs-nuttx/quickjs.c:43022
    u.d = a;
    800082e6:	873e                	mv	a4,a5
quickjs-nuttx/quickjs.c:43033
    } else if (e < (1023 + 52)) {
    800082e8:	fed66ae3          	bltu	a2,a3,800082dc <js_math_round+0x32>
quickjs-nuttx/quickjs.c:43035
        one = (uint64_t)1 << (52 - (e - 1023));
    800082ec:	43300713          	li	a4,1075
    800082f0:	40d706bb          	subw	a3,a4,a3
    800082f4:	4705                	li	a4,1
    800082f6:	00d71733          	sll	a4,a4,a3
quickjs-nuttx/quickjs.c:43034
        s = u.u64 >> 63;
    800082fa:	03f7d693          	srli	a3,a5,0x3f
quickjs-nuttx/quickjs.c:43037
        u.u64 += (one >> 1) - s;
    800082fe:	8f95                	sub	a5,a5,a3
    80008300:	00175693          	srli	a3,a4,0x1
    80008304:	97b6                	add	a5,a5,a3
quickjs-nuttx/quickjs.c:43038
        u.u64 &= ~frac_mask; /* truncate to an integer */
    80008306:	40e00733          	neg	a4,a4
    8000830a:	8f7d                	and	a4,a4,a5
    8000830c:	bfc1                	j	800082dc <js_math_round+0x32>

000000008000830e <js_math_fround>:
js_math_fround():
quickjs-nuttx/quickjs.c:43070
    return JS_NewFloat64(ctx, r);
}

static double js_math_fround(double a)
{
    return (float)a;
    8000830e:	40157553          	fcvt.s.d	fa0,fa0
quickjs-nuttx/quickjs.c:43071
}
    80008312:	42050553          	fcvt.d.s	fa0,fa0
    80008316:	8082                	ret

0000000080008318 <js_math_random>:
xorshift64star():
quickjs-nuttx/quickjs.c:43104

/* xorshift* random number generator by Marsaglia */
static uint64_t xorshift64star(uint64_t *pstate)
{
    uint64_t x;
    x = *pstate;
    80008318:	18853783          	ld	a5,392(a0)
js_math_random():
quickjs-nuttx/quickjs.c:43124
        ctx->random_state = 1;
}

static JSValue js_math_random(JSContext *ctx, JSValueConst this_val,
                              int argc, JSValueConst *argv)
{
    8000831c:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:43132

    v = xorshift64star(&ctx->random_state);
    /* 1.0 <= u.d < 2 */
    u.u64 = ((uint64_t)0x3ff << 52) | (v >> 12);
    return __JS_NewFloat64(ctx, u.d - 1.0);
}
    8000831e:	459d                	li	a1,7
xorshift64star():
quickjs-nuttx/quickjs.c:43105
    x ^= x >> 12;
    80008320:	00c7d713          	srli	a4,a5,0xc
    80008324:	8fb9                	xor	a5,a5,a4
quickjs-nuttx/quickjs.c:43106
    x ^= x << 25;
    80008326:	01979713          	slli	a4,a5,0x19
    8000832a:	8fb9                	xor	a5,a5,a4
quickjs-nuttx/quickjs.c:43107
    x ^= x >> 27;
    8000832c:	01b7d713          	srli	a4,a5,0x1b
    80008330:	8fb9                	xor	a5,a5,a4
quickjs-nuttx/quickjs.c:43108
    *pstate = x;
    80008332:	18f53423          	sd	a5,392(a0)
quickjs-nuttx/quickjs.c:43109
    return x * 0x2545F4914F6CDD1D;
    80008336:	0008c517          	auipc	a0,0x8c
    8000833a:	86253503          	ld	a0,-1950(a0) # 80093b98 <_erodata+0x26>
    8000833e:	02a787b3          	mul	a5,a5,a0
js_math_random():
quickjs-nuttx/quickjs.c:43130
    u.u64 = ((uint64_t)0x3ff << 52) | (v >> 12);
    80008342:	3ff00513          	li	a0,1023
    80008346:	1552                	slli	a0,a0,0x34
    80008348:	83b1                	srli	a5,a5,0xc
    8000834a:	8d5d                	or	a0,a0,a5
quickjs-nuttx/quickjs.c:43132
}
    8000834c:	f2050753          	fmv.d.x	fa4,a0
quickjs-nuttx/quickjs.c:43131
    return __JS_NewFloat64(ctx, u.d - 1.0);
    80008350:	0008c797          	auipc	a5,0x8c
    80008354:	8407b787          	fld	fa5,-1984(a5) # 80093b90 <_erodata+0x1e>
quickjs-nuttx/quickjs.c:43132
}
    80008358:	0af777d3          	fsub.d	fa5,fa4,fa5
    8000835c:	6105                	addi	sp,sp,32
    8000835e:	e2078553          	fmv.x.d	a0,fa5
    80008362:	8082                	ret

0000000080008364 <string_get_hex>:
string_get_hex():
quickjs-nuttx/quickjs.c:48998
    JS_FreeValue(ctx, obj1);
}

/* URI handling */

static int string_get_hex(JSString *p, int k, int n) {
    80008364:	7139                	addi	sp,sp,-64
    80008366:	f822                	sd	s0,48(sp)
    80008368:	f426                	sd	s1,40(sp)
    8000836a:	f04a                	sd	s2,32(sp)
    8000836c:	ec4e                	sd	s3,24(sp)
    8000836e:	e456                	sd	s5,8(sp)
    80008370:	fc06                	sd	ra,56(sp)
    80008372:	e852                	sd	s4,16(sp)
    80008374:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:49000
    int c = 0, h;
    while (n-- > 0) {
    80008376:	00c584bb          	addw	s1,a1,a2
quickjs-nuttx/quickjs.c:48999
    int c = 0, h;
    8000837a:	4401                	li	s0,0
from_hex():
quickjs-nuttx/cutils.h:286
int unicode_to_utf8(uint8_t *buf, unsigned int c);
int unicode_from_utf8(const uint8_t *p, int max_len, const uint8_t **pp);

static inline int from_hex(int c)
{
    if (c >= '0' && c <= '9')
    8000837c:	4aa5                	li	s5,9
quickjs-nuttx/cutils.h:288
        return c - '0';
    else if (c >= 'A' && c <= 'F')
    8000837e:	4995                	li	s3,5
string_get_hex():
quickjs-nuttx/quickjs.c:49000
    while (n-- > 0) {
    80008380:	00959c63          	bne	a1,s1,80008398 <string_get_hex+0x34>
quickjs-nuttx/quickjs.c:49006
        if ((h = from_hex(string_get(p, k++))) < 0)
            return -1;
        c = (c << 4) | h;
    }
    return c;
}
    80008384:	70e2                	ld	ra,56(sp)
    80008386:	8522                	mv	a0,s0
    80008388:	7442                	ld	s0,48(sp)
    8000838a:	74a2                	ld	s1,40(sp)
    8000838c:	7902                	ld	s2,32(sp)
    8000838e:	69e2                	ld	s3,24(sp)
    80008390:	6a42                	ld	s4,16(sp)
    80008392:	6aa2                	ld	s5,8(sp)
    80008394:	6121                	addi	sp,sp,64
    80008396:	8082                	ret
quickjs-nuttx/quickjs.c:49001
        if ((h = from_hex(string_get(p, k++))) < 0)
    80008398:	854a                	mv	a0,s2
    8000839a:	00158a1b          	addiw	s4,a1,1
    8000839e:	8c7ff0ef          	jal	ra,80007c64 <string_get>
from_hex():
quickjs-nuttx/cutils.h:286
    if (c >= '0' && c <= '9')
    800083a2:	fd05071b          	addiw	a4,a0,-48
    800083a6:	0005079b          	sext.w	a5,a0
    800083aa:	00eae863          	bltu	s5,a4,800083ba <string_get_hex+0x56>
quickjs-nuttx/cutils.h:287
        return c - '0';
    800083ae:	853a                	mv	a0,a4
string_get_hex():
quickjs-nuttx/quickjs.c:49003
        c = (c << 4) | h;
    800083b0:	0044141b          	slliw	s0,s0,0x4
    800083b4:	8c49                	or	s0,s0,a0
quickjs-nuttx/quickjs.c:49001
        if ((h = from_hex(string_get(p, k++))) < 0)
    800083b6:	85d2                	mv	a1,s4
    800083b8:	b7e1                	j	80008380 <string_get_hex+0x1c>
from_hex():
quickjs-nuttx/cutils.h:288
    else if (c >= 'A' && c <= 'F')
    800083ba:	fbf7871b          	addiw	a4,a5,-65
    800083be:	00e9e563          	bltu	s3,a4,800083c8 <string_get_hex+0x64>
quickjs-nuttx/cutils.h:289
        return c - 'A' + 10;
    800083c2:	fc95051b          	addiw	a0,a0,-55
    800083c6:	b7ed                	j	800083b0 <string_get_hex+0x4c>
quickjs-nuttx/cutils.h:290
    else if (c >= 'a' && c <= 'f')
    800083c8:	f9f7879b          	addiw	a5,a5,-97
    800083cc:	00f9e563          	bltu	s3,a5,800083d6 <string_get_hex+0x72>
quickjs-nuttx/cutils.h:291
        return c - 'a' + 10;
    800083d0:	fa95051b          	addiw	a0,a0,-87
    800083d4:	bff1                	j	800083b0 <string_get_hex+0x4c>
string_get_hex():
quickjs-nuttx/quickjs.c:49002
            return -1;
    800083d6:	547d                	li	s0,-1
    800083d8:	b775                	j	80008384 <string_get_hex+0x20>

00000000800083da <days_in_year>:
days_in_year():
quickjs-nuttx/quickjs.c:49337
    return 365 * (y - 1970) + floor_div(y - 1969, 4) -
        floor_div(y - 1901, 100) + floor_div(y - 1601, 400);
}

static int64_t days_in_year(int64_t y) {
    return 365 + !(y % 4) - !(y % 100) + !(y % 400);
    800083da:	19000793          	li	a5,400
    800083de:	02f567b3          	rem	a5,a0,a5
    800083e2:	00357693          	andi	a3,a0,3
    800083e6:	0016b693          	seqz	a3,a3
    800083ea:	16d68693          	addi	a3,a3,365
    800083ee:	0017b713          	seqz	a4,a5
    800083f2:	06400793          	li	a5,100
    800083f6:	02f567b3          	rem	a5,a0,a5
    800083fa:	0017b793          	seqz	a5,a5
    800083fe:	40f707bb          	subw	a5,a4,a5
quickjs-nuttx/quickjs.c:49338
}
    80008402:	00d7853b          	addw	a0,a5,a3
    80008406:	8082                	ret

0000000080008408 <string_skip_spaces>:
string_skip_spaces():
quickjs-nuttx/quickjs.c:49731
            fields[0] += 1900;
    }
    return JS_NewFloat64(ctx, set_date_fields(fields, 0));
}

static void string_skip_spaces(JSString *sp, int *pp) {
    80008408:	7179                	addi	sp,sp,-48
    8000840a:	e44e                	sd	s3,8(sp)
quickjs-nuttx/quickjs.c:49732
    while (*pp < sp->len && string_get(sp, *pp) == ' ')
    8000840c:	800009b7          	lui	s3,0x80000
quickjs-nuttx/quickjs.c:49731
static void string_skip_spaces(JSString *sp, int *pp) {
    80008410:	ec26                	sd	s1,24(sp)
    80008412:	e84a                	sd	s2,16(sp)
    80008414:	e052                	sd	s4,0(sp)
    80008416:	f406                	sd	ra,40(sp)
    80008418:	f022                	sd	s0,32(sp)
    8000841a:	84aa                	mv	s1,a0
    8000841c:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:49732
    while (*pp < sp->len && string_get(sp, *pp) == ' ')
    8000841e:	fff9c993          	not	s3,s3
    80008422:	02000a13          	li	s4,32
    80008426:	40dc                	lw	a5,4(s1)
    80008428:	00092403          	lw	s0,0(s2)
    8000842c:	00f9f7b3          	and	a5,s3,a5
    80008430:	00f45863          	bge	s0,a5,80008440 <string_skip_spaces+0x38>
quickjs-nuttx/quickjs.c:49732 (discriminator 1)
    80008434:	85a2                	mv	a1,s0
    80008436:	8526                	mv	a0,s1
    80008438:	82dff0ef          	jal	ra,80007c64 <string_get>
    8000843c:	01450a63          	beq	a0,s4,80008450 <string_skip_spaces+0x48>
quickjs-nuttx/quickjs.c:49734
        *pp += 1;
}
    80008440:	70a2                	ld	ra,40(sp)
    80008442:	7402                	ld	s0,32(sp)
    80008444:	64e2                	ld	s1,24(sp)
    80008446:	6942                	ld	s2,16(sp)
    80008448:	69a2                	ld	s3,8(sp)
    8000844a:	6a02                	ld	s4,0(sp)
    8000844c:	6145                	addi	sp,sp,48
    8000844e:	8082                	ret
quickjs-nuttx/quickjs.c:49733
        *pp += 1;
    80008450:	2405                	addiw	s0,s0,1
    80008452:	00892023          	sw	s0,0(s2)
    80008456:	bfc1                	j	80008426 <string_skip_spaces+0x1e>

0000000080008458 <string_get_digits>:
string_get_digits():
quickjs-nuttx/quickjs.c:49742
    while (*pp < sp->len && string_get(sp, *pp) != ' ')
        *pp += 1;
}

/* parse a numeric field with an optional sign if accept_sign is TRUE */
static int string_get_digits(JSString *sp, int *pp, int64_t *pval) {
    80008458:	715d                	addi	sp,sp,-80
    8000845a:	e486                	sd	ra,72(sp)
    8000845c:	e0a2                	sd	s0,64(sp)
    8000845e:	fc26                	sd	s1,56(sp)
    80008460:	f84a                	sd	s2,48(sp)
    80008462:	f44e                	sd	s3,40(sp)
    80008464:	f052                	sd	s4,32(sp)
    80008466:	ec56                	sd	s5,24(sp)
    80008468:	e85a                	sd	s6,16(sp)
    8000846a:	e45e                	sd	s7,8(sp)
    8000846c:	e062                	sd	s8,0(sp)
quickjs-nuttx/quickjs.c:49746
    int64_t v = 0;
    int c, p = *pp, p_start;
    
    if (p >= sp->len)
    8000846e:	00452903          	lw	s2,4(a0)
quickjs-nuttx/quickjs.c:49744
    int c, p = *pp, p_start;
    80008472:	0005ab03          	lw	s6,0(a1)
quickjs-nuttx/quickjs.c:49746
    if (p >= sp->len)
    80008476:	1906                	slli	s2,s2,0x21
    80008478:	02195913          	srli	s2,s2,0x21
    8000847c:	052b5e63          	bge	s6,s2,800084d8 <string_get_digits+0x80>
    80008480:	8a2a                	mv	s4,a0
    80008482:	89ae                	mv	s3,a1
    80008484:	8ab2                	mv	s5,a2
    80008486:	84da                	mv	s1,s6
quickjs-nuttx/quickjs.c:49743
    int64_t v = 0;
    80008488:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:49751
        return -1;
    p_start = p;
    while (p < sp->len) {
        c = string_get(sp, p);
        if (!(c >= '0' && c <= '9')) {
    8000848a:	4c25                	li	s8,9
quickjs-nuttx/quickjs.c:49757
            if (p == p_start)
                return -1;
            else
                break;
        }
        v = v * 10 + c - '0';
    8000848c:	4ba9                	li	s7,10
quickjs-nuttx/quickjs.c:49750
        c = string_get(sp, p);
    8000848e:	85a6                	mv	a1,s1
    80008490:	8552                	mv	a0,s4
    80008492:	fd2ff0ef          	jal	ra,80007c64 <string_get>
quickjs-nuttx/quickjs.c:49751
        if (!(c >= '0' && c <= '9')) {
    80008496:	fd05079b          	addiw	a5,a0,-48
    8000849a:	02fc7163          	bgeu	s8,a5,800084bc <string_get_digits+0x64>
quickjs-nuttx/quickjs.c:49747
        return -1;
    8000849e:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:49752
            if (p == p_start)
    800084a0:	029b1663          	bne	s6,s1,800084cc <string_get_digits+0x74>
quickjs-nuttx/quickjs.c:49763
        p++;
    }
    *pval = v;
    *pp = p;
    return 0;
}
    800084a4:	60a6                	ld	ra,72(sp)
    800084a6:	6406                	ld	s0,64(sp)
    800084a8:	74e2                	ld	s1,56(sp)
    800084aa:	7942                	ld	s2,48(sp)
    800084ac:	79a2                	ld	s3,40(sp)
    800084ae:	7a02                	ld	s4,32(sp)
    800084b0:	6ae2                	ld	s5,24(sp)
    800084b2:	6b42                	ld	s6,16(sp)
    800084b4:	6ba2                	ld	s7,8(sp)
    800084b6:	6c02                	ld	s8,0(sp)
    800084b8:	6161                	addi	sp,sp,80
    800084ba:	8082                	ret
quickjs-nuttx/quickjs.c:49757
        v = v * 10 + c - '0';
    800084bc:	03740433          	mul	s0,s0,s7
quickjs-nuttx/quickjs.c:49758
        p++;
    800084c0:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:49757
        v = v * 10 + c - '0';
    800084c2:	942a                	add	s0,s0,a0
    800084c4:	fd040413          	addi	s0,s0,-48
quickjs-nuttx/quickjs.c:49749
    while (p < sp->len) {
    800084c8:	fd24c3e3          	blt	s1,s2,8000848e <string_get_digits+0x36>
quickjs-nuttx/quickjs.c:49760
    *pval = v;
    800084cc:	008ab023          	sd	s0,0(s5)
quickjs-nuttx/quickjs.c:49761
    *pp = p;
    800084d0:	0099a023          	sw	s1,0(s3) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
quickjs-nuttx/quickjs.c:49762
    return 0;
    800084d4:	4501                	li	a0,0
    800084d6:	b7f9                	j	800084a4 <string_get_digits+0x4c>
quickjs-nuttx/quickjs.c:49747
        return -1;
    800084d8:	557d                	li	a0,-1
    800084da:	b7e9                	j	800084a4 <string_get_digits+0x4c>

00000000800084dc <string_get_signed_digits>:
string_get_signed_digits():
quickjs-nuttx/quickjs.c:49765

static int string_get_signed_digits(JSString *sp, int *pp, int64_t *pval) {
    800084dc:	7139                	addi	sp,sp,-64
    800084de:	fc06                	sd	ra,56(sp)
    800084e0:	f822                	sd	s0,48(sp)
    800084e2:	f426                	sd	s1,40(sp)
    800084e4:	f04a                	sd	s2,32(sp)
    800084e6:	ec4e                	sd	s3,24(sp)
    800084e8:	e852                	sd	s4,16(sp)
quickjs-nuttx/quickjs.c:49768
    int res, sgn, p = *pp;
    
    if (p >= sp->len)
    800084ea:	415c                	lw	a5,4(a0)
quickjs-nuttx/quickjs.c:49766
    int res, sgn, p = *pp;
    800084ec:	4180                	lw	s0,0(a1)
quickjs-nuttx/quickjs.c:49768
    if (p >= sp->len)
    800084ee:	1786                	slli	a5,a5,0x21
quickjs-nuttx/quickjs.c:49766
    int res, sgn, p = *pp;
    800084f0:	c622                	sw	s0,12(sp)
quickjs-nuttx/quickjs.c:49768
    if (p >= sp->len)
    800084f2:	9385                	srli	a5,a5,0x21
    800084f4:	00f44b63          	blt	s0,a5,8000850a <string_get_signed_digits+0x2e>
quickjs-nuttx/quickjs.c:49769
        return -1;
    800084f8:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:49783
            return -1; // reject negative zero
        *pval = -*pval;
    }
    *pp = p;
    return res;
}
    800084fa:	70e2                	ld	ra,56(sp)
    800084fc:	7442                	ld	s0,48(sp)
    800084fe:	74a2                	ld	s1,40(sp)
    80008500:	7902                	ld	s2,32(sp)
    80008502:	69e2                	ld	s3,24(sp)
    80008504:	6a42                	ld	s4,16(sp)
    80008506:	6121                	addi	sp,sp,64
    80008508:	8082                	ret
    8000850a:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:49771
    sgn = string_get(sp, p);
    8000850c:	85a2                	mv	a1,s0
    8000850e:	8a2a                	mv	s4,a0
    80008510:	84b2                	mv	s1,a2
    80008512:	f52ff0ef          	jal	ra,80007c64 <string_get>
quickjs-nuttx/quickjs.c:49772
    if (sgn == '-' || sgn == '+')
    80008516:	fd55079b          	addiw	a5,a0,-43
    8000851a:	9bf5                	andi	a5,a5,-3
    8000851c:	2781                	sext.w	a5,a5
quickjs-nuttx/quickjs.c:49771
    sgn = string_get(sp, p);
    8000851e:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:49772
    if (sgn == '-' || sgn == '+')
    80008520:	e399                	bnez	a5,80008526 <string_get_signed_digits+0x4a>
quickjs-nuttx/quickjs.c:49773
        p++;
    80008522:	2405                	addiw	s0,s0,1
    80008524:	c622                	sw	s0,12(sp)
quickjs-nuttx/quickjs.c:49775
    res = string_get_digits(sp, &p, pval);
    80008526:	8626                	mv	a2,s1
    80008528:	006c                	addi	a1,sp,12
    8000852a:	8552                	mv	a0,s4
    8000852c:	f2dff0ef          	jal	ra,80008458 <string_get_digits>
quickjs-nuttx/quickjs.c:49776
    if (res == 0 && sgn == '-') {
    80008530:	e911                	bnez	a0,80008544 <string_get_signed_digits+0x68>
quickjs-nuttx/quickjs.c:49776 (discriminator 1)
    80008532:	02d00793          	li	a5,45
    80008536:	00f99763          	bne	s3,a5,80008544 <string_get_signed_digits+0x68>
quickjs-nuttx/quickjs.c:49777
        if (*pval == 0)
    8000853a:	609c                	ld	a5,0(s1)
    8000853c:	dfd5                	beqz	a5,800084f8 <string_get_signed_digits+0x1c>
quickjs-nuttx/quickjs.c:49779
        *pval = -*pval;
    8000853e:	40f007b3          	neg	a5,a5
    80008542:	e09c                	sd	a5,0(s1)
quickjs-nuttx/quickjs.c:49781
    *pp = p;
    80008544:	47b2                	lw	a5,12(sp)
    80008546:	00f92023          	sw	a5,0(s2)
quickjs-nuttx/quickjs.c:49782
    return res;
    8000854a:	bf45                	j	800084fa <string_get_signed_digits+0x1e>

000000008000854c <js_bigfloat_isFinite>:
js_bigfloat_isFinite():
quickjs-nuttx/quickjs.c:51303
                                    int argc, JSValueConst *argv)
{
    JSValueConst val = argv[0];
    JSBigFloat *p;
    
    if (JS_VALUE_GET_NORM_TAG(val) != JS_TAG_BIG_FLOAT)
    8000854c:	4714                	lw	a3,8(a4)
quickjs-nuttx/quickjs.c:51299
{
    8000854e:	7179                	addi	sp,sp,-48
    80008550:	e02e                	sd	a1,0(sp)
    80008552:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:51303
    if (JS_VALUE_GET_NORM_TAG(val) != JS_TAG_BIG_FLOAT)
    80008554:	57dd                	li	a5,-9
    80008556:	00f68963          	beq	a3,a5,80008568 <js_bigfloat_isFinite+0x1c>
quickjs-nuttx/quickjs.c:51304
        return JS_FALSE;
    8000855a:	e802                	sd	zero,16(sp)
    8000855c:	4785                	li	a5,1
    8000855e:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:51307
    p = JS_VALUE_GET_PTR(val);
    return JS_NewBool(ctx, bf_is_finite(&p->num));
}
    80008560:	6542                	ld	a0,16(sp)
    80008562:	65e2                	ld	a1,24(sp)
    80008564:	6145                	addi	sp,sp,48
    80008566:	8082                	ret
bf_is_finite():
quickjs-nuttx/libbf.h:236
    r->sign ^= 1;
}

static inline int bf_is_finite(const bf_t *a)
{
    return (a->expn < BF_EXP_INF);
    80008568:	631c                	ld	a5,0(a4)
    8000856a:	5775                	li	a4,-3
    8000856c:	8305                	srli	a4,a4,0x1
    8000856e:	6f9c                	ld	a5,24(a5)
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80008570:	d202                	sw	zero,36(sp)
bf_is_finite():
quickjs-nuttx/libbf.h:236
    80008572:	00e7a7b3          	slt	a5,a5,a4
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80008576:	d03e                	sw	a5,32(sp)
    80008578:	7782                	ld	a5,32(sp)
    8000857a:	e83e                	sd	a5,16(sp)
    8000857c:	b7c5                	j	8000855c <js_bigfloat_isFinite+0x10>

000000008000857e <js_bigfloat_isNaN>:
js_bigfloat_isNaN():
quickjs-nuttx/quickjs.c:51315
                                 int argc, JSValueConst *argv)
{
    JSValueConst val = argv[0];
    JSBigFloat *p;
    
    if (JS_VALUE_GET_NORM_TAG(val) != JS_TAG_BIG_FLOAT)
    8000857e:	4714                	lw	a3,8(a4)
quickjs-nuttx/quickjs.c:51311
{
    80008580:	7179                	addi	sp,sp,-48
    80008582:	e02e                	sd	a1,0(sp)
    80008584:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:51315
    if (JS_VALUE_GET_NORM_TAG(val) != JS_TAG_BIG_FLOAT)
    80008586:	57dd                	li	a5,-9
    80008588:	00f68963          	beq	a3,a5,8000859a <js_bigfloat_isNaN+0x1c>
quickjs-nuttx/quickjs.c:51316
        return JS_FALSE;
    8000858c:	e802                	sd	zero,16(sp)
    8000858e:	4785                	li	a5,1
    80008590:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:51319
    p = JS_VALUE_GET_PTR(val);
    return JS_NewBool(ctx, bf_is_nan(&p->num));
}
    80008592:	6542                	ld	a0,16(sp)
    80008594:	65e2                	ld	a1,24(sp)
    80008596:	6145                	addi	sp,sp,48
    80008598:	8082                	ret
bf_is_nan():
quickjs-nuttx/libbf.h:241
}

static inline int bf_is_nan(const bf_t *a)
{
    return (a->expn == BF_EXP_NAN);
    8000859a:	631c                	ld	a5,0(a4)
    8000859c:	577d                	li	a4,-1
    8000859e:	177e                	slli	a4,a4,0x3f
    800085a0:	6f9c                	ld	a5,24(a5)
    800085a2:	0705                	addi	a4,a4,1
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    800085a4:	d202                	sw	zero,36(sp)
bf_is_nan():
quickjs-nuttx/libbf.h:241
    800085a6:	97ba                	add	a5,a5,a4
    800085a8:	0017b793          	seqz	a5,a5
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    800085ac:	d03e                	sw	a5,32(sp)
    800085ae:	7782                	ld	a5,32(sp)
    800085b0:	e83e                	sd	a5,16(sp)
    800085b2:	bff1                	j	8000858e <js_bigfloat_isNaN+0x10>

00000000800085b4 <js_float_env_get_prec>:
js_float_env_get_prec():
quickjs-nuttx/quickjs.c:51609
    js_free_rt(rt, fe);
}

static JSValue js_float_env_get_prec(JSContext *ctx, JSValueConst this_val)
{
    return JS_NewInt64(ctx, ctx->fp_env.prec);
    800085b4:	19853703          	ld	a4,408(a0)
quickjs-nuttx/quickjs.c:51608
{
    800085b8:	7179                	addi	sp,sp,-48
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    800085ba:	0007079b          	sext.w	a5,a4
    800085be:	00f71b63          	bne	a4,a5,800085d4 <js_float_env_get_prec+0x20>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800085c2:	d202                	sw	zero,36(sp)
    800085c4:	d03e                	sw	a5,32(sp)
    800085c6:	7702                	ld	a4,32(sp)
    800085c8:	4581                	li	a1,0
    800085ca:	e83a                	sd	a4,16(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    800085cc:	c83e                	sw	a5,16(sp)
js_float_env_get_prec():
quickjs-nuttx/quickjs.c:51610
}
    800085ce:	6542                	ld	a0,16(sp)
    800085d0:	6145                	addi	sp,sp,48
    800085d2:	8082                	ret
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    800085d4:	d22777d3          	fcvt.d.l	fa5,a4
    800085d8:	459d                	li	a1,7
    800085da:	e20787d3          	fmv.x.d	a5,fa5
js_float_env_get_prec():
quickjs-nuttx/quickjs.h:230
    return v;
    800085de:	a83e                	fsd	fa5,16(sp)
    800085e0:	2781                	sext.w	a5,a5
    800085e2:	b7ed                	j	800085cc <js_float_env_get_prec+0x18>

00000000800085e4 <js_float_env_get_expBits>:
bf_get_exp_bits():
quickjs-nuttx/libbf.h:155
    e = (flags >> BF_EXP_BITS_SHIFT) & BF_EXP_BITS_MASK;
    800085e4:	1a052783          	lw	a5,416(a0)
quickjs-nuttx/libbf.h:156
    if (e == BF_EXP_BITS_MASK)
    800085e8:	03f00693          	li	a3,63
js_float_env_get_expBits():
quickjs-nuttx/quickjs.c:51613

static JSValue js_float_env_get_expBits(JSContext *ctx, JSValueConst this_val)
{
    800085ec:	7179                	addi	sp,sp,-48
bf_get_exp_bits():
quickjs-nuttx/libbf.h:155
    e = (flags >> BF_EXP_BITS_SHIFT) & BF_EXP_BITS_MASK;
    800085ee:	0057d79b          	srliw	a5,a5,0x5
    800085f2:	03f7f793          	andi	a5,a5,63
quickjs-nuttx/libbf.h:156
    if (e == BF_EXP_BITS_MASK)
    800085f6:	03e00713          	li	a4,62
    800085fa:	00d78563          	beq	a5,a3,80008604 <js_float_env_get_expBits+0x20>
quickjs-nuttx/libbf.h:159
        return BF_EXP_BITS_MAX - e;
    800085fe:	03d00713          	li	a4,61
    80008602:	9f1d                	subw	a4,a4,a5
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80008604:	f002                	sd	zero,32(sp)
    80008606:	d03a                	sw	a4,32(sp)
js_float_env_get_expBits():
quickjs-nuttx/quickjs.c:51615
    return JS_NewInt32(ctx, bf_get_exp_bits(ctx->fp_env.flags));
}
    80008608:	7502                	ld	a0,32(sp)
    8000860a:	4581                	li	a1,0
    8000860c:	6145                	addi	sp,sp,48
    8000860e:	8082                	ret

0000000080008610 <js_array_buffer_isView>:
js_array_buffer_isView():
quickjs-nuttx/quickjs.c:52733
}

static JSValue js_array_buffer_isView(JSContext *ctx,
                                      JSValueConst this_val,
                                      int argc, JSValueConst *argv)
{
    80008610:	7179                	addi	sp,sp,-48
    80008612:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:52737
    JSObject *p;
    BOOL res;
    res = FALSE;
    if (JS_VALUE_GET_TAG(argv[0]) == JS_TAG_OBJECT) {
    80008614:	4710                	lw	a2,8(a4)
quickjs-nuttx/quickjs.c:52733
{
    80008616:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:52737
    if (JS_VALUE_GET_TAG(argv[0]) == JS_TAG_OBJECT) {
    80008618:	56fd                	li	a3,-1
    8000861a:	4781                	li	a5,0
    8000861c:	00d61a63          	bne	a2,a3,80008630 <js_array_buffer_isView+0x20>
quickjs-nuttx/quickjs.c:52739
        p = JS_VALUE_GET_OBJ(argv[0]);
        if (p->class_id >= JS_CLASS_UINT8C_ARRAY &&
    80008620:	631c                	ld	a5,0(a4)
    80008622:	0067d783          	lhu	a5,6(a5)
    80008626:	37ad                	addiw	a5,a5,-21
    80008628:	17c2                	slli	a5,a5,0x30
    8000862a:	93c1                	srli	a5,a5,0x30
quickjs-nuttx/quickjs.c:52736
    res = FALSE;
    8000862c:	00c7b793          	sltiu	a5,a5,12
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80008630:	d202                	sw	zero,36(sp)
    80008632:	d03e                	sw	a5,32(sp)
js_array_buffer_isView():
quickjs-nuttx/quickjs.c:52745
            p->class_id <= JS_CLASS_DATAVIEW) {
            res = TRUE;
        }
    }
    return JS_NewBool(ctx, res);
}
    80008634:	7502                	ld	a0,32(sp)
    80008636:	4585                	li	a1,1
    80008638:	6145                	addi	sp,sp,48
    8000863a:	8082                	ret

000000008000863c <js_TA_cmp_int8>:
js_TA_cmp_int8():
quickjs-nuttx/quickjs.c:54124
    if (signbit(x))  return signbit(y) ? 0 : -1;
    else             return signbit(y) ? 1 : 0;
}

static int js_TA_cmp_int8(const void *a, const void *b, void *opaque) {
    return *(const int8_t *)a - *(const int8_t *)b;
    8000863c:	00050503          	lb	a0,0(a0)
    80008640:	00058783          	lb	a5,0(a1)
quickjs-nuttx/quickjs.c:54125
}
    80008644:	9d1d                	subw	a0,a0,a5
    80008646:	8082                	ret

0000000080008648 <js_TA_cmp_uint8>:
js_TA_cmp_uint8():
quickjs-nuttx/quickjs.c:54128

static int js_TA_cmp_uint8(const void *a, const void *b, void *opaque) {
    return *(const uint8_t *)a - *(const uint8_t *)b;
    80008648:	00054503          	lbu	a0,0(a0)
    8000864c:	0005c783          	lbu	a5,0(a1)
quickjs-nuttx/quickjs.c:54129
}
    80008650:	9d1d                	subw	a0,a0,a5
    80008652:	8082                	ret

0000000080008654 <js_TA_cmp_int16>:
js_TA_cmp_int16():
quickjs-nuttx/quickjs.c:54132

static int js_TA_cmp_int16(const void *a, const void *b, void *opaque) {
    return *(const int16_t *)a - *(const int16_t *)b;
    80008654:	00051503          	lh	a0,0(a0)
    80008658:	00059783          	lh	a5,0(a1)
quickjs-nuttx/quickjs.c:54133
}
    8000865c:	9d1d                	subw	a0,a0,a5
    8000865e:	8082                	ret

0000000080008660 <js_TA_cmp_uint16>:
js_TA_cmp_uint16():
quickjs-nuttx/quickjs.c:54136

static int js_TA_cmp_uint16(const void *a, const void *b, void *opaque) {
    return *(const uint16_t *)a - *(const uint16_t *)b;
    80008660:	00055503          	lhu	a0,0(a0)
    80008664:	0005d783          	lhu	a5,0(a1)
quickjs-nuttx/quickjs.c:54137
}
    80008668:	9d1d                	subw	a0,a0,a5
    8000866a:	8082                	ret

000000008000866c <js_TA_cmp_int32>:
js_TA_cmp_int32():
quickjs-nuttx/quickjs.c:54140

static int js_TA_cmp_int32(const void *a, const void *b, void *opaque) {
    int32_t x = *(const int32_t *)a;
    8000866c:	411c                	lw	a5,0(a0)
quickjs-nuttx/quickjs.c:54141
    int32_t y = *(const int32_t *)b;
    8000866e:	4198                	lw	a4,0(a1)
quickjs-nuttx/quickjs.c:54142
    return (y < x) - (y > x);
    80008670:	00f72533          	slt	a0,a4,a5
    80008674:	00e7a7b3          	slt	a5,a5,a4
quickjs-nuttx/quickjs.c:54143
}
    80008678:	9d1d                	subw	a0,a0,a5
    8000867a:	8082                	ret

000000008000867c <js_TA_cmp_uint32>:
js_TA_cmp_uint32():
quickjs-nuttx/quickjs.c:54146

static int js_TA_cmp_uint32(const void *a, const void *b, void *opaque) {
    uint32_t x = *(const uint32_t *)a;
    8000867c:	411c                	lw	a5,0(a0)
quickjs-nuttx/quickjs.c:54147
    uint32_t y = *(const uint32_t *)b;
    8000867e:	4198                	lw	a4,0(a1)
quickjs-nuttx/quickjs.c:54148
    return (y < x) - (y > x);
    80008680:	00f73533          	sltu	a0,a4,a5
    80008684:	00e7b7b3          	sltu	a5,a5,a4
quickjs-nuttx/quickjs.c:54149
}
    80008688:	9d1d                	subw	a0,a0,a5
    8000868a:	8082                	ret

000000008000868c <js_TA_cmp_int64>:
js_TA_cmp_int64():
quickjs-nuttx/quickjs.c:54152

static int js_TA_cmp_int64(const void *a, const void *b, void *opaque) {
    int64_t x = *(const int64_t *)a;
    8000868c:	611c                	ld	a5,0(a0)
quickjs-nuttx/quickjs.c:54153
    int64_t y = *(const int64_t *)b;
    8000868e:	6198                	ld	a4,0(a1)
quickjs-nuttx/quickjs.c:54154
    return (y < x) - (y > x);
    80008690:	00f72533          	slt	a0,a4,a5
    80008694:	00e7a7b3          	slt	a5,a5,a4
quickjs-nuttx/quickjs.c:54155
}
    80008698:	9d1d                	subw	a0,a0,a5
    8000869a:	8082                	ret

000000008000869c <js_TA_cmp_uint64>:
js_TA_cmp_uint64():
quickjs-nuttx/quickjs.c:54158

static int js_TA_cmp_uint64(const void *a, const void *b, void *opaque) {
    uint64_t x = *(const uint64_t *)a;
    8000869c:	611c                	ld	a5,0(a0)
quickjs-nuttx/quickjs.c:54159
    uint64_t y = *(const uint64_t *)b;
    8000869e:	6198                	ld	a4,0(a1)
quickjs-nuttx/quickjs.c:54160
    return (y < x) - (y > x);
    800086a0:	00f73533          	sltu	a0,a4,a5
    800086a4:	00e7b7b3          	sltu	a5,a5,a4
quickjs-nuttx/quickjs.c:54161
}
    800086a8:	9d1d                	subw	a0,a0,a5
    800086aa:	8082                	ret

00000000800086ac <js_TA_get_int8>:
js_TA_get_int8():
quickjs-nuttx/quickjs.c:54172
static int js_TA_cmp_float64(const void *a, const void *b, void *opaque) {
    return js_cmp_doubles(*(const double *)a, *(const double *)b);
}

static JSValue js_TA_get_int8(JSContext *ctx, const void *a) {
    return JS_NewInt32(ctx, *(const int8_t *)a);
    800086ac:	00058783          	lb	a5,0(a1)
quickjs-nuttx/quickjs.c:54171
static JSValue js_TA_get_int8(JSContext *ctx, const void *a) {
    800086b0:	1101                	addi	sp,sp,-32
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800086b2:	e802                	sd	zero,16(sp)
    800086b4:	c83e                	sw	a5,16(sp)
js_TA_get_int8():
quickjs-nuttx/quickjs.c:54173
}
    800086b6:	6542                	ld	a0,16(sp)
    800086b8:	4581                	li	a1,0
    800086ba:	6105                	addi	sp,sp,32
    800086bc:	8082                	ret

00000000800086be <js_TA_get_uint8>:
js_TA_get_uint8():
quickjs-nuttx/quickjs.c:54176

static JSValue js_TA_get_uint8(JSContext *ctx, const void *a) {
    return JS_NewInt32(ctx, *(const uint8_t *)a);
    800086be:	0005c783          	lbu	a5,0(a1)
quickjs-nuttx/quickjs.c:54175
static JSValue js_TA_get_uint8(JSContext *ctx, const void *a) {
    800086c2:	1101                	addi	sp,sp,-32
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800086c4:	e802                	sd	zero,16(sp)
    800086c6:	c83e                	sw	a5,16(sp)
js_TA_get_uint8():
quickjs-nuttx/quickjs.c:54177
}
    800086c8:	6542                	ld	a0,16(sp)
    800086ca:	4581                	li	a1,0
    800086cc:	6105                	addi	sp,sp,32
    800086ce:	8082                	ret

00000000800086d0 <js_TA_get_int16>:
js_TA_get_int16():
quickjs-nuttx/quickjs.c:54180

static JSValue js_TA_get_int16(JSContext *ctx, const void *a) {
    return JS_NewInt32(ctx, *(const int16_t *)a);
    800086d0:	00059783          	lh	a5,0(a1)
quickjs-nuttx/quickjs.c:54179
static JSValue js_TA_get_int16(JSContext *ctx, const void *a) {
    800086d4:	1101                	addi	sp,sp,-32
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800086d6:	e802                	sd	zero,16(sp)
    800086d8:	c83e                	sw	a5,16(sp)
js_TA_get_int16():
quickjs-nuttx/quickjs.c:54181
}
    800086da:	6542                	ld	a0,16(sp)
    800086dc:	4581                	li	a1,0
    800086de:	6105                	addi	sp,sp,32
    800086e0:	8082                	ret

00000000800086e2 <js_TA_get_uint16>:
js_TA_get_uint16():
quickjs-nuttx/quickjs.c:54184

static JSValue js_TA_get_uint16(JSContext *ctx, const void *a) {
    return JS_NewInt32(ctx, *(const uint16_t *)a);
    800086e2:	0005d783          	lhu	a5,0(a1)
quickjs-nuttx/quickjs.c:54183
static JSValue js_TA_get_uint16(JSContext *ctx, const void *a) {
    800086e6:	1101                	addi	sp,sp,-32
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800086e8:	e802                	sd	zero,16(sp)
    800086ea:	c83e                	sw	a5,16(sp)
js_TA_get_uint16():
quickjs-nuttx/quickjs.c:54185
}
    800086ec:	6542                	ld	a0,16(sp)
    800086ee:	4581                	li	a1,0
    800086f0:	6105                	addi	sp,sp,32
    800086f2:	8082                	ret

00000000800086f4 <js_TA_get_int32>:
js_TA_get_int32():
quickjs-nuttx/quickjs.c:54188

static JSValue js_TA_get_int32(JSContext *ctx, const void *a) {
    return JS_NewInt32(ctx, *(const int32_t *)a);
    800086f4:	419c                	lw	a5,0(a1)
quickjs-nuttx/quickjs.c:54187
static JSValue js_TA_get_int32(JSContext *ctx, const void *a) {
    800086f6:	1101                	addi	sp,sp,-32
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800086f8:	e802                	sd	zero,16(sp)
    800086fa:	c83e                	sw	a5,16(sp)
js_TA_get_int32():
quickjs-nuttx/quickjs.c:54189
}
    800086fc:	6542                	ld	a0,16(sp)
    800086fe:	4581                	li	a1,0
    80008700:	6105                	addi	sp,sp,32
    80008702:	8082                	ret

0000000080008704 <js_TA_get_uint32>:
js_TA_get_uint32():
quickjs-nuttx/quickjs.c:54192

static JSValue js_TA_get_uint32(JSContext *ctx, const void *a) {
    return JS_NewUint32(ctx, *(const uint32_t *)a);
    80008704:	4198                	lw	a4,0(a1)
quickjs-nuttx/quickjs.c:54191
static JSValue js_TA_get_uint32(JSContext *ctx, const void *a) {
    80008706:	1101                	addi	sp,sp,-32
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    80008708:	00074d63          	bltz	a4,80008722 <js_TA_get_uint32+0x1e>
    8000870c:	0007079b          	sext.w	a5,a4
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80008710:	ca02                	sw	zero,20(sp)
    80008712:	c83e                	sw	a5,16(sp)
    80008714:	6742                	ld	a4,16(sp)
    80008716:	4581                	li	a1,0
    80008718:	e03a                	sd	a4,0(sp)
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    8000871a:	c03e                	sw	a5,0(sp)
js_TA_get_uint32():
quickjs-nuttx/quickjs.c:54193
}
    8000871c:	6502                	ld	a0,0(sp)
    8000871e:	6105                	addi	sp,sp,32
    80008720:	8082                	ret
JS_NewUint32():
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    80008722:	d21707d3          	fcvt.d.wu	fa5,a4
    80008726:	459d                	li	a1,7
    80008728:	e20787d3          	fmv.x.d	a5,fa5
js_TA_get_uint32():
quickjs-nuttx/quickjs.h:230
    return v;
    8000872c:	a03e                	fsd	fa5,0(sp)
    8000872e:	2781                	sext.w	a5,a5
    80008730:	b7ed                	j	8000871a <js_TA_get_uint32+0x16>

0000000080008732 <js_TA_get_float32>:
js_TA_get_float32():
quickjs-nuttx/quickjs.c:54204
static JSValue js_TA_get_uint64(JSContext *ctx, const void *a) {
    return JS_NewBigUint64(ctx, *(uint64_t *)a);
}

static JSValue js_TA_get_float32(JSContext *ctx, const void *a) {
    return __JS_NewFloat64(ctx, *(const float *)a);
    80008732:	0005a787          	flw	fa5,0(a1)
quickjs-nuttx/quickjs.c:54203
static JSValue js_TA_get_float32(JSContext *ctx, const void *a) {
    80008736:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:54205
}
    80008738:	459d                	li	a1,7
    8000873a:	420787d3          	fcvt.d.s	fa5,fa5
    8000873e:	0141                	addi	sp,sp,16
    80008740:	e2078553          	fmv.x.d	a0,fa5
    80008744:	8082                	ret

0000000080008746 <js_TA_get_float64>:
js_TA_get_float64():
quickjs-nuttx/quickjs.c:54207

static JSValue js_TA_get_float64(JSContext *ctx, const void *a) {
    80008746:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:54209
    return __JS_NewFloat64(ctx, *(const double *)a);
}
    80008748:	6188                	ld	a0,0(a1)
    8000874a:	459d                	li	a1,7
    8000874c:	0141                	addi	sp,sp,16
    8000874e:	8082                	ret

0000000080008750 <JS_NewClass1>:
JS_NewClass1():
quickjs-nuttx/quickjs.c:3416
    if (class_id >= (1 << 16))
    80008750:	67c1                	lui	a5,0x10
    80008752:	00f5e463          	bltu	a1,a5,8000875a <JS_NewClass1+0xa>
quickjs-nuttx/quickjs.c:3417
        return -1;
    80008756:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:3456
}
    80008758:	8082                	ret
quickjs-nuttx/quickjs.c:3411
{
    8000875a:	715d                	addi	sp,sp,-80
    8000875c:	fc26                	sd	s1,56(sp)
    8000875e:	f84a                	sd	s2,48(sp)
    80008760:	f44e                	sd	s3,40(sp)
    80008762:	f052                	sd	s4,32(sp)
    80008764:	e486                	sd	ra,72(sp)
    80008766:	e0a2                	sd	s0,64(sp)
    80008768:	ec56                	sd	s5,24(sp)
    8000876a:	e85a                	sd	s6,16(sp)
    8000876c:	e45e                	sd	s7,8(sp)
    8000876e:	e062                	sd	s8,0(sp)
quickjs-nuttx/quickjs.c:3418
    if (class_id < rt->class_count &&
    80008770:	557c                	lw	a5,108(a0)
    80008772:	84aa                	mv	s1,a0
    80008774:	892e                	mv	s2,a1
    80008776:	89b2                	mv	s3,a2
    80008778:	8a36                	mv	s4,a3
    8000877a:	02f5fa63          	bgeu	a1,a5,800087ae <JS_NewClass1+0x5e>
quickjs-nuttx/quickjs.c:3419 (discriminator 1)
        rt->class_array[class_id].class_id != 0)
    8000877e:	02059713          	slli	a4,a1,0x20
    80008782:	9301                	srli	a4,a4,0x20
    80008784:	02800693          	li	a3,40
    80008788:	02d70733          	mul	a4,a4,a3
    8000878c:	793c                	ld	a5,112(a0)
    8000878e:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:3418 (discriminator 1)
    if (class_id < rt->class_count &&
    80008790:	439c                	lw	a5,0(a5)
    80008792:	c7c1                	beqz	a5,8000881a <JS_NewClass1+0xca>
quickjs-nuttx/quickjs.c:3417
        return -1;
    80008794:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:3456
}
    80008796:	60a6                	ld	ra,72(sp)
    80008798:	6406                	ld	s0,64(sp)
    8000879a:	74e2                	ld	s1,56(sp)
    8000879c:	7942                	ld	s2,48(sp)
    8000879e:	79a2                	ld	s3,40(sp)
    800087a0:	7a02                	ld	s4,32(sp)
    800087a2:	6ae2                	ld	s5,24(sp)
    800087a4:	6b42                	ld	s6,16(sp)
    800087a6:	6ba2                	ld	s7,8(sp)
    800087a8:	6c02                	ld	s8,0(sp)
    800087aa:	6161                	addi	sp,sp,80
    800087ac:	8082                	ret
quickjs-nuttx/quickjs.c:3424
                           max_int(class_id + 1, rt->class_count * 3 / 2));
    800087ae:	440d                	li	s0,3
    800087b0:	02f4043b          	mulw	s0,s0,a5
quickjs-nuttx/quickjs.c:3423
        new_size = max_int(JS_CLASS_INIT_COUNT,
    800087b4:	4789                	li	a5,2
    800087b6:	02f4473b          	divw	a4,s0,a5
    800087ba:	03a00793          	li	a5,58
    800087be:	843a                	mv	s0,a4
    800087c0:	00f75463          	bge	a4,a5,800087c8 <JS_NewClass1+0x78>
    800087c4:	03a00413          	li	s0,58
quickjs-nuttx/quickjs.c:3424
                           max_int(class_id + 1, rt->class_count * 3 / 2));
    800087c8:	0019071b          	addiw	a4,s2,1
    800087cc:	0004069b          	sext.w	a3,s0
    800087d0:	00e6d463          	bge	a3,a4,800087d8 <JS_NewClass1+0x88>
    800087d4:	0007041b          	sext.w	s0,a4
quickjs-nuttx/quickjs.c:3427
        list_for_each(el, &rt->context_list) {
    800087d8:	0804ba83          	ld	s5,128(s1)
quickjs-nuttx/quickjs.c:3430
            new_tab = js_realloc_rt(rt, ctx->class_proto,
    800087dc:	00441b93          	slli	s7,s0,0x4
quickjs-nuttx/quickjs.c:3427
        list_for_each(el, &rt->context_list) {
    800087e0:	07848b13          	addi	s6,s1,120
quickjs-nuttx/quickjs.c:3435
                new_tab[i] = JS_NULL;
    800087e4:	4c09                	li	s8,2
quickjs-nuttx/quickjs.c:3427 (discriminator 1)
        list_for_each(el, &rt->context_list) {
    800087e6:	096a9363          	bne	s5,s6,8000886c <JS_NewClass1+0x11c>
quickjs-nuttx/quickjs.c:3439
        new_class_array = js_realloc_rt(rt, rt->class_array,
    800087ea:	02800b13          	li	s6,40
    800087ee:	03640633          	mul	a2,s0,s6
    800087f2:	78ac                	ld	a1,112(s1)
    800087f4:	8526                	mv	a0,s1
    800087f6:	b64ff0ef          	jal	ra,80007b5a <js_realloc_rt>
    800087fa:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:3441
        if (!new_class_array)
    800087fc:	dd41                	beqz	a0,80008794 <JS_NewClass1+0x44>
quickjs-nuttx/quickjs.c:3443
        memset(new_class_array + rt->class_count, 0,
    800087fe:	54e8                	lw	a0,108(s1)
    80008800:	4581                	li	a1,0
quickjs-nuttx/quickjs.c:3444
               (new_size - rt->class_count) * sizeof(JSClass));
    80008802:	40a4063b          	subw	a2,s0,a0
quickjs-nuttx/quickjs.c:3443
        memset(new_class_array + rt->class_count, 0,
    80008806:	03650533          	mul	a0,a0,s6
    8000880a:	03660633          	mul	a2,a2,s6
    8000880e:	9556                	add	a0,a0,s5
    80008810:	4325b0ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:3445
        rt->class_array = new_class_array;
    80008814:	0754b823          	sd	s5,112(s1)
quickjs-nuttx/quickjs.c:3446
        rt->class_count = new_size;
    80008818:	d4e0                	sw	s0,108(s1)
quickjs-nuttx/quickjs.c:3448
    cl = &rt->class_array[class_id];
    8000881a:	02091793          	slli	a5,s2,0x20
    8000881e:	9381                	srli	a5,a5,0x20
    80008820:	02800713          	li	a4,40
    80008824:	02e78733          	mul	a4,a5,a4
    80008828:	78bc                	ld	a5,112(s1)
    8000882a:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:3449
    cl->class_id = class_id;
    8000882c:	0127a023          	sw	s2,0(a5) # 10000 <asinh-0x7fff0000>
JS_DupAtomRT():
quickjs-nuttx/quickjs.c:2625
    if (!__JS_AtomIsConst(v)) {
    80008830:	0e200713          	li	a4,226
    80008834:	01475c63          	bge	a4,s4,8000884c <JS_NewClass1+0xfc>
quickjs-nuttx/quickjs.c:2626
        p = rt->atom_array[v];
    80008838:	70b8                	ld	a4,96(s1)
    8000883a:	020a1613          	slli	a2,s4,0x20
    8000883e:	01d65693          	srli	a3,a2,0x1d
    80008842:	9736                	add	a4,a4,a3
    80008844:	6314                	ld	a3,0(a4)
quickjs-nuttx/quickjs.c:2627
        p->header.ref_count++;
    80008846:	4298                	lw	a4,0(a3)
    80008848:	2705                	addiw	a4,a4,1
    8000884a:	c298                	sw	a4,0(a3)
JS_NewClass1():
quickjs-nuttx/quickjs.c:3450
    cl->class_name = JS_DupAtomRT(rt, name);
    8000884c:	0147a223          	sw	s4,4(a5)
quickjs-nuttx/quickjs.c:3451
    cl->finalizer = class_def->finalizer;
    80008850:	0089b703          	ld	a4,8(s3)
quickjs-nuttx/quickjs.c:3455
    return 0;
    80008854:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:3451
    cl->finalizer = class_def->finalizer;
    80008856:	e798                	sd	a4,8(a5)
quickjs-nuttx/quickjs.c:3452
    cl->gc_mark = class_def->gc_mark;
    80008858:	0109b703          	ld	a4,16(s3)
    8000885c:	eb98                	sd	a4,16(a5)
quickjs-nuttx/quickjs.c:3453
    cl->call = class_def->call;
    8000885e:	0189b703          	ld	a4,24(s3)
    80008862:	ef98                	sd	a4,24(a5)
quickjs-nuttx/quickjs.c:3454
    cl->exotic = class_def->exotic;
    80008864:	0209b703          	ld	a4,32(s3)
    80008868:	f398                	sd	a4,32(a5)
quickjs-nuttx/quickjs.c:3455
    return 0;
    8000886a:	b735                	j	80008796 <JS_NewClass1+0x46>
quickjs-nuttx/quickjs.c:3430
            new_tab = js_realloc_rt(rt, ctx->class_proto,
    8000886c:	020ab583          	ld	a1,32(s5)
    80008870:	865e                	mv	a2,s7
    80008872:	8526                	mv	a0,s1
    80008874:	ae6ff0ef          	jal	ra,80007b5a <js_realloc_rt>
quickjs-nuttx/quickjs.c:3432
            if (!new_tab)
    80008878:	dd11                	beqz	a0,80008794 <JS_NewClass1+0x44>
quickjs-nuttx/quickjs.c:3434
            for(i = rt->class_count; i < new_size; i++)
    8000887a:	54f8                	lw	a4,108(s1)
    8000887c:	00471793          	slli	a5,a4,0x4
    80008880:	97aa                	add	a5,a5,a0
quickjs-nuttx/quickjs.c:3434 (discriminator 1)
    80008882:	00874763          	blt	a4,s0,80008890 <JS_NewClass1+0x140>
quickjs-nuttx/quickjs.c:3436 (discriminator 2)
            ctx->class_proto = new_tab;
    80008886:	02aab023          	sd	a0,32(s5)
quickjs-nuttx/quickjs.c:3427 (discriminator 2)
        list_for_each(el, &rt->context_list) {
    8000888a:	008aba83          	ld	s5,8(s5)
    8000888e:	bfa1                	j	800087e6 <JS_NewClass1+0x96>
quickjs-nuttx/quickjs.c:3435 (discriminator 3)
                new_tab[i] = JS_NULL;
    80008890:	0007b023          	sd	zero,0(a5)
    80008894:	0187b423          	sd	s8,8(a5)
quickjs-nuttx/quickjs.c:3434 (discriminator 3)
            for(i = rt->class_count; i < new_size; i++)
    80008898:	2705                	addiw	a4,a4,1
    8000889a:	07c1                	addi	a5,a5,16
    8000889c:	b7dd                	j	80008882 <JS_NewClass1+0x132>

000000008000889e <init_class_range>:
init_class_range():
quickjs-nuttx/quickjs.c:1522
{
    8000889e:	711d                	addi	sp,sp,-96
    800088a0:	e8a2                	sd	s0,80(sp)
    800088a2:	e4a6                	sd	s1,72(sp)
    800088a4:	e0ca                	sd	s2,64(sp)
    800088a6:	fc4e                	sd	s3,56(sp)
    800088a8:	ec86                	sd	ra,88(sp)
    800088aa:	89aa                	mv	s3,a0
    800088ac:	84ae                	mv	s1,a1
    800088ae:	8432                	mv	s0,a2
    800088b0:	00c6893b          	addw	s2,a3,a2
quickjs-nuttx/quickjs.c:1529
        cm->finalizer = tab[i].finalizer;
    800088b4:	649c                	ld	a5,8(s1)
quickjs-nuttx/quickjs.c:1531
        if (JS_NewClass1(rt, class_id, cm, tab[i].class_name) < 0)
    800088b6:	4094                	lw	a3,0(s1)
    800088b8:	0030                	addi	a2,sp,8
quickjs-nuttx/quickjs.c:1529
        cm->finalizer = tab[i].finalizer;
    800088ba:	e83e                	sd	a5,16(sp)
quickjs-nuttx/quickjs.c:1530
        cm->gc_mark = tab[i].gc_mark;
    800088bc:	689c                	ld	a5,16(s1)
quickjs-nuttx/quickjs.c:1531
        if (JS_NewClass1(rt, class_id, cm, tab[i].class_name) < 0)
    800088be:	85a2                	mv	a1,s0
    800088c0:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:1528
        memset(cm, 0, sizeof(*cm));
    800088c2:	e402                	sd	zero,8(sp)
    800088c4:	f002                	sd	zero,32(sp)
    800088c6:	f402                	sd	zero,40(sp)
quickjs-nuttx/quickjs.c:1530
        cm->gc_mark = tab[i].gc_mark;
    800088c8:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:1531
        if (JS_NewClass1(rt, class_id, cm, tab[i].class_name) < 0)
    800088ca:	e87ff0ef          	jal	ra,80008750 <JS_NewClass1>
    800088ce:	00054e63          	bltz	a0,800088ea <init_class_range+0x4c>
quickjs-nuttx/quickjs.c:1526 (discriminator 2)
    for(i = 0; i < count; i++) {
    800088d2:	2405                	addiw	s0,s0,1
    800088d4:	04e1                	addi	s1,s1,24
    800088d6:	fd241fe3          	bne	s0,s2,800088b4 <init_class_range+0x16>
quickjs-nuttx/quickjs.c:1534
    return 0;
    800088da:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:1535
}
    800088dc:	60e6                	ld	ra,88(sp)
    800088de:	6446                	ld	s0,80(sp)
    800088e0:	64a6                	ld	s1,72(sp)
    800088e2:	6906                	ld	s2,64(sp)
    800088e4:	79e2                	ld	s3,56(sp)
    800088e6:	6125                	addi	sp,sp,96
    800088e8:	8082                	ret
quickjs-nuttx/quickjs.c:1532
            return -1;
    800088ea:	557d                	li	a0,-1
    800088ec:	bfc5                	j	800088dc <init_class_range+0x3e>

00000000800088ee <js_module_ns_has>:
find_own_property1():
quickjs-nuttx/quickjs.c:5199
    sh = p->shape;
    800088ee:	6d98                	ld	a4,24(a1)
js_module_ns_has():
quickjs-nuttx/quickjs.c:27764
{
    800088f0:	1141                	addi	sp,sp,-16
    800088f2:	e432                	sd	a2,8(sp)
find_own_property1():
quickjs-nuttx/quickjs.c:5200
    h = (uintptr_t)atom & sh->prop_hash_mask;
    800088f4:	531c                	lw	a5,32(a4)
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    800088f6:	5671                	li	a2,-4
js_module_ns_has():
quickjs-nuttx/quickjs.c:27764
{
    800088f8:	e02e                	sd	a1,0(sp)
find_own_property1():
quickjs-nuttx/quickjs.c:5200
    h = (uintptr_t)atom & sh->prop_hash_mask;
    800088fa:	8ff5                	and	a5,a5,a3
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    800088fc:	1782                	slli	a5,a5,0x20
    800088fe:	9381                	srli	a5,a5,0x20
    80008900:	0785                	addi	a5,a5,1
    80008902:	02c787b3          	mul	a5,a5,a2
    80008906:	97ba                	add	a5,a5,a4
    80008908:	0007e503          	lwu	a0,0(a5)
quickjs-nuttx/quickjs.c:5208
        h = pr->hash_next;
    8000890c:	040007b7          	lui	a5,0x4000
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80008910:	04070713          	addi	a4,a4,64
find_own_property1():
quickjs-nuttx/quickjs.c:5208
        h = pr->hash_next;
    80008914:	17fd                	addi	a5,a5,-1
quickjs-nuttx/quickjs.c:5203
    while (h) {
    80008916:	e509                	bnez	a0,80008920 <js_module_ns_has+0x32>
js_module_ns_has():
quickjs-nuttx/quickjs.c:27766
}
    80008918:	00a03533          	snez	a0,a0
    8000891c:	0141                	addi	sp,sp,16
    8000891e:	8082                	ret
find_own_property1():
quickjs-nuttx/quickjs.c:5204
        pr = &prop[h - 1];
    80008920:	050e                	slli	a0,a0,0x3
    80008922:	1561                	addi	a0,a0,-8
    80008924:	953a                	add	a0,a0,a4
quickjs-nuttx/quickjs.c:5205
        if (likely(pr->atom == atom)) {
    80008926:	4150                	lw	a2,4(a0)
    80008928:	fed608e3          	beq	a2,a3,80008918 <js_module_ns_has+0x2a>
quickjs-nuttx/quickjs.c:5208
        h = pr->hash_next;
    8000892c:	4108                	lw	a0,0(a0)
    8000892e:	8d7d                	and	a0,a0,a5
    80008930:	1502                	slli	a0,a0,0x20
    80008932:	9101                	srli	a0,a0,0x20
    80008934:	b7cd                	j	80008916 <js_module_ns_has+0x28>

0000000080008936 <get_leb128>:
get_leb128():
quickjs-nuttx/quickjs.c:6406
    const uint8_t *ptr = buf;
    80008936:	87ae                	mv	a5,a1
    80008938:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:6408
    v = 0;
    8000893a:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:6409
    for(i = 0; i < 5; i++) {
    8000893c:	02300313          	li	t1,35
quickjs-nuttx/quickjs.c:6410
        if (unlikely(ptr >= buf_end))
    80008940:	02c7f963          	bgeu	a5,a2,80008972 <get_leb128+0x3c>
quickjs-nuttx/quickjs.c:6412
        a = *ptr++;
    80008944:	0007c803          	lbu	a6,0(a5) # 4000000 <asinh-0x7c000000>
    80008948:	0785                	addi	a5,a5,1
quickjs-nuttx/quickjs.c:6413
        v |= (a & 0x7f) << (i * 7);
    8000894a:	07f87893          	andi	a7,a6,127
    8000894e:	00d898bb          	sllw	a7,a7,a3
quickjs-nuttx/quickjs.c:6414
        if (!(a & 0x80)) {
    80008952:	0188181b          	slliw	a6,a6,0x18
quickjs-nuttx/quickjs.c:6413
        v |= (a & 0x7f) << (i * 7);
    80008956:	01176733          	or	a4,a4,a7
quickjs-nuttx/quickjs.c:6414
        if (!(a & 0x80)) {
    8000895a:	4188581b          	sraiw	a6,a6,0x18
quickjs-nuttx/quickjs.c:6413
        v |= (a & 0x7f) << (i * 7);
    8000895e:	2701                	sext.w	a4,a4
quickjs-nuttx/quickjs.c:6414
        if (!(a & 0x80)) {
    80008960:	00084663          	bltz	a6,8000896c <get_leb128+0x36>
quickjs-nuttx/quickjs.c:6415
            *pval = v;
    80008964:	c118                	sw	a4,0(a0)
quickjs-nuttx/quickjs.c:6416
            return ptr - buf;
    80008966:	40b7853b          	subw	a0,a5,a1
    8000896a:	8082                	ret
quickjs-nuttx/quickjs.c:6409 (discriminator 2)
    for(i = 0; i < 5; i++) {
    8000896c:	269d                	addiw	a3,a3,7
    8000896e:	fc6699e3          	bne	a3,t1,80008940 <get_leb128+0xa>
quickjs-nuttx/quickjs.c:6419
    *pval = 0;
    80008972:	00052023          	sw	zero,0(a0)
quickjs-nuttx/quickjs.c:6420
    return -1;
    80008976:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:6421
}
    80008978:	8082                	ret

000000008000897a <get_sleb128>:
get_sleb128():
quickjs-nuttx/quickjs.c:6425
{
    8000897a:	1101                	addi	sp,sp,-32
    8000897c:	e822                	sd	s0,16(sp)
    8000897e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:6428
    ret = get_leb128(&val, buf, buf_end);
    80008980:	0068                	addi	a0,sp,12
quickjs-nuttx/quickjs.c:6425
{
    80008982:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:6428
    ret = get_leb128(&val, buf, buf_end);
    80008984:	fb3ff0ef          	jal	ra,80008936 <get_leb128>
quickjs-nuttx/quickjs.c:6429
    if (ret < 0) {
    80008988:	02054063          	bltz	a0,800089a8 <get_sleb128+0x2e>
quickjs-nuttx/quickjs.c:6433
    *pval = (val >> 1) ^ -(val & 1);
    8000898c:	4732                	lw	a4,12(sp)
    8000898e:	00177793          	andi	a5,a4,1
    80008992:	40f007bb          	negw	a5,a5
    80008996:	0017571b          	srliw	a4,a4,0x1
    8000899a:	8fb9                	xor	a5,a5,a4
    8000899c:	2781                	sext.w	a5,a5
quickjs-nuttx/quickjs.c:6435
}
    8000899e:	60e2                	ld	ra,24(sp)
    800089a0:	c01c                	sw	a5,0(s0)
    800089a2:	6442                	ld	s0,16(sp)
    800089a4:	6105                	addi	sp,sp,32
    800089a6:	8082                	ret
quickjs-nuttx/quickjs.c:6430
        *pval = 0;
    800089a8:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:6431
        return -1;
    800089aa:	557d                	li	a0,-1
    800089ac:	bfcd                	j	8000899e <get_sleb128+0x24>

00000000800089ae <JS_AtomIsArrayIndex>:
JS_AtomIsArrayIndex():
quickjs-nuttx/quickjs.c:3133
{
    800089ae:	1101                	addi	sp,sp,-32
    800089b0:	e822                	sd	s0,16(sp)
    800089b2:	ec06                	sd	ra,24(sp)
    800089b4:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:3134
    if (__JS_AtomIsTaggedInt(atom)) {
    800089b6:	00065a63          	bgez	a2,800089ca <JS_AtomIsArrayIndex+0x1c>
__JS_AtomToUInt32():
quickjs-nuttx/quickjs.c:2417
    return atom & ~JS_ATOM_TAG_INT;
    800089ba:	1606                	slli	a2,a2,0x21
    800089bc:	9205                	srli	a2,a2,0x21
JS_AtomIsArrayIndex():
quickjs-nuttx/quickjs.c:3135
        *pval = __JS_AtomToUInt32(atom);
    800089be:	c190                	sw	a2,0(a1)
quickjs-nuttx/quickjs.c:3136
        return TRUE;
    800089c0:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:3153 (discriminator 1)
}
    800089c2:	60e2                	ld	ra,24(sp)
    800089c4:	6442                	ld	s0,16(sp)
    800089c6:	6105                	addi	sp,sp,32
    800089c8:	8082                	ret
quickjs-nuttx/quickjs.c:3138
        JSRuntime *rt = ctx->rt;
    800089ca:	6d1c                	ld	a5,24(a0)
quickjs-nuttx/quickjs.c:3142
        assert(atom < rt->atom_size);
    800089cc:	4bb8                	lw	a4,80(a5)
    800089ce:	00e66c63          	bltu	a2,a4,800089e6 <JS_AtomIsArrayIndex+0x38>
quickjs-nuttx/quickjs.c:3142 (discriminator 1)
    800089d2:	6585                	lui	a1,0x1
    800089d4:	4601                	li	a2,0
    800089d6:	c4658593          	addi	a1,a1,-954 # c46 <asinh-0x7ffff3ba>
    800089da:	00061517          	auipc	a0,0x61
    800089de:	bbe50513          	addi	a0,a0,-1090 # 80069598 <qjsc_repl+0x3fe8>
    800089e2:	77b570ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:3143 (discriminator 2)
        p = rt->atom_array[atom];
    800089e6:	73bc                	ld	a5,96(a5)
    800089e8:	02061713          	slli	a4,a2,0x20
    800089ec:	01d75613          	srli	a2,a4,0x1d
    800089f0:	963e                	add	a2,a2,a5
    800089f2:	620c                	ld	a1,0(a2)
quickjs-nuttx/quickjs.c:3144 (discriminator 2)
        if (p->atom_type == JS_ATOM_TYPE_STRING &&
    800089f4:	c0000737          	lui	a4,0xc0000
    800089f8:	459c                	lw	a5,8(a1)
    800089fa:	8ff9                	and	a5,a5,a4
    800089fc:	2781                	sext.w	a5,a5
    800089fe:	40000737          	lui	a4,0x40000
    80008a02:	00e79b63          	bne	a5,a4,80008a18 <JS_AtomIsArrayIndex+0x6a>
quickjs-nuttx/quickjs.c:3145 (discriminator 1)
            is_num_string(&val, p) && val != -1) {
    80008a06:	0068                	addi	a0,sp,12
    80008a08:	9a0ff0ef          	jal	ra,80007ba8 <is_num_string>
quickjs-nuttx/quickjs.c:3144 (discriminator 1)
        if (p->atom_type == JS_ATOM_TYPE_STRING &&
    80008a0c:	c511                	beqz	a0,80008a18 <JS_AtomIsArrayIndex+0x6a>
quickjs-nuttx/quickjs.c:3145
            is_num_string(&val, p) && val != -1) {
    80008a0e:	47b2                	lw	a5,12(sp)
    80008a10:	577d                	li	a4,-1
quickjs-nuttx/quickjs.c:3147
            return TRUE;
    80008a12:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:3145
            is_num_string(&val, p) && val != -1) {
    80008a14:	00e79463          	bne	a5,a4,80008a1c <JS_AtomIsArrayIndex+0x6e>
quickjs-nuttx/quickjs.c:3149
            *pval = 0;
    80008a18:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:3150
            return FALSE;
    80008a1a:	4501                	li	a0,0
    80008a1c:	c01c                	sw	a5,0(s0)
    80008a1e:	b755                	j	800089c2 <JS_AtomIsArrayIndex+0x14>

0000000080008a20 <num_keys_cmp>:
num_keys_cmp():
quickjs-nuttx/quickjs.c:7461
{
    80008a20:	7179                	addi	sp,sp,-48
    80008a22:	f022                	sd	s0,32(sp)
    80008a24:	ec26                	sd	s1,24(sp)
    80008a26:	f406                	sd	ra,40(sp)
    80008a28:	e84a                	sd	s2,16(sp)
    80008a2a:	8432                	mv	s0,a2
quickjs-nuttx/quickjs.c:7468
    atom1_is_integer = JS_AtomIsArrayIndex(ctx, &v1, atom1);
    80008a2c:	4150                	lw	a2,4(a0)
quickjs-nuttx/quickjs.c:7464
    JSAtom atom2 = ((const JSPropertyEnum *)p2)->atom;
    80008a2e:	0045a903          	lw	s2,4(a1)
quickjs-nuttx/quickjs.c:7468
    atom1_is_integer = JS_AtomIsArrayIndex(ctx, &v1, atom1);
    80008a32:	8522                	mv	a0,s0
    80008a34:	002c                	addi	a1,sp,8
    80008a36:	f79ff0ef          	jal	ra,800089ae <JS_AtomIsArrayIndex>
    80008a3a:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:7469
    atom2_is_integer = JS_AtomIsArrayIndex(ctx, &v2, atom2);
    80008a3c:	864a                	mv	a2,s2
    80008a3e:	006c                	addi	a1,sp,12
    80008a40:	8522                	mv	a0,s0
    80008a42:	f6dff0ef          	jal	ra,800089ae <JS_AtomIsArrayIndex>
quickjs-nuttx/quickjs.c:7470
    assert(atom1_is_integer && atom2_is_integer);
    80008a46:	c091                	beqz	s1,80008a4a <num_keys_cmp+0x2a>
quickjs-nuttx/quickjs.c:7470 (discriminator 2)
    80008a48:	e919                	bnez	a0,80008a5e <num_keys_cmp+0x3e>
quickjs-nuttx/quickjs.c:7470 (discriminator 3)
    80008a4a:	6589                	lui	a1,0x2
    80008a4c:	4601                	li	a2,0
    80008a4e:	d2e58593          	addi	a1,a1,-722 # 1d2e <asinh-0x7fffe2d2>
    80008a52:	00061517          	auipc	a0,0x61
    80008a56:	b4650513          	addi	a0,a0,-1210 # 80069598 <qjsc_repl+0x3fe8>
    80008a5a:	703570ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:7471 (discriminator 4)
    if (v1 < v2)
    80008a5e:	47a2                	lw	a5,8(sp)
    80008a60:	4732                	lw	a4,12(sp)
quickjs-nuttx/quickjs.c:7472 (discriminator 4)
        return -1;
    80008a62:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:7471 (discriminator 4)
    if (v1 < v2)
    80008a64:	00e7e563          	bltu	a5,a4,80008a6e <num_keys_cmp+0x4e>
quickjs-nuttx/quickjs.c:7473
    else if (v1 == v2)
    80008a68:	8f99                	sub	a5,a5,a4
quickjs-nuttx/quickjs.c:7472
        return -1;
    80008a6a:	00f03533          	snez	a0,a5
quickjs-nuttx/quickjs.c:7477
}
    80008a6e:	70a2                	ld	ra,40(sp)
    80008a70:	7402                	ld	s0,32(sp)
    80008a72:	64e2                	ld	s1,24(sp)
    80008a74:	6942                	ld	s2,16(sp)
    80008a76:	6145                	addi	sp,sp,48
    80008a78:	8082                	ret

0000000080008a7a <JS_AtomGetKind>:
JS_AtomGetKind():
quickjs-nuttx/quickjs.c:2651
    if (__JS_AtomIsTaggedInt(v))
    80008a7a:	0405c363          	bltz	a1,80008ac0 <JS_AtomGetKind+0x46>
quickjs-nuttx/quickjs.c:2653
    p = rt->atom_array[v];
    80008a7e:	6d1c                	ld	a5,24(a0)
    80008a80:	02059713          	slli	a4,a1,0x20
    80008a84:	01d75593          	srli	a1,a4,0x1d
    80008a88:	73bc                	ld	a5,96(a5)
quickjs-nuttx/quickjs.c:2654
    switch(p->atom_type) {
    80008a8a:	4689                	li	a3,2
quickjs-nuttx/quickjs.c:2653
    p = rt->atom_array[v];
    80008a8c:	95be                	add	a1,a1,a5
    80008a8e:	619c                	ld	a5,0(a1)
quickjs-nuttx/quickjs.c:2654
    switch(p->atom_type) {
    80008a90:	479c                	lw	a5,8(a5)
    80008a92:	01e7d71b          	srliw	a4,a5,0x1e
    80008a96:	02d70763          	beq	a4,a3,80008ac4 <JS_AtomGetKind+0x4a>
    80008a9a:	468d                	li	a3,3
    80008a9c:	00d70a63          	beq	a4,a3,80008ab0 <JS_AtomGetKind+0x36>
    80008aa0:	4785                	li	a5,1
    80008aa2:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:2660
        switch(p->hash) {
    80008aa4:	02f70163          	beq	a4,a5,80008ac6 <JS_AtomGetKind+0x4c>
quickjs-nuttx/quickjs.c:2646
{
    80008aa8:	1141                	addi	sp,sp,-16
    80008aaa:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs.c:2666
            abort();
    80008aac:	0d65a0ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:2660
        switch(p->hash) {
    80008ab0:	178a                	slli	a5,a5,0x22
    80008ab2:	0227d713          	srli	a4,a5,0x22
quickjs-nuttx/quickjs.c:2658
        return JS_ATOM_KIND_SYMBOL;
    80008ab6:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:2660
        switch(p->hash) {
    80008ab8:	c799                	beqz	a5,80008ac6 <JS_AtomGetKind+0x4c>
    80008aba:	4785                	li	a5,1
    80008abc:	4509                	li	a0,2
    80008abe:	b7dd                	j	80008aa4 <JS_AtomGetKind+0x2a>
quickjs-nuttx/quickjs.c:2652
        return JS_ATOM_KIND_STRING;
    80008ac0:	4501                	li	a0,0
    80008ac2:	8082                	ret
quickjs-nuttx/quickjs.c:2658
        return JS_ATOM_KIND_SYMBOL;
    80008ac4:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:2671
}
    80008ac6:	8082                	ret

0000000080008ac8 <get_ovop_from_opcode>:
get_ovop_from_opcode():
quickjs-nuttx/quickjs.c:12435
    switch(op) {
    80008ac8:	f735051b          	addiw	a0,a0,-141
    80008acc:	0005071b          	sext.w	a4,a0
    80008ad0:	02700793          	li	a5,39
    80008ad4:	04e7ee63          	bltu	a5,a4,80008b30 <get_ovop_from_opcode+0x68>
    80008ad8:	02051793          	slli	a5,a0,0x20
    80008adc:	01e7d513          	srli	a0,a5,0x1e
    80008ae0:	00061717          	auipc	a4,0x61
    80008ae4:	ac470713          	addi	a4,a4,-1340 # 800695a4 <qjsc_repl+0x3ff4>
    80008ae8:	953a                	add	a0,a0,a4
    80008aea:	411c                	lw	a5,0(a0)
    80008aec:	97ba                	add	a5,a5,a4
    80008aee:	8782                	jr	a5
quickjs-nuttx/quickjs.c:12474
        return JS_OVOP_INC;
    80008af0:	4505                	li	a0,1
    80008af2:	8082                	ret
quickjs-nuttx/quickjs.c:12443
        return JS_OVOP_DIV;
    80008af4:	450d                	li	a0,3
    80008af6:	8082                	ret
quickjs-nuttx/quickjs.c:12446
        return JS_OVOP_MOD;
    80008af8:	4511                	li	a0,4
    80008afa:	8082                	ret
quickjs-nuttx/quickjs.c:12448
        return JS_OVOP_POW;
    80008afc:	4515                	li	a0,5
    80008afe:	8082                	ret
quickjs-nuttx/quickjs.c:12450
        return JS_OVOP_OR;
    80008b00:	4519                	li	a0,6
    80008b02:	8082                	ret
quickjs-nuttx/quickjs.c:12452
        return JS_OVOP_AND;
    80008b04:	451d                	li	a0,7
    80008b06:	8082                	ret
quickjs-nuttx/quickjs.c:12454
        return JS_OVOP_XOR;
    80008b08:	4521                	li	a0,8
    80008b0a:	8082                	ret
quickjs-nuttx/quickjs.c:12456
        return JS_OVOP_SHL;
    80008b0c:	4525                	li	a0,9
    80008b0e:	8082                	ret
quickjs-nuttx/quickjs.c:12458
        return JS_OVOP_SAR;
    80008b10:	4529                	li	a0,10
    80008b12:	8082                	ret
quickjs-nuttx/quickjs.c:12460
        return JS_OVOP_SHR;
    80008b14:	452d                	li	a0,11
    80008b16:	8082                	ret
quickjs-nuttx/quickjs.c:12463
        return JS_OVOP_EQ;
    80008b18:	4531                	li	a0,12
    80008b1a:	8082                	ret
quickjs-nuttx/quickjs.c:12468
        return JS_OVOP_LESS;
    80008b1c:	4535                	li	a0,13
    80008b1e:	8082                	ret
quickjs-nuttx/quickjs.c:12470
        return JS_OVOP_POS;
    80008b20:	4539                	li	a0,14
    80008b22:	8082                	ret
quickjs-nuttx/quickjs.c:12472
        return JS_OVOP_NEG;
    80008b24:	453d                	li	a0,15
    80008b26:	8082                	ret
quickjs-nuttx/quickjs.c:12474
        return JS_OVOP_INC;
    80008b28:	4541                	li	a0,16
    80008b2a:	8082                	ret
quickjs-nuttx/quickjs.c:12476
        return JS_OVOP_DEC;
    80008b2c:	4545                	li	a0,17
    80008b2e:	8082                	ret
quickjs-nuttx/quickjs.c:12434
{
    80008b30:	1141                	addi	sp,sp,-16
    80008b32:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs.c:12478
        abort();
    80008b34:	04e5a0ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:12437
        return JS_OVOP_ADD;
    80008b38:	4501                	li	a0,0
    80008b3a:	8082                	ret
quickjs-nuttx/quickjs.c:12441
        return JS_OVOP_MUL;
    80008b3c:	4509                	li	a0,2
quickjs-nuttx/quickjs.c:12480
}
    80008b3e:	8082                	ret

0000000080008b40 <js_pow>:
js_pow():
quickjs-nuttx/quickjs.c:12022
    if (unlikely(!isfinite(b)) && fabs(a) == 1) {
    80008b40:	0008b797          	auipc	a5,0x8b
    80008b44:	0407b787          	fld	fa5,64(a5) # 80093b80 <_erodata+0xe>
    80008b48:	12f7f7d3          	fmul.d	fa5,fa5,fa5
    80008b4c:	a2b7a7d3          	feq.d	a5,fa5,fa1
    80008b50:	eb89                	bnez	a5,80008b62 <js_pow+0x22>
quickjs-nuttx/quickjs.c:12022 (discriminator 2)
    80008b52:	22f79753          	fneg.d	fa4,fa5
    80008b56:	a2b727d3          	feq.d	a5,fa4,fa1
    80008b5a:	e781                	bnez	a5,80008b62 <js_pow+0x22>
quickjs-nuttx/quickjs.c:12022
    80008b5c:	a2b5a7d3          	feq.d	a5,fa1,fa1
    80008b60:	eb91                	bnez	a5,80008b74 <js_pow+0x34>
quickjs-nuttx/quickjs.c:12022 (discriminator 9)
    80008b62:	22a52753          	fabs.d	fa4,fa0
    80008b66:	0008b797          	auipc	a5,0x8b
    80008b6a:	02a7b687          	fld	fa3,42(a5) # 80093b90 <_erodata+0x1e>
    80008b6e:	a2d727d3          	feq.d	a5,fa4,fa3
    80008b72:	e399                	bnez	a5,80008b78 <js_pow+0x38>
quickjs-nuttx/quickjs.c:12026
        return pow(a, b);
    80008b74:	d66f806f          	j	800010da <pow>
quickjs-nuttx/quickjs.c:12024
        return JS_FLOAT64_NAN;
    80008b78:	f2000553          	fmv.d.x	fa0,zero
    80008b7c:	12a7f553          	fmul.d	fa0,fa5,fa0
quickjs-nuttx/quickjs.c:12028
}
    80008b80:	8082                	ret

0000000080008b82 <skip_shebang>:
skip_shebang():
quickjs-nuttx/quickjs.c:21375
{
    80008b82:	715d                	addi	sp,sp,-80
    80008b84:	e486                	sd	ra,72(sp)
    80008b86:	e0a2                	sd	s0,64(sp)
    80008b88:	fc26                	sd	s1,56(sp)
    80008b8a:	f84a                	sd	s2,48(sp)
    80008b8c:	f44e                	sd	s3,40(sp)
    80008b8e:	f052                	sd	s4,32(sp)
    80008b90:	ec56                	sd	s5,24(sp)
    80008b92:	e85a                	sd	s6,16(sp)
quickjs-nuttx/quickjs.c:21376
    const uint8_t *p = *pp;
    80008b94:	611c                	ld	a5,0(a0)
quickjs-nuttx/quickjs.c:21379
    if (p[0] == '#' && p[1] == '!') {
    80008b96:	02300713          	li	a4,35
quickjs-nuttx/quickjs.c:21376
    const uint8_t *p = *pp;
    80008b9a:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:21379
    if (p[0] == '#' && p[1] == '!') {
    80008b9c:	0007c683          	lbu	a3,0(a5)
    80008ba0:	02e69c63          	bne	a3,a4,80008bd8 <skip_shebang+0x56>
quickjs-nuttx/quickjs.c:21379 (discriminator 1)
    80008ba4:	0017c683          	lbu	a3,1(a5)
    80008ba8:	02100713          	li	a4,33
    80008bac:	02e69663          	bne	a3,a4,80008bd8 <skip_shebang+0x56>
quickjs-nuttx/quickjs.c:21380
        p += 2;
    80008bb0:	0789                	addi	a5,a5,2
quickjs-nuttx/quickjs.c:21386
                if (c == CP_LS || c == CP_PS) {
    80008bb2:	7979                	lui	s2,0xffffe
    80008bb4:	842a                	mv	s0,a0
    80008bb6:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:21380
        p += 2;
    80008bb8:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:21382
            if (*p == '\n' || *p == '\r') {
    80008bba:	49a9                	li	s3,10
    80008bbc:	4a35                	li	s4,13
quickjs-nuttx/quickjs.c:21386
                if (c == CP_LS || c == CP_PS) {
    80008bbe:	fd89091b          	addiw	s2,s2,-40
    80008bc2:	4a85                	li	s5,1
quickjs-nuttx/quickjs.c:21388
                } else if (c == -1) {
    80008bc4:	5b7d                	li	s6,-1
quickjs-nuttx/quickjs.c:21381
        while (p < buf_end) {
    80008bc6:	6522                	ld	a0,8(sp)
    80008bc8:	00957663          	bgeu	a0,s1,80008bd4 <skip_shebang+0x52>
quickjs-nuttx/quickjs.c:21382
            if (*p == '\n' || *p == '\r') {
    80008bcc:	00054783          	lbu	a5,0(a0)
    80008bd0:	01379e63          	bne	a5,s3,80008bec <skip_shebang+0x6a>
quickjs-nuttx/quickjs.c:21395
        *pp = p;
    80008bd4:	67a2                	ld	a5,8(sp)
    80008bd6:	e01c                	sd	a5,0(s0)
quickjs-nuttx/quickjs.c:21397
}
    80008bd8:	60a6                	ld	ra,72(sp)
    80008bda:	6406                	ld	s0,64(sp)
    80008bdc:	74e2                	ld	s1,56(sp)
    80008bde:	7942                	ld	s2,48(sp)
    80008be0:	79a2                	ld	s3,40(sp)
    80008be2:	7a02                	ld	s4,32(sp)
    80008be4:	6ae2                	ld	s5,24(sp)
    80008be6:	6b42                	ld	s6,16(sp)
    80008be8:	6161                	addi	sp,sp,80
    80008bea:	8082                	ret
quickjs-nuttx/quickjs.c:21382 (discriminator 1)
            if (*p == '\n' || *p == '\r') {
    80008bec:	ff4784e3          	beq	a5,s4,80008bd4 <skip_shebang+0x52>
quickjs-nuttx/quickjs.c:21384
            } else if (*p >= 0x80) {
    80008bf0:	0187979b          	slliw	a5,a5,0x18
    80008bf4:	4187d79b          	sraiw	a5,a5,0x18
    80008bf8:	0207d063          	bgez	a5,80008c18 <skip_shebang+0x96>
quickjs-nuttx/quickjs.c:21385
                c = unicode_from_utf8(p, UTF8_CHAR_LEN_MAX, &p);
    80008bfc:	0030                	addi	a2,sp,8
    80008bfe:	4599                	li	a1,6
    80008c00:	0ba490ef          	jal	ra,80051cba <unicode_from_utf8>
quickjs-nuttx/quickjs.c:21386
                if (c == CP_LS || c == CP_PS) {
    80008c04:	00a907bb          	addw	a5,s2,a0
    80008c08:	fcfaf6e3          	bgeu	s5,a5,80008bd4 <skip_shebang+0x52>
quickjs-nuttx/quickjs.c:21388
                } else if (c == -1) {
    80008c0c:	fb651de3          	bne	a0,s6,80008bc6 <skip_shebang+0x44>
quickjs-nuttx/quickjs.c:21389
                    p++; /* skip invalid UTF-8 */
    80008c10:	67a2                	ld	a5,8(sp)
    80008c12:	0785                	addi	a5,a5,1
quickjs-nuttx/quickjs.c:21392
                p++;
    80008c14:	e43e                	sd	a5,8(sp)
    80008c16:	bf45                	j	80008bc6 <skip_shebang+0x44>
    80008c18:	00150793          	addi	a5,a0,1
    80008c1c:	bfe5                	j	80008c14 <skip_shebang+0x92>

0000000080008c1e <skip_spaces>:
skip_spaces():
quickjs-nuttx/quickjs.c:10004
{
    80008c1e:	7139                	addi	sp,sp,-64
    80008c20:	f822                	sd	s0,48(sp)
    80008c22:	f426                	sd	s1,40(sp)
    80008c24:	f04a                	sd	s2,32(sp)
    80008c26:	ec4e                	sd	s3,24(sp)
    80008c28:	e852                	sd	s4,16(sp)
    80008c2a:	fc06                	sd	ra,56(sp)
    80008c2c:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:10008
    p = p_start = (const uint8_t *)pc;
    80008c2e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:10011
        if (c < 128) {
    80008c30:	07f00913          	li	s2,127
quickjs-nuttx/quickjs.c:10012
            if (!((c >= 0x09 && c <= 0x0d) || (c == 0x20)))
    80008c34:	4991                	li	s3,4
    80008c36:	02000a13          	li	s4,32
quickjs-nuttx/quickjs.c:10010
        c = *p;
    80008c3a:	00044703          	lbu	a4,0(s0)
quickjs-nuttx/quickjs.c:10011
        if (c < 128) {
    80008c3e:	00e96a63          	bltu	s2,a4,80008c52 <skip_spaces+0x34>
quickjs-nuttx/quickjs.c:10012
            if (!((c >= 0x09 && c <= 0x0d) || (c == 0x20)))
    80008c42:	ff77079b          	addiw	a5,a4,-9
    80008c46:	00f9f463          	bgeu	s3,a5,80008c4e <skip_spaces+0x30>
quickjs-nuttx/quickjs.c:10012 (discriminator 1)
    80008c4a:	01471e63          	bne	a4,s4,80008c66 <skip_spaces+0x48>
quickjs-nuttx/quickjs.c:10014
            p++;
    80008c4e:	0405                	addi	s0,s0,1
    80008c50:	b7ed                	j	80008c3a <skip_spaces+0x1c>
quickjs-nuttx/quickjs.c:10016
            c = unicode_from_utf8(p, UTF8_CHAR_LEN_MAX, &p_next);
    80008c52:	0030                	addi	a2,sp,8
    80008c54:	4599                	li	a1,6
    80008c56:	8522                	mv	a0,s0
    80008c58:	062490ef          	jal	ra,80051cba <unicode_from_utf8>
quickjs-nuttx/quickjs.c:10017
            if (!lre_is_space(c))
    80008c5c:	226450ef          	jal	ra,8004de82 <lre_is_space>
    80008c60:	c119                	beqz	a0,80008c66 <skip_spaces+0x48>
quickjs-nuttx/quickjs.c:10019
            p = p_next;
    80008c62:	6422                	ld	s0,8(sp)
    80008c64:	bfd9                	j	80008c3a <skip_spaces+0x1c>
quickjs-nuttx/quickjs.c:10023
}
    80008c66:	4094053b          	subw	a0,s0,s1
    80008c6a:	70e2                	ld	ra,56(sp)
    80008c6c:	7442                	ld	s0,48(sp)
    80008c6e:	74a2                	ld	s1,40(sp)
    80008c70:	7902                	ld	s2,32(sp)
    80008c72:	69e2                	ld	s3,24(sp)
    80008c74:	6a42                	ld	s4,16(sp)
    80008c76:	6121                	addi	sp,sp,64
    80008c78:	8082                	ret

0000000080008c7a <is_safe_integer>:
is_safe_integer():
quickjs-nuttx/quickjs.c:11108
    return isfinite(d) && floor(d) == d &&
    80008c7a:	0008b797          	auipc	a5,0x8b
    80008c7e:	f067b787          	fld	fa5,-250(a5) # 80093b80 <_erodata+0xe>
    80008c82:	12f7f7d3          	fmul.d	fa5,fa5,fa5
    80008c86:	4501                	li	a0,0
    80008c88:	a2a7a7d3          	feq.d	a5,fa5,fa0
    80008c8c:	e3a9                	bnez	a5,80008cce <is_safe_integer+0x54>
quickjs-nuttx/quickjs.c:11108 (discriminator 1)
    80008c8e:	22f797d3          	fneg.d	fa5,fa5
quickjs-nuttx/quickjs.c:11107 (discriminator 1)
{
    80008c92:	7179                	addi	sp,sp,-48
    80008c94:	ac22                	fsd	fs0,24(sp)
quickjs-nuttx/quickjs.c:11108 (discriminator 1)
    return isfinite(d) && floor(d) == d &&
    80008c96:	a2a7a7d3          	feq.d	a5,fa5,fa0
quickjs-nuttx/quickjs.c:11107 (discriminator 1)
{
    80008c9a:	f406                	sd	ra,40(sp)
    80008c9c:	22a50453          	fmv.d	fs0,fa0
quickjs-nuttx/quickjs.c:11108 (discriminator 1)
    return isfinite(d) && floor(d) == d &&
    80008ca0:	e39d                	bnez	a5,80008cc6 <is_safe_integer+0x4c>
quickjs-nuttx/quickjs.c:11108 (discriminator 3)
    80008ca2:	a2a527d3          	feq.d	a5,fa0,fa0
    80008ca6:	c385                	beqz	a5,80008cc6 <is_safe_integer+0x4c>
    80008ca8:	e42a                	sd	a0,8(sp)
quickjs-nuttx/quickjs.c:11108 (discriminator 5)
    80008caa:	c8ff70ef          	jal	ra,80000938 <floor>
    80008cae:	a28527d3          	feq.d	a5,fa0,fs0
    80008cb2:	4501                	li	a0,0
    80008cb4:	cb89                	beqz	a5,80008cc6 <is_safe_integer+0x4c>
quickjs-nuttx/quickjs.c:11109 (discriminator 7)
        fabs(d) <= (double)MAX_SAFE_INTEGER;
    80008cb6:	22842453          	fabs.d	fs0,fs0
quickjs-nuttx/quickjs.c:11108 (discriminator 7)
    return isfinite(d) && floor(d) == d &&
    80008cba:	0008b797          	auipc	a5,0x8b
    80008cbe:	ee67b787          	fld	fa5,-282(a5) # 80093ba0 <_erodata+0x2e>
    80008cc2:	a2f40553          	fle.d	a0,fs0,fa5
quickjs-nuttx/quickjs.c:11110 (discriminator 12)
}
    80008cc6:	70a2                	ld	ra,40(sp)
    80008cc8:	2462                	fld	fs0,24(sp)
    80008cca:	6145                	addi	sp,sp,48
    80008ccc:	8082                	ret
quickjs-nuttx/quickjs.c:11110
    80008cce:	8082                	ret

0000000080008cd0 <dbuf_put_leb128>:
dbuf_put_leb128():
quickjs-nuttx/quickjs.c:6383
{
    80008cd0:	1101                	addi	sp,sp,-32
    80008cd2:	e822                	sd	s0,16(sp)
    80008cd4:	e426                	sd	s1,8(sp)
    80008cd6:	ec06                	sd	ra,24(sp)
    80008cd8:	84aa                	mv	s1,a0
    80008cda:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:6386
        a = v & 0x7f;
    80008cdc:	07f47593          	andi	a1,s0,127
quickjs-nuttx/quickjs.c:6387
        v >>= 7;
    80008ce0:	0074541b          	srliw	s0,s0,0x7
quickjs-nuttx/quickjs.c:6389
            dbuf_putc(s, a | 0x80);
    80008ce4:	0ff5f593          	zext.b	a1,a1
quickjs-nuttx/quickjs.c:6388
        if (v != 0) {
    80008ce8:	c419                	beqz	s0,80008cf6 <dbuf_put_leb128+0x26>
quickjs-nuttx/quickjs.c:6389
            dbuf_putc(s, a | 0x80);
    80008cea:	0805e593          	ori	a1,a1,128
    80008cee:	8526                	mv	a0,s1
    80008cf0:	5f3480ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:6386
        a = v & 0x7f;
    80008cf4:	b7e5                	j	80008cdc <dbuf_put_leb128+0xc>
quickjs-nuttx/quickjs.c:6395
}
    80008cf6:	6442                	ld	s0,16(sp)
    80008cf8:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:6391
            dbuf_putc(s, a);
    80008cfa:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:6395
}
    80008cfc:	64a2                	ld	s1,8(sp)
    80008cfe:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:6391
            dbuf_putc(s, a);
    80008d00:	5e34806f          	j	80051ae2 <dbuf_putc>

0000000080008d04 <emit_u8>:
emit_u8():
quickjs-nuttx/quickjs.c:21452
    dbuf_putc(&s->cur_func->byte_code, val);
    80008d04:	7528                	ld	a0,104(a0)
    80008d06:	13050513          	addi	a0,a0,304
    80008d0a:	5d94806f          	j	80051ae2 <dbuf_putc>

0000000080008d0e <js_dbuf_init>:
js_dbuf_init():
quickjs-nuttx/quickjs.c:1454
{
    80008d0e:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:1455
    dbuf_init2(s, ctx->rt, (DynBufReallocFunc *)js_realloc_rt);
    80008d10:	6d0c                	ld	a1,24(a0)
    80008d12:	fffff617          	auipc	a2,0xfffff
    80008d16:	e4860613          	addi	a2,a2,-440 # 80007b5a <js_realloc_rt>
    80008d1a:	853e                	mv	a0,a5
    80008d1c:	4554806f          	j	80051970 <dbuf_init2>

0000000080008d20 <code_match>:
code_match():
quickjs-nuttx/quickjs.c:31054
{
    80008d20:	711d                	addi	sp,sp,-96
    80008d22:	e0ba                	sd	a4,64(sp)
    80008d24:	ecc6                	sd	a7,88(sp)
    80008d26:	f422                	sd	s0,40(sp)
    80008d28:	f026                	sd	s1,32(sp)
    80008d2a:	ec4a                	sd	s2,24(sp)
    80008d2c:	f832                	sd	a2,48(sp)
    80008d2e:	fc36                	sd	a3,56(sp)
    80008d30:	e4be                	sd	a5,72(sp)
    80008d32:	e8c2                	sd	a6,80(sp)
quickjs-nuttx/quickjs.c:31055
    const uint8_t *tab = s->bc_buf;
    80008d34:	6110                	ld	a2,0(a0)
quickjs-nuttx/quickjs.c:31061
    va_start(ap, pos);
    80008d36:	1818                	addi	a4,sp,48
    80008d38:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:31060
    line_num = -1;
    80008d3a:	58fd                	li	a7,-1
quickjs-nuttx/quickjs.c:31065
        if (op1 == -1) {
    80008d3c:	537d                	li	t1,-1
quickjs-nuttx/quickjs.c:31075
            len = opcode_info[op].size;
    80008d3e:	0006ce17          	auipc	t3,0x6c
    80008d42:	072e0e13          	addi	t3,t3,114 # 80074db0 <opcode_info>
quickjs-nuttx/quickjs.c:31079
            if (op == OP_line_num) {
    80008d46:	0c800f13          	li	t5,200
    80008d4a:	4fdd                	li	t6,23
    80008d4c:	00061e97          	auipc	t4,0x61
    80008d50:	8f8e8e93          	addi	t4,t4,-1800 # 80069644 <qjsc_repl+0x4094>
quickjs-nuttx/quickjs.c:31064
        op1 = va_arg(ap, int);
    80008d54:	00072803          	lw	a6,0(a4)
    80008d58:	00870293          	addi	t0,a4,8
quickjs-nuttx/quickjs.c:31065
        if (op1 == -1) {
    80008d5c:	04680963          	beq	a6,t1,80008dae <code_match+0x8e>
quickjs-nuttx/quickjs.c:31072
            if (pos >= s->bc_len)
    80008d60:	4504                	lw	s1,8(a0)
    80008d62:	87ae                	mv	a5,a1
    80008d64:	0c95d463          	bge	a1,s1,80008e2c <code_match+0x10c>
quickjs-nuttx/quickjs.c:31074
            op = tab[pos];
    80008d68:	00b603b3          	add	t2,a2,a1
    80008d6c:	0003c683          	lbu	a3,0(t2)
quickjs-nuttx/quickjs.c:31075
            len = opcode_info[op].size;
    80008d70:	00269413          	slli	s0,a3,0x2
    80008d74:	008e0933          	add	s2,t3,s0
    80008d78:	00094903          	lbu	s2,0(s2) # ffffffffffffe000 <_ebss+0xffffffff7fefce9a>
quickjs-nuttx/quickjs.c:31076
            pos_next = pos + len;
    80008d7c:	00b905bb          	addw	a1,s2,a1
quickjs-nuttx/quickjs.c:31077
            if (pos_next > s->bc_len)
    80008d80:	0ab4c663          	blt	s1,a1,80008e2c <code_match+0x10c>
quickjs-nuttx/quickjs.c:31079
            if (op == OP_line_num) {
    80008d84:	03e69e63          	bne	a3,t5,80008dc0 <code_match+0xa0>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    80008d88:	0023c783          	lbu	a5,2(t2)
    80008d8c:	0013c883          	lbu	a7,1(t2)
    80008d90:	07a2                	slli	a5,a5,0x8
    80008d92:	0117e7b3          	or	a5,a5,a7
    80008d96:	0033c883          	lbu	a7,3(t2)
    80008d9a:	08c2                	slli	a7,a7,0x10
    80008d9c:	00f8e7b3          	or	a5,a7,a5
    80008da0:	0043c883          	lbu	a7,4(t2)
    80008da4:	08e2                	slli	a7,a7,0x18
    80008da6:	00f8e8b3          	or	a7,a7,a5
code_match():
quickjs-nuttx/quickjs.c:31080
                line_num = get_u32(tab + pos + 1);
    80008daa:	2881                	sext.w	a7,a7
    80008dac:	bf5d                	j	80008d62 <code_match+0x42>
quickjs-nuttx/quickjs.c:31066
            s->pos = pos;
    80008dae:	c54c                	sw	a1,12(a0)
quickjs-nuttx/quickjs.c:31067
            s->line_num = line_num;
    80008db0:	01152823          	sw	a7,16(a0)
quickjs-nuttx/quickjs.c:31068
            ret = TRUE;
    80008db4:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:31175
}
    80008db6:	7422                	ld	s0,40(sp)
    80008db8:	7482                	ld	s1,32(sp)
    80008dba:	6962                	ld	s2,24(sp)
    80008dbc:	6125                	addi	sp,sp,96
    80008dbe:	8082                	ret
quickjs-nuttx/quickjs.c:31086
        if (op != op1) {
    80008dc0:	02d80a63          	beq	a6,a3,80008df4 <code_match+0xd4>
quickjs-nuttx/quickjs.c:31087
            if (op1 == (uint8_t)op1 || !op)
    80008dc4:	0ff87393          	zext.b	t2,a6
    80008dc8:	07038263          	beq	t2,a6,80008e2c <code_match+0x10c>
quickjs-nuttx/quickjs.c:31087 (discriminator 1)
    80008dcc:	c2a5                	beqz	a3,80008e2c <code_match+0x10c>
quickjs-nuttx/quickjs.c:31089
            if (op != (uint8_t)op1
    80008dce:	02d38263          	beq	t2,a3,80008df2 <code_match+0xd2>
quickjs-nuttx/quickjs.c:31090
            &&  op != (uint8_t)(op1 >> 8)
    80008dd2:	4088539b          	sraiw	t2,a6,0x8
    80008dd6:	0ff3f393          	zext.b	t2,t2
    80008dda:	00768c63          	beq	a3,t2,80008df2 <code_match+0xd2>
quickjs-nuttx/quickjs.c:31091
            &&  op != (uint8_t)(op1 >> 16)
    80008dde:	4108539b          	sraiw	t2,a6,0x10
    80008de2:	0ff3f393          	zext.b	t2,t2
    80008de6:	00d38663          	beq	t2,a3,80008df2 <code_match+0xd2>
quickjs-nuttx/quickjs.c:31092
            &&  op != (uint8_t)(op1 >> 24)) {
    80008dea:	0188581b          	srliw	a6,a6,0x18
    80008dee:	02d81f63          	bne	a6,a3,80008e2c <code_match+0x10c>
quickjs-nuttx/quickjs.c:31095
            s->op = op;
    80008df2:	c954                	sw	a3,20(a0)
quickjs-nuttx/quickjs.c:31099
        switch(opcode_info[op].fmt) {
    80008df4:	9472                	add	s0,s0,t3
    80008df6:	00344683          	lbu	a3,3(s0)
quickjs-nuttx/quickjs.c:31098
        pos++;
    80008dfa:	2785                	addiw	a5,a5,1
quickjs-nuttx/quickjs.c:31099
        switch(opcode_info[op].fmt) {
    80008dfc:	36ed                	addiw	a3,a3,-5
    80008dfe:	0ff6f693          	zext.b	a3,a3
    80008e02:	02dfe163          	bltu	t6,a3,80008e24 <code_match+0x104>
    80008e06:	068a                	slli	a3,a3,0x2
    80008e08:	96f6                	add	a3,a3,t4
    80008e0a:	4294                	lw	a3,0(a3)
    80008e0c:	96f6                	add	a3,a3,t4
    80008e0e:	8682                	jr	a3
quickjs-nuttx/quickjs.c:31103
                int idx = tab[pos];
    80008e10:	97b2                	add	a5,a5,a2
    80008e12:	0007c803          	lbu	a6,0(a5)
quickjs-nuttx/quickjs.c:31104
                int arg = va_arg(ap, int);
    80008e16:	471c                	lw	a5,8(a4)
    80008e18:	01070293          	addi	t0,a4,16
quickjs-nuttx/quickjs.c:31105
                if (arg == -1) {
    80008e1c:	00679663          	bne	a5,t1,80008e28 <code_match+0x108>
quickjs-nuttx/quickjs.c:31106
                    s->idx = idx;
    80008e20:	01052c23          	sw	a6,24(a0)
quickjs-nuttx/quickjs.c:31054
{
    80008e24:	8716                	mv	a4,t0
    80008e26:	b73d                	j	80008d54 <code_match+0x34>
quickjs-nuttx/quickjs.c:31108
                    if (arg != idx)
    80008e28:	fef80ee3          	beq	a6,a5,80008e24 <code_match+0x104>
quickjs-nuttx/quickjs.c:31058
    BOOL ret = FALSE;
    80008e2c:	4501                	li	a0,0
    80008e2e:	b761                	j	80008db6 <code_match+0x96>
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    80008e30:	97b2                	add	a5,a5,a2
    80008e32:	0007c683          	lbu	a3,0(a5)
    80008e36:	0017c783          	lbu	a5,1(a5)
code_match():
quickjs-nuttx/quickjs.c:31120
                int arg = va_arg(ap, int);
    80008e3a:	01070293          	addi	t0,a4,16
    80008e3e:	4718                	lw	a4,8(a4)
get_u16():
quickjs-nuttx/cutils.h:185
    80008e40:	07a2                	slli	a5,a5,0x8
code_match():
quickjs-nuttx/quickjs.c:31119
                int idx = get_u16(tab + pos);
    80008e42:	00d7e833          	or	a6,a5,a3
quickjs-nuttx/quickjs.c:31121
                if (arg == -1) {
    80008e46:	00671563          	bne	a4,t1,80008e50 <code_match+0x130>
quickjs-nuttx/quickjs.c:31122
                    s->idx = idx;
    80008e4a:	01052c23          	sw	a6,24(a0)
    80008e4e:	bfd9                	j	80008e24 <code_match+0x104>
quickjs-nuttx/quickjs.c:31124
                    if (arg != idx)
    80008e50:	fce80ae3          	beq	a6,a4,80008e24 <code_match+0x104>
    80008e54:	bfe1                	j	80008e2c <code_match+0x10c>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    80008e56:	97b2                	add	a5,a5,a2
    80008e58:	0017c703          	lbu	a4,1(a5)
    80008e5c:	0007c683          	lbu	a3,0(a5)
    80008e60:	0722                	slli	a4,a4,0x8
    80008e62:	8ed9                	or	a3,a3,a4
    80008e64:	0027c703          	lbu	a4,2(a5)
    80008e68:	0037c783          	lbu	a5,3(a5)
    80008e6c:	0742                	slli	a4,a4,0x10
    80008e6e:	8f55                	or	a4,a4,a3
    80008e70:	07e2                	slli	a5,a5,0x18
    80008e72:	8fd9                	or	a5,a5,a4
code_match():
quickjs-nuttx/quickjs.c:31134
                s->label = get_u32(tab + pos);
    80008e74:	cd5c                	sw	a5,28(a0)
quickjs-nuttx/quickjs.c:31135
                break;
    80008e76:	b77d                	j	80008e24 <code_match+0x104>
get_u32():
quickjs-nuttx/cutils.h:170
    80008e78:	97b2                	add	a5,a5,a2
    80008e7a:	0017c683          	lbu	a3,1(a5)
    80008e7e:	0007c703          	lbu	a4,0(a5)
    80008e82:	06a2                	slli	a3,a3,0x8
    80008e84:	8ed9                	or	a3,a3,a4
    80008e86:	0027c703          	lbu	a4,2(a5)
    80008e8a:	0742                	slli	a4,a4,0x10
    80008e8c:	8ed9                	or	a3,a3,a4
    80008e8e:	0037c703          	lbu	a4,3(a5)
    80008e92:	0762                	slli	a4,a4,0x18
    80008e94:	8f55                	or	a4,a4,a3
code_match():
quickjs-nuttx/quickjs.c:31139
                s->label = get_u32(tab + pos);
    80008e96:	cd58                	sw	a4,28(a0)
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    80008e98:	0047c703          	lbu	a4,4(a5)
    80008e9c:	0057c783          	lbu	a5,5(a5)
    80008ea0:	07a2                	slli	a5,a5,0x8
code_match():
quickjs-nuttx/quickjs.c:31157
                s->val = get_u16(tab + pos + 4);
    80008ea2:	8fd9                	or	a5,a5,a4
    80008ea4:	a0a1                	j	80008eec <code_match+0x1cc>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    80008ea6:	97b2                	add	a5,a5,a2
    80008ea8:	0017c703          	lbu	a4,1(a5)
    80008eac:	0007c683          	lbu	a3,0(a5)
    80008eb0:	0722                	slli	a4,a4,0x8
    80008eb2:	8ed9                	or	a3,a3,a4
    80008eb4:	0027c703          	lbu	a4,2(a5)
    80008eb8:	0037c783          	lbu	a5,3(a5)
    80008ebc:	0742                	slli	a4,a4,0x10
    80008ebe:	8f55                	or	a4,a4,a3
    80008ec0:	07e2                	slli	a5,a5,0x18
    80008ec2:	8fd9                	or	a5,a5,a4
code_match():
quickjs-nuttx/quickjs.c:31145
                s->atom = get_u32(tab + pos);
    80008ec4:	d15c                	sw	a5,36(a0)
quickjs-nuttx/quickjs.c:31146
                break;
    80008ec6:	bfb9                	j	80008e24 <code_match+0x104>
get_u32():
quickjs-nuttx/cutils.h:170
    80008ec8:	97b2                	add	a5,a5,a2
    80008eca:	0017c683          	lbu	a3,1(a5)
    80008ece:	0007c703          	lbu	a4,0(a5)
    80008ed2:	06a2                	slli	a3,a3,0x8
    80008ed4:	8ed9                	or	a3,a3,a4
    80008ed6:	0027c703          	lbu	a4,2(a5)
    80008eda:	0742                	slli	a4,a4,0x10
    80008edc:	8ed9                	or	a3,a3,a4
    80008ede:	0037c703          	lbu	a4,3(a5)
    80008ee2:	0762                	slli	a4,a4,0x18
    80008ee4:	8f55                	or	a4,a4,a3
code_match():
quickjs-nuttx/quickjs.c:31150
                s->atom = get_u32(tab + pos);
    80008ee6:	d158                	sw	a4,36(a0)
quickjs-nuttx/quickjs.c:31151
                s->val = get_u8(tab + pos + 4);
    80008ee8:	0047c783          	lbu	a5,4(a5)
quickjs-nuttx/quickjs.c:31157
                s->val = get_u16(tab + pos + 4);
    80008eec:	d11c                	sw	a5,32(a0)
quickjs-nuttx/quickjs.c:31158
                break;
    80008eee:	bf1d                	j	80008e24 <code_match+0x104>
get_u32():
quickjs-nuttx/cutils.h:170
    80008ef0:	97b2                	add	a5,a5,a2
    80008ef2:	0017c683          	lbu	a3,1(a5)
    80008ef6:	0007c703          	lbu	a4,0(a5)
    80008efa:	06a2                	slli	a3,a3,0x8
    80008efc:	8ed9                	or	a3,a3,a4
    80008efe:	0027c703          	lbu	a4,2(a5)
    80008f02:	0742                	slli	a4,a4,0x10
    80008f04:	8ed9                	or	a3,a3,a4
    80008f06:	0037c703          	lbu	a4,3(a5)
    80008f0a:	0762                	slli	a4,a4,0x18
    80008f0c:	8f55                	or	a4,a4,a3
code_match():
quickjs-nuttx/quickjs.c:31156
                s->atom = get_u32(tab + pos);
    80008f0e:	d158                	sw	a4,36(a0)
    80008f10:	b761                	j	80008e98 <code_match+0x178>
get_u32():
quickjs-nuttx/cutils.h:170
    80008f12:	97b2                	add	a5,a5,a2
    80008f14:	0017c683          	lbu	a3,1(a5)
    80008f18:	0007c703          	lbu	a4,0(a5)
    80008f1c:	06a2                	slli	a3,a3,0x8
    80008f1e:	8ed9                	or	a3,a3,a4
    80008f20:	0027c703          	lbu	a4,2(a5)
    80008f24:	0742                	slli	a4,a4,0x10
    80008f26:	8ed9                	or	a3,a3,a4
    80008f28:	0037c703          	lbu	a4,3(a5)
    80008f2c:	0762                	slli	a4,a4,0x18
    80008f2e:	8f55                	or	a4,a4,a3
code_match():
quickjs-nuttx/quickjs.c:31162
                s->atom = get_u32(tab + pos);
    80008f30:	d158                	sw	a4,36(a0)
get_u32():
quickjs-nuttx/cutils.h:170
    80008f32:	0057c683          	lbu	a3,5(a5)
    80008f36:	0047c703          	lbu	a4,4(a5)
    80008f3a:	06a2                	slli	a3,a3,0x8
    80008f3c:	8ed9                	or	a3,a3,a4
    80008f3e:	0067c703          	lbu	a4,6(a5)
    80008f42:	0742                	slli	a4,a4,0x10
    80008f44:	8ed9                	or	a3,a3,a4
    80008f46:	0077c703          	lbu	a4,7(a5)
    80008f4a:	0762                	slli	a4,a4,0x18
    80008f4c:	8f55                	or	a4,a4,a3
code_match():
quickjs-nuttx/quickjs.c:31163
                s->label = get_u32(tab + pos + 4);
    80008f4e:	cd58                	sw	a4,28(a0)
quickjs-nuttx/quickjs.c:31164
                s->val = get_u8(tab + pos + 8);
    80008f50:	0087c783          	lbu	a5,8(a5)
    80008f54:	bf61                	j	80008eec <code_match+0x1cc>

0000000080008f56 <js_def_malloc_usable_size>:
js_def_malloc_usable_size():
quickjs-nuttx/quickjs.c:1708
    return malloc_usable_size((void *)ptr);
    80008f56:	5555606f          	j	8005fcaa <malloc_size>

0000000080008f5a <js_def_malloc>:
js_def_malloc():
quickjs-nuttx/quickjs.c:1713
{
    80008f5a:	1101                	addi	sp,sp,-32
    80008f5c:	ec06                	sd	ra,24(sp)
    80008f5e:	e822                	sd	s0,16(sp)
    80008f60:	e426                	sd	s1,8(sp)
quickjs-nuttx/quickjs.c:1717
    assert(size != 0);
    80008f62:	e991                	bnez	a1,80008f76 <js_def_malloc+0x1c>
quickjs-nuttx/quickjs.c:1717 (discriminator 1)
    80008f64:	4601                	li	a2,0
    80008f66:	6b500593          	li	a1,1717
    80008f6a:	00060517          	auipc	a0,0x60
    80008f6e:	62e50513          	addi	a0,a0,1582 # 80069598 <qjsc_repl+0x3fe8>
    80008f72:	1eb570ef          	jal	ra,8006095c <__assert>
    80008f76:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:1719 (discriminator 2)
    if (unlikely(s->malloc_size + size > s->malloc_limit))
    80008f78:	641c                	ld	a5,8(s0)
    80008f7a:	6818                	ld	a4,16(s0)
    80008f7c:	852e                	mv	a0,a1
    80008f7e:	97ae                	add	a5,a5,a1
quickjs-nuttx/quickjs.c:1720 (discriminator 2)
        return NULL;
    80008f80:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:1719 (discriminator 2)
    if (unlikely(s->malloc_size + size > s->malloc_limit))
    80008f82:	00f76f63          	bltu	a4,a5,80008fa0 <js_def_malloc+0x46>
quickjs-nuttx/quickjs.c:1722
    ptr = malloc(size);
    80008f86:	53d560ef          	jal	ra,8005fcc2 <malloc>
    80008f8a:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:1723
    if (!ptr)
    80008f8c:	c911                	beqz	a0,80008fa0 <js_def_malloc+0x46>
quickjs-nuttx/quickjs.c:1726
    s->malloc_count++;
    80008f8e:	601c                	ld	a5,0(s0)
    80008f90:	0785                	addi	a5,a5,1
    80008f92:	e01c                	sd	a5,0(s0)
js_def_malloc_usable_size():
quickjs-nuttx/quickjs.c:1708
    return malloc_usable_size((void *)ptr);
    80008f94:	517560ef          	jal	ra,8005fcaa <malloc_size>
js_def_malloc():
quickjs-nuttx/quickjs.c:1727
    s->malloc_size += js_def_malloc_usable_size(ptr) + MALLOC_OVERHEAD;
    80008f98:	641c                	ld	a5,8(s0)
    80008f9a:	07a1                	addi	a5,a5,8
    80008f9c:	97aa                	add	a5,a5,a0
    80008f9e:	e41c                	sd	a5,8(s0)
quickjs-nuttx/quickjs.c:1729
}
    80008fa0:	60e2                	ld	ra,24(sp)
    80008fa2:	6442                	ld	s0,16(sp)
    80008fa4:	8526                	mv	a0,s1
    80008fa6:	64a2                	ld	s1,8(sp)
    80008fa8:	6105                	addi	sp,sp,32
    80008faa:	8082                	ret

0000000080008fac <dbuf_put_u16>:
dbuf_put_u16():
quickjs-nuttx/cutils.h:257
{
    80008fac:	1101                	addi	sp,sp,-32
    80008fae:	00b11723          	sh	a1,14(sp)
quickjs-nuttx/cutils.h:258
    return dbuf_put(s, (uint8_t *)&val, 2);
    80008fb2:	4609                	li	a2,2
    80008fb4:	00e10593          	addi	a1,sp,14
quickjs-nuttx/cutils.h:257
{
    80008fb8:	ec06                	sd	ra,24(sp)
quickjs-nuttx/cutils.h:258
    return dbuf_put(s, (uint8_t *)&val, 2);
    80008fba:	297480ef          	jal	ra,80051a50 <dbuf_put>
quickjs-nuttx/cutils.h:259
}
    80008fbe:	60e2                	ld	ra,24(sp)
    80008fc0:	6105                	addi	sp,sp,32
    80008fc2:	8082                	ret

0000000080008fc4 <emit_u16>:
emit_u16():
quickjs-nuttx/quickjs.c:21457
    dbuf_put_u16(&s->cur_func->byte_code, val);
    80008fc4:	7528                	ld	a0,104(a0)
    80008fc6:	13050513          	addi	a0,a0,304
    80008fca:	b7cd                	j	80008fac <dbuf_put_u16>

0000000080008fcc <get_loc_or_ref>:
get_loc_or_ref():
quickjs-nuttx/quickjs.c:30622
{
    80008fcc:	1101                	addi	sp,sp,-32
    80008fce:	e822                	sd	s0,16(sp)
    80008fd0:	e426                	sd	s1,8(sp)
    80008fd2:	ec06                	sd	ra,24(sp)
    80008fd4:	842a                	mv	s0,a0
    80008fd6:	84b2                	mv	s1,a2
quickjs-nuttx/quickjs.c:30625
    if (is_ref) 
    80008fd8:	cd91                	beqz	a1,80008ff4 <get_loc_or_ref+0x28>
quickjs-nuttx/quickjs.c:30626
        dbuf_putc(bc, OP_get_var_ref);
    80008fda:	05e00593          	li	a1,94
quickjs-nuttx/quickjs.c:30628
        dbuf_putc(bc, OP_get_loc);
    80008fde:	305480ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30629
    dbuf_put_u16(bc, idx);
    80008fe2:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:30630
}
    80008fe4:	6442                	ld	s0,16(sp)
    80008fe6:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:30629
    dbuf_put_u16(bc, idx);
    80008fe8:	03049593          	slli	a1,s1,0x30
quickjs-nuttx/quickjs.c:30630
}
    80008fec:	64a2                	ld	s1,8(sp)
quickjs-nuttx/quickjs.c:30629
    dbuf_put_u16(bc, idx);
    80008fee:	91c1                	srli	a1,a1,0x30
quickjs-nuttx/quickjs.c:30630
}
    80008ff0:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:30629
    dbuf_put_u16(bc, idx);
    80008ff2:	bf6d                	j	80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:30628
        dbuf_putc(bc, OP_get_loc);
    80008ff4:	05800593          	li	a1,88
    80008ff8:	b7dd                	j	80008fde <get_loc_or_ref+0x12>

0000000080008ffa <put_short_code>:
put_short_code():
quickjs-nuttx/quickjs.c:31905
{
    80008ffa:	1101                	addi	sp,sp,-32
    80008ffc:	e822                	sd	s0,16(sp)
    80008ffe:	e426                	sd	s1,8(sp)
