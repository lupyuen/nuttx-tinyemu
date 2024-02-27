    8004d000:	6434                	ld	a3,72(s0)
    8004d002:	7808                	ld	a0,48(s0)
quickjs-nuttx/libregexp.c:2001
    rs->count = count;
    rs->stack_len = stack_len;
    rs->cptr = cptr;
    rs->pc = pc;
    n = 2 * s->capture_count;
    for(i = 0; i < n; i++)
    8004d004:	4701                	li	a4,0
quickjs-nuttx/libregexp.c:1993
    rs = (REExecState *)(s->state_stack + s->state_stack_len * s->state_size);
    8004d006:	02a687b3          	mul	a5,a3,a0
    8004d00a:	7c08                	ld	a0,56(s0)
quickjs-nuttx/libregexp.c:1994
    s->state_stack_len++;
    8004d00c:	0685                	addi	a3,a3,1
    8004d00e:	e434                	sd	a3,72(s0)
quickjs-nuttx/libregexp.c:1993
    rs = (REExecState *)(s->state_stack + s->state_stack_len * s->state_size);
    8004d010:	953e                	add	a0,a0,a5
quickjs-nuttx/libregexp.c:1995
    rs->type = type;
    8004d012:	01750023          	sb	s7,0(a0)
quickjs-nuttx/libregexp.c:1996
    rs->count = count;
    8004d016:	01653423          	sd	s6,8(a0)
quickjs-nuttx/libregexp.c:1997
    rs->stack_len = stack_len;
    8004d01a:	009500a3          	sb	s1,1(a0)
quickjs-nuttx/libregexp.c:1998
    rs->cptr = cptr;
    8004d01e:	01553823          	sd	s5,16(a0)
quickjs-nuttx/libregexp.c:1999
    rs->pc = pc;
    8004d022:	01453c23          	sd	s4,24(a0)
quickjs-nuttx/libregexp.c:2000
    n = 2 * s->capture_count;
    8004d026:	485c                	lw	a5,20(s0)
    8004d028:	02050693          	addi	a3,a0,32
    8004d02c:	0017979b          	slliw	a5,a5,0x1
quickjs-nuttx/libregexp.c:2001 (discriminator 1)
    for(i = 0; i < n; i++)
    8004d030:	02f76563          	bltu	a4,a5,8004d05a <push_state+0xb6>
quickjs-nuttx/libregexp.c:2004
        rs->buf[i] = capture[i];
    stack_buf = (StackInt *)(rs->buf + n);
    for(i = 0; i < stack_len; i++)
    8004d034:	078e                	slli	a5,a5,0x3
    8004d036:	953e                	add	a0,a0,a5
    8004d038:	4781                	li	a5,0
quickjs-nuttx/libregexp.c:2004 (discriminator 1)
    8004d03a:	0521                	addi	a0,a0,8
    8004d03c:	02979863          	bne	a5,s1,8004d06c <push_state+0xc8>
quickjs-nuttx/libregexp.c:2006
        stack_buf[i] = stack[i];
    return 0;
    8004d040:	4501                	li	a0,0
quickjs-nuttx/libregexp.c:2007
}
    8004d042:	60a6                	ld	ra,72(sp)
    8004d044:	6406                	ld	s0,64(sp)
    8004d046:	74e2                	ld	s1,56(sp)
    8004d048:	7942                	ld	s2,48(sp)
    8004d04a:	79a2                	ld	s3,40(sp)
    8004d04c:	7a02                	ld	s4,32(sp)
    8004d04e:	6ae2                	ld	s5,24(sp)
    8004d050:	6b42                	ld	s6,16(sp)
    8004d052:	6ba2                	ld	s7,8(sp)
    8004d054:	6c02                	ld	s8,0(sp)
    8004d056:	6161                	addi	sp,sp,80
    8004d058:	8082                	ret
quickjs-nuttx/libregexp.c:2002 (discriminator 3)
        rs->buf[i] = capture[i];
    8004d05a:	00371613          	slli	a2,a4,0x3
    8004d05e:	964e                	add	a2,a2,s3
    8004d060:	6210                	ld	a2,0(a2)
quickjs-nuttx/libregexp.c:2001 (discriminator 3)
    for(i = 0; i < n; i++)
    8004d062:	0705                	addi	a4,a4,1
    8004d064:	06a1                	addi	a3,a3,8
quickjs-nuttx/libregexp.c:2002 (discriminator 3)
        rs->buf[i] = capture[i];
    8004d066:	fec6bc23          	sd	a2,-8(a3) # ffffffff7ffffff8 <_ebss+0xfffffffeffefee92>
quickjs-nuttx/libregexp.c:2001 (discriminator 3)
    for(i = 0; i < n; i++)
    8004d06a:	b7d9                	j	8004d030 <push_state+0x8c>
quickjs-nuttx/libregexp.c:2005 (discriminator 3)
        stack_buf[i] = stack[i];
    8004d06c:	00379713          	slli	a4,a5,0x3
    8004d070:	974a                	add	a4,a4,s2
    8004d072:	6318                	ld	a4,0(a4)
quickjs-nuttx/libregexp.c:2004 (discriminator 3)
    for(i = 0; i < stack_len; i++)
    8004d074:	0785                	addi	a5,a5,1
quickjs-nuttx/libregexp.c:2005 (discriminator 3)
        stack_buf[i] = stack[i];
    8004d076:	ed18                	sd	a4,24(a0)
quickjs-nuttx/libregexp.c:2004 (discriminator 3)
    for(i = 0; i < stack_len; i++)
    8004d078:	b7c9                	j	8004d03a <push_state+0x96>

000000008004d07a <re_parse_error>:
re_parse_error():
quickjs-nuttx/libregexp.c:375
{
    8004d07a:	715d                	addi	sp,sp,-80
    8004d07c:	f032                	sd	a2,32(sp)
    8004d07e:	f436                	sd	a3,40(sp)
quickjs-nuttx/libregexp.c:378
    vsnprintf(s->u.error_msg, sizeof(s->u.error_msg), fmt, ap);
    8004d080:	862e                	mv	a2,a1
quickjs-nuttx/libregexp.c:377
    va_start(ap, fmt);
    8004d082:	1014                	addi	a3,sp,32
quickjs-nuttx/libregexp.c:378
    vsnprintf(s->u.error_msg, sizeof(s->u.error_msg), fmt, ap);
    8004d084:	08000593          	li	a1,128
    8004d088:	0a050513          	addi	a0,a0,160
quickjs-nuttx/libregexp.c:375
{
    8004d08c:	ec06                	sd	ra,24(sp)
    8004d08e:	f83a                	sd	a4,48(sp)
    8004d090:	fc3e                	sd	a5,56(sp)
    8004d092:	e0c2                	sd	a6,64(sp)
    8004d094:	e4c6                	sd	a7,72(sp)
quickjs-nuttx/libregexp.c:377
    va_start(ap, fmt);
    8004d096:	e436                	sd	a3,8(sp)
quickjs-nuttx/libregexp.c:378
    vsnprintf(s->u.error_msg, sizeof(s->u.error_msg), fmt, ap);
    8004d098:	1e4140ef          	jal	ra,8006127c <vsnprintf>
quickjs-nuttx/libregexp.c:381
}
    8004d09c:	60e2                	ld	ra,24(sp)
    8004d09e:	557d                	li	a0,-1
    8004d0a0:	6161                	addi	sp,sp,80
    8004d0a2:	8082                	ret

000000008004d0a4 <is_line_terminator>:
is_line_terminator():
quickjs-nuttx/libregexp.c:1834
    return (c == '\n' || c == '\r' || c == CP_LS || c == CP_PS);
    8004d0a4:	47a9                	li	a5,10
quickjs-nuttx/libregexp.c:1833
{
    8004d0a6:	872a                	mv	a4,a0
quickjs-nuttx/libregexp.c:1834
    return (c == '\n' || c == '\r' || c == CP_LS || c == CP_PS);
    8004d0a8:	00f50e63          	beq	a0,a5,8004d0c4 <is_line_terminator+0x20>
quickjs-nuttx/libregexp.c:1834 (discriminator 2)
    8004d0ac:	47b5                	li	a5,13
    8004d0ae:	4505                	li	a0,1
    8004d0b0:	00f70b63          	beq	a4,a5,8004d0c6 <is_line_terminator+0x22>
quickjs-nuttx/libregexp.c:1834
    8004d0b4:	77f9                	lui	a5,0xffffe
    8004d0b6:	fd87879b          	addiw	a5,a5,-40
    8004d0ba:	00e7853b          	addw	a0,a5,a4
    8004d0be:	00253513          	sltiu	a0,a0,2
    8004d0c2:	8082                	ret
    8004d0c4:	4505                	li	a0,1
quickjs-nuttx/libregexp.c:1835 (discriminator 10)
}
    8004d0c6:	8082                	ret

000000008004d0c8 <is_word_char>:
is_word_char():
quickjs-nuttx/libregexp.c:1841
            (c >= 'A' && c <= 'Z') ||
    8004d0c8:	fd05069b          	addiw	a3,a0,-48
    8004d0cc:	4725                	li	a4,9
quickjs-nuttx/libregexp.c:1838
{
    8004d0ce:	87aa                	mv	a5,a0
quickjs-nuttx/libregexp.c:1841
            (c >= 'A' && c <= 'Z') ||
    8004d0d0:	00d77f63          	bgeu	a4,a3,8004d0ee <is_word_char+0x26>
quickjs-nuttx/libregexp.c:1840
            (c >= 'a' && c <= 'z') ||
    8004d0d4:	fdf57713          	andi	a4,a0,-33
    8004d0d8:	fbf7071b          	addiw	a4,a4,-65
    8004d0dc:	46e5                	li	a3,25
quickjs-nuttx/libregexp.c:1841
            (c >= 'A' && c <= 'Z') ||
    8004d0de:	4505                	li	a0,1
quickjs-nuttx/libregexp.c:1840
            (c >= 'a' && c <= 'z') ||
    8004d0e0:	00e6f863          	bgeu	a3,a4,8004d0f0 <is_word_char+0x28>
quickjs-nuttx/libregexp.c:1841
            (c >= 'A' && c <= 'Z') ||
    8004d0e4:	fa178793          	addi	a5,a5,-95 # ffffffffffffdfa1 <_ebss+0xffffffff7fefce3b>
    8004d0e8:	0017b513          	seqz	a0,a5
    8004d0ec:	8082                	ret
    8004d0ee:	4505                	li	a0,1
quickjs-nuttx/libregexp.c:1843 (discriminator 5)
}
    8004d0f0:	8082                	ret

000000008004d0f2 <lre_exec_backtrack>:
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2014
/* return 1 if match, 0 if not match or -1 if error. */
static intptr_t lre_exec_backtrack(REExecContext *s, uint8_t **capture,
                                   StackInt *stack, int stack_len,
                                   const uint8_t *pc, const uint8_t *cptr,
                                   BOOL no_recurse)
{
    8004d0f2:	7171                	addi	sp,sp,-176
    8004d0f4:	f122                	sd	s0,160(sp)
    8004d0f6:	ed26                	sd	s1,152(sp)
    8004d0f8:	e152                	sd	s4,128(sp)
    8004d0fa:	fcd6                	sd	s5,120(sp)
    8004d0fc:	f4de                	sd	s7,104(sp)
    8004d0fe:	f0e2                	sd	s8,96(sp)
    8004d100:	ece6                	sd	s9,88(sp)
    8004d102:	e8ea                	sd	s10,80(sp)
    8004d104:	e4ee                	sd	s11,72(sp)
    8004d106:	f506                	sd	ra,168(sp)
    8004d108:	e94a                	sd	s2,144(sp)
    8004d10a:	e54e                	sd	s3,136(sp)
    8004d10c:	f8da                	sd	s6,112(sp)
quickjs-nuttx/libregexp.c:2393
                        return res;
                    if (!res)
                        break;
                    cptr = (uint8_t *)res;
                    q++;
                    if (q >= quant_max && quant_max != INT32_MAX)
    8004d10e:	80000d37          	lui	s10,0x80000
quickjs-nuttx/libregexp.c:2020
    cbuf_type = s->cbuf_type;
    8004d112:	01052983          	lw	s3,16(a0)
quickjs-nuttx/libregexp.c:2021
    cbuf_end = s->cbuf_end;
    8004d116:	00853b03          	ld	s6,8(a0)
quickjs-nuttx/libregexp.c:2014
{
    8004d11a:	843e                	mv	s0,a5
quickjs-nuttx/libregexp.c:2367
            PREV_CHAR(cptr, s->cbuf);
    8004d11c:	7a49                	lui	s4,0xffff2
quickjs-nuttx/libregexp.c:2393
                    if (q >= quant_max && quant_max != INT32_MAX)
    8004d11e:	fffd4793          	not	a5,s10
quickjs-nuttx/libregexp.c:2367
            PREV_CHAR(cptr, s->cbuf);
    8004d122:	7acd                	lui	s5,0xffff3
quickjs-nuttx/libregexp.c:2014
{
    8004d124:	8caa                	mv	s9,a0
    8004d126:	8bae                	mv	s7,a1
    8004d128:	8c32                	mv	s8,a2
    8004d12a:	8db6                	mv	s11,a3
    8004d12c:	84ba                	mv	s1,a4
    8004d12e:	e442                	sd	a6,8(sp)
quickjs-nuttx/libregexp.c:2393
                    if (q >= quant_max && quant_max != INT32_MAX)
    8004d130:	e83e                	sd	a5,16(sp)
quickjs-nuttx/libregexp.c:2367
            PREV_CHAR(cptr, s->cbuf);
    8004d132:	400a0a1b          	addiw	s4,s4,1024
    8004d136:	800a8a9b          	addiw	s5,s5,-2048
quickjs-nuttx/libregexp.c:2025
        opcode = *pc++;
    8004d13a:	0004c783          	lbu	a5,0(s1)
    8004d13e:	46ed                	li	a3,27
    8004d140:	00148913          	addi	s2,s1,1
    8004d144:	fff7871b          	addiw	a4,a5,-1
    8004d148:	0ff77713          	zext.b	a4,a4
    8004d14c:	00078d1b          	sext.w	s10,a5
quickjs-nuttx/libregexp.c:2026
        switch(opcode) {
    8004d150:	36e6ece3          	bltu	a3,a4,8004dcc8 <lre_exec_backtrack+0xbd6>
    8004d154:	00028697          	auipc	a3,0x28
    8004d158:	0f068693          	addi	a3,a3,240 # 80075244 <unescaped_chars.0+0x54>
    8004d15c:	070a                	slli	a4,a4,0x2
    8004d15e:	9736                	add	a4,a4,a3
    8004d160:	4318                	lw	a4,0(a4)
    8004d162:	9736                	add	a4,a4,a3
    8004d164:	8702                	jr	a4
quickjs-nuttx/libregexp.c:2030
                if (no_recurse)
    8004d166:	67a2                	ld	a5,8(sp)
    8004d168:	c38d                	beqz	a5,8004d18a <lre_exec_backtrack+0x98>
quickjs-nuttx/libregexp.c:2041
                        return ret;
    8004d16a:	8522                	mv	a0,s0
quickjs-nuttx/libregexp.c:2413
            break;
        default:
            abort();
        }
    }
}
    8004d16c:	70aa                	ld	ra,168(sp)
    8004d16e:	740a                	ld	s0,160(sp)
    8004d170:	64ea                	ld	s1,152(sp)
    8004d172:	694a                	ld	s2,144(sp)
    8004d174:	69aa                	ld	s3,136(sp)
    8004d176:	6a0a                	ld	s4,128(sp)
    8004d178:	7ae6                	ld	s5,120(sp)
    8004d17a:	7b46                	ld	s6,112(sp)
    8004d17c:	7ba6                	ld	s7,104(sp)
    8004d17e:	7c06                	ld	s8,96(sp)
    8004d180:	6ce6                	ld	s9,88(sp)
    8004d182:	6d46                	ld	s10,80(sp)
    8004d184:	6da6                	ld	s11,72(sp)
    8004d186:	614d                	addi	sp,sp,176
    8004d188:	8082                	ret
quickjs-nuttx/libregexp.c:2032
                ret = 1;
    8004d18a:	4405                	li	s0,1
    8004d18c:	aca9                	j	8004d3e6 <lre_exec_backtrack+0x2f4>
quickjs-nuttx/libregexp.c:2058
                    } else if (rs->type == RE_EXEC_STATE_GREEDY_QUANT) {
    8004d18e:	0cd71863          	bne	a4,a3,8004d25e <lre_exec_backtrack+0x16c>
quickjs-nuttx/libregexp.c:2059
                        if (!ret) {
    8004d192:	e871                	bnez	s0,8004d266 <lre_exec_backtrack+0x174>
quickjs-nuttx/libregexp.c:2062
                                   sizeof(capture[0]) * 2 * s->capture_count);
    8004d194:	014ca603          	lw	a2,20(s9)
quickjs-nuttx/libregexp.c:2061
                            memcpy(capture, rs->buf,
    8004d198:	02048413          	addi	s0,s1,32
    8004d19c:	85a2                	mv	a1,s0
    8004d19e:	0612                	slli	a2,a2,0x4
    8004d1a0:	855e                	mv	a0,s7
    8004d1a2:	40b160ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/libregexp.c:2064
                            memcpy(stack, rs->buf + 2 * s->capture_count,
    8004d1a6:	014ca783          	lw	a5,20(s9)
quickjs-nuttx/libregexp.c:2063
                            stack_len = rs->stack_len;
    8004d1aa:	0014c603          	lbu	a2,1(s1)
quickjs-nuttx/libregexp.c:2064
                            memcpy(stack, rs->buf + 2 * s->capture_count,
    8004d1ae:	8562                	mv	a0,s8
    8004d1b0:	0017979b          	slliw	a5,a5,0x1
    8004d1b4:	078e                	slli	a5,a5,0x3
    8004d1b6:	00f405b3          	add	a1,s0,a5
quickjs-nuttx/libregexp.c:2063
                            stack_len = rs->stack_len;
    8004d1ba:	00060d9b          	sext.w	s11,a2
quickjs-nuttx/libregexp.c:2064
                            memcpy(stack, rs->buf + 2 * s->capture_count,
    8004d1be:	060e                	slli	a2,a2,0x3
    8004d1c0:	3ed160ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/libregexp.c:2066
                            pc = rs->pc;
    8004d1c4:	0184b903          	ld	s2,24(s1)
quickjs-nuttx/libregexp.c:2067
                            cptr = rs->cptr;
    8004d1c8:	6880                	ld	s0,16(s1)
quickjs-nuttx/libregexp.c:2070
                            for(i = 0; i < char_count; i++) {
    8004d1ca:	4681                	li	a3,0
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8004d1cc:	00d94703          	lbu	a4,13(s2)
    8004d1d0:	00c94783          	lbu	a5,12(s2)
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2071
                                PREV_CHAR(cptr, s->cbuf);
    8004d1d4:	4509                	li	a0,2
get_u32():
quickjs-nuttx/cutils.h:170
    8004d1d6:	0722                	slli	a4,a4,0x8
    8004d1d8:	8f5d                	or	a4,a4,a5
    8004d1da:	00e94783          	lbu	a5,14(s2)
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2071
    8004d1de:	3ff00593          	li	a1,1023
get_u32():
quickjs-nuttx/cutils.h:170
    8004d1e2:	07c2                	slli	a5,a5,0x10
    8004d1e4:	8f5d                	or	a4,a4,a5
    8004d1e6:	00f94783          	lbu	a5,15(s2)
    8004d1ea:	07e2                	slli	a5,a5,0x18
    8004d1ec:	8fd9                	or	a5,a5,a4
    8004d1ee:	2781                	sext.w	a5,a5
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2070 (discriminator 2)
                            for(i = 0; i < char_count; i++) {
    8004d1f0:	02f69a63          	bne	a3,a5,8004d224 <lre_exec_backtrack+0x132>
get_u32():
quickjs-nuttx/cutils.h:170
    8004d1f4:	00194703          	lbu	a4,1(s2)
    8004d1f8:	00094783          	lbu	a5,0(s2)
    8004d1fc:	0722                	slli	a4,a4,0x8
    8004d1fe:	8f5d                	or	a4,a4,a5
    8004d200:	00294783          	lbu	a5,2(s2)
    8004d204:	07c2                	slli	a5,a5,0x10
    8004d206:	8f5d                	or	a4,a4,a5
    8004d208:	00394783          	lbu	a5,3(s2)
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2074
                            rs->cptr = cptr;
    8004d20c:	e880                	sd	s0,16(s1)
get_u32():
quickjs-nuttx/cutils.h:170
    8004d20e:	07e2                	slli	a5,a5,0x18
    8004d210:	8fd9                	or	a5,a5,a4
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2073
                            pc = (pc + 16) + (int)get_u32(pc);
    8004d212:	2781                	sext.w	a5,a5
    8004d214:	07c1                	addi	a5,a5,16
    8004d216:	993e                	add	s2,s2,a5
quickjs-nuttx/libregexp.c:2075
                            rs->count--;
    8004d218:	649c                	ld	a5,8(s1)
    8004d21a:	17fd                	addi	a5,a5,-1
    8004d21c:	e49c                	sd	a5,8(s1)
quickjs-nuttx/libregexp.c:2076
                            if (rs->count == 0) {
    8004d21e:	34079b63          	bnez	a5,8004d574 <lre_exec_backtrack+0x482>
    8004d222:	a415                	j	8004d446 <lre_exec_backtrack+0x354>
quickjs-nuttx/libregexp.c:2071
                                PREV_CHAR(cptr, s->cbuf);
    8004d224:	fff40713          	addi	a4,s0,-1
    8004d228:	02098863          	beqz	s3,8004d258 <lre_exec_backtrack+0x166>
quickjs-nuttx/libregexp.c:2071 (discriminator 2)
    8004d22c:	ffe40713          	addi	a4,s0,-2
    8004d230:	02a99463          	bne	s3,a0,8004d258 <lre_exec_backtrack+0x166>
quickjs-nuttx/libregexp.c:2071 (discriminator 4)
    8004d234:	ffe45603          	lhu	a2,-2(s0)
    8004d238:	0146063b          	addw	a2,a2,s4
    8004d23c:	00c5ee63          	bltu	a1,a2,8004d258 <lre_exec_backtrack+0x166>
quickjs-nuttx/libregexp.c:2071 (discriminator 6)
    8004d240:	000cb603          	ld	a2,0(s9)
    8004d244:	00e67a63          	bgeu	a2,a4,8004d258 <lre_exec_backtrack+0x166>
quickjs-nuttx/libregexp.c:2071 (discriminator 8)
    8004d248:	ffc45603          	lhu	a2,-4(s0)
    8004d24c:	0156063b          	addw	a2,a2,s5
    8004d250:	00c5e463          	bltu	a1,a2,8004d258 <lre_exec_backtrack+0x166>
quickjs-nuttx/libregexp.c:2071 (discriminator 10)
    8004d254:	ffc40713          	addi	a4,s0,-4
quickjs-nuttx/libregexp.c:2070 (discriminator 12)
                            for(i = 0; i < char_count; i++) {
    8004d258:	2685                	addiw	a3,a3,1
    8004d25a:	843a                	mv	s0,a4
    8004d25c:	bf51                	j	8004d1f0 <lre_exec_backtrack+0xfe>
quickjs-nuttx/libregexp.c:2082
                        ret = ((rs->type == RE_EXEC_STATE_LOOKAHEAD && ret) ||
    8004d25e:	00c71763          	bne	a4,a2,8004d26c <lre_exec_backtrack+0x17a>
quickjs-nuttx/libregexp.c:2082 (discriminator 1)
    8004d262:	1a041f63          	bnez	s0,8004d420 <lre_exec_backtrack+0x32e>
quickjs-nuttx/libregexp.c:2092
                    s->state_stack_len--;
    8004d266:	04fcb423          	sd	a5,72(s9)
quickjs-nuttx/libregexp.c:2040
                    if (s->state_stack_len == 0)
    8004d26a:	a249                	j	8004d3ec <lre_exec_backtrack+0x2fa>
quickjs-nuttx/libregexp.c:2082 (discriminator 4)
                        ret = ((rs->type == RE_EXEC_STATE_LOOKAHEAD && ret) ||
    8004d26c:	00a71463          	bne	a4,a0,8004d274 <lre_exec_backtrack+0x182>
quickjs-nuttx/libregexp.c:2083
                               (rs->type == RE_EXEC_STATE_NEGATIVE_LOOKAHEAD && !ret));
    8004d270:	1a040063          	beqz	s0,8004d410 <lre_exec_backtrack+0x31e>
quickjs-nuttx/libregexp.c:2082
                        ret = ((rs->type == RE_EXEC_STATE_LOOKAHEAD && ret) ||
    8004d274:	4401                	li	s0,0
    8004d276:	bfc5                	j	8004d266 <lre_exec_backtrack+0x174>
get_u32():
quickjs-nuttx/cutils.h:170
    8004d278:	0024c703          	lbu	a4,2(s1)
    8004d27c:	0014c783          	lbu	a5,1(s1)
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2098
            pc += 4;
    8004d280:	00548913          	addi	s2,s1,5
get_u32():
quickjs-nuttx/cutils.h:170
    8004d284:	0722                	slli	a4,a4,0x8
    8004d286:	8f5d                	or	a4,a4,a5
    8004d288:	0034c783          	lbu	a5,3(s1)
    8004d28c:	07c2                	slli	a5,a5,0x10
    8004d28e:	8f5d                	or	a4,a4,a5
    8004d290:	0044c783          	lbu	a5,4(s1)
    8004d294:	07e2                	slli	a5,a5,0x18
    8004d296:	8fd9                	or	a5,a5,a4
    8004d298:	00078d1b          	sext.w	s10,a5
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2104
            if (cptr >= cbuf_end)
    8004d29c:	15647163          	bgeu	s0,s6,8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2106
            GET_CHAR(c, cptr, cbuf_end);
    8004d2a0:	02099c63          	bnez	s3,8004d2d8 <lre_exec_backtrack+0x1e6>
quickjs-nuttx/libregexp.c:2106 (discriminator 1)
    8004d2a4:	00044503          	lbu	a0,0(s0)
    8004d2a8:	00140493          	addi	s1,s0,1
quickjs-nuttx/libregexp.c:2107 (discriminator 12)
            if (s->ignore_case) {
    8004d2ac:	020ca703          	lw	a4,32(s9)
    8004d2b0:	c711                	beqz	a4,8004d2bc <lre_exec_backtrack+0x1ca>
quickjs-nuttx/libregexp.c:2108
                c = lre_canonicalize(c, s->is_utf16);
    8004d2b2:	024ca583          	lw	a1,36(s9)
    8004d2b6:	1dc030ef          	jal	ra,80050492 <lre_canonicalize>
    8004d2ba:	2501                	sext.w	a0,a0
quickjs-nuttx/libregexp.c:2110
            if (val != c)
    8004d2bc:	12ad1163          	bne	s10,a0,8004d3de <lre_exec_backtrack+0x2ec>
    8004d2c0:	8426                	mv	s0,s1
    8004d2c2:	ac4d                	j	8004d574 <lre_exec_backtrack+0x482>
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8004d2c4:	0024c783          	lbu	a5,2(s1)
    8004d2c8:	0014c703          	lbu	a4,1(s1)
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2102
            pc += 2;
    8004d2cc:	00348913          	addi	s2,s1,3
get_u16():
quickjs-nuttx/cutils.h:185
    8004d2d0:	07a2                	slli	a5,a5,0x8
    8004d2d2:	00e7ed33          	or	s10,a5,a4
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2102
    8004d2d6:	b7d9                	j	8004d29c <lre_exec_backtrack+0x1aa>
quickjs-nuttx/libregexp.c:2106 (discriminator 2)
            GET_CHAR(c, cptr, cbuf_end);
    8004d2d8:	00045503          	lhu	a0,0(s0)
    8004d2dc:	3ff00613          	li	a2,1023
    8004d2e0:	00240493          	addi	s1,s0,2
    8004d2e4:	015506bb          	addw	a3,a0,s5
    8004d2e8:	fcd662e3          	bltu	a2,a3,8004d2ac <lre_exec_backtrack+0x1ba>
quickjs-nuttx/libregexp.c:2106 (discriminator 4)
    8004d2ec:	4689                	li	a3,2
    8004d2ee:	fad99fe3          	bne	s3,a3,8004d2ac <lre_exec_backtrack+0x1ba>
quickjs-nuttx/libregexp.c:2106 (discriminator 6)
    8004d2f2:	fb64fde3          	bgeu	s1,s6,8004d2ac <lre_exec_backtrack+0x1ba>
quickjs-nuttx/libregexp.c:2106 (discriminator 8)
    8004d2f6:	00245683          	lhu	a3,2(s0)
    8004d2fa:	00da05bb          	addw	a1,s4,a3
    8004d2fe:	fab667e3          	bltu	a2,a1,8004d2ac <lre_exec_backtrack+0x1ba>
quickjs-nuttx/libregexp.c:2106 (discriminator 10)
    8004d302:	00a5171b          	slliw	a4,a0,0xa
    8004d306:	00100537          	lui	a0,0x100
    8004d30a:	c0050513          	addi	a0,a0,-1024 # ffc00 <asinh-0x7ff00400>
    8004d30e:	8d79                	and	a0,a0,a4
    8004d310:	3ff6f713          	andi	a4,a3,1023
    8004d314:	8f49                	or	a4,a4,a0
    8004d316:	6541                	lui	a0,0x10
    8004d318:	9d39                	addw	a0,a0,a4
    8004d31a:	00440493          	addi	s1,s0,4
    8004d31e:	b779                	j	8004d2ac <lre_exec_backtrack+0x1ba>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8004d320:	0024c783          	lbu	a5,2(s1)
    8004d324:	0014c903          	lbu	s2,1(s1)
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2119
                pc += 4;
    8004d328:	00548713          	addi	a4,s1,5
get_u32():
quickjs-nuttx/cutils.h:170
    8004d32c:	07a2                	slli	a5,a5,0x8
    8004d32e:	0127e7b3          	or	a5,a5,s2
    8004d332:	0034c903          	lbu	s2,3(s1)
    8004d336:	0942                	slli	s2,s2,0x10
    8004d338:	00f967b3          	or	a5,s2,a5
    8004d33c:	0044c903          	lbu	s2,4(s1)
    8004d340:	0962                	slli	s2,s2,0x18
    8004d342:	00f96933          	or	s2,s2,a5
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2121
                    pc1 = pc + (int)val;
    8004d346:	2901                	sext.w	s2,s2
quickjs-nuttx/libregexp.c:2120
                if (opcode == REOP_split_next_first) {
    8004d348:	47a5                	li	a5,9
quickjs-nuttx/libregexp.c:2121
                    pc1 = pc + (int)val;
    8004d34a:	993a                	add	s2,s2,a4
quickjs-nuttx/libregexp.c:2120
                if (opcode == REOP_split_next_first) {
    8004d34c:	00fd1563          	bne	s10,a5,8004d356 <lre_exec_backtrack+0x264>
    8004d350:	87ca                	mv	a5,s2
quickjs-nuttx/libregexp.c:2119
                pc += 4;
    8004d352:	893a                	mv	s2,a4
quickjs-nuttx/libregexp.c:2121
                    pc1 = pc + (int)val;
    8004d354:	873e                	mv	a4,a5
quickjs-nuttx/libregexp.c:2126
                ret = push_state(s, capture, stack, stack_len,
    8004d356:	4881                	li	a7,0
    8004d358:	4801                	li	a6,0
    8004d35a:	87a2                	mv	a5,s0
    8004d35c:	86ee                	mv	a3,s11
    8004d35e:	8662                	mv	a2,s8
    8004d360:	85de                	mv	a1,s7
    8004d362:	8566                	mv	a0,s9
    8004d364:	c41ff0ef          	jal	ra,8004cfa4 <push_state>
quickjs-nuttx/libregexp.c:2128
                if (ret < 0)
    8004d368:	20055663          	bgez	a0,8004d574 <lre_exec_backtrack+0x482>
quickjs-nuttx/libregexp.c:2129
                    return -1;
    8004d36c:	557d                	li	a0,-1
    8004d36e:	bbfd                	j	8004d16c <lre_exec_backtrack+0x7a>
get_u32():
quickjs-nuttx/cutils.h:170
    8004d370:	0024c783          	lbu	a5,2(s1)
    8004d374:	0014c703          	lbu	a4,1(s1)
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2135
            pc += 4;
    8004d378:	00548913          	addi	s2,s1,5
get_u32():
quickjs-nuttx/cutils.h:170
    8004d37c:	07a2                	slli	a5,a5,0x8
    8004d37e:	8fd9                	or	a5,a5,a4
    8004d380:	0034c703          	lbu	a4,3(s1)
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2136
            ret = push_state(s, capture, stack, stack_len,
    8004d384:	4881                	li	a7,0
    8004d386:	fead081b          	addiw	a6,s10,-22
get_u32():
quickjs-nuttx/cutils.h:170
    8004d38a:	0742                	slli	a4,a4,0x10
    8004d38c:	8fd9                	or	a5,a5,a4
    8004d38e:	0044c703          	lbu	a4,4(s1)
    8004d392:	0762                	slli	a4,a4,0x18
    8004d394:	8f5d                	or	a4,a4,a5
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2137
                             pc + (int)val, cptr,
    8004d396:	2701                	sext.w	a4,a4
quickjs-nuttx/libregexp.c:2136
            ret = push_state(s, capture, stack, stack_len,
    8004d398:	87a2                	mv	a5,s0
    8004d39a:	974a                	add	a4,a4,s2
    8004d39c:	b7c1                	j	8004d35c <lre_exec_backtrack+0x26a>
get_u32():
quickjs-nuttx/cutils.h:170
    8004d39e:	0024c703          	lbu	a4,2(s1)
    8004d3a2:	0014c783          	lbu	a5,1(s1)
    8004d3a6:	0722                	slli	a4,a4,0x8
    8004d3a8:	8f5d                	or	a4,a4,a5
    8004d3aa:	0034c783          	lbu	a5,3(s1)
    8004d3ae:	07c2                	slli	a5,a5,0x10
    8004d3b0:	8f5d                	or	a4,a4,a5
    8004d3b2:	0044c783          	lbu	a5,4(s1)
    8004d3b6:	07e2                	slli	a5,a5,0x18
    8004d3b8:	8fd9                	or	a5,a5,a4
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2146
            pc += 4 + (int)val;
    8004d3ba:	2791                	addiw	a5,a5,4
quickjs-nuttx/libregexp.c:2210
                pc += (int)val;
    8004d3bc:	993e                	add	s2,s2,a5
    8004d3be:	aa5d                	j	8004d574 <lre_exec_backtrack+0x482>
quickjs-nuttx/libregexp.c:2149
            if (cptr == s->cbuf)
    8004d3c0:	000cb783          	ld	a5,0(s9)
    8004d3c4:	1a878863          	beq	a5,s0,8004d574 <lre_exec_backtrack+0x482>
quickjs-nuttx/libregexp.c:2151
            if (!s->multi_line)
    8004d3c8:	01cca703          	lw	a4,28(s9)
    8004d3cc:	cb09                	beqz	a4,8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2153
            PEEK_PREV_CHAR(c, cptr, s->cbuf);
    8004d3ce:	08099263          	bnez	s3,8004d452 <lre_exec_backtrack+0x360>
quickjs-nuttx/libregexp.c:2153 (discriminator 1)
    8004d3d2:	fff44503          	lbu	a0,-1(s0)
quickjs-nuttx/libregexp.c:2163 (discriminator 12)
            if (!is_line_terminator(c))
    8004d3d6:	ccfff0ef          	jal	ra,8004d0a4 <is_line_terminator>
    8004d3da:	18051d63          	bnez	a0,8004d574 <lre_exec_backtrack+0x482>
quickjs-nuttx/libregexp.c:2035
                if (no_recurse)
    8004d3de:	67a2                	ld	a5,8(sp)
    8004d3e0:	0e0796e3          	bnez	a5,8004dccc <lre_exec_backtrack+0xbda>
quickjs-nuttx/libregexp.c:2037
                ret = 0;
    8004d3e4:	4401                	li	s0,0
quickjs-nuttx/libregexp.c:2058
                    } else if (rs->type == RE_EXEC_STATE_GREEDY_QUANT) {
    8004d3e6:	468d                	li	a3,3
quickjs-nuttx/libregexp.c:2082
                        ret = ((rs->type == RE_EXEC_STATE_LOOKAHEAD && ret) ||
    8004d3e8:	4605                	li	a2,1
    8004d3ea:	4509                	li	a0,2
quickjs-nuttx/libregexp.c:2040
                    if (s->state_stack_len == 0)
    8004d3ec:	048cb783          	ld	a5,72(s9)
    8004d3f0:	d6078de3          	beqz	a5,8004d16a <lre_exec_backtrack+0x78>
quickjs-nuttx/libregexp.c:2043
                                         (s->state_stack_len - 1) * s->state_size);
    8004d3f4:	030cb483          	ld	s1,48(s9)
    8004d3f8:	17fd                	addi	a5,a5,-1
    8004d3fa:	029785b3          	mul	a1,a5,s1
quickjs-nuttx/libregexp.c:2042
                    rs = (REExecState *)(s->state_stack +
    8004d3fe:	038cb483          	ld	s1,56(s9)
    8004d402:	94ae                	add	s1,s1,a1
quickjs-nuttx/libregexp.c:2044
                    if (rs->type == RE_EXEC_STATE_SPLIT) {
    8004d404:	0004c703          	lbu	a4,0(s1)
    8004d408:	d80713e3          	bnez	a4,8004d18e <lre_exec_backtrack+0x9c>
quickjs-nuttx/libregexp.c:2045
                        if (!ret) {
    8004d40c:	e4041de3          	bnez	s0,8004d266 <lre_exec_backtrack+0x174>
quickjs-nuttx/libregexp.c:2048
                                   sizeof(capture[0]) * 2 * s->capture_count);
    8004d410:	014ca603          	lw	a2,20(s9)
quickjs-nuttx/libregexp.c:2047
                            memcpy(capture, rs->buf,
    8004d414:	02048593          	addi	a1,s1,32
    8004d418:	855e                	mv	a0,s7
    8004d41a:	0612                	slli	a2,a2,0x4
    8004d41c:	191160ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/libregexp.c:2053
                            memcpy(stack, rs->buf + 2 * s->capture_count,
    8004d420:	014ca783          	lw	a5,20(s9)
quickjs-nuttx/libregexp.c:2052
                            stack_len = rs->stack_len;
    8004d424:	0014c603          	lbu	a2,1(s1)
quickjs-nuttx/libregexp.c:2053
                            memcpy(stack, rs->buf + 2 * s->capture_count,
    8004d428:	02048593          	addi	a1,s1,32
    8004d42c:	0017979b          	slliw	a5,a5,0x1
    8004d430:	078e                	slli	a5,a5,0x3
quickjs-nuttx/libregexp.c:2052
                            stack_len = rs->stack_len;
    8004d432:	00060d9b          	sext.w	s11,a2
quickjs-nuttx/libregexp.c:2053
                            memcpy(stack, rs->buf + 2 * s->capture_count,
    8004d436:	95be                	add	a1,a1,a5
    8004d438:	060e                	slli	a2,a2,0x3
    8004d43a:	8562                	mv	a0,s8
quickjs-nuttx/libregexp.c:2050
                            pc = rs->pc;
    8004d43c:	0184b903          	ld	s2,24(s1)
quickjs-nuttx/libregexp.c:2051
                            cptr = rs->cptr;
    8004d440:	6880                	ld	s0,16(s1)
quickjs-nuttx/libregexp.c:2053
                            memcpy(stack, rs->buf + 2 * s->capture_count,
    8004d442:	16b160ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/libregexp.c:2077
                                s->state_stack_len--;
    8004d446:	048cb783          	ld	a5,72(s9)
    8004d44a:	17fd                	addi	a5,a5,-1
    8004d44c:	04fcb423          	sd	a5,72(s9)
    8004d450:	a215                	j	8004d574 <lre_exec_backtrack+0x482>
quickjs-nuttx/libregexp.c:2153 (discriminator 2)
            PEEK_PREV_CHAR(c, cptr, s->cbuf);
    8004d452:	ffe45703          	lhu	a4,-2(s0)
    8004d456:	3ff00693          	li	a3,1023
    8004d45a:	00ea063b          	addw	a2,s4,a4
    8004d45e:	0007051b          	sext.w	a0,a4
    8004d462:	f6c6eae3          	bltu	a3,a2,8004d3d6 <lre_exec_backtrack+0x2e4>
quickjs-nuttx/libregexp.c:2153 (discriminator 4)
    8004d466:	4609                	li	a2,2
    8004d468:	f6c997e3          	bne	s3,a2,8004d3d6 <lre_exec_backtrack+0x2e4>
quickjs-nuttx/libregexp.c:2153 (discriminator 6)
    8004d46c:	ffc40613          	addi	a2,s0,-4
    8004d470:	f6f663e3          	bltu	a2,a5,8004d3d6 <lre_exec_backtrack+0x2e4>
quickjs-nuttx/libregexp.c:2153 (discriminator 8)
    8004d474:	ffc45783          	lhu	a5,-4(s0)
    8004d478:	0157863b          	addw	a2,a5,s5
quickjs-nuttx/libregexp.c:2162 (discriminator 8)
            PEEK_CHAR(c, cptr, cbuf_end);
    8004d47c:	f4c6ede3          	bltu	a3,a2,8004d3d6 <lre_exec_backtrack+0x2e4>
quickjs-nuttx/libregexp.c:2162 (discriminator 10)
    8004d480:	00100537          	lui	a0,0x100
    8004d484:	00a7979b          	slliw	a5,a5,0xa
    8004d488:	c0050513          	addi	a0,a0,-1024 # ffc00 <asinh-0x7ff00400>
    8004d48c:	8d7d                	and	a0,a0,a5
    8004d48e:	3ff77713          	andi	a4,a4,1023
    8004d492:	8d59                	or	a0,a0,a4
    8004d494:	67c1                	lui	a5,0x10
    8004d496:	9d3d                	addw	a0,a0,a5
    8004d498:	bf3d                	j	8004d3d6 <lre_exec_backtrack+0x2e4>
quickjs-nuttx/libregexp.c:2158
            if (cptr == cbuf_end)
    8004d49a:	0d640d63          	beq	s0,s6,8004d574 <lre_exec_backtrack+0x482>
quickjs-nuttx/libregexp.c:2160
            if (!s->multi_line)
    8004d49e:	01cca783          	lw	a5,28(s9)
    8004d4a2:	df95                	beqz	a5,8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2162
            PEEK_CHAR(c, cptr, cbuf_end);
    8004d4a4:	00099563          	bnez	s3,8004d4ae <lre_exec_backtrack+0x3bc>
quickjs-nuttx/libregexp.c:2162 (discriminator 1)
    8004d4a8:	00044503          	lbu	a0,0(s0)
    8004d4ac:	b72d                	j	8004d3d6 <lre_exec_backtrack+0x2e4>
quickjs-nuttx/libregexp.c:2162 (discriminator 2)
    8004d4ae:	00045503          	lhu	a0,0(s0)
    8004d4b2:	3ff00693          	li	a3,1023
    8004d4b6:	0155073b          	addw	a4,a0,s5
    8004d4ba:	87aa                	mv	a5,a0
    8004d4bc:	f0e6ede3          	bltu	a3,a4,8004d3d6 <lre_exec_backtrack+0x2e4>
quickjs-nuttx/libregexp.c:2162 (discriminator 4)
    8004d4c0:	4709                	li	a4,2
    8004d4c2:	f0e99ae3          	bne	s3,a4,8004d3d6 <lre_exec_backtrack+0x2e4>
quickjs-nuttx/libregexp.c:2162 (discriminator 6)
    8004d4c6:	00240713          	addi	a4,s0,2
    8004d4ca:	f16776e3          	bgeu	a4,s6,8004d3d6 <lre_exec_backtrack+0x2e4>
quickjs-nuttx/libregexp.c:2162 (discriminator 8)
    8004d4ce:	00245703          	lhu	a4,2(s0)
    8004d4d2:	00ea063b          	addw	a2,s4,a4
    8004d4d6:	b75d                	j	8004d47c <lre_exec_backtrack+0x38a>
quickjs-nuttx/libregexp.c:2167
            if (cptr == cbuf_end)
    8004d4d8:	f16403e3          	beq	s0,s6,8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2169
            GET_CHAR(c, cptr, cbuf_end);
    8004d4dc:	00099b63          	bnez	s3,8004d4f2 <lre_exec_backtrack+0x400>
quickjs-nuttx/libregexp.c:2169 (discriminator 1)
    8004d4e0:	00044503          	lbu	a0,0(s0)
    8004d4e4:	00140493          	addi	s1,s0,1
quickjs-nuttx/libregexp.c:2170 (discriminator 12)
            if (is_line_terminator(c))
    8004d4e8:	bbdff0ef          	jal	ra,8004d0a4 <is_line_terminator>
    8004d4ec:	dc050ae3          	beqz	a0,8004d2c0 <lre_exec_backtrack+0x1ce>
    8004d4f0:	b5fd                	j	8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2169 (discriminator 2)
            GET_CHAR(c, cptr, cbuf_end);
    8004d4f2:	00045503          	lhu	a0,0(s0)
    8004d4f6:	3ff00693          	li	a3,1023
    8004d4fa:	00240493          	addi	s1,s0,2
    8004d4fe:	0155073b          	addw	a4,a0,s5
    8004d502:	fee6e3e3          	bltu	a3,a4,8004d4e8 <lre_exec_backtrack+0x3f6>
quickjs-nuttx/libregexp.c:2169 (discriminator 4)
    8004d506:	4709                	li	a4,2
    8004d508:	fee990e3          	bne	s3,a4,8004d4e8 <lre_exec_backtrack+0x3f6>
quickjs-nuttx/libregexp.c:2169 (discriminator 6)
    8004d50c:	fd64fee3          	bgeu	s1,s6,8004d4e8 <lre_exec_backtrack+0x3f6>
quickjs-nuttx/libregexp.c:2169 (discriminator 8)
    8004d510:	00245703          	lhu	a4,2(s0)
    8004d514:	00ea063b          	addw	a2,s4,a4
    8004d518:	fcc6e8e3          	bltu	a3,a2,8004d4e8 <lre_exec_backtrack+0x3f6>
quickjs-nuttx/libregexp.c:2169 (discriminator 10)
    8004d51c:	00a5179b          	slliw	a5,a0,0xa
    8004d520:	00100537          	lui	a0,0x100
    8004d524:	c0050513          	addi	a0,a0,-1024 # ffc00 <asinh-0x7ff00400>
    8004d528:	8d7d                	and	a0,a0,a5
    8004d52a:	3ff77713          	andi	a4,a4,1023
    8004d52e:	8d59                	or	a0,a0,a4
    8004d530:	67c1                	lui	a5,0x10
    8004d532:	9d3d                	addw	a0,a0,a5
    8004d534:	00440493          	addi	s1,s0,4
    8004d538:	bf45                	j	8004d4e8 <lre_exec_backtrack+0x3f6>
quickjs-nuttx/libregexp.c:2174
            if (cptr == cbuf_end)
    8004d53a:	eb6402e3          	beq	s0,s6,8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2176
            GET_CHAR(c, cptr, cbuf_end);
    8004d53e:	00099463          	bnez	s3,8004d546 <lre_exec_backtrack+0x454>
quickjs-nuttx/libregexp.c:2176 (discriminator 1)
    8004d542:	0405                	addi	s0,s0,1
    8004d544:	a805                	j	8004d574 <lre_exec_backtrack+0x482>
quickjs-nuttx/libregexp.c:2176 (discriminator 2)
    8004d546:	00045703          	lhu	a4,0(s0)
    8004d54a:	3ff00693          	li	a3,1023
    8004d54e:	00240793          	addi	a5,s0,2
    8004d552:	0157073b          	addw	a4,a4,s5
    8004d556:	00e6ee63          	bltu	a3,a4,8004d572 <lre_exec_backtrack+0x480>
quickjs-nuttx/libregexp.c:2176 (discriminator 4)
    8004d55a:	4709                	li	a4,2
    8004d55c:	00e99b63          	bne	s3,a4,8004d572 <lre_exec_backtrack+0x480>
quickjs-nuttx/libregexp.c:2176 (discriminator 6)
    8004d560:	0167f963          	bgeu	a5,s6,8004d572 <lre_exec_backtrack+0x480>
quickjs-nuttx/libregexp.c:2176 (discriminator 8)
    8004d564:	00245703          	lhu	a4,2(s0)
    8004d568:	0411                	addi	s0,s0,4
    8004d56a:	0147073b          	addw	a4,a4,s4
    8004d56e:	00e6f363          	bgeu	a3,a4,8004d574 <lre_exec_backtrack+0x482>
    8004d572:	843e                	mv	s0,a5
quickjs-nuttx/libregexp.c:2381
                pc += (int)next_pos;
    8004d574:	84ca                	mv	s1,s2
    8004d576:	b6d1                	j	8004d13a <lre_exec_backtrack+0x48>
quickjs-nuttx/libregexp.c:2180
            val = *pc++;
    8004d578:	0014c683          	lbu	a3,1(s1)
quickjs-nuttx/libregexp.c:2181
            assert(val < s->capture_count);
    8004d57c:	014ca603          	lw	a2,20(s9)
quickjs-nuttx/libregexp.c:2180
            val = *pc++;
    8004d580:	00248913          	addi	s2,s1,2
quickjs-nuttx/libregexp.c:2181
            assert(val < s->capture_count);
    8004d584:	00c6ec63          	bltu	a3,a2,8004d59c <lre_exec_backtrack+0x4aa>
quickjs-nuttx/libregexp.c:2181 (discriminator 1)
    8004d588:	6585                	lui	a1,0x1
    8004d58a:	4601                	li	a2,0
    8004d58c:	88558593          	addi	a1,a1,-1915 # 885 <asinh-0x7ffff77b>
quickjs-nuttx/libregexp.c:2190 (discriminator 1)
                assert(val2 < s->capture_count);
    8004d590:	00028517          	auipc	a0,0x28
    8004d594:	ca850513          	addi	a0,a0,-856 # 80075238 <unescaped_chars.0+0x48>
    8004d598:	3c4130ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libregexp.c:2182 (discriminator 2)
            capture[2 * val + opcode - REOP_save_start] = (uint8_t *)cptr;
    8004d59c:	0016971b          	slliw	a4,a3,0x1
    8004d5a0:	37d5                	addiw	a5,a5,-11
    8004d5a2:	9fb9                	addw	a5,a5,a4
    8004d5a4:	02079713          	slli	a4,a5,0x20
    8004d5a8:	01d75793          	srli	a5,a4,0x1d
    8004d5ac:	97de                	add	a5,a5,s7
    8004d5ae:	e380                	sd	s0,0(a5)
quickjs-nuttx/libregexp.c:2183 (discriminator 2)
            break;
    8004d5b0:	b7d1                	j	8004d574 <lre_exec_backtrack+0x482>
quickjs-nuttx/libregexp.c:2188
                val2 = pc[1];
    8004d5b2:	0024c603          	lbu	a2,2(s1)
quickjs-nuttx/libregexp.c:2190
                assert(val2 < s->capture_count);
    8004d5b6:	014ca703          	lw	a4,20(s9)
quickjs-nuttx/libregexp.c:2187
                val = pc[0];
    8004d5ba:	0014c683          	lbu	a3,1(s1)
quickjs-nuttx/libregexp.c:2189
                pc += 2;
    8004d5be:	00348913          	addi	s2,s1,3
quickjs-nuttx/libregexp.c:2190
                assert(val2 < s->capture_count);
    8004d5c2:	02e67663          	bgeu	a2,a4,8004d5ee <lre_exec_backtrack+0x4fc>
    8004d5c6:	0016979b          	slliw	a5,a3,0x1
    8004d5ca:	02079713          	slli	a4,a5,0x20
    8004d5ce:	2785                	addiw	a5,a5,1
    8004d5d0:	1782                	slli	a5,a5,0x20
    8004d5d2:	8375                	srli	a4,a4,0x1d
    8004d5d4:	83f5                	srli	a5,a5,0x1d
    8004d5d6:	975e                	add	a4,a4,s7
    8004d5d8:	97de                	add	a5,a5,s7
quickjs-nuttx/libregexp.c:2191
                while (val <= val2) {
    8004d5da:	f8d66de3          	bltu	a2,a3,8004d574 <lre_exec_backtrack+0x482>
quickjs-nuttx/libregexp.c:2192
                    capture[2 * val] = NULL;
    8004d5de:	00073023          	sd	zero,0(a4)
quickjs-nuttx/libregexp.c:2193
                    capture[2 * val + 1] = NULL;
    8004d5e2:	0007b023          	sd	zero,0(a5) # 10000 <asinh-0x7fff0000>
quickjs-nuttx/libregexp.c:2194
                    val++;
    8004d5e6:	2685                	addiw	a3,a3,1
    8004d5e8:	0741                	addi	a4,a4,16
    8004d5ea:	07c1                	addi	a5,a5,16
    8004d5ec:	b7fd                	j	8004d5da <lre_exec_backtrack+0x4e8>
quickjs-nuttx/libregexp.c:2190 (discriminator 1)
                assert(val2 < s->capture_count);
    8004d5ee:	6585                	lui	a1,0x1
    8004d5f0:	4601                	li	a2,0
    8004d5f2:	88e58593          	addi	a1,a1,-1906 # 88e <asinh-0x7ffff772>
    8004d5f6:	bf69                	j	8004d590 <lre_exec_backtrack+0x49e>
get_u32():
quickjs-nuttx/cutils.h:170
    8004d5f8:	0024c703          	lbu	a4,2(s1)
    8004d5fc:	0014c783          	lbu	a5,1(s1)
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2201
            stack[stack_len++] = val;
    8004d600:	003d9693          	slli	a3,s11,0x3
get_u32():
quickjs-nuttx/cutils.h:170
    8004d604:	0722                	slli	a4,a4,0x8
    8004d606:	8f5d                	or	a4,a4,a5
    8004d608:	0034c783          	lbu	a5,3(s1)
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2201
    8004d60c:	96e2                	add	a3,a3,s8
quickjs-nuttx/libregexp.c:2200
            pc += 4;
    8004d60e:	00548913          	addi	s2,s1,5
get_u32():
quickjs-nuttx/cutils.h:170
    8004d612:	07c2                	slli	a5,a5,0x10
    8004d614:	8f5d                	or	a4,a4,a5
    8004d616:	0044c783          	lbu	a5,4(s1)
    8004d61a:	07e2                	slli	a5,a5,0x18
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2201
            stack[stack_len++] = val;
    8004d61c:	8fd9                	or	a5,a5,a4
    8004d61e:	e29c                	sd	a5,0(a3)
quickjs-nuttx/libregexp.c:2214
            stack[stack_len++] = (uintptr_t)cptr;
    8004d620:	2d85                	addiw	s11,s11,1
quickjs-nuttx/libregexp.c:2215
            break;
    8004d622:	bf89                	j	8004d574 <lre_exec_backtrack+0x482>
quickjs-nuttx/libregexp.c:2204
            stack_len--;
    8004d624:	3dfd                	addiw	s11,s11,-1
quickjs-nuttx/libregexp.c:2205
            break;
    8004d626:	b7b9                	j	8004d574 <lre_exec_backtrack+0x482>
get_u32():
quickjs-nuttx/cutils.h:170
    8004d628:	0024c703          	lbu	a4,2(s1)
    8004d62c:	0014c783          	lbu	a5,1(s1)
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2208
            pc += 4;
    8004d630:	00548913          	addi	s2,s1,5
get_u32():
quickjs-nuttx/cutils.h:170
    8004d634:	0722                	slli	a4,a4,0x8
    8004d636:	8f5d                	or	a4,a4,a5
    8004d638:	0034c783          	lbu	a5,3(s1)
    8004d63c:	07c2                	slli	a5,a5,0x10
    8004d63e:	8f5d                	or	a4,a4,a5
    8004d640:	0044c783          	lbu	a5,4(s1)
    8004d644:	07e2                	slli	a5,a5,0x18
    8004d646:	8fd9                	or	a5,a5,a4
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2209
            if (--stack[stack_len - 1] != 0) {
    8004d648:	fffd871b          	addiw	a4,s11,-1
    8004d64c:	070e                	slli	a4,a4,0x3
    8004d64e:	9762                	add	a4,a4,s8
    8004d650:	6314                	ld	a3,0(a4)
get_u32():
quickjs-nuttx/cutils.h:170
    8004d652:	2781                	sext.w	a5,a5
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2209
    8004d654:	16fd                	addi	a3,a3,-1
    8004d656:	e314                	sd	a3,0(a4)
    8004d658:	de91                	beqz	a3,8004d574 <lre_exec_backtrack+0x482>
    8004d65a:	b38d                	j	8004d3bc <lre_exec_backtrack+0x2ca>
quickjs-nuttx/libregexp.c:2214
            stack[stack_len++] = (uintptr_t)cptr;
    8004d65c:	003d9793          	slli	a5,s11,0x3
    8004d660:	97e2                	add	a5,a5,s8
    8004d662:	e380                	sd	s0,0(a5)
    8004d664:	bf75                	j	8004d620 <lre_exec_backtrack+0x52e>
quickjs-nuttx/libregexp.c:2217
            if (stack[--stack_len] == (uintptr_t)cptr)
    8004d666:	3dfd                	addiw	s11,s11,-1
    8004d668:	003d9793          	slli	a5,s11,0x3
    8004d66c:	97e2                	add	a5,a5,s8
    8004d66e:	639c                	ld	a5,0(a5)
    8004d670:	f0f412e3          	bne	s0,a5,8004d574 <lre_exec_backtrack+0x482>
    8004d674:	b3ad                	j	8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2225
                if (cptr == s->cbuf) {
    8004d676:	000cb783          	ld	a5,0(s9)
quickjs-nuttx/libregexp.c:2226
                    v1 = FALSE;
    8004d67a:	4481                	li	s1,0
quickjs-nuttx/libregexp.c:2225
                if (cptr == s->cbuf) {
    8004d67c:	00878963          	beq	a5,s0,8004d68e <lre_exec_backtrack+0x59c>
quickjs-nuttx/libregexp.c:2228
                    PEEK_PREV_CHAR(c, cptr, s->cbuf);
    8004d680:	02099863          	bnez	s3,8004d6b0 <lre_exec_backtrack+0x5be>
quickjs-nuttx/libregexp.c:2228 (discriminator 1)
    8004d684:	fff44503          	lbu	a0,-1(s0)
quickjs-nuttx/libregexp.c:2229 (discriminator 12)
                    v1 = is_word_char(c);
    8004d688:	a41ff0ef          	jal	ra,8004d0c8 <is_word_char>
    8004d68c:	84aa                	mv	s1,a0
quickjs-nuttx/libregexp.c:2233
                    v2 = FALSE;
    8004d68e:	4501                	li	a0,0
quickjs-nuttx/libregexp.c:2232
                if (cptr >= cbuf_end) {
    8004d690:	01647863          	bgeu	s0,s6,8004d6a0 <lre_exec_backtrack+0x5ae>
quickjs-nuttx/libregexp.c:2235
                    PEEK_CHAR(c, cptr, cbuf_end);
    8004d694:	06099263          	bnez	s3,8004d6f8 <lre_exec_backtrack+0x606>
quickjs-nuttx/libregexp.c:2235 (discriminator 1)
    8004d698:	00044503          	lbu	a0,0(s0)
quickjs-nuttx/libregexp.c:2236 (discriminator 12)
                    v2 = is_word_char(c);
    8004d69c:	a2dff0ef          	jal	ra,8004d0c8 <is_word_char>
quickjs-nuttx/libregexp.c:2238
                if (v1 ^ v2 ^ (REOP_not_word_boundary - opcode))
    8004d6a0:	8ca9                	xor	s1,s1,a0
    8004d6a2:	47c9                	li	a5,18
    8004d6a4:	41a7883b          	subw	a6,a5,s10
    8004d6a8:	2481                	sext.w	s1,s1
    8004d6aa:	ec9805e3          	beq	a6,s1,8004d574 <lre_exec_backtrack+0x482>
    8004d6ae:	bb05                	j	8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2228 (discriminator 2)
                    PEEK_PREV_CHAR(c, cptr, s->cbuf);
    8004d6b0:	ffe45703          	lhu	a4,-2(s0)
    8004d6b4:	3ff00693          	li	a3,1023
    8004d6b8:	00ea063b          	addw	a2,s4,a4
    8004d6bc:	0007051b          	sext.w	a0,a4
    8004d6c0:	fcc6e4e3          	bltu	a3,a2,8004d688 <lre_exec_backtrack+0x596>
quickjs-nuttx/libregexp.c:2228 (discriminator 4)
    8004d6c4:	4609                	li	a2,2
    8004d6c6:	fcc991e3          	bne	s3,a2,8004d688 <lre_exec_backtrack+0x596>
quickjs-nuttx/libregexp.c:2228 (discriminator 6)
    8004d6ca:	ffc40613          	addi	a2,s0,-4
    8004d6ce:	faf66de3          	bltu	a2,a5,8004d688 <lre_exec_backtrack+0x596>
quickjs-nuttx/libregexp.c:2228 (discriminator 8)
    8004d6d2:	ffc45783          	lhu	a5,-4(s0)
    8004d6d6:	0157863b          	addw	a2,a5,s5
    8004d6da:	fac6e7e3          	bltu	a3,a2,8004d688 <lre_exec_backtrack+0x596>
quickjs-nuttx/libregexp.c:2228 (discriminator 10)
    8004d6de:	00100537          	lui	a0,0x100
    8004d6e2:	00a7979b          	slliw	a5,a5,0xa
    8004d6e6:	c0050513          	addi	a0,a0,-1024 # ffc00 <asinh-0x7ff00400>
    8004d6ea:	8d7d                	and	a0,a0,a5
    8004d6ec:	3ff77713          	andi	a4,a4,1023
    8004d6f0:	8d59                	or	a0,a0,a4
    8004d6f2:	67c1                	lui	a5,0x10
    8004d6f4:	9d3d                	addw	a0,a0,a5
    8004d6f6:	bf49                	j	8004d688 <lre_exec_backtrack+0x596>
quickjs-nuttx/libregexp.c:2235 (discriminator 2)
                    PEEK_CHAR(c, cptr, cbuf_end);
    8004d6f8:	00045503          	lhu	a0,0(s0)
    8004d6fc:	3ff00693          	li	a3,1023
    8004d700:	0155073b          	addw	a4,a0,s5
    8004d704:	f8e6ece3          	bltu	a3,a4,8004d69c <lre_exec_backtrack+0x5aa>
quickjs-nuttx/libregexp.c:2235 (discriminator 4)
    8004d708:	4709                	li	a4,2
    8004d70a:	f8e999e3          	bne	s3,a4,8004d69c <lre_exec_backtrack+0x5aa>
quickjs-nuttx/libregexp.c:2235 (discriminator 6)
    8004d70e:	00240713          	addi	a4,s0,2
    8004d712:	f96775e3          	bgeu	a4,s6,8004d69c <lre_exec_backtrack+0x5aa>
quickjs-nuttx/libregexp.c:2235 (discriminator 8)
    8004d716:	00245703          	lhu	a4,2(s0)
    8004d71a:	00ea063b          	addw	a2,s4,a4
    8004d71e:	f6c6efe3          	bltu	a3,a2,8004d69c <lre_exec_backtrack+0x5aa>
quickjs-nuttx/libregexp.c:2235 (discriminator 10)
    8004d722:	00a5179b          	slliw	a5,a0,0xa
    8004d726:	00100537          	lui	a0,0x100
    8004d72a:	c0050513          	addi	a0,a0,-1024 # ffc00 <asinh-0x7ff00400>
    8004d72e:	8fe9                	and	a5,a5,a0
    8004d730:	3ff77713          	andi	a4,a4,1023
    8004d734:	8fd9                	or	a5,a5,a4
    8004d736:	6541                	lui	a0,0x10
    8004d738:	9d3d                	addw	a0,a0,a5
    8004d73a:	b78d                	j	8004d69c <lre_exec_backtrack+0x5aa>
quickjs-nuttx/libregexp.c:2248
                val = *pc++;
    8004d73c:	0014c703          	lbu	a4,1(s1)
quickjs-nuttx/libregexp.c:2249
                if (val >= s->capture_count)
    8004d740:	014ca683          	lw	a3,20(s9)
quickjs-nuttx/libregexp.c:2248
                val = *pc++;
    8004d744:	00248913          	addi	s2,s1,2
quickjs-nuttx/libregexp.c:2249
                if (val >= s->capture_count)
    8004d748:	c8d77be3          	bgeu	a4,a3,8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2251
                cptr1_start = capture[2 * val];
    8004d74c:	0017179b          	slliw	a5,a4,0x1
    8004d750:	02079713          	slli	a4,a5,0x20
    8004d754:	8375                	srli	a4,a4,0x1d
    8004d756:	975e                	add	a4,a4,s7
    8004d758:	6304                	ld	s1,0(a4)
quickjs-nuttx/libregexp.c:2253
                if (!cptr1_start || !cptr1_end)
    8004d75a:	e0048de3          	beqz	s1,8004d574 <lre_exec_backtrack+0x482>
quickjs-nuttx/libregexp.c:2252 (discriminator 1)
                cptr1_end = capture[2 * val + 1];
    8004d75e:	2785                	addiw	a5,a5,1
    8004d760:	1782                	slli	a5,a5,0x20
    8004d762:	83f5                	srli	a5,a5,0x1d
    8004d764:	97de                	add	a5,a5,s7
    8004d766:	639c                	ld	a5,0(a5)
quickjs-nuttx/libregexp.c:2253 (discriminator 1)
                if (!cptr1_start || !cptr1_end)
    8004d768:	e00786e3          	beqz	a5,8004d574 <lre_exec_backtrack+0x482>
quickjs-nuttx/libregexp.c:2255
                if (opcode == REOP_back_reference) {
    8004d76c:	474d                	li	a4,19
    8004d76e:	06ed1c63          	bne	s10,a4,8004d7e6 <lre_exec_backtrack+0x6f4>
quickjs-nuttx/libregexp.c:2261
                        GET_CHAR(c2, cptr, cbuf_end);
    8004d772:	00100637          	lui	a2,0x100
quickjs-nuttx/libregexp.c:2260
                        GET_CHAR(c1, cptr1, cptr1_end);
    8004d776:	3ff00693          	li	a3,1023
quickjs-nuttx/libregexp.c:2261
                        GET_CHAR(c2, cptr, cbuf_end);
    8004d77a:	4809                	li	a6,2
    8004d77c:	c0060613          	addi	a2,a2,-1024 # ffc00 <asinh-0x7ff00400>
quickjs-nuttx/libregexp.c:2257
                    while (cptr1 < cptr1_end) {
    8004d780:	def4fae3          	bgeu	s1,a5,8004d574 <lre_exec_backtrack+0x482>
quickjs-nuttx/libregexp.c:2258
                        if (cptr >= cbuf_end)
    8004d784:	c5647de3          	bgeu	s0,s6,8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2260
                        GET_CHAR(c1, cptr1, cptr1_end);
    8004d788:	0c099b63          	bnez	s3,8004d85e <lre_exec_backtrack+0x76c>
quickjs-nuttx/libregexp.c:2260 (discriminator 1)
    8004d78c:	0004c883          	lbu	a7,0(s1)
    8004d790:	00148e13          	addi	t3,s1,1
quickjs-nuttx/libregexp.c:2261 (discriminator 1)
                        GET_CHAR(c2, cptr, cbuf_end);
    8004d794:	00044483          	lbu	s1,0(s0)
    8004d798:	00140e93          	addi	t4,s0,1
quickjs-nuttx/libregexp.c:2262 (discriminator 12)
                        if (s->ignore_case) {
    8004d79c:	020ca703          	lw	a4,32(s9)
    8004d7a0:	cf15                	beqz	a4,8004d7dc <lre_exec_backtrack+0x6ea>
quickjs-nuttx/libregexp.c:2263
                            c1 = lre_canonicalize(c1, s->is_utf16);
    8004d7a2:	024ca583          	lw	a1,36(s9)
    8004d7a6:	8546                	mv	a0,a7
    8004d7a8:	f872                	sd	t3,48(sp)
    8004d7aa:	f43e                	sd	a5,40(sp)
    8004d7ac:	f076                	sd	t4,32(sp)
    8004d7ae:	4e5020ef          	jal	ra,80050492 <lre_canonicalize>
quickjs-nuttx/libregexp.c:2264
                            c2 = lre_canonicalize(c2, s->is_utf16);
    8004d7b2:	024ca583          	lw	a1,36(s9)
quickjs-nuttx/libregexp.c:2263
                            c1 = lre_canonicalize(c1, s->is_utf16);
    8004d7b6:	0005089b          	sext.w	a7,a0
quickjs-nuttx/libregexp.c:2264
                            c2 = lre_canonicalize(c2, s->is_utf16);
    8004d7ba:	8526                	mv	a0,s1
quickjs-nuttx/libregexp.c:2263
                            c1 = lre_canonicalize(c1, s->is_utf16);
    8004d7bc:	ec46                	sd	a7,24(sp)
quickjs-nuttx/libregexp.c:2264
                            c2 = lre_canonicalize(c2, s->is_utf16);
    8004d7be:	4d5020ef          	jal	ra,80050492 <lre_canonicalize>
    8004d7c2:	001007b7          	lui	a5,0x100
    8004d7c6:	c0078613          	addi	a2,a5,-1024 # ffc00 <asinh-0x7ff00400>
    8004d7ca:	7e42                	ld	t3,48(sp)
    8004d7cc:	77a2                	ld	a5,40(sp)
    8004d7ce:	7e82                	ld	t4,32(sp)
    8004d7d0:	68e2                	ld	a7,24(sp)
    8004d7d2:	0005049b          	sext.w	s1,a0
    8004d7d6:	4809                	li	a6,2
    8004d7d8:	3ff00693          	li	a3,1023
quickjs-nuttx/libregexp.c:2266
                        if (c1 != c2)
    8004d7dc:	c09891e3          	bne	a7,s1,8004d3de <lre_exec_backtrack+0x2ec>
    8004d7e0:	84f2                	mv	s1,t3
    8004d7e2:	8476                	mv	s0,t4
    8004d7e4:	bf71                	j	8004d780 <lre_exec_backtrack+0x68e>
quickjs-nuttx/libregexp.c:2275
                        GET_PREV_CHAR(c2, cptr, s->cbuf);
    8004d7e6:	001008b7          	lui	a7,0x100
quickjs-nuttx/libregexp.c:2274
                        GET_PREV_CHAR(c1, cptr1, cptr1_start);
    8004d7ea:	3ff00813          	li	a6,1023
quickjs-nuttx/libregexp.c:2275
                        GET_PREV_CHAR(c2, cptr, s->cbuf);
    8004d7ee:	4e09                	li	t3,2
    8004d7f0:	c0088893          	addi	a7,a7,-1024 # ffc00 <asinh-0x7ff00400>
quickjs-nuttx/libregexp.c:2271
                    while (cptr1 > cptr1_start) {
    8004d7f4:	d8f4f0e3          	bgeu	s1,a5,8004d574 <lre_exec_backtrack+0x482>
quickjs-nuttx/libregexp.c:2272
                        if (cptr == s->cbuf)
    8004d7f8:	000cbf03          	ld	t5,0(s9)
    8004d7fc:	be8f01e3          	beq	t5,s0,8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2274
                        GET_PREV_CHAR(c1, cptr1, cptr1_start);
    8004d800:	0c099b63          	bnez	s3,8004d8d6 <lre_exec_backtrack+0x7e4>
quickjs-nuttx/libregexp.c:2274 (discriminator 1)
    8004d804:	fff7c703          	lbu	a4,-1(a5)
    8004d808:	fff78613          	addi	a2,a5,-1
quickjs-nuttx/libregexp.c:2275 (discriminator 1)
                        GET_PREV_CHAR(c2, cptr, s->cbuf);
    8004d80c:	fff44783          	lbu	a5,-1(s0)
    8004d810:	fff40e93          	addi	t4,s0,-1
quickjs-nuttx/libregexp.c:2276 (discriminator 12)
                        if (s->ignore_case) {
    8004d814:	020ca683          	lw	a3,32(s9)
    8004d818:	ce95                	beqz	a3,8004d854 <lre_exec_backtrack+0x762>
quickjs-nuttx/libregexp.c:2277
                            c1 = lre_canonicalize(c1, s->is_utf16);
    8004d81a:	024ca583          	lw	a1,36(s9)
    8004d81e:	853a                	mv	a0,a4
    8004d820:	f832                	sd	a2,48(sp)
    8004d822:	f076                	sd	t4,32(sp)
    8004d824:	f43e                	sd	a5,40(sp)
    8004d826:	46d020ef          	jal	ra,80050492 <lre_canonicalize>
quickjs-nuttx/libregexp.c:2278
                            c2 = lre_canonicalize(c2, s->is_utf16);
    8004d82a:	77a2                	ld	a5,40(sp)
    8004d82c:	024ca583          	lw	a1,36(s9)
quickjs-nuttx/libregexp.c:2277
                            c1 = lre_canonicalize(c1, s->is_utf16);
    8004d830:	0005071b          	sext.w	a4,a0
quickjs-nuttx/libregexp.c:2278
                            c2 = lre_canonicalize(c2, s->is_utf16);
    8004d834:	853e                	mv	a0,a5
quickjs-nuttx/libregexp.c:2277
                            c1 = lre_canonicalize(c1, s->is_utf16);
    8004d836:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/libregexp.c:2278
                            c2 = lre_canonicalize(c2, s->is_utf16);
    8004d838:	45b020ef          	jal	ra,80050492 <lre_canonicalize>
    8004d83c:	00100737          	lui	a4,0x100
    8004d840:	c0070893          	addi	a7,a4,-1024 # ffc00 <asinh-0x7ff00400>
    8004d844:	7642                	ld	a2,48(sp)
    8004d846:	7e82                	ld	t4,32(sp)
    8004d848:	6762                	ld	a4,24(sp)
    8004d84a:	0005079b          	sext.w	a5,a0
    8004d84e:	4e09                	li	t3,2
    8004d850:	3ff00813          	li	a6,1023
quickjs-nuttx/libregexp.c:2280
                        if (c1 != c2)
    8004d854:	b8f715e3          	bne	a4,a5,8004d3de <lre_exec_backtrack+0x2ec>
    8004d858:	87b2                	mv	a5,a2
    8004d85a:	8476                	mv	s0,t4
    8004d85c:	bf61                	j	8004d7f4 <lre_exec_backtrack+0x702>
quickjs-nuttx/libregexp.c:2260 (discriminator 2)
                        GET_CHAR(c1, cptr1, cptr1_end);
    8004d85e:	0004d883          	lhu	a7,0(s1)
    8004d862:	00248e13          	addi	t3,s1,2
    8004d866:	015885bb          	addw	a1,a7,s5
    8004d86a:	02b6e763          	bltu	a3,a1,8004d898 <lre_exec_backtrack+0x7a6>
quickjs-nuttx/libregexp.c:2260 (discriminator 4)
    8004d86e:	03099563          	bne	s3,a6,8004d898 <lre_exec_backtrack+0x7a6>
quickjs-nuttx/libregexp.c:2260 (discriminator 6)
    8004d872:	02fe7363          	bgeu	t3,a5,8004d898 <lre_exec_backtrack+0x7a6>
quickjs-nuttx/libregexp.c:2260 (discriminator 8)
    8004d876:	0024d583          	lhu	a1,2(s1)
    8004d87a:	00ba053b          	addw	a0,s4,a1
    8004d87e:	00a6ed63          	bltu	a3,a0,8004d898 <lre_exec_backtrack+0x7a6>
quickjs-nuttx/libregexp.c:2260 (discriminator 10)
    8004d882:	00a8971b          	slliw	a4,a7,0xa
    8004d886:	8f71                	and	a4,a4,a2
    8004d888:	3ff5f593          	andi	a1,a1,1023
    8004d88c:	8f4d                	or	a4,a4,a1
    8004d88e:	68c1                	lui	a7,0x10
    8004d890:	00e888bb          	addw	a7,a7,a4
    8004d894:	00448e13          	addi	t3,s1,4
quickjs-nuttx/libregexp.c:2261
                        GET_CHAR(c2, cptr, cbuf_end);
    8004d898:	00045483          	lhu	s1,0(s0)
    8004d89c:	00240e93          	addi	t4,s0,2
    8004d8a0:	015485bb          	addw	a1,s1,s5
    8004d8a4:	8726                	mv	a4,s1
    8004d8a6:	eeb6ebe3          	bltu	a3,a1,8004d79c <lre_exec_backtrack+0x6aa>
quickjs-nuttx/libregexp.c:2261 (discriminator 4)
    8004d8aa:	ef0999e3          	bne	s3,a6,8004d79c <lre_exec_backtrack+0x6aa>
quickjs-nuttx/libregexp.c:2261 (discriminator 6)
    8004d8ae:	ef6ef7e3          	bgeu	t4,s6,8004d79c <lre_exec_backtrack+0x6aa>
quickjs-nuttx/libregexp.c:2261 (discriminator 8)
    8004d8b2:	00245583          	lhu	a1,2(s0)
    8004d8b6:	00ba053b          	addw	a0,s4,a1
    8004d8ba:	eea6e1e3          	bltu	a3,a0,8004d79c <lre_exec_backtrack+0x6aa>
quickjs-nuttx/libregexp.c:2261 (discriminator 10)
    8004d8be:	00a7171b          	slliw	a4,a4,0xa
    8004d8c2:	00c774b3          	and	s1,a4,a2
    8004d8c6:	3ff5f713          	andi	a4,a1,1023
    8004d8ca:	8f45                	or	a4,a4,s1
    8004d8cc:	64c1                	lui	s1,0x10
    8004d8ce:	9cb9                	addw	s1,s1,a4
    8004d8d0:	00440e93          	addi	t4,s0,4
    8004d8d4:	b5e1                	j	8004d79c <lre_exec_backtrack+0x6aa>
quickjs-nuttx/libregexp.c:2274 (discriminator 2)
                        GET_PREV_CHAR(c1, cptr1, cptr1_start);
    8004d8d6:	ffe7d583          	lhu	a1,-2(a5)
    8004d8da:	ffe78613          	addi	a2,a5,-2
    8004d8de:	00ba06bb          	addw	a3,s4,a1
    8004d8e2:	0005871b          	sext.w	a4,a1
    8004d8e6:	02d86763          	bltu	a6,a3,8004d914 <lre_exec_backtrack+0x822>
quickjs-nuttx/libregexp.c:2274 (discriminator 4)
    8004d8ea:	03c99563          	bne	s3,t3,8004d914 <lre_exec_backtrack+0x822>
quickjs-nuttx/libregexp.c:2274 (discriminator 6)
    8004d8ee:	02c4f363          	bgeu	s1,a2,8004d914 <lre_exec_backtrack+0x822>
quickjs-nuttx/libregexp.c:2274 (discriminator 8)
    8004d8f2:	ffc7d683          	lhu	a3,-4(a5)
    8004d8f6:	0156853b          	addw	a0,a3,s5
    8004d8fa:	00a86d63          	bltu	a6,a0,8004d914 <lre_exec_backtrack+0x822>
quickjs-nuttx/libregexp.c:2274 (discriminator 10)
    8004d8fe:	00a6969b          	slliw	a3,a3,0xa
    8004d902:	0116f733          	and	a4,a3,a7
    8004d906:	3ff5f693          	andi	a3,a1,1023
    8004d90a:	8ed9                	or	a3,a3,a4
    8004d90c:	6741                	lui	a4,0x10
    8004d90e:	ffc78613          	addi	a2,a5,-4
    8004d912:	9f35                	addw	a4,a4,a3
quickjs-nuttx/libregexp.c:2275
                        GET_PREV_CHAR(c2, cptr, s->cbuf);
    8004d914:	ffe45583          	lhu	a1,-2(s0)
    8004d918:	ffe40e93          	addi	t4,s0,-2
    8004d91c:	00ba06bb          	addw	a3,s4,a1
    8004d920:	0005879b          	sext.w	a5,a1
    8004d924:	eed868e3          	bltu	a6,a3,8004d814 <lre_exec_backtrack+0x722>
quickjs-nuttx/libregexp.c:2275 (discriminator 4)
    8004d928:	efc996e3          	bne	s3,t3,8004d814 <lre_exec_backtrack+0x722>
quickjs-nuttx/libregexp.c:2275 (discriminator 6)
    8004d92c:	efdf74e3          	bgeu	t5,t4,8004d814 <lre_exec_backtrack+0x722>
quickjs-nuttx/libregexp.c:2275 (discriminator 8)
    8004d930:	ffc45683          	lhu	a3,-4(s0)
    8004d934:	0156853b          	addw	a0,a3,s5
    8004d938:	eca86ee3          	bltu	a6,a0,8004d814 <lre_exec_backtrack+0x722>
quickjs-nuttx/libregexp.c:2275 (discriminator 10)
    8004d93c:	00a6969b          	slliw	a3,a3,0xa
    8004d940:	0116f7b3          	and	a5,a3,a7
    8004d944:	3ff5f693          	andi	a3,a1,1023
    8004d948:	8edd                	or	a3,a3,a5
    8004d94a:	67c1                	lui	a5,0x10
    8004d94c:	ffc40e93          	addi	t4,s0,-4
    8004d950:	9fb5                	addw	a5,a5,a3
    8004d952:	b5c9                	j	8004d814 <lre_exec_backtrack+0x722>
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8004d954:	0024c903          	lbu	s2,2(s1) # 10002 <asinh-0x7ffefffe>
    8004d958:	0014c783          	lbu	a5,1(s1)
    8004d95c:	0922                	slli	s2,s2,0x8
    8004d95e:	00f96933          	or	s2,s2,a5
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2293
                if (cptr >= cbuf_end)
    8004d962:	a7647ee3          	bgeu	s0,s6,8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2295
                GET_CHAR(c, cptr, cbuf_end);
    8004d966:	0a099263          	bnez	s3,8004da0a <lre_exec_backtrack+0x918>
quickjs-nuttx/libregexp.c:2295 (discriminator 1)
    8004d96a:	00044503          	lbu	a0,0(s0)
    8004d96e:	00140693          	addi	a3,s0,1
quickjs-nuttx/libregexp.c:2296 (discriminator 12)
                if (s->ignore_case) {
    8004d972:	020ca783          	lw	a5,32(s9)
    8004d976:	cb81                	beqz	a5,8004d986 <lre_exec_backtrack+0x894>
quickjs-nuttx/libregexp.c:2297
                    c = lre_canonicalize(c, s->is_utf16);
    8004d978:	024ca583          	lw	a1,36(s9)
    8004d97c:	ec36                	sd	a3,24(sp)
    8004d97e:	315020ef          	jal	ra,80050492 <lre_canonicalize>
    8004d982:	66e2                	ld	a3,24(sp)
    8004d984:	2501                	sext.w	a0,a0
get_u16():
quickjs-nuttx/cutils.h:185
    8004d986:	0044c783          	lbu	a5,4(s1)
    8004d98a:	0034c703          	lbu	a4,3(s1)
    8004d98e:	07a2                	slli	a5,a5,0x8
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2301
                if (c < low)
    8004d990:	8fd9                	or	a5,a5,a4
    8004d992:	a4f566e3          	bltu	a0,a5,8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2303
                idx_max = n - 1;
    8004d996:	fff9071b          	addiw	a4,s2,-1
quickjs-nuttx/libregexp.c:2304
                high = get_u16(pc + idx_max * 4 + 2);
    8004d99a:	0027179b          	slliw	a5,a4,0x2
    8004d99e:	2789                	addiw	a5,a5,2
    8004d9a0:	1782                	slli	a5,a5,0x20
quickjs-nuttx/libregexp.c:2292
                pc += 2;
    8004d9a2:	048d                	addi	s1,s1,3
quickjs-nuttx/libregexp.c:2304
                high = get_u16(pc + idx_max * 4 + 2);
    8004d9a4:	9381                	srli	a5,a5,0x20
get_u16():
quickjs-nuttx/cutils.h:185
    8004d9a6:	97a6                	add	a5,a5,s1
    8004d9a8:	0007c603          	lbu	a2,0(a5) # 10000 <asinh-0x7fff0000>
    8004d9ac:	0017c783          	lbu	a5,1(a5)
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2291
                n = get_u16(pc); /* n must be >= 1 */
    8004d9b0:	0009059b          	sext.w	a1,s2
get_u16():
quickjs-nuttx/cutils.h:185
    8004d9b4:	07a2                	slli	a5,a5,0x8
    8004d9b6:	8fd1                	or	a5,a5,a2
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2306
                if (unlikely(c >= 0xffff) && high == 0xffff)
    8004d9b8:	6641                	lui	a2,0x10
    8004d9ba:	ffe60813          	addi	a6,a2,-2 # fffe <asinh-0x7fff0002>
    8004d9be:	00a87563          	bgeu	a6,a0,8004d9c8 <lre_exec_backtrack+0x8d6>
quickjs-nuttx/libregexp.c:2306 (discriminator 1)
    8004d9c2:	167d                	addi	a2,a2,-1
    8004d9c4:	08c78c63          	beq	a5,a2,8004da5c <lre_exec_backtrack+0x96a>
quickjs-nuttx/libregexp.c:2308
                if (c > high)
    8004d9c8:	a0a7ebe3          	bltu	a5,a0,8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2299
                idx_min = 0;
    8004d9cc:	4881                	li	a7,0
quickjs-nuttx/libregexp.c:2311
                    idx = (idx_min + idx_max) / 2;
    8004d9ce:	00e8863b          	addw	a2,a7,a4
    8004d9d2:	0016561b          	srliw	a2,a2,0x1
quickjs-nuttx/libregexp.c:2312
                    low = get_u16(pc + idx * 4);
    8004d9d6:	0026179b          	slliw	a5,a2,0x2
    8004d9da:	1782                	slli	a5,a5,0x20
    8004d9dc:	9381                	srli	a5,a5,0x20
get_u16():
quickjs-nuttx/cutils.h:185
    8004d9de:	97a6                	add	a5,a5,s1
    8004d9e0:	0037c803          	lbu	a6,3(a5)
    8004d9e4:	0027ce03          	lbu	t3,2(a5)
    8004d9e8:	0822                	slli	a6,a6,0x8
    8004d9ea:	01c86833          	or	a6,a6,t3
    8004d9ee:	0007ce03          	lbu	t3,0(a5)
    8004d9f2:	0017c783          	lbu	a5,1(a5)
    8004d9f6:	07a2                	slli	a5,a5,0x8
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2314
                    if (c < low)
    8004d9f8:	01c7e7b3          	or	a5,a5,t3
    8004d9fc:	04f57b63          	bgeu	a0,a5,8004da52 <lre_exec_backtrack+0x960>
quickjs-nuttx/libregexp.c:2315
                        idx_max = idx - 1;
    8004da00:	fff6071b          	addiw	a4,a2,-1
quickjs-nuttx/libregexp.c:2310
                while (idx_min <= idx_max) {
    8004da04:	fd1775e3          	bgeu	a4,a7,8004d9ce <lre_exec_backtrack+0x8dc>
    8004da08:	bad9                	j	8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2295 (discriminator 2)
                GET_CHAR(c, cptr, cbuf_end);
    8004da0a:	00045503          	lhu	a0,0(s0)
    8004da0e:	3ff00613          	li	a2,1023
    8004da12:	00240693          	addi	a3,s0,2
    8004da16:	0155073b          	addw	a4,a0,s5
    8004da1a:	f4e66ce3          	bltu	a2,a4,8004d972 <lre_exec_backtrack+0x880>
quickjs-nuttx/libregexp.c:2295 (discriminator 4)
    8004da1e:	4709                	li	a4,2
    8004da20:	f4e999e3          	bne	s3,a4,8004d972 <lre_exec_backtrack+0x880>
quickjs-nuttx/libregexp.c:2295 (discriminator 6)
    8004da24:	f566f7e3          	bgeu	a3,s6,8004d972 <lre_exec_backtrack+0x880>
quickjs-nuttx/libregexp.c:2295 (discriminator 8)
    8004da28:	00245703          	lhu	a4,2(s0)
    8004da2c:	00ea05bb          	addw	a1,s4,a4
    8004da30:	f4b661e3          	bltu	a2,a1,8004d972 <lre_exec_backtrack+0x880>
quickjs-nuttx/libregexp.c:2295 (discriminator 10)
    8004da34:	001007b7          	lui	a5,0x100
    8004da38:	c0078793          	addi	a5,a5,-1024 # ffc00 <asinh-0x7ff00400>
    8004da3c:	00a5151b          	slliw	a0,a0,0xa
    8004da40:	8d7d                	and	a0,a0,a5
    8004da42:	3ff77713          	andi	a4,a4,1023
    8004da46:	8d59                	or	a0,a0,a4
    8004da48:	67c1                	lui	a5,0x10
    8004da4a:	9d3d                	addw	a0,a0,a5
    8004da4c:	00440693          	addi	a3,s0,4
    8004da50:	b70d                	j	8004d972 <lre_exec_backtrack+0x880>
quickjs-nuttx/libregexp.c:2316
                    else if (c > high)
    8004da52:	00a87563          	bgeu	a6,a0,8004da5c <lre_exec_backtrack+0x96a>
quickjs-nuttx/libregexp.c:2317
                        idx_min = idx + 1;
    8004da56:	0016089b          	addiw	a7,a2,1
    8004da5a:	b76d                	j	8004da04 <lre_exec_backtrack+0x912>
quickjs-nuttx/libregexp.c:2323
                pc += 4 * n;
    8004da5c:	00259913          	slli	s2,a1,0x2
quickjs-nuttx/libregexp.c:2360
                pc += 8 * n;
    8004da60:	9926                	add	s2,s2,s1
quickjs-nuttx/libregexp.c:2362
            break;
    8004da62:	8436                	mv	s0,a3
    8004da64:	be01                	j	8004d574 <lre_exec_backtrack+0x482>
get_u16():
quickjs-nuttx/cutils.h:185
    8004da66:	0024c903          	lbu	s2,2(s1)
    8004da6a:	0014c783          	lbu	a5,1(s1)
    8004da6e:	0922                	slli	s2,s2,0x8
    8004da70:	00f96933          	or	s2,s2,a5
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2333
                if (cptr >= cbuf_end)
    8004da74:	976475e3          	bgeu	s0,s6,8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2335
                GET_CHAR(c, cptr, cbuf_end);
    8004da78:	0c099263          	bnez	s3,8004db3c <lre_exec_backtrack+0xa4a>
quickjs-nuttx/libregexp.c:2335 (discriminator 1)
    8004da7c:	00044503          	lbu	a0,0(s0)
    8004da80:	00140693          	addi	a3,s0,1
quickjs-nuttx/libregexp.c:2336 (discriminator 12)
                if (s->ignore_case) {
    8004da84:	020ca783          	lw	a5,32(s9)
    8004da88:	cb81                	beqz	a5,8004da98 <lre_exec_backtrack+0x9a6>
quickjs-nuttx/libregexp.c:2337
                    c = lre_canonicalize(c, s->is_utf16);
    8004da8a:	024ca583          	lw	a1,36(s9)
    8004da8e:	ec36                	sd	a3,24(sp)
    8004da90:	203020ef          	jal	ra,80050492 <lre_canonicalize>
    8004da94:	66e2                	ld	a3,24(sp)
    8004da96:	2501                	sext.w	a0,a0
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8004da98:	0044c703          	lbu	a4,4(s1)
    8004da9c:	0034c783          	lbu	a5,3(s1)
    8004daa0:	0722                	slli	a4,a4,0x8
    8004daa2:	8f5d                	or	a4,a4,a5
    8004daa4:	0054c783          	lbu	a5,5(s1)
    8004daa8:	07c2                	slli	a5,a5,0x10
    8004daaa:	8f5d                	or	a4,a4,a5
    8004daac:	0064c783          	lbu	a5,6(s1)
    8004dab0:	07e2                	slli	a5,a5,0x18
    8004dab2:	8fd9                	or	a5,a5,a4
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2341
                if (c < low)
    8004dab4:	2781                	sext.w	a5,a5
    8004dab6:	92f564e3          	bltu	a0,a5,8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2343
                idx_max = n - 1;
    8004daba:	fff9071b          	addiw	a4,s2,-1
quickjs-nuttx/libregexp.c:2344
                high = get_u32(pc + idx_max * 8 + 4);
    8004dabe:	0037179b          	slliw	a5,a4,0x3
    8004dac2:	2791                	addiw	a5,a5,4
    8004dac4:	1782                	slli	a5,a5,0x20
quickjs-nuttx/libregexp.c:2332
                pc += 2;
    8004dac6:	048d                	addi	s1,s1,3
quickjs-nuttx/libregexp.c:2344
                high = get_u32(pc + idx_max * 8 + 4);
    8004dac8:	9381                	srli	a5,a5,0x20
get_u32():
quickjs-nuttx/cutils.h:170
    8004daca:	97a6                	add	a5,a5,s1
    8004dacc:	0017c603          	lbu	a2,1(a5) # 10001 <asinh-0x7ffeffff>
    8004dad0:	0007c803          	lbu	a6,0(a5)
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2331
                n = get_u16(pc); /* n must be >= 1 */
    8004dad4:	0009059b          	sext.w	a1,s2
get_u32():
quickjs-nuttx/cutils.h:170
    8004dad8:	0622                	slli	a2,a2,0x8
    8004dada:	01066833          	or	a6,a2,a6
    8004dade:	0027c603          	lbu	a2,2(a5)
    8004dae2:	0037c783          	lbu	a5,3(a5)
    8004dae6:	0642                	slli	a2,a2,0x10
    8004dae8:	01066633          	or	a2,a2,a6
    8004daec:	07e2                	slli	a5,a5,0x18
    8004daee:	8fd1                	or	a5,a5,a2
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2345
                if (c > high)
    8004daf0:	2781                	sext.w	a5,a5
    8004daf2:	8ea7e6e3          	bltu	a5,a0,8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2339
                idx_min = 0;
    8004daf6:	4e01                	li	t3,0
quickjs-nuttx/libregexp.c:2348
                    idx = (idx_min + idx_max) / 2;
    8004daf8:	00ee083b          	addw	a6,t3,a4
    8004dafc:	0018581b          	srliw	a6,a6,0x1
quickjs-nuttx/libregexp.c:2349
                    low = get_u32(pc + idx * 8);
    8004db00:	0038179b          	slliw	a5,a6,0x3
    8004db04:	1782                	slli	a5,a5,0x20
    8004db06:	9381                	srli	a5,a5,0x20
get_u32():
quickjs-nuttx/cutils.h:170
    8004db08:	97a6                	add	a5,a5,s1
    8004db0a:	0017c883          	lbu	a7,1(a5)
    8004db0e:	0007c603          	lbu	a2,0(a5)
    8004db12:	08a2                	slli	a7,a7,0x8
    8004db14:	00c8e8b3          	or	a7,a7,a2
    8004db18:	0027c603          	lbu	a2,2(a5)
    8004db1c:	0642                	slli	a2,a2,0x10
    8004db1e:	011668b3          	or	a7,a2,a7
    8004db22:	0037c603          	lbu	a2,3(a5)
    8004db26:	0662                	slli	a2,a2,0x18
    8004db28:	01166633          	or	a2,a2,a7
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2351
                    if (c < low)
    8004db2c:	2601                	sext.w	a2,a2
    8004db2e:	04c57b63          	bgeu	a0,a2,8004db84 <lre_exec_backtrack+0xa92>
quickjs-nuttx/libregexp.c:2352
                        idx_max = idx - 1;
    8004db32:	fff8071b          	addiw	a4,a6,-1
quickjs-nuttx/libregexp.c:2347
                while (idx_min <= idx_max) {
    8004db36:	fdc771e3          	bgeu	a4,t3,8004daf8 <lre_exec_backtrack+0xa06>
    8004db3a:	b055                	j	8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2335 (discriminator 2)
                GET_CHAR(c, cptr, cbuf_end);
    8004db3c:	00045503          	lhu	a0,0(s0)
    8004db40:	3ff00613          	li	a2,1023
    8004db44:	00240693          	addi	a3,s0,2
    8004db48:	0155073b          	addw	a4,a0,s5
    8004db4c:	f2e66ce3          	bltu	a2,a4,8004da84 <lre_exec_backtrack+0x992>
quickjs-nuttx/libregexp.c:2335 (discriminator 4)
    8004db50:	4709                	li	a4,2
    8004db52:	f2e999e3          	bne	s3,a4,8004da84 <lre_exec_backtrack+0x992>
quickjs-nuttx/libregexp.c:2335 (discriminator 6)
    8004db56:	f366f7e3          	bgeu	a3,s6,8004da84 <lre_exec_backtrack+0x992>
quickjs-nuttx/libregexp.c:2335 (discriminator 8)
    8004db5a:	00245703          	lhu	a4,2(s0)
    8004db5e:	00ea05bb          	addw	a1,s4,a4
    8004db62:	f2b661e3          	bltu	a2,a1,8004da84 <lre_exec_backtrack+0x992>
quickjs-nuttx/libregexp.c:2335 (discriminator 10)
    8004db66:	001007b7          	lui	a5,0x100
    8004db6a:	c0078793          	addi	a5,a5,-1024 # ffc00 <asinh-0x7ff00400>
    8004db6e:	00a5151b          	slliw	a0,a0,0xa
    8004db72:	8d7d                	and	a0,a0,a5
    8004db74:	3ff77713          	andi	a4,a4,1023
    8004db78:	8d59                	or	a0,a0,a4
    8004db7a:	67c1                	lui	a5,0x10
    8004db7c:	9d3d                	addw	a0,a0,a5
    8004db7e:	00440693          	addi	a3,s0,4
    8004db82:	b709                	j	8004da84 <lre_exec_backtrack+0x992>
get_u32():
quickjs-nuttx/cutils.h:170
    8004db84:	0057c603          	lbu	a2,5(a5) # 10005 <asinh-0x7ffefffb>
    8004db88:	0047c883          	lbu	a7,4(a5)
    8004db8c:	0622                	slli	a2,a2,0x8
    8004db8e:	011668b3          	or	a7,a2,a7
    8004db92:	0067c603          	lbu	a2,6(a5)
    8004db96:	0077c783          	lbu	a5,7(a5)
    8004db9a:	0642                	slli	a2,a2,0x10
    8004db9c:	01166633          	or	a2,a2,a7
    8004dba0:	07e2                	slli	a5,a5,0x18
    8004dba2:	8fd1                	or	a5,a5,a2
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2353
                    else if (c > high)
    8004dba4:	2781                	sext.w	a5,a5
    8004dba6:	00a7f563          	bgeu	a5,a0,8004dbb0 <lre_exec_backtrack+0xabe>
quickjs-nuttx/libregexp.c:2354
                        idx_min = idx + 1;
    8004dbaa:	00180e1b          	addiw	t3,a6,1
    8004dbae:	b761                	j	8004db36 <lre_exec_backtrack+0xa44>
quickjs-nuttx/libregexp.c:2360
                pc += 8 * n;
    8004dbb0:	00359913          	slli	s2,a1,0x3
    8004dbb4:	b575                	j	8004da60 <lre_exec_backtrack+0x96e>
quickjs-nuttx/libregexp.c:2365
            if (cptr == s->cbuf)
    8004dbb6:	000cb603          	ld	a2,0(s9)
    8004dbba:	828602e3          	beq	a2,s0,8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2367
            PREV_CHAR(cptr, s->cbuf);
    8004dbbe:	00099463          	bnez	s3,8004dbc6 <lre_exec_backtrack+0xad4>
quickjs-nuttx/libregexp.c:2367 (discriminator 1)
    8004dbc2:	147d                	addi	s0,s0,-1
    8004dbc4:	ba45                	j	8004d574 <lre_exec_backtrack+0x482>
quickjs-nuttx/libregexp.c:2367 (discriminator 2)
    8004dbc6:	4709                	li	a4,2
    8004dbc8:	ffe40793          	addi	a5,s0,-2
    8004dbcc:	9ae993e3          	bne	s3,a4,8004d572 <lre_exec_backtrack+0x480>
quickjs-nuttx/libregexp.c:2367 (discriminator 4)
    8004dbd0:	ffe45703          	lhu	a4,-2(s0)
    8004dbd4:	3ff00693          	li	a3,1023
    8004dbd8:	0147073b          	addw	a4,a4,s4
    8004dbdc:	98e6ebe3          	bltu	a3,a4,8004d572 <lre_exec_backtrack+0x480>
quickjs-nuttx/libregexp.c:2367 (discriminator 6)
    8004dbe0:	98f679e3          	bgeu	a2,a5,8004d572 <lre_exec_backtrack+0x480>
quickjs-nuttx/libregexp.c:2367 (discriminator 8)
    8004dbe4:	ffc45703          	lhu	a4,-4(s0)
    8004dbe8:	1471                	addi	s0,s0,-4
    8004dbea:	0157073b          	addw	a4,a4,s5
    8004dbee:	98e6f3e3          	bgeu	a3,a4,8004d574 <lre_exec_backtrack+0x482>
    8004dbf2:	b241                	j	8004d572 <lre_exec_backtrack+0x480>
get_u32():
quickjs-nuttx/cutils.h:170
    8004dbf4:	00a4c703          	lbu	a4,10(s1)
    8004dbf8:	0094c783          	lbu	a5,9(s1)
    8004dbfc:	0064c883          	lbu	a7,6(s1)
    8004dc00:	0722                	slli	a4,a4,0x8
    8004dc02:	8f5d                	or	a4,a4,a5
    8004dc04:	00b4c783          	lbu	a5,11(s1)
    8004dc08:	0054ce03          	lbu	t3,5(s1)
    8004dc0c:	0024c683          	lbu	a3,2(s1)
    8004dc10:	07c2                	slli	a5,a5,0x10
    8004dc12:	08a2                	slli	a7,a7,0x8
    8004dc14:	8f5d                	or	a4,a4,a5
    8004dc16:	0014c603          	lbu	a2,1(s1)
    8004dc1a:	00c4c783          	lbu	a5,12(s1)
    8004dc1e:	01c8e8b3          	or	a7,a7,t3
    8004dc22:	0074ce03          	lbu	t3,7(s1)
    8004dc26:	06a2                	slli	a3,a3,0x8
    8004dc28:	8e55                	or	a2,a2,a3
    8004dc2a:	0e42                	slli	t3,t3,0x10
    8004dc2c:	0034c683          	lbu	a3,3(s1)
    8004dc30:	07e2                	slli	a5,a5,0x18
    8004dc32:	8fd9                	or	a5,a5,a4
    8004dc34:	011e68b3          	or	a7,t3,a7
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2379
                pc += 16;
    8004dc38:	01148713          	addi	a4,s1,17
get_u32():
quickjs-nuttx/cutils.h:170
    8004dc3c:	0084ce03          	lbu	t3,8(s1)
    8004dc40:	0044c483          	lbu	s1,4(s1)
    8004dc44:	06c2                	slli	a3,a3,0x10
    8004dc46:	8ed1                	or	a3,a3,a2
    8004dc48:	04e2                	slli	s1,s1,0x18
    8004dc4a:	0e62                	slli	t3,t3,0x18
    8004dc4c:	8cd5                	or	s1,s1,a3
    8004dc4e:	011e6e33          	or	t3,t3,a7
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2381
                pc += (int)next_pos;
    8004dc52:	2481                	sext.w	s1,s1
get_u32():
quickjs-nuttx/cutils.h:170
    8004dc54:	2e01                	sext.w	t3,t3
    8004dc56:	00078e9b          	sext.w	t4,a5
lre_exec_backtrack():
quickjs-nuttx/libregexp.c:2381
    8004dc5a:	94ba                	add	s1,s1,a4
quickjs-nuttx/libregexp.c:2383
                q = 0;
    8004dc5c:	4f81                	li	t6,0
quickjs-nuttx/libregexp.c:2393
                    if (q >= quant_max && quant_max != INT32_MAX)
    8004dc5e:	8f3e                	mv	t5,a5
quickjs-nuttx/libregexp.c:2385
                    res = lre_exec_backtrack(s, capture, stack, stack_len,
    8004dc60:	4805                	li	a6,1
    8004dc62:	87a2                	mv	a5,s0
    8004dc64:	86ee                	mv	a3,s11
    8004dc66:	8662                	mv	a2,s8
    8004dc68:	85de                	mv	a1,s7
    8004dc6a:	8566                	mv	a0,s9
    8004dc6c:	fc7a                	sd	t5,56(sp)
    8004dc6e:	f872                	sd	t3,48(sp)
    8004dc70:	f476                	sd	t4,40(sp)
    8004dc72:	f07e                	sd	t6,32(sp)
    8004dc74:	ec3a                	sd	a4,24(sp)
    8004dc76:	c7cff0ef          	jal	ra,8004d0f2 <lre_exec_backtrack>
quickjs-nuttx/libregexp.c:2387
                    if (res == -1)
    8004dc7a:	58fd                	li	a7,-1
    8004dc7c:	ef150863          	beq	a0,a7,8004d36c <lre_exec_backtrack+0x27a>
quickjs-nuttx/libregexp.c:2389
                    if (!res)
    8004dc80:	7f82                	ld	t6,32(sp)
    8004dc82:	7e42                	ld	t3,48(sp)
    8004dc84:	c919                	beqz	a0,8004dc9a <lre_exec_backtrack+0xba8>
quickjs-nuttx/libregexp.c:2393
                    if (q >= quant_max && quant_max != INT32_MAX)
    8004dc86:	7f62                	ld	t5,56(sp)
quickjs-nuttx/libregexp.c:2392
                    q++;
    8004dc88:	0f85                	addi	t6,t6,1
quickjs-nuttx/libregexp.c:2393
                    if (q >= quant_max && quant_max != INT32_MAX)
    8004dc8a:	6762                	ld	a4,24(sp)
    8004dc8c:	7ea2                	ld	t4,40(sp)
quickjs-nuttx/libregexp.c:2391
                    cptr = (uint8_t *)res;
    8004dc8e:	842a                	mv	s0,a0
quickjs-nuttx/libregexp.c:2393
                    if (q >= quant_max && quant_max != INT32_MAX)
    8004dc90:	fdefe8e3          	bltu	t6,t5,8004dc60 <lre_exec_backtrack+0xb6e>
quickjs-nuttx/libregexp.c:2393 (discriminator 1)
    8004dc94:	67c2                	ld	a5,16(sp)
    8004dc96:	fcfe85e3          	beq	t4,a5,8004dc60 <lre_exec_backtrack+0xb6e>
quickjs-nuttx/libregexp.c:2396
                if (q < quant_min)
    8004dc9a:	020e1893          	slli	a7,t3,0x20
    8004dc9e:	0208d893          	srli	a7,a7,0x20
    8004dca2:	f31fee63          	bltu	t6,a7,8004d3de <lre_exec_backtrack+0x2ec>
quickjs-nuttx/libregexp.c:2398
                if (q > quant_min) {
    8004dca6:	01f8ff63          	bgeu	a7,t6,8004dcc4 <lre_exec_backtrack+0xbd2>
quickjs-nuttx/libregexp.c:2400
                    ret = push_state(s, capture, stack, stack_len,
    8004dcaa:	411f88b3          	sub	a7,t6,a7
    8004dcae:	480d                	li	a6,3
    8004dcb0:	87a2                	mv	a5,s0
    8004dcb2:	874a                	mv	a4,s2
    8004dcb4:	86ee                	mv	a3,s11
    8004dcb6:	8662                	mv	a2,s8
    8004dcb8:	85de                	mv	a1,s7
    8004dcba:	8566                	mv	a0,s9
    8004dcbc:	ae8ff0ef          	jal	ra,8004cfa4 <push_state>
quickjs-nuttx/libregexp.c:2404
                    if (ret < 0)
    8004dcc0:	ea054663          	bltz	a0,8004d36c <lre_exec_backtrack+0x27a>
quickjs-nuttx/libregexp.c:2381
                pc += (int)next_pos;
    8004dcc4:	8926                	mv	s2,s1
    8004dcc6:	b07d                	j	8004d574 <lre_exec_backtrack+0x482>
quickjs-nuttx/libregexp.c:2410
            abort();
    8004dcc8:	6bb140ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/libregexp.c:2036
                    return 0;
    8004dccc:	4501                	li	a0,0
    8004dcce:	c9eff06f          	j	8004d16c <lre_exec_backtrack+0x7a>

000000008004dcd2 <re_parse_expect>:
re_parse_expect():
quickjs-nuttx/libregexp.c:418
    p = *pp;
    8004dcd2:	619c                	ld	a5,0(a1)
quickjs-nuttx/libregexp.c:419
    if (*p != c)
    8004dcd4:	0007c703          	lbu	a4,0(a5)
    8004dcd8:	00c70863          	beq	a4,a2,8004dce8 <re_parse_expect+0x16>
quickjs-nuttx/libregexp.c:420
        return re_parse_error(s, "expecting '%c'", c);
    8004dcdc:	0001e597          	auipc	a1,0x1e
    8004dce0:	01458593          	addi	a1,a1,20 # 8006bcf0 <qjsc_repl+0x6740>
    8004dce4:	b96ff06f          	j	8004d07a <re_parse_error>
quickjs-nuttx/libregexp.c:421
    p++;
    8004dce8:	0785                	addi	a5,a5,1
quickjs-nuttx/libregexp.c:422
    *pp = p;
    8004dcea:	e19c                	sd	a5,0(a1)
quickjs-nuttx/libregexp.c:424
}
    8004dcec:	4501                	li	a0,0
    8004dcee:	8082                	ret

000000008004dcf0 <dbuf_put_u32.isra.0>:
dbuf_put_u32():
quickjs-nuttx/cutils.h:260
static inline int dbuf_put_u32(DynBuf *s, uint32_t val)
    8004dcf0:	1101                	addi	sp,sp,-32
    8004dcf2:	c62e                	sw	a1,12(sp)
quickjs-nuttx/cutils.h:262
    return dbuf_put(s, (uint8_t *)&val, 4);
    8004dcf4:	4611                	li	a2,4
    8004dcf6:	006c                	addi	a1,sp,12
quickjs-nuttx/cutils.h:260
static inline int dbuf_put_u32(DynBuf *s, uint32_t val)
    8004dcf8:	ec06                	sd	ra,24(sp)
quickjs-nuttx/cutils.h:262
    return dbuf_put(s, (uint8_t *)&val, 4);
    8004dcfa:	557030ef          	jal	ra,80051a50 <dbuf_put>
quickjs-nuttx/cutils.h:263
}
    8004dcfe:	60e2                	ld	ra,24(sp)
    8004dd00:	6105                	addi	sp,sp,32
    8004dd02:	8082                	ret

000000008004dd04 <re_emit_goto.isra.0>:
re_emit_goto():
quickjs-nuttx/libregexp.c:353
static int re_emit_goto(REParseState *s, int op, uint32_t val)
    8004dd04:	1101                	addi	sp,sp,-32
quickjs-nuttx/libregexp.c:356
    dbuf_putc(&s->byte_code, op);
    8004dd06:	0ff5f593          	zext.b	a1,a1
quickjs-nuttx/libregexp.c:353
static int re_emit_goto(REParseState *s, int op, uint32_t val)
    8004dd0a:	e822                	sd	s0,16(sp)
    8004dd0c:	e426                	sd	s1,8(sp)
    8004dd0e:	ec06                	sd	ra,24(sp)
    8004dd10:	84aa                	mv	s1,a0
    8004dd12:	8432                	mv	s0,a2
quickjs-nuttx/libregexp.c:356
    dbuf_putc(&s->byte_code, op);
    8004dd14:	5cf030ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/libregexp.c:358
    dbuf_put_u32(&s->byte_code, val - (pos + 4));
    8004dd18:	648c                	ld	a1,8(s1)
    8004dd1a:	3471                	addiw	s0,s0,-4
quickjs-nuttx/libregexp.c:360
}
    8004dd1c:	60e2                	ld	ra,24(sp)
quickjs-nuttx/libregexp.c:358
    dbuf_put_u32(&s->byte_code, val - (pos + 4));
    8004dd1e:	40b405bb          	subw	a1,s0,a1
quickjs-nuttx/libregexp.c:360
}
    8004dd22:	6442                	ld	s0,16(sp)
quickjs-nuttx/libregexp.c:358
    dbuf_put_u32(&s->byte_code, val - (pos + 4));
    8004dd24:	8526                	mv	a0,s1
quickjs-nuttx/libregexp.c:360
}
    8004dd26:	64a2                	ld	s1,8(sp)
    8004dd28:	6105                	addi	sp,sp,32
quickjs-nuttx/libregexp.c:358
    dbuf_put_u32(&s->byte_code, val - (pos + 4));
    8004dd2a:	fc7ff06f          	j	8004dcf0 <dbuf_put_u32.isra.0>

000000008004dd2e <re_emit_op_u32>:
re_emit_op_u32():
quickjs-nuttx/libregexp.c:345
{
    8004dd2e:	1101                	addi	sp,sp,-32
quickjs-nuttx/libregexp.c:347
    dbuf_putc(&s->byte_code, op);
    8004dd30:	0ff5f593          	zext.b	a1,a1
quickjs-nuttx/libregexp.c:345
{
    8004dd34:	ec06                	sd	ra,24(sp)
    8004dd36:	e822                	sd	s0,16(sp)
    8004dd38:	e426                	sd	s1,8(sp)
    8004dd3a:	e04a                	sd	s2,0(sp)
    8004dd3c:	842a                	mv	s0,a0
    8004dd3e:	84b2                	mv	s1,a2
quickjs-nuttx/libregexp.c:347
    dbuf_putc(&s->byte_code, op);
    8004dd40:	5a3030ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/libregexp.c:349
    dbuf_put_u32(&s->byte_code, val);
    8004dd44:	8522                	mv	a0,s0
    8004dd46:	85a6                	mv	a1,s1
quickjs-nuttx/libregexp.c:348
    pos = s->byte_code.size;
    8004dd48:	00842903          	lw	s2,8(s0)
quickjs-nuttx/libregexp.c:349
    dbuf_put_u32(&s->byte_code, val);
    8004dd4c:	fa5ff0ef          	jal	ra,8004dcf0 <dbuf_put_u32.isra.0>
quickjs-nuttx/libregexp.c:351
}
    8004dd50:	60e2                	ld	ra,24(sp)
    8004dd52:	6442                	ld	s0,16(sp)
    8004dd54:	64a2                	ld	s1,8(sp)
    8004dd56:	854a                	mv	a0,s2
    8004dd58:	6902                	ld	s2,0(sp)
    8004dd5a:	6105                	addi	sp,sp,32
    8004dd5c:	8082                	ret

000000008004dd5e <re_emit_op_u16>:
re_emit_op_u16():
quickjs-nuttx/libregexp.c:369
{
    8004dd5e:	7179                	addi	sp,sp,-48
quickjs-nuttx/libregexp.c:370
    dbuf_putc(&s->byte_code, op);
    8004dd60:	0ff5f593          	zext.b	a1,a1
quickjs-nuttx/libregexp.c:369
{
    8004dd64:	f406                	sd	ra,40(sp)
    8004dd66:	f022                	sd	s0,32(sp)
    8004dd68:	ec26                	sd	s1,24(sp)
    8004dd6a:	842a                	mv	s0,a0
    8004dd6c:	84b2                	mv	s1,a2
quickjs-nuttx/libregexp.c:370
    dbuf_putc(&s->byte_code, op);
    8004dd6e:	575030ef          	jal	ra,80051ae2 <dbuf_putc>
dbuf_put_u16():
quickjs-nuttx/cutils.h:258
    return dbuf_put(s, (uint8_t *)&val, 2);
    8004dd72:	00e10593          	addi	a1,sp,14
    8004dd76:	8522                	mv	a0,s0
    8004dd78:	4609                	li	a2,2
re_emit_op_u16():
quickjs-nuttx/libregexp.c:371
    dbuf_put_u16(&s->byte_code, val);
    8004dd7a:	00911723          	sh	s1,14(sp)
dbuf_put_u16():
quickjs-nuttx/cutils.h:258
    8004dd7e:	4d3030ef          	jal	ra,80051a50 <dbuf_put>
re_emit_op_u16():
quickjs-nuttx/libregexp.c:372
}
    8004dd82:	70a2                	ld	ra,40(sp)
    8004dd84:	7402                	ld	s0,32(sp)
    8004dd86:	64e2                	ld	s1,24(sp)
    8004dd88:	6145                	addi	sp,sp,48
    8004dd8a:	8082                	ret

000000008004dd8c <re_emit_range>:
re_emit_range():
quickjs-nuttx/libregexp.c:770
    len = (unsigned)cr->len / 2;
    8004dd8c:	419c                	lw	a5,0(a1)
quickjs-nuttx/libregexp.c:771
    if (len >= 65535)
    8004dd8e:	6741                	lui	a4,0x10
    8004dd90:	1779                	addi	a4,a4,-2
quickjs-nuttx/libregexp.c:770
    len = (unsigned)cr->len / 2;
    8004dd92:	0017d61b          	srliw	a2,a5,0x1
quickjs-nuttx/libregexp.c:771
    if (len >= 65535)
    8004dd96:	00c77863          	bgeu	a4,a2,8004dda6 <re_emit_range+0x1a>
quickjs-nuttx/libregexp.c:772
        return re_parse_error(s, "too many ranges");
    8004dd9a:	00027597          	auipc	a1,0x27
    8004dd9e:	51e58593          	addi	a1,a1,1310 # 800752b8 <unescaped_chars.0+0xc8>
    8004dda2:	ad8ff06f          	j	8004d07a <re_parse_error>
quickjs-nuttx/libregexp.c:766
{
    8004dda6:	7139                	addi	sp,sp,-64
    8004dda8:	fc06                	sd	ra,56(sp)
    8004ddaa:	f822                	sd	s0,48(sp)
    8004ddac:	f426                	sd	s1,40(sp)
    8004ddae:	f04a                	sd	s2,32(sp)
    8004ddb0:	ec4e                	sd	s3,24(sp)
    8004ddb2:	e852                	sd	s4,16(sp)
quickjs-nuttx/libregexp.c:773
    if (len == 0) {
    8004ddb4:	ee11                	bnez	a2,8004ddd0 <re_emit_range+0x44>
quickjs-nuttx/libregexp.c:776
        re_emit_op_u32(s, REOP_char32, -1);
    8004ddb6:	567d                	li	a2,-1
    8004ddb8:	4589                	li	a1,2
    8004ddba:	f75ff0ef          	jal	ra,8004dd2e <re_emit_op_u32>
quickjs-nuttx/libregexp.c:801
}
    8004ddbe:	70e2                	ld	ra,56(sp)
    8004ddc0:	7442                	ld	s0,48(sp)
    8004ddc2:	74a2                	ld	s1,40(sp)
    8004ddc4:	7902                	ld	s2,32(sp)
    8004ddc6:	69e2                	ld	s3,24(sp)
    8004ddc8:	6a42                	ld	s4,16(sp)
    8004ddca:	4501                	li	a0,0
    8004ddcc:	6121                	addi	sp,sp,64
    8004ddce:	8082                	ret
quickjs-nuttx/libregexp.c:778
        high = cr->points[cr->len - 1];
    8004ddd0:	6594                	ld	a3,8(a1)
    8004ddd2:	fff7871b          	addiw	a4,a5,-1
    8004ddd6:	070a                	slli	a4,a4,0x2
    8004ddd8:	9736                	add	a4,a4,a3
    8004ddda:	4318                	lw	a4,0(a4)
    8004dddc:	842e                	mv	s0,a1
quickjs-nuttx/libregexp.c:779
        if (high == UINT32_MAX)
    8004ddde:	55fd                	li	a1,-1
    8004dde0:	84aa                	mv	s1,a0
    8004dde2:	00b71663          	bne	a4,a1,8004ddee <re_emit_range+0x62>
quickjs-nuttx/libregexp.c:780
            high = cr->points[cr->len - 2];
    8004dde6:	37f9                	addiw	a5,a5,-2
    8004dde8:	078a                	slli	a5,a5,0x2
    8004ddea:	97b6                	add	a5,a5,a3
    8004ddec:	4398                	lw	a4,0(a5)
quickjs-nuttx/libregexp.c:781
        if (high <= 0xffff) {
    8004ddee:	69c1                	lui	s3,0x10
    8004ddf0:	05377d63          	bgeu	a4,s3,8004de4a <re_emit_range+0xbe>
quickjs-nuttx/libregexp.c:784
            re_emit_op_u16(s, REOP_range, len);
    8004ddf4:	45d5                	li	a1,21
    8004ddf6:	8526                	mv	a0,s1
    8004ddf8:	f67ff0ef          	jal	ra,8004dd5e <re_emit_op_u16>
quickjs-nuttx/libregexp.c:785
            for(i = 0; i < cr->len; i += 2) {
    8004ddfc:	4901                	li	s2,0
quickjs-nuttx/libregexp.c:788
                if (high == UINT32_MAX - 1)
    8004ddfe:	5a79                	li	s4,-2
quickjs-nuttx/libregexp.c:789
                    high = 0xffff;
    8004de00:	19fd                	addi	s3,s3,-1
quickjs-nuttx/libregexp.c:785 (discriminator 1)
            for(i = 0; i < cr->len; i += 2) {
    8004de02:	401c                	lw	a5,0(s0)
    8004de04:	faf95de3          	bge	s2,a5,8004ddbe <re_emit_range+0x32>
quickjs-nuttx/libregexp.c:786
                dbuf_put_u16(&s->byte_code, cr->points[i]);
    8004de08:	641c                	ld	a5,8(s0)
    8004de0a:	00291713          	slli	a4,s2,0x2
dbuf_put_u16():
quickjs-nuttx/cutils.h:258
    8004de0e:	4609                	li	a2,2
re_emit_range():
quickjs-nuttx/libregexp.c:786
    8004de10:	97ba                	add	a5,a5,a4
    8004de12:	439c                	lw	a5,0(a5)
dbuf_put_u16():
quickjs-nuttx/cutils.h:258
    8004de14:	00e10593          	addi	a1,sp,14
    8004de18:	8526                	mv	a0,s1
re_emit_range():
quickjs-nuttx/libregexp.c:786
    8004de1a:	00f11723          	sh	a5,14(sp)
dbuf_put_u16():
quickjs-nuttx/cutils.h:258
    8004de1e:	433030ef          	jal	ra,80051a50 <dbuf_put>
re_emit_range():
quickjs-nuttx/libregexp.c:787
                high = cr->points[i + 1] - 1;
    8004de22:	6418                	ld	a4,8(s0)
    8004de24:	0019079b          	addiw	a5,s2,1
    8004de28:	078a                	slli	a5,a5,0x2
    8004de2a:	97ba                	add	a5,a5,a4
    8004de2c:	439c                	lw	a5,0(a5)
    8004de2e:	37fd                	addiw	a5,a5,-1
quickjs-nuttx/libregexp.c:788
                if (high == UINT32_MAX - 1)
    8004de30:	01479363          	bne	a5,s4,8004de36 <re_emit_range+0xaa>
quickjs-nuttx/libregexp.c:789
                    high = 0xffff;
    8004de34:	87ce                	mv	a5,s3
dbuf_put_u16():
quickjs-nuttx/cutils.h:258 (discriminator 2)
    8004de36:	4609                	li	a2,2
    8004de38:	00e10593          	addi	a1,sp,14
    8004de3c:	8526                	mv	a0,s1
re_emit_range():
quickjs-nuttx/libregexp.c:790 (discriminator 2)
                dbuf_put_u16(&s->byte_code, high);
    8004de3e:	00f11723          	sh	a5,14(sp)
quickjs-nuttx/libregexp.c:785 (discriminator 2)
            for(i = 0; i < cr->len; i += 2) {
    8004de42:	2909                	addiw	s2,s2,2
dbuf_put_u16():
quickjs-nuttx/cutils.h:258 (discriminator 2)
    8004de44:	40d030ef          	jal	ra,80051a50 <dbuf_put>
re_emit_range():
quickjs-nuttx/libregexp.c:785 (discriminator 2)
    8004de48:	bf6d                	j	8004de02 <re_emit_range+0x76>
quickjs-nuttx/libregexp.c:793
            re_emit_op_u16(s, REOP_range32, len);
    8004de4a:	45d9                	li	a1,22
    8004de4c:	8526                	mv	a0,s1
    8004de4e:	f11ff0ef          	jal	ra,8004dd5e <re_emit_op_u16>
quickjs-nuttx/libregexp.c:794
            for(i = 0; i < cr->len; i += 2) {
    8004de52:	4901                	li	s2,0
quickjs-nuttx/libregexp.c:794 (discriminator 1)
    8004de54:	401c                	lw	a5,0(s0)
    8004de56:	f6f954e3          	bge	s2,a5,8004ddbe <re_emit_range+0x32>
quickjs-nuttx/libregexp.c:795 (discriminator 3)
                dbuf_put_u32(&s->byte_code, cr->points[i]);
    8004de5a:	641c                	ld	a5,8(s0)
    8004de5c:	00291713          	slli	a4,s2,0x2
    8004de60:	8526                	mv	a0,s1
    8004de62:	97ba                	add	a5,a5,a4
    8004de64:	438c                	lw	a1,0(a5)
    8004de66:	e8bff0ef          	jal	ra,8004dcf0 <dbuf_put_u32.isra.0>
quickjs-nuttx/libregexp.c:796 (discriminator 3)
                dbuf_put_u32(&s->byte_code, cr->points[i + 1] - 1);
    8004de6a:	641c                	ld	a5,8(s0)
    8004de6c:	0019071b          	addiw	a4,s2,1
    8004de70:	070a                	slli	a4,a4,0x2
    8004de72:	97ba                	add	a5,a5,a4
    8004de74:	438c                	lw	a1,0(a5)
    8004de76:	8526                	mv	a0,s1
quickjs-nuttx/libregexp.c:794 (discriminator 3)
            for(i = 0; i < cr->len; i += 2) {
    8004de78:	2909                	addiw	s2,s2,2
quickjs-nuttx/libregexp.c:796 (discriminator 3)
                dbuf_put_u32(&s->byte_code, cr->points[i + 1] - 1);
    8004de7a:	35fd                	addiw	a1,a1,-1
    8004de7c:	e75ff0ef          	jal	ra,8004dcf0 <dbuf_put_u32.isra.0>
quickjs-nuttx/libregexp.c:794 (discriminator 3)
            for(i = 0; i < cr->len; i += 2) {
    8004de80:	bfd1                	j	8004de54 <re_emit_range+0xc8>

000000008004de82 <lre_is_space>:
lre_is_space():
quickjs-nuttx/libregexp.c:147
    for(i = 0; i < n; i++) {
    8004de82:	00028797          	auipc	a5,0x28
    8004de86:	88e78793          	addi	a5,a5,-1906 # 80075710 <char_range_s>
    8004de8a:	00028717          	auipc	a4,0x28
    8004de8e:	8ae70713          	addi	a4,a4,-1874 # 80075738 <char_range_s+0x28>
quickjs-nuttx/libregexp.c:149
        if (c < low)
    8004de92:	0027d683          	lhu	a3,2(a5)
    8004de96:	00d54963          	blt	a0,a3,8004dea8 <lre_is_space+0x26>
quickjs-nuttx/libregexp.c:152
        if (c < high)
    8004de9a:	0047d683          	lhu	a3,4(a5)
    8004de9e:	00d54763          	blt	a0,a3,8004deac <lre_is_space+0x2a>
quickjs-nuttx/libregexp.c:147 (discriminator 1)
    for(i = 0; i < n; i++) {
    8004dea2:	0791                	addi	a5,a5,4
    8004dea4:	fee797e3          	bne	a5,a4,8004de92 <lre_is_space+0x10>
quickjs-nuttx/libregexp.c:150
            return FALSE;
    8004dea8:	4501                	li	a0,0
    8004deaa:	8082                	ret
quickjs-nuttx/libregexp.c:153
            return TRUE;
    8004deac:	4505                	li	a0,1
quickjs-nuttx/libregexp.c:156
}
    8004deae:	8082                	ret

000000008004deb0 <lre_parse_escape>:
lre_parse_escape():
quickjs-nuttx/libregexp.c:437
{
    8004deb0:	7139                	addi	sp,sp,-64
    8004deb2:	f426                	sd	s1,40(sp)
    8004deb4:	f04a                	sd	s2,32(sp)
    8004deb6:	ec4e                	sd	s3,24(sp)
    8004deb8:	fc06                	sd	ra,56(sp)
    8004deba:	f822                	sd	s0,48(sp)
    8004debc:	e852                	sd	s4,16(sp)
    8004debe:	e456                	sd	s5,8(sp)
    8004dec0:	e05a                	sd	s6,0(sp)
quickjs-nuttx/libregexp.c:441
    p = *pp;
    8004dec2:	611c                	ld	a5,0(a0)
quickjs-nuttx/libregexp.c:443
    switch(c) {
    8004dec4:	03700613          	li	a2,55
quickjs-nuttx/libregexp.c:437
{
    8004dec8:	892a                	mv	s2,a0
quickjs-nuttx/libregexp.c:442
    c = *p++;
    8004deca:	0007c703          	lbu	a4,0(a5)
quickjs-nuttx/libregexp.c:437
{
    8004dece:	89ae                	mv	s3,a1
quickjs-nuttx/libregexp.c:442
    c = *p++;
    8004ded0:	00178493          	addi	s1,a5,1
    8004ded4:	0007069b          	sext.w	a3,a4
quickjs-nuttx/libregexp.c:443
    switch(c) {
    8004ded8:	00e66e63          	bltu	a2,a4,8004def4 <lre_parse_escape+0x44>
    8004dedc:	02f00613          	li	a2,47
    8004dee0:	14e66263          	bltu	a2,a4,8004e024 <lre_parse_escape+0x174>
    8004dee4:	5579                	li	a0,-2
    8004dee6:	aaa9                	j	8004e040 <lre_parse_escape+0x190>
    8004dee8:	4431                	li	s0,12
quickjs-nuttx/libregexp.c:543
    *pp = p;
    8004deea:	00993023          	sd	s1,0(s2)
quickjs-nuttx/libregexp.c:544
    return c;
    8004deee:	0004051b          	sext.w	a0,s0
    8004def2:	a2b9                	j	8004e040 <lre_parse_escape+0x190>
quickjs-nuttx/libregexp.c:443
    switch(c) {
    8004def4:	f9e7071b          	addiw	a4,a4,-98
    8004def8:	0ff77713          	zext.b	a4,a4
    8004defc:	4659                	li	a2,22
    8004defe:	fee663e3          	bltu	a2,a4,8004dee4 <lre_parse_escape+0x34>
    8004df02:	00027617          	auipc	a2,0x27
    8004df06:	3c660613          	addi	a2,a2,966 # 800752c8 <unescaped_chars.0+0xd8>
    8004df0a:	070a                	slli	a4,a4,0x2
    8004df0c:	9732                	add	a4,a4,a2
    8004df0e:	4318                	lw	a4,0(a4)
    8004df10:	9732                	add	a4,a4,a2
    8004df12:	8702                	jr	a4
quickjs-nuttx/libregexp.c:451
        c = '\n';
    8004df14:	4429                	li	s0,10
quickjs-nuttx/libregexp.c:452
        break;
    8004df16:	bfd1                	j	8004deea <lre_parse_escape+0x3a>
quickjs-nuttx/libregexp.c:454
        c = '\r';
    8004df18:	4435                	li	s0,13
quickjs-nuttx/libregexp.c:455
        break;
    8004df1a:	bfc1                	j	8004deea <lre_parse_escape+0x3a>
quickjs-nuttx/libregexp.c:457
        c = '\t';
    8004df1c:	4425                	li	s0,9
quickjs-nuttx/libregexp.c:458
        break;
    8004df1e:	b7f1                	j	8004deea <lre_parse_escape+0x3a>
quickjs-nuttx/libregexp.c:460
        c = '\v';
    8004df20:	442d                	li	s0,11
quickjs-nuttx/libregexp.c:461
        break;
    8004df22:	b7e1                	j	8004deea <lre_parse_escape+0x3a>
quickjs-nuttx/libregexp.c:468
            if (*p == '{' && allow_utf16) {
    8004df24:	0017c603          	lbu	a2,1(a5)
    8004df28:	07b00713          	li	a4,123
    8004df2c:	04e61063          	bne	a2,a4,8004df6c <lre_parse_escape+0xbc>
quickjs-nuttx/libregexp.c:468 (discriminator 1)
    8004df30:	02098e63          	beqz	s3,8004df6c <lre_parse_escape+0xbc>
quickjs-nuttx/libregexp.c:469
                p++;
    8004df34:	00278993          	addi	s3,a5,2
quickjs-nuttx/libregexp.c:470
                c = 0;
    8004df38:	4401                	li	s0,0
quickjs-nuttx/libregexp.c:476
                    if (c > 0x10FFFF)
    8004df3a:	00110ab7          	lui	s5,0x110
quickjs-nuttx/libregexp.c:478
                    if (*p == '}')
    8004df3e:	07d00a13          	li	s4,125
quickjs-nuttx/libregexp.c:472
                    h = from_hex(*p++);
    8004df42:	84ce                	mv	s1,s3
    8004df44:	0009c503          	lbu	a0,0(s3) # 10000 <asinh-0x7fff0000>
    8004df48:	0985                	addi	s3,s3,1
    8004df4a:	ee3fe0ef          	jal	ra,8004ce2c <from_hex>
quickjs-nuttx/libregexp.c:473
                    if (h < 0)
    8004df4e:	14054663          	bltz	a0,8004e09a <lre_parse_escape+0x1ea>
quickjs-nuttx/libregexp.c:475
                    c = (c << 4) | h;
    8004df52:	0044141b          	slliw	s0,s0,0x4
    8004df56:	8d41                	or	a0,a0,s0
    8004df58:	0005041b          	sext.w	s0,a0
quickjs-nuttx/libregexp.c:476
                    if (c > 0x10FFFF)
    8004df5c:	13547f63          	bgeu	s0,s5,8004e09a <lre_parse_escape+0x1ea>
quickjs-nuttx/libregexp.c:478
                    if (*p == '}')
    8004df60:	0009c783          	lbu	a5,0(s3)
    8004df64:	fd479fe3          	bne	a5,s4,8004df42 <lre_parse_escape+0x92>
quickjs-nuttx/libregexp.c:481
                p++;
    8004df68:	0489                	addi	s1,s1,2
    8004df6a:	b741                	j	8004deea <lre_parse_escape+0x3a>
quickjs-nuttx/libregexp.c:483
                if (c == 'x') {
    8004df6c:	07800793          	li	a5,120
quickjs-nuttx/libregexp.c:484
                    n = 2;
    8004df70:	4b09                	li	s6,2
quickjs-nuttx/libregexp.c:483
                if (c == 'x') {
    8004df72:	00f68363          	beq	a3,a5,8004df78 <lre_parse_escape+0xc8>
quickjs-nuttx/libregexp.c:486
                    n = 4;
    8004df76:	4b11                	li	s6,4
quickjs-nuttx/libregexp.c:490
                for(i = 0; i < n; i++) {
    8004df78:	4a81                	li	s5,0
quickjs-nuttx/libregexp.c:489
                c = 0;
    8004df7a:	4401                	li	s0,0
quickjs-nuttx/libregexp.c:491
                    h = from_hex(*p++);
    8004df7c:	8a26                	mv	s4,s1
    8004df7e:	0004c503          	lbu	a0,0(s1)
    8004df82:	0485                	addi	s1,s1,1
    8004df84:	ea9fe0ef          	jal	ra,8004ce2c <from_hex>
quickjs-nuttx/libregexp.c:492
                    if (h < 0) {
    8004df88:	10054963          	bltz	a0,8004e09a <lre_parse_escape+0x1ea>
quickjs-nuttx/libregexp.c:495 (discriminator 2)
                    c = (c << 4) | h;
    8004df8c:	0044141b          	slliw	s0,s0,0x4
    8004df90:	8d41                	or	a0,a0,s0
quickjs-nuttx/libregexp.c:490 (discriminator 2)
                for(i = 0; i < n; i++) {
    8004df92:	2a85                	addiw	s5,s5,1
quickjs-nuttx/libregexp.c:495 (discriminator 2)
                    c = (c << 4) | h;
    8004df94:	0005041b          	sext.w	s0,a0
quickjs-nuttx/libregexp.c:490 (discriminator 2)
                for(i = 0; i < n; i++) {
    8004df98:	ff5b12e3          	bne	s6,s5,8004df7c <lre_parse_escape+0xcc>
quickjs-nuttx/libregexp.c:497
                if (c >= 0xd800 && c < 0xdc00 &&
    8004df9c:	77cd                	lui	a5,0xffff3
    8004df9e:	8007879b          	addiw	a5,a5,-2048
    8004dfa2:	9fa1                	addw	a5,a5,s0
    8004dfa4:	3ff00713          	li	a4,1023
    8004dfa8:	f4f761e3          	bltu	a4,a5,8004deea <lre_parse_escape+0x3a>
quickjs-nuttx/libregexp.c:497 (discriminator 1)
    8004dfac:	4789                	li	a5,2
    8004dfae:	f2f99ee3          	bne	s3,a5,8004deea <lre_parse_escape+0x3a>
quickjs-nuttx/libregexp.c:498
                    allow_utf16 == 2 && p[0] == '\\' && p[1] == 'u') {
    8004dfb2:	0004c703          	lbu	a4,0(s1)
    8004dfb6:	05c00793          	li	a5,92
    8004dfba:	f2f718e3          	bne	a4,a5,8004deea <lre_parse_escape+0x3a>
quickjs-nuttx/libregexp.c:498 (discriminator 1)
    8004dfbe:	0014c703          	lbu	a4,1(s1)
    8004dfc2:	07500793          	li	a5,117
    8004dfc6:	f2f712e3          	bne	a4,a5,8004deea <lre_parse_escape+0x3a>
    8004dfca:	003a0a93          	addi	s5,s4,3 # ffffffffffff2003 <_ebss+0xffffffff7fef0e9d>
    8004dfce:	00648b13          	addi	s6,s1,6
quickjs-nuttx/libregexp.c:501
                    c1 = 0;
    8004dfd2:	4981                	li	s3,0
quickjs-nuttx/libregexp.c:503
                        h = from_hex(p[2 + i]);
    8004dfd4:	000ac503          	lbu	a0,0(s5) # 110000 <asinh-0x7fef0000>
    8004dfd8:	e55fe0ef          	jal	ra,8004ce2c <from_hex>
quickjs-nuttx/libregexp.c:504
                        if (h < 0)
    8004dfdc:	f00547e3          	bltz	a0,8004deea <lre_parse_escape+0x3a>
quickjs-nuttx/libregexp.c:506 (discriminator 2)
                        c1 = (c1 << 4) | h;
    8004dfe0:	0049999b          	slliw	s3,s3,0x4
    8004dfe4:	013569b3          	or	s3,a0,s3
quickjs-nuttx/libregexp.c:502 (discriminator 2)
                    for(i = 0; i < 4; i++) {
    8004dfe8:	0a85                	addi	s5,s5,1
quickjs-nuttx/libregexp.c:506 (discriminator 2)
                        c1 = (c1 << 4) | h;
    8004dfea:	2981                	sext.w	s3,s3
quickjs-nuttx/libregexp.c:502 (discriminator 2)
                    for(i = 0; i < 4; i++) {
    8004dfec:	ff6a94e3          	bne	s5,s6,8004dfd4 <lre_parse_escape+0x124>
quickjs-nuttx/libregexp.c:508
                    if (i == 4 && c1 >= 0xdc00 && c1 < 0xe000) {
    8004dff0:	77c9                	lui	a5,0xffff2
    8004dff2:	4007879b          	addiw	a5,a5,1024
    8004dff6:	013787bb          	addw	a5,a5,s3
    8004dffa:	3ff00713          	li	a4,1023
    8004dffe:	eef766e3          	bltu	a4,a5,8004deea <lre_parse_escape+0x3a>
quickjs-nuttx/libregexp.c:510
                        c = (((c & 0x3ff) << 10) | (c1 & 0x3ff)) + 0x10000;
