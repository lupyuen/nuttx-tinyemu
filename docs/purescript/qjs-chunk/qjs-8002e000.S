    8002d002:	dc079ee3          	bnez	a5,8002cdde <js_create_function+0x14ba>
    8002d006:	0026f793          	andi	a5,a3,2
    8002d00a:	22079f63          	bnez	a5,8002d248 <js_create_function+0x1924>
    8002d00e:	8a85                	andi	a3,a3,1
    8002d010:	c2b5                	beqz	a3,8002d074 <js_create_function+0x1750>
quickjs-nuttx/quickjs.c:33047
            catch_level = stack_len - 1;
    8002d012:	fffc879b          	addiw	a5,s9,-1
quickjs-nuttx/quickjs.c:32934
        op = bc_buf[pos];
    8002d016:	49bd                	li	s3,15
quickjs-nuttx/quickjs.c:33058
            if (catch_pos >= 0) {
    8002d018:	04094e63          	bltz	s2,8002d074 <js_create_function+0x1750>
quickjs-nuttx/quickjs.c:33060
                level = s->stack_level_tab[catch_pos];
    8002d01c:	00191713          	slli	a4,s2,0x1
    8002d020:	963a                	add	a2,a2,a4
    8002d022:	00065703          	lhu	a4,0(a2)
quickjs-nuttx/quickjs.c:33061
                if (bc_buf[catch_pos] != OP_catch)
    8002d026:	012a8633          	add	a2,s5,s2
    8002d02a:	00064583          	lbu	a1,0(a2)
    8002d02e:	06d00613          	li	a2,109
    8002d032:	00c58363          	beq	a1,a2,8002d038 <js_create_function+0x1714>
quickjs-nuttx/quickjs.c:33062
                    level++; /* for_of_start, for_wait_of_start */
    8002d036:	2705                	addiw	a4,a4,1
quickjs-nuttx/quickjs.c:33064
                if (catch_level == level) {
    8002d038:	02e79e63          	bne	a5,a4,8002d074 <js_create_function+0x1750>
quickjs-nuttx/quickjs.c:33065
                    catch_pos = s->catch_pos_tab[catch_pos];
    8002d03c:	090a                	slli	s2,s2,0x2
    8002d03e:	984a                	add	a6,a6,s2
    8002d040:	00082903          	lw	s2,0(a6)
    8002d044:	a805                	j	8002d074 <js_create_function+0x1750>
    8002d046:	f966869b          	addiw	a3,a3,-106
    8002d04a:	0ff6f693          	zext.b	a3,a3
    8002d04e:	02d2e363          	bltu	t0,a3,8002d074 <js_create_function+0x1750>
    8002d052:	068a                	slli	a3,a3,0x2
    8002d054:	969a                	add	a3,a3,t1
    8002d056:	429c                	lw	a5,0(a3)
    8002d058:	979a                	add	a5,a5,t1
    8002d05a:	8782                	jr	a5
quickjs-nuttx/quickjs.c:32972
        switch(op) {
    8002d05c:	0ee00793          	li	a5,238
    8002d060:	08f68363          	beq	a3,a5,8002d0e6 <js_create_function+0x17c2>
    8002d064:	02d7e363          	bltu	a5,a3,8002d08a <js_create_function+0x1766>
    8002d068:	26d1                	addiw	a3,a3,20
    8002d06a:	0ff6f693          	zext.b	a3,a3
    8002d06e:	4785                	li	a5,1
    8002d070:	08d7f663          	bgeu	a5,a3,8002d0fc <js_create_function+0x17d8>
quickjs-nuttx/quickjs.c:33083
        if (ss_check(ctx, s, pos_next, op, stack_len, catch_pos))
    8002d074:	87ca                	mv	a5,s2
    8002d076:	8766                	mv	a4,s9
    8002d078:	86ce                	mv	a3,s3
    8002d07a:	8652                	mv	a2,s4
    8002d07c:	188c                	addi	a1,sp,112
    8002d07e:	856e                	mv	a0,s11
    8002d080:	fd6fe0ef          	jal	ra,8002b856 <ss_check>
    8002d084:	d2050de3          	beqz	a0,8002cdbe <js_create_function+0x149a>
    8002d088:	b54d                	j	8002cf2a <js_create_function+0x1606>
quickjs-nuttx/quickjs.c:32972
        switch(op) {
    8002d08a:	0ef00793          	li	a5,239
    8002d08e:	fef693e3          	bne	a3,a5,8002d074 <js_create_function+0x1750>
get_u16():
quickjs-nuttx/cutils.h:185
    8002d092:	00254a03          	lbu	s4,2(a0)
    8002d096:	00154783          	lbu	a5,1(a0)
compute_stack_size():
quickjs-nuttx/quickjs.c:32989
            pos_next = pos + 1 + diff;
    8002d09a:	0014861b          	addiw	a2,s1,1
get_u16():
quickjs-nuttx/cutils.h:185
    8002d09e:	0a22                	slli	s4,s4,0x8
    8002d0a0:	00fa6a33          	or	s4,s4,a5
compute_stack_size():
quickjs-nuttx/quickjs.c:32988
            diff = (int16_t)get_u16(bc_buf + pos + 1);
    8002d0a4:	010a1a1b          	slliw	s4,s4,0x10
    8002d0a8:	410a5a1b          	sraiw	s4,s4,0x10
quickjs-nuttx/quickjs.c:32989
            pos_next = pos + 1 + diff;
    8002d0ac:	00ca0a3b          	addw	s4,s4,a2
quickjs-nuttx/quickjs.c:32934
        op = bc_buf[pos];
    8002d0b0:	0ef00993          	li	s3,239
quickjs-nuttx/quickjs.c:32990
            break;
    8002d0b4:	b7c1                	j	8002d074 <js_create_function+0x1750>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002d0b6:	00254783          	lbu	a5,2(a0)
    8002d0ba:	00154a03          	lbu	s4,1(a0)
compute_stack_size():
quickjs-nuttx/quickjs.c:32984
            pos_next = pos + 1 + diff;
    8002d0be:	0014861b          	addiw	a2,s1,1
get_u32():
quickjs-nuttx/cutils.h:170
    8002d0c2:	07a2                	slli	a5,a5,0x8
    8002d0c4:	0147e7b3          	or	a5,a5,s4
    8002d0c8:	00354a03          	lbu	s4,3(a0)
compute_stack_size():
quickjs-nuttx/quickjs.c:32934
        op = bc_buf[pos];
    8002d0cc:	06c00993          	li	s3,108
get_u32():
quickjs-nuttx/cutils.h:170
    8002d0d0:	0a42                	slli	s4,s4,0x10
    8002d0d2:	00fa67b3          	or	a5,s4,a5
    8002d0d6:	00454a03          	lbu	s4,4(a0)
    8002d0da:	0a62                	slli	s4,s4,0x18
    8002d0dc:	00fa6a33          	or	s4,s4,a5
compute_stack_size():
quickjs-nuttx/quickjs.c:32984
            pos_next = pos + 1 + diff;
    8002d0e0:	01460a3b          	addw	s4,a2,s4
quickjs-nuttx/quickjs.c:32985
            break;
    8002d0e4:	bf41                	j	8002d074 <js_create_function+0x1750>
quickjs-nuttx/quickjs.c:32992
            diff = (int8_t)bc_buf[pos + 1];
    8002d0e6:	0014879b          	addiw	a5,s1,1
    8002d0ea:	863e                	mv	a2,a5
    8002d0ec:	97d6                	add	a5,a5,s5
    8002d0ee:	00078a03          	lb	s4,0(a5)
quickjs-nuttx/quickjs.c:32934
        op = bc_buf[pos];
    8002d0f2:	0ee00993          	li	s3,238
quickjs-nuttx/quickjs.c:32993
            pos_next = pos + 1 + diff;
    8002d0f6:	00ca0a3b          	addw	s4,s4,a2
quickjs-nuttx/quickjs.c:32994
            break;
    8002d0fa:	bfad                	j	8002d074 <js_create_function+0x1750>
quickjs-nuttx/quickjs.c:32997
            diff = (int8_t)bc_buf[pos + 1];
    8002d0fc:	0014879b          	addiw	a5,s1,1
    8002d100:	863e                	mv	a2,a5
    8002d102:	97d6                	add	a5,a5,s5
    8002d104:	00078583          	lb	a1,0(a5)
quickjs-nuttx/quickjs.c:33005
            if (ss_check(ctx, s, pos + 1 + diff, op, stack_len, catch_pos))
    8002d108:	87ca                	mv	a5,s2
    8002d10a:	8766                	mv	a4,s9
quickjs-nuttx/quickjs.c:33023
            if (ss_check(ctx, s, pos + 5 + diff, op, stack_len + 2, catch_pos))
    8002d10c:	9e2d                	addw	a2,a2,a1
    8002d10e:	86ce                	mv	a3,s3
    8002d110:	188c                	addi	a1,sp,112
    8002d112:	856e                	mv	a0,s11
    8002d114:	f42fe0ef          	jal	ra,8002b856 <ss_check>
    8002d118:	dd31                	beqz	a0,8002d074 <js_create_function+0x1750>
    8002d11a:	bd01                	j	8002cf2a <js_create_function+0x1606>
get_u32():
quickjs-nuttx/cutils.h:170
    8002d11c:	00254583          	lbu	a1,2(a0)
    8002d120:	00154603          	lbu	a2,1(a0)
    8002d124:	05a2                	slli	a1,a1,0x8
    8002d126:	8dd1                	or	a1,a1,a2
    8002d128:	00354603          	lbu	a2,3(a0)
    8002d12c:	0642                	slli	a2,a2,0x10
    8002d12e:	8e4d                	or	a2,a2,a1
    8002d130:	00454583          	lbu	a1,4(a0)
    8002d134:	05e2                	slli	a1,a1,0x18
    8002d136:	8dd1                	or	a1,a1,a2
compute_stack_size():
quickjs-nuttx/quickjs.c:33005
            if (ss_check(ctx, s, pos + 1 + diff, op, stack_len, catch_pos))
    8002d138:	0014861b          	addiw	a2,s1,1
    8002d13c:	b7f1                	j	8002d108 <js_create_function+0x17e4>
get_u32():
quickjs-nuttx/cutils.h:170
    8002d13e:	00254583          	lbu	a1,2(a0)
    8002d142:	00154603          	lbu	a2,1(a0)
compute_stack_size():
quickjs-nuttx/quickjs.c:33010
            if (ss_check(ctx, s, pos + 1 + diff, op, stack_len + 1, catch_pos))
    8002d146:	87ca                	mv	a5,s2
get_u32():
quickjs-nuttx/cutils.h:170
    8002d148:	05a2                	slli	a1,a1,0x8
    8002d14a:	8dd1                	or	a1,a1,a2
    8002d14c:	00354603          	lbu	a2,3(a0)
compute_stack_size():
quickjs-nuttx/quickjs.c:33010
    8002d150:	001c871b          	addiw	a4,s9,1
    8002d154:	06e00693          	li	a3,110
get_u32():
quickjs-nuttx/cutils.h:170
    8002d158:	0642                	slli	a2,a2,0x10
    8002d15a:	8e4d                	or	a2,a2,a1
    8002d15c:	00454583          	lbu	a1,4(a0)
compute_stack_size():
quickjs-nuttx/quickjs.c:33010
    8002d160:	856e                	mv	a0,s11
get_u32():
quickjs-nuttx/cutils.h:170
    8002d162:	05e2                	slli	a1,a1,0x18
    8002d164:	8dd1                	or	a1,a1,a2
compute_stack_size():
quickjs-nuttx/quickjs.c:33010
    8002d166:	0014861b          	addiw	a2,s1,1
    8002d16a:	9e2d                	addw	a2,a2,a1
    8002d16c:	188c                	addi	a1,sp,112
    8002d16e:	ee8fe0ef          	jal	ra,8002b856 <ss_check>
    8002d172:	da051ce3          	bnez	a0,8002cf2a <js_create_function+0x1606>
quickjs-nuttx/quickjs.c:32934
        op = bc_buf[pos];
    8002d176:	06e00993          	li	s3,110
    8002d17a:	bded                	j	8002d074 <js_create_function+0x1750>
get_u32():
quickjs-nuttx/cutils.h:170
    8002d17c:	00654583          	lbu	a1,6(a0)
    8002d180:	00554603          	lbu	a2,5(a0)
compute_stack_size():
quickjs-nuttx/quickjs.c:33016
            if (ss_check(ctx, s, pos + 5 + diff, op, stack_len + 1, catch_pos))
    8002d184:	87ca                	mv	a5,s2
get_u32():
quickjs-nuttx/cutils.h:170
    8002d186:	05a2                	slli	a1,a1,0x8
    8002d188:	8dd1                	or	a1,a1,a2
    8002d18a:	00754603          	lbu	a2,7(a0)
compute_stack_size():
quickjs-nuttx/quickjs.c:33016
    8002d18e:	001c871b          	addiw	a4,s9,1
get_u32():
quickjs-nuttx/cutils.h:170
    8002d192:	0642                	slli	a2,a2,0x10
    8002d194:	8e4d                	or	a2,a2,a1
    8002d196:	00854583          	lbu	a1,8(a0)
    8002d19a:	05e2                	slli	a1,a1,0x18
    8002d19c:	8dd1                	or	a1,a1,a2
compute_stack_size():
quickjs-nuttx/quickjs.c:33016
    8002d19e:	0054861b          	addiw	a2,s1,5
    8002d1a2:	b7ad                	j	8002d10c <js_create_function+0x17e8>
get_u32():
quickjs-nuttx/cutils.h:170
    8002d1a4:	00654583          	lbu	a1,6(a0)
    8002d1a8:	00554603          	lbu	a2,5(a0)
compute_stack_size():
quickjs-nuttx/quickjs.c:33023
            if (ss_check(ctx, s, pos + 5 + diff, op, stack_len + 2, catch_pos))
    8002d1ac:	87ca                	mv	a5,s2
get_u32():
quickjs-nuttx/cutils.h:170
    8002d1ae:	05a2                	slli	a1,a1,0x8
    8002d1b0:	8dd1                	or	a1,a1,a2
    8002d1b2:	00754603          	lbu	a2,7(a0)
compute_stack_size():
quickjs-nuttx/quickjs.c:33023
    8002d1b6:	002c871b          	addiw	a4,s9,2
get_u32():
quickjs-nuttx/cutils.h:170
    8002d1ba:	0642                	slli	a2,a2,0x10
    8002d1bc:	8e4d                	or	a2,a2,a1
    8002d1be:	00854583          	lbu	a1,8(a0)
    8002d1c2:	05e2                	slli	a1,a1,0x18
    8002d1c4:	8dd1                	or	a1,a1,a2
compute_stack_size():
quickjs-nuttx/quickjs.c:33023
    8002d1c6:	0054861b          	addiw	a2,s1,5
    8002d1ca:	b789                	j	8002d10c <js_create_function+0x17e8>
get_u32():
quickjs-nuttx/cutils.h:170
    8002d1cc:	00654583          	lbu	a1,6(a0)
    8002d1d0:	00554603          	lbu	a2,5(a0)
compute_stack_size():
quickjs-nuttx/quickjs.c:33028
            if (ss_check(ctx, s, pos + 5 + diff, op, stack_len - 1, catch_pos))
    8002d1d4:	87ca                	mv	a5,s2
get_u32():
quickjs-nuttx/cutils.h:170
    8002d1d6:	05a2                	slli	a1,a1,0x8
    8002d1d8:	8dd1                	or	a1,a1,a2
    8002d1da:	00754603          	lbu	a2,7(a0)
compute_stack_size():
quickjs-nuttx/quickjs.c:33028
    8002d1de:	fffc871b          	addiw	a4,s9,-1
    8002d1e2:	07500693          	li	a3,117
get_u32():
quickjs-nuttx/cutils.h:170
    8002d1e6:	0642                	slli	a2,a2,0x10
    8002d1e8:	8e4d                	or	a2,a2,a1
    8002d1ea:	00854583          	lbu	a1,8(a0)
compute_stack_size():
quickjs-nuttx/quickjs.c:33028
    8002d1ee:	856e                	mv	a0,s11
get_u32():
quickjs-nuttx/cutils.h:170
    8002d1f0:	05e2                	slli	a1,a1,0x18
    8002d1f2:	8dd1                	or	a1,a1,a2
compute_stack_size():
quickjs-nuttx/quickjs.c:33028
    8002d1f4:	0054861b          	addiw	a2,s1,5
    8002d1f8:	9e2d                	addw	a2,a2,a1
    8002d1fa:	188c                	addi	a1,sp,112
    8002d1fc:	e5afe0ef          	jal	ra,8002b856 <ss_check>
    8002d200:	d20515e3          	bnez	a0,8002cf2a <js_create_function+0x1606>
quickjs-nuttx/quickjs.c:32934
        op = bc_buf[pos];
    8002d204:	07500993          	li	s3,117
    8002d208:	b5b5                	j	8002d074 <js_create_function+0x1750>
get_u32():
quickjs-nuttx/cutils.h:170
    8002d20a:	00254583          	lbu	a1,2(a0)
    8002d20e:	00154603          	lbu	a2,1(a0)
compute_stack_size():
quickjs-nuttx/quickjs.c:33033
            if (ss_check(ctx, s, pos + 1 + diff, op, stack_len, catch_pos))
    8002d212:	87ca                	mv	a5,s2
get_u32():
quickjs-nuttx/cutils.h:170
    8002d214:	05a2                	slli	a1,a1,0x8
    8002d216:	8dd1                	or	a1,a1,a2
    8002d218:	00354603          	lbu	a2,3(a0)
compute_stack_size():
quickjs-nuttx/quickjs.c:33033
    8002d21c:	8766                	mv	a4,s9
    8002d21e:	06d00693          	li	a3,109
get_u32():
quickjs-nuttx/cutils.h:170
    8002d222:	0642                	slli	a2,a2,0x10
    8002d224:	8e4d                	or	a2,a2,a1
    8002d226:	00454583          	lbu	a1,4(a0)
compute_stack_size():
quickjs-nuttx/quickjs.c:33033
    8002d22a:	856e                	mv	a0,s11
get_u32():
quickjs-nuttx/cutils.h:170
    8002d22c:	05e2                	slli	a1,a1,0x18
    8002d22e:	8dd1                	or	a1,a1,a2
compute_stack_size():
quickjs-nuttx/quickjs.c:33033
    8002d230:	0014861b          	addiw	a2,s1,1
    8002d234:	9e2d                	addw	a2,a2,a1
    8002d236:	188c                	addi	a1,sp,112
    8002d238:	e1efe0ef          	jal	ra,8002b856 <ss_check>
    8002d23c:	ce0517e3          	bnez	a0,8002cf2a <js_create_function+0x1606>
quickjs-nuttx/quickjs.c:32931
        pos = s->pc_stack[--s->pc_stack_len];
    8002d240:	8926                	mv	s2,s1
quickjs-nuttx/quickjs.c:32934
        op = bc_buf[pos];
    8002d242:	06d00993          	li	s3,109
    8002d246:	b53d                	j	8002d074 <js_create_function+0x1750>
quickjs-nuttx/quickjs.c:33050
            catch_level = stack_len - 1;
    8002d248:	fffc879b          	addiw	a5,s9,-1
quickjs-nuttx/quickjs.c:32934
        op = bc_buf[pos];
    8002d24c:	49c1                	li	s3,16
quickjs-nuttx/quickjs.c:33051
            goto check_catch;
    8002d24e:	b3e9                	j	8002d018 <js_create_function+0x16f4>
quickjs-nuttx/quickjs.c:33053
            catch_level = stack_len + 2;
    8002d250:	002c879b          	addiw	a5,s9,2
quickjs-nuttx/quickjs.c:32934
        op = bc_buf[pos];
    8002d254:	08500993          	li	s3,133
    8002d258:	b3c1                	j	8002d018 <js_create_function+0x16f4>
quickjs-nuttx/quickjs.c:32964
        stack_len += oi->n_push - n_pop;
    8002d25a:	87e6                	mv	a5,s9
quickjs-nuttx/quickjs.c:32972
        switch(op) {
    8002d25c:	49b9                	li	s3,14
    8002d25e:	bb6d                	j	8002d018 <js_create_function+0x16f4>
quickjs-nuttx/quickjs.c:33070
            if (catch_pos < 0) {
    8002d260:	00095b63          	bgez	s2,8002d276 <js_create_function+0x1952>
quickjs-nuttx/quickjs.c:33071
                JS_ThrowInternalError(ctx, "nip_catch: no catch op (pc=%d)", pos);
    8002d264:	8626                	mv	a2,s1
    8002d266:	856e                	mv	a0,s11
    8002d268:	0003e597          	auipc	a1,0x3e
    8002d26c:	3b058593          	addi	a1,a1,944 # 8006b618 <qjsc_repl+0x6068>
    8002d270:	e88ec0ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:33072
                goto fail;
    8002d274:	b95d                	j	8002cf2a <js_create_function+0x1606>
quickjs-nuttx/quickjs.c:33075
            if (bc_buf[catch_pos] != OP_catch)
    8002d276:	012a8733          	add	a4,s5,s2
    8002d27a:	00074683          	lbu	a3,0(a4)
quickjs-nuttx/quickjs.c:33074
            stack_len = s->stack_level_tab[catch_pos];
    8002d27e:	00191793          	slli	a5,s2,0x1
    8002d282:	963e                	add	a2,a2,a5
quickjs-nuttx/quickjs.c:33075
            if (bc_buf[catch_pos] != OP_catch)
    8002d284:	06d00713          	li	a4,109
quickjs-nuttx/quickjs.c:33074
            stack_len = s->stack_level_tab[catch_pos];
    8002d288:	00065c83          	lhu	s9,0(a2)
quickjs-nuttx/quickjs.c:33075
            if (bc_buf[catch_pos] != OP_catch)
    8002d28c:	00e68363          	beq	a3,a4,8002d292 <js_create_function+0x196e>
quickjs-nuttx/quickjs.c:33062
                    level++; /* for_of_start, for_wait_of_start */
    8002d290:	2c85                	addiw	s9,s9,1
quickjs-nuttx/quickjs.c:33078
            catch_pos = s->catch_pos_tab[catch_pos];
    8002d292:	090a                	slli	s2,s2,0x2
    8002d294:	984a                	add	a6,a6,s2
    8002d296:	00082903          	lw	s2,0(a6)
quickjs-nuttx/quickjs.c:33077
            stack_len++; /* no stack overflow is possible by construction */
    8002d29a:	0c85                	addi	s9,s9,1
quickjs-nuttx/quickjs.c:32934
        op = bc_buf[pos];
    8002d29c:	07000993          	li	s3,112
quickjs-nuttx/quickjs.c:33079
            break;
    8002d2a0:	bbd1                	j	8002d074 <js_create_function+0x1750>
quickjs-nuttx/quickjs.c:32931
        pos = s->pc_stack[--s->pc_stack_len];
    8002d2a2:	8926                	mv	s2,s1
    8002d2a4:	bbc1                	j	8002d074 <js_create_function+0x1750>
js_create_function():
quickjs-nuttx/quickjs.c:33266 (discriminator 3)
                JS_FreeAtom(ctx, fd->vars[i].var_name);
    8002d2a6:	685c                	ld	a5,144(s0)
    8002d2a8:	004b1713          	slli	a4,s6,0x4
    8002d2ac:	856e                	mv	a0,s11
    8002d2ae:	97ba                	add	a5,a5,a4
    8002d2b0:	438c                	lw	a1,0(a5)
quickjs-nuttx/quickjs.c:33265 (discriminator 3)
            for(i = 0; i < fd->var_count; i++) {
    8002d2b2:	2b05                	addiw	s6,s6,1
quickjs-nuttx/quickjs.c:33266 (discriminator 3)
                JS_FreeAtom(ctx, fd->vars[i].var_name);
    8002d2b4:	e95dd0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:33265 (discriminator 1)
            for(i = 0; i < fd->var_count; i++) {
    8002d2b8:	09c42783          	lw	a5,156(s0)
    8002d2bc:	fefb45e3          	blt	s6,a5,8002d2a6 <js_create_function+0x1982>
quickjs-nuttx/quickjs.c:33268
            for(i = 0; i < fd->arg_count; i++) {
    8002d2c0:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:33268 (discriminator 1)
    8002d2c2:	0ac42783          	lw	a5,172(s0)
    8002d2c6:	1efb4f63          	blt	s6,a5,8002d4c4 <js_create_function+0x1ba0>
quickjs-nuttx/quickjs.c:33271 (discriminator 1)
            for(i = 0; i < fd->closure_var_count; i++) {
    8002d2ca:	19842783          	lw	a5,408(s0)
    8002d2ce:	20f94563          	blt	s2,a5,8002d4d8 <js_create_function+0x1bb4>
quickjs-nuttx/quickjs.c:33280
        b->var_count = fd->var_count;
    8002d2d2:	09c42783          	lw	a5,156(s0)
quickjs-nuttx/quickjs.c:33283
        js_free(ctx, fd->args);
    8002d2d6:	856e                	mv	a0,s11
quickjs-nuttx/quickjs.c:33280
        b->var_count = fd->var_count;
    8002d2d8:	04f49123          	sh	a5,66(s1)
quickjs-nuttx/quickjs.c:33281
        b->arg_count = fd->arg_count;
    8002d2dc:	0ac42783          	lw	a5,172(s0)
    8002d2e0:	04f49023          	sh	a5,64(s1)
quickjs-nuttx/quickjs.c:33282
        b->defined_arg_count = fd->defined_arg_count;
    8002d2e4:	0b042783          	lw	a5,176(s0)
    8002d2e8:	04f49223          	sh	a5,68(s1)
quickjs-nuttx/quickjs.c:33283
        js_free(ctx, fd->args);
    8002d2ec:	704c                	ld	a1,160(s0)
    8002d2ee:	d09dd0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:33284
        js_free(ctx, fd->vars);
    8002d2f2:	684c                	ld	a1,144(s0)
    8002d2f4:	856e                	mv	a0,s11
    8002d2f6:	d01dd0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:33286
    b->cpool_count = fd->cpool_count;
    8002d2fa:	19042603          	lw	a2,400(s0)
    8002d2fe:	ccb0                	sw	a2,88(s1)
quickjs-nuttx/quickjs.c:33287
    if (b->cpool_count) {
    8002d300:	ca09                	beqz	a2,8002d312 <js_create_function+0x19ee>
quickjs-nuttx/quickjs.c:33288
        b->cpool = (void *)((uint8_t*)b + cpool_offset);
    8002d302:	01448533          	add	a0,s1,s4
    8002d306:	e8a8                	sd	a0,80(s1)
quickjs-nuttx/quickjs.c:33289
        memcpy(b->cpool, fd->cpool, b->cpool_count * sizeof(*b->cpool));
    8002d308:	18843583          	ld	a1,392(s0)
    8002d30c:	0612                	slli	a2,a2,0x4
    8002d30e:	29f360ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:33291
    js_free(ctx, fd->cpool);
    8002d312:	18843583          	ld	a1,392(s0)
    8002d316:	856e                	mv	a0,s11
    8002d318:	cdfdd0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:33292
    fd->cpool = NULL;
    8002d31c:	18043423          	sd	zero,392(s0)
quickjs-nuttx/quickjs.c:33294
    b->stack_size = stack_size;
    8002d320:	05549323          	sh	s5,70(s1)
quickjs-nuttx/quickjs.c:33296
    if (fd->js_mode & JS_MODE_STRIP) {
    8002d324:	08644783          	lbu	a5,134(s0)
    8002d328:	8b89                	andi	a5,a5,2
    8002d32a:	1c078763          	beqz	a5,8002d4f8 <js_create_function+0x1bd4>
quickjs-nuttx/quickjs.c:33297
        JS_FreeAtom(ctx, fd->filename);
    8002d32e:	1d042583          	lw	a1,464(s0)
    8002d332:	856e                	mv	a0,s11
    8002d334:	e15dd0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:33298
        dbuf_free(&fd->pc2line);    // probably useless
    8002d338:	1d840513          	addi	a0,s0,472
    8002d33c:	06b240ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs.c:33317
    if (fd->scopes != fd->def_scope_array)
    8002d340:	786c                	ld	a1,240(s0)
    8002d342:	0f840793          	addi	a5,s0,248
    8002d346:	00f58563          	beq	a1,a5,8002d350 <js_create_function+0x1a2c>
quickjs-nuttx/quickjs.c:33318
        js_free(ctx, fd->scopes);
    8002d34a:	856e                	mv	a0,s11
    8002d34c:	cabdd0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:33320
    b->closure_var_count = fd->closure_var_count;
    8002d350:	19842603          	lw	a2,408(s0)
    8002d354:	ccf0                	sw	a2,92(s1)
quickjs-nuttx/quickjs.c:33321
    if (b->closure_var_count) {
    8002d356:	ca09                	beqz	a2,8002d368 <js_create_function+0x1a44>
quickjs-nuttx/quickjs.c:33322
        b->closure_var = (void *)((uint8_t*)b + closure_var_offset);
    8002d358:	01348533          	add	a0,s1,s3
    8002d35c:	fc88                	sd	a0,56(s1)
quickjs-nuttx/quickjs.c:33323
        memcpy(b->closure_var, fd->closure_var, b->closure_var_count * sizeof(*b->closure_var));
    8002d35e:	1a043583          	ld	a1,416(s0)
    8002d362:	060e                	slli	a2,a2,0x3
    8002d364:	249360ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:33325
    js_free(ctx, fd->closure_var);
    8002d368:	1a043583          	ld	a1,416(s0)
    8002d36c:	856e                	mv	a0,s11
    8002d36e:	c89dd0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:33328
    b->has_prototype = fd->has_prototype;
    8002d372:	4474                	lw	a3,76(s0)
quickjs-nuttx/quickjs.c:33326
    fd->closure_var = NULL;
    8002d374:	1a043023          	sd	zero,416(s0)
quickjs-nuttx/quickjs.c:33328
    b->has_prototype = fd->has_prototype;
    8002d378:	0016f713          	andi	a4,a3,1
    8002d37c:	0194c683          	lbu	a3,25(s1)
    8002d380:	9af9                	andi	a3,a3,-2
    8002d382:	8ed9                	or	a3,a3,a4
    8002d384:	00d48ca3          	sb	a3,25(s1)
quickjs-nuttx/quickjs.c:33329
    b->has_simple_parameter_list = fd->has_simple_parameter_list;
    8002d388:	4838                	lw	a4,80(s0)
    8002d38a:	8b05                	andi	a4,a4,1
    8002d38c:	0017179b          	slliw	a5,a4,0x1
    8002d390:	ffd6f713          	andi	a4,a3,-3
    8002d394:	8f5d                	or	a4,a4,a5
    8002d396:	00e48ca3          	sb	a4,25(s1)
quickjs-nuttx/quickjs.c:33330
    b->js_mode = fd->js_mode;
    8002d39a:	08644783          	lbu	a5,134(s0)
    8002d39e:	00f48c23          	sb	a5,24(s1)
quickjs-nuttx/quickjs.c:33331
    b->is_derived_class_constructor = fd->is_derived_class_constructor;
    8002d3a2:	5c3c                	lw	a5,120(s0)
    8002d3a4:	8b85                	andi	a5,a5,1
    8002d3a6:	0027969b          	slliw	a3,a5,0x2
    8002d3aa:	ffb77793          	andi	a5,a4,-5
    8002d3ae:	8fd5                	or	a5,a5,a3
    8002d3b0:	00f48ca3          	sb	a5,25(s1)
quickjs-nuttx/quickjs.c:33332
    b->func_kind = fd->func_kind;
    8002d3b4:	08444703          	lbu	a4,132(s0)
    8002d3b8:	fcf7f793          	andi	a5,a5,-49
    8002d3bc:	8b0d                	andi	a4,a4,3
    8002d3be:	0047171b          	slliw	a4,a4,0x4
    8002d3c2:	8fd9                	or	a5,a5,a4
    8002d3c4:	00f48ca3          	sb	a5,25(s1)
quickjs-nuttx/quickjs.c:33333
    b->need_home_object = (fd->home_object_var_idx >= 0 ||
    8002d3c8:	0d842783          	lw	a5,216(s0)
    8002d3cc:	4705                	li	a4,1
    8002d3ce:	0007d663          	bgez	a5,8002d3da <js_create_function+0x1ab6>
quickjs-nuttx/quickjs.c:33333 (discriminator 2)
    8002d3d2:	0dc42703          	lw	a4,220(s0)
    8002d3d6:	00e03733          	snez	a4,a4
quickjs-nuttx/quickjs.c:33333 (discriminator 6)
    8002d3da:	0037179b          	slliw	a5,a4,0x3
    8002d3de:	0194c703          	lbu	a4,25(s1)
    8002d3e2:	9b5d                	andi	a4,a4,-9
    8002d3e4:	8f5d                	or	a4,a4,a5
    8002d3e6:	00e48ca3          	sb	a4,25(s1)
quickjs-nuttx/quickjs.c:33335 (discriminator 6)
    b->new_target_allowed = fd->new_target_allowed;
    8002d3ea:	543c                	lw	a5,104(s0)
    8002d3ec:	8b85                	andi	a5,a5,1
    8002d3ee:	0067969b          	slliw	a3,a5,0x6
    8002d3f2:	fbf77793          	andi	a5,a4,-65
    8002d3f6:	8fd5                	or	a5,a5,a3
    8002d3f8:	00f48ca3          	sb	a5,25(s1)
quickjs-nuttx/quickjs.c:33336 (discriminator 6)
    b->super_call_allowed = fd->super_call_allowed;
    8002d3fc:	5478                	lw	a4,108(s0)
    8002d3fe:	07f7f793          	andi	a5,a5,127
    8002d402:	0077171b          	slliw	a4,a4,0x7
    8002d406:	8fd9                	or	a5,a5,a4
    8002d408:	00f48ca3          	sb	a5,25(s1)
quickjs-nuttx/quickjs.c:33337 (discriminator 6)
    b->super_allowed = fd->super_allowed;
    8002d40c:	5834                	lw	a3,112(s0)
    8002d40e:	0016f713          	andi	a4,a3,1
    8002d412:	01a4c683          	lbu	a3,26(s1)
    8002d416:	9af9                	andi	a3,a3,-2
    8002d418:	8ed9                	or	a3,a3,a4
    8002d41a:	00d48d23          	sb	a3,26(s1)
quickjs-nuttx/quickjs.c:33338 (discriminator 6)
    b->arguments_allowed = fd->arguments_allowed;
    8002d41e:	5878                	lw	a4,116(s0)
    8002d420:	8b05                	andi	a4,a4,1
    8002d422:	0017179b          	slliw	a5,a4,0x1
    8002d426:	ffd6f713          	andi	a4,a3,-3
    8002d42a:	8f5d                	or	a4,a4,a5
    8002d42c:	00e48d23          	sb	a4,26(s1)
quickjs-nuttx/quickjs.c:33339 (discriminator 6)
    b->backtrace_barrier = fd->backtrace_barrier;
    8002d430:	08042783          	lw	a5,128(s0)
    8002d434:	8b85                	andi	a5,a5,1
    8002d436:	0037969b          	slliw	a3,a5,0x3
    8002d43a:	ff777793          	andi	a5,a4,-9
    8002d43e:	8fd5                	or	a5,a5,a3
    8002d440:	00f48d23          	sb	a5,26(s1)
quickjs-nuttx/quickjs.c:33340 (discriminator 6)
    b->is_direct_or_indirect_eval = (fd->eval_type == JS_EVAL_TYPE_DIRECT ||
    8002d444:	5c58                	lw	a4,60(s0)
    8002d446:	fdf7f793          	andi	a5,a5,-33
    8002d44a:	3779                	addiw	a4,a4,-2
    8002d44c:	00273713          	sltiu	a4,a4,2
    8002d450:	0057171b          	slliw	a4,a4,0x5
    8002d454:	8fd9                	or	a5,a5,a4
    8002d456:	00f48d23          	sb	a5,26(s1)
JS_DupContext():
quickjs-nuttx/quickjs.c:2232 (discriminator 6)
    ctx->header.ref_count++;
    8002d45a:	000da783          	lw	a5,0(s11)
    8002d45e:	2785                	addiw	a5,a5,1
    8002d460:	00fda023          	sw	a5,0(s11)
js_create_function():
quickjs-nuttx/quickjs.c:33342 (discriminator 6)
    b->realm = JS_DupContext(ctx);
    8002d464:	05b4b423          	sd	s11,72(s1)
quickjs-nuttx/quickjs.c:33344 (discriminator 6)
    add_gc_object(ctx->rt, &b->header, JS_GC_OBJ_TYPE_FUNCTION_BYTECODE);
    8002d468:	018db703          	ld	a4,24(s11)
add_gc_object():
quickjs-nuttx/quickjs.c:5584 (discriminator 6)
    h->gc_obj_type = type;
    8002d46c:	4785                	li	a5,1
    8002d46e:	00f48223          	sb	a5,4(s1)
list_add_tail():
quickjs-nuttx/list.h:66 (discriminator 6)
    __list_add(el, head->prev, head);
    8002d472:	6754                	ld	a3,136(a4)
add_gc_object():
quickjs-nuttx/quickjs.c:5585 (discriminator 6)
    list_add_tail(&h->link, &rt->gc_obj_list);
    8002d474:	00848793          	addi	a5,s1,8
__list_add():
quickjs-nuttx/list.h:51 (discriminator 6)
    prev->next = el;
    8002d478:	e69c                	sd	a5,8(a3)
quickjs-nuttx/list.h:52 (discriminator 6)
    el->prev = prev;
    8002d47a:	e494                	sd	a3,8(s1)
add_gc_object():
quickjs-nuttx/quickjs.c:5585 (discriminator 6)
    8002d47c:	08870693          	addi	a3,a4,136
__list_add():
quickjs-nuttx/list.h:53 (discriminator 6)
    el->next = next;
    8002d480:	e894                	sd	a3,16(s1)
quickjs-nuttx/list.h:54 (discriminator 6)
    next->prev = el;
    8002d482:	e75c                	sd	a5,136(a4)
js_create_function():
quickjs-nuttx/quickjs.c:33352 (discriminator 6)
    if (fd->parent) {
    8002d484:	641c                	ld	a5,8(s0)
    8002d486:	c789                	beqz	a5,8002d490 <js_create_function+0x1b6c>
quickjs-nuttx/quickjs.c:33354
        list_del(&fd->link);
    8002d488:	02840513          	addi	a0,s0,40
    8002d48c:	eb8da0ef          	jal	ra,80007b44 <list_del>
quickjs-nuttx/quickjs.c:33357
    js_free(ctx, fd);
    8002d490:	85a2                	mv	a1,s0
    8002d492:	856e                	mv	a0,s11
    8002d494:	b63dd0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:33358
    return JS_MKPTR(JS_TAG_FUNCTION_BYTECODE, b);
    8002d498:	57f9                	li	a5,-2
    8002d49a:	f8a6                	sd	s1,112(sp)
quickjs-nuttx/quickjs.c:33362
}
    8002d49c:	60b2                	ld	ra,264(sp)
    8002d49e:	6412                	ld	s0,256(sp)
quickjs-nuttx/quickjs.c:33361
    return JS_EXCEPTION;
    8002d4a0:	fcbe                	sd	a5,120(sp)
quickjs-nuttx/quickjs.c:33362
}
    8002d4a2:	7546                	ld	a0,112(sp)
    8002d4a4:	75e6                	ld	a1,120(sp)
    8002d4a6:	74ee                	ld	s1,248(sp)
    8002d4a8:	794e                	ld	s2,240(sp)
    8002d4aa:	79ae                	ld	s3,232(sp)
    8002d4ac:	7a0e                	ld	s4,224(sp)
    8002d4ae:	6aee                	ld	s5,216(sp)
    8002d4b0:	6b4e                	ld	s6,208(sp)
    8002d4b2:	6bae                	ld	s7,200(sp)
    8002d4b4:	6c0e                	ld	s8,192(sp)
    8002d4b6:	7cea                	ld	s9,184(sp)
    8002d4b8:	7d4a                	ld	s10,176(sp)
    8002d4ba:	7daa                	ld	s11,168(sp)
    8002d4bc:	6151                	addi	sp,sp,272
    8002d4be:	8082                	ret
quickjs-nuttx/quickjs.c:33265
            for(i = 0; i < fd->var_count; i++) {
    8002d4c0:	4b01                	li	s6,0
    8002d4c2:	bbdd                	j	8002d2b8 <js_create_function+0x1994>
quickjs-nuttx/quickjs.c:33269 (discriminator 3)
                JS_FreeAtom(ctx, fd->args[i].var_name);
    8002d4c4:	705c                	ld	a5,160(s0)
    8002d4c6:	004b1713          	slli	a4,s6,0x4
    8002d4ca:	856e                	mv	a0,s11
    8002d4cc:	97ba                	add	a5,a5,a4
    8002d4ce:	438c                	lw	a1,0(a5)
quickjs-nuttx/quickjs.c:33268 (discriminator 3)
            for(i = 0; i < fd->arg_count; i++) {
    8002d4d0:	2b05                	addiw	s6,s6,1
quickjs-nuttx/quickjs.c:33269 (discriminator 3)
                JS_FreeAtom(ctx, fd->args[i].var_name);
    8002d4d2:	c77dd0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:33268 (discriminator 3)
            for(i = 0; i < fd->arg_count; i++) {
    8002d4d6:	b3f5                	j	8002d2c2 <js_create_function+0x199e>
quickjs-nuttx/quickjs.c:33272 (discriminator 3)
                JS_FreeAtom(ctx, fd->closure_var[i].var_name);
    8002d4d8:	1a043703          	ld	a4,416(s0)
    8002d4dc:	00391b13          	slli	s6,s2,0x3
    8002d4e0:	856e                	mv	a0,s11
    8002d4e2:	975a                	add	a4,a4,s6
    8002d4e4:	434c                	lw	a1,4(a4)
quickjs-nuttx/quickjs.c:33271 (discriminator 3)
            for(i = 0; i < fd->closure_var_count; i++) {
    8002d4e6:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:33272 (discriminator 3)
                JS_FreeAtom(ctx, fd->closure_var[i].var_name);
    8002d4e8:	c61dd0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:33273 (discriminator 3)
                fd->closure_var[i].var_name = JS_ATOM_NULL;
    8002d4ec:	1a043783          	ld	a5,416(s0)
    8002d4f0:	97da                	add	a5,a5,s6
    8002d4f2:	0007a223          	sw	zero,4(a5)
quickjs-nuttx/quickjs.c:33271 (discriminator 3)
            for(i = 0; i < fd->closure_var_count; i++) {
    8002d4f6:	bbd1                	j	8002d2ca <js_create_function+0x19a6>
quickjs-nuttx/quickjs.c:33303
        b->has_debug = 1;
    8002d4f8:	01a4c783          	lbu	a5,26(s1)
quickjs-nuttx/quickjs.c:33310
        b->debug.pc2line_buf = js_realloc(ctx, fd->pc2line.buf, fd->pc2line.size);
    8002d4fc:	856e                	mv	a0,s11
quickjs-nuttx/quickjs.c:33303
        b->has_debug = 1;
    8002d4fe:	0047e793          	ori	a5,a5,4
    8002d502:	00f48d23          	sb	a5,26(s1)
quickjs-nuttx/quickjs.c:33304
        b->debug.filename = fd->filename;
    8002d506:	1d042783          	lw	a5,464(s0)
    8002d50a:	d0bc                	sw	a5,96(s1)
quickjs-nuttx/quickjs.c:33305
        b->debug.line_num = fd->line_num;
    8002d50c:	1d442783          	lw	a5,468(s0)
    8002d510:	d0fc                	sw	a5,100(s1)
quickjs-nuttx/quickjs.c:33310
        b->debug.pc2line_buf = js_realloc(ctx, fd->pc2line.buf, fd->pc2line.size);
    8002d512:	1e043603          	ld	a2,480(s0)
    8002d516:	1d843583          	ld	a1,472(s0)
    8002d51a:	86cee0ef          	jal	ra,8001b586 <js_realloc>
    8002d51e:	f8a8                	sd	a0,112(s1)
quickjs-nuttx/quickjs.c:33311
        if (!b->debug.pc2line_buf)
    8002d520:	e501                	bnez	a0,8002d528 <js_create_function+0x1c04>
quickjs-nuttx/quickjs.c:33312
            b->debug.pc2line_buf = fd->pc2line.buf;
    8002d522:	1d843783          	ld	a5,472(s0)
    8002d526:	f8bc                	sd	a5,112(s1)
quickjs-nuttx/quickjs.c:33313
        b->debug.pc2line_len = fd->pc2line.size;
    8002d528:	1e043783          	ld	a5,480(s0)
    8002d52c:	d4fc                	sw	a5,108(s1)
quickjs-nuttx/quickjs.c:33314
        b->debug.source = fd->source;
    8002d52e:	20843783          	ld	a5,520(s0)
    8002d532:	fcbc                	sd	a5,120(s1)
quickjs-nuttx/quickjs.c:33315
        b->debug.source_len = fd->source_len;
    8002d534:	21042783          	lw	a5,528(s0)
    8002d538:	d4bc                	sw	a5,104(s1)
    8002d53a:	b519                	j	8002d340 <js_create_function+0x1a1c>

000000008002d53c <js_string_pad>:
js_string_pad():
quickjs-nuttx/quickjs.c:42249
{
    8002d53c:	7155                	addi	sp,sp,-208
    8002d53e:	e1a2                	sd	s0,192(sp)
    8002d540:	f152                	sd	s4,160(sp)
    8002d542:	ed56                	sd	s5,152(sp)
    8002d544:	e95a                	sd	s6,144(sp)
    8002d546:	fce6                	sd	s9,120(sp)
    8002d548:	8b3e                	mv	s6,a5
    8002d54a:	e586                	sd	ra,200(sp)
    8002d54c:	fd26                	sd	s1,184(sp)
    8002d54e:	f94a                	sd	s2,176(sp)
    8002d550:	f54e                	sd	s3,168(sp)
    8002d552:	e55e                	sd	s7,136(sp)
    8002d554:	e162                	sd	s8,128(sp)
    8002d556:	f8ea                	sd	s10,112(sp)
    8002d558:	842a                	mv	s0,a0
    8002d55a:	e02e                	sd	a1,0(sp)
    8002d55c:	e432                	sd	a2,8(sp)
    8002d55e:	8ab6                	mv	s5,a3
    8002d560:	8a3a                	mv	s4,a4
quickjs-nuttx/quickjs.c:42255
    str = JS_ToStringCheckObject(ctx, this_val);
    8002d562:	91ff30ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    8002d566:	f02a                	sd	a0,32(sp)
    8002d568:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:42256
    if (JS_IsException(str))
    8002d56a:	0005879b          	sext.w	a5,a1
    8002d56e:	4c99                	li	s9,6
    8002d570:	0d978563          	beq	a5,s9,8002d63a <js_string_pad+0xfe>
quickjs-nuttx/quickjs.c:42258
    if (JS_ToInt32Sat(ctx, &n, argv[0]))
    8002d574:	000a3603          	ld	a2,0(s4)
    8002d578:	008a3683          	ld	a3,8(s4)
    8002d57c:	84aa                	mv	s1,a0
    8002d57e:	89ae                	mv	s3,a1
    8002d580:	8522                	mv	a0,s0
    8002d582:	086c                	addi	a1,sp,28
    8002d584:	8a6f60ef          	jal	ra,8002362a <JS_ToInt32Sat>
    8002d588:	e545                	bnez	a0,8002d630 <js_string_pad+0xf4>
quickjs-nuttx/quickjs.c:42261
    len = p->len;
    8002d58a:	0044ac03          	lw	s8,4(s1)
    8002d58e:	80000937          	lui	s2,0x80000
quickjs-nuttx/quickjs.c:42262
    if (len >= n)
    8002d592:	47f2                	lw	a5,28(sp)
quickjs-nuttx/quickjs.c:42261
    len = p->len;
    8002d594:	fff94913          	not	s2,s2
    8002d598:	01897bb3          	and	s7,s2,s8
    8002d59c:	8c5e                	mv	s8,s7
quickjs-nuttx/quickjs.c:42262
    if (len >= n)
    8002d59e:	02fbc463          	blt	s7,a5,8002d5c6 <js_string_pad+0x8a>
quickjs-nuttx/quickjs.c:42271
            return str;
    8002d5a2:	e0a6                	sd	s1,64(sp)
    8002d5a4:	e4ce                	sd	s3,72(sp)
quickjs-nuttx/quickjs.c:42316
}
    8002d5a6:	60ae                	ld	ra,200(sp)
    8002d5a8:	640e                	ld	s0,192(sp)
    8002d5aa:	6506                	ld	a0,64(sp)
    8002d5ac:	65a6                	ld	a1,72(sp)
    8002d5ae:	74ea                	ld	s1,184(sp)
    8002d5b0:	794a                	ld	s2,176(sp)
    8002d5b2:	79aa                	ld	s3,168(sp)
    8002d5b4:	7a0a                	ld	s4,160(sp)
    8002d5b6:	6aea                	ld	s5,152(sp)
    8002d5b8:	6b4a                	ld	s6,144(sp)
    8002d5ba:	6baa                	ld	s7,136(sp)
    8002d5bc:	6c0a                	ld	s8,128(sp)
    8002d5be:	7ce6                	ld	s9,120(sp)
    8002d5c0:	7d46                	ld	s10,112(sp)
    8002d5c2:	6169                	addi	sp,sp,208
    8002d5c4:	8082                	ret
quickjs-nuttx/quickjs.c:42264
    if (argc > 1 && !JS_IsUndefined(argv[1])) {
    8002d5c6:	4d05                	li	s10,1
    8002d5c8:	095d5063          	bge	s10,s5,8002d648 <js_string_pad+0x10c>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605 (discriminator 1)
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    8002d5cc:	018a3603          	ld	a2,24(s4)
js_string_pad():
quickjs-nuttx/quickjs.c:42264 (discriminator 1)
    8002d5d0:	478d                	li	a5,3
    8002d5d2:	0006071b          	sext.w	a4,a2
    8002d5d6:	06f70963          	beq	a4,a5,8002d648 <js_string_pad+0x10c>
quickjs-nuttx/quickjs.c:42265
        v = JS_ToString(ctx, argv[1]);
    8002d5da:	010a3583          	ld	a1,16(s4)
    8002d5de:	8522                	mv	a0,s0
    8002d5e0:	99cf30ef          	jal	ra,8002077c <JS_ToString>
    8002d5e4:	f82a                	sd	a0,48(sp)
    8002d5e6:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:42266
        if (JS_IsException(v))
    8002d5e8:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:42265
        v = JS_ToString(ctx, argv[1]);
    8002d5ec:	862e                	mv	a2,a1
    8002d5ee:	8a2a                	mv	s4,a0
    8002d5f0:	8aae                	mv	s5,a1
quickjs-nuttx/quickjs.c:42266
        if (JS_IsException(v))
    8002d5f2:	03978f63          	beq	a5,s9,8002d630 <js_string_pad+0xf4>
quickjs-nuttx/quickjs.c:42269
        if (p1->len == 0) {
    8002d5f6:	415c                	lw	a5,4(a0)
    8002d5f8:	0127f933          	and	s2,a5,s2
    8002d5fc:	00091763          	bnez	s2,8002d60a <js_string_pad+0xce>
quickjs-nuttx/quickjs.c:42270
            JS_FreeValue(ctx, v);
    8002d600:	85aa                	mv	a1,a0
    8002d602:	8522                	mv	a0,s0
    8002d604:	99ade0ef          	jal	ra,8000b79e <JS_FreeValue>
    8002d608:	bf69                	j	8002d5a2 <js_string_pad+0x66>
quickjs-nuttx/quickjs.c:42273
        if (p1->len == 1) {
    8002d60a:	05a91463          	bne	s2,s10,8002d652 <js_string_pad+0x116>
string_get():
quickjs-nuttx/quickjs.c:3704
    return p->is_wide_char ? p->u.str16[idx] : p->u.str8[idx];
    8002d60e:	0207da63          	bgez	a5,8002d642 <js_string_pad+0x106>
    8002d612:	01055c83          	lhu	s9,16(a0)
js_string_pad():
quickjs-nuttx/quickjs.c:42252
    JSString *p, *p1 = NULL;
    8002d616:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:42278
    if (n > JS_STRING_LEN_MAX) {
    8002d618:	4672                	lw	a2,28(sp)
    8002d61a:	400007b7          	lui	a5,0x40000
    8002d61e:	02f64e63          	blt	a2,a5,8002d65a <js_string_pad+0x11e>
quickjs-nuttx/quickjs.c:42279
        JS_ThrowInternalError(ctx, "string too long");
    8002d622:	0003d597          	auipc	a1,0x3d
    8002d626:	26e58593          	addi	a1,a1,622 # 8006a890 <qjsc_repl+0x52e0>
    8002d62a:	8522                	mv	a0,s0
    8002d62c:	accec0ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:42313
    JS_FreeValue(ctx, str);
    8002d630:	85a6                	mv	a1,s1
    8002d632:	864e                	mv	a2,s3
    8002d634:	8522                	mv	a0,s0
    8002d636:	968de0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42315
    return JS_EXCEPTION;
    8002d63a:	4799                	li	a5,6
    8002d63c:	e082                	sd	zero,64(sp)
    8002d63e:	e4be                	sd	a5,72(sp)
    8002d640:	b79d                	j	8002d5a6 <js_string_pad+0x6a>
string_get():
quickjs-nuttx/quickjs.c:3704
    return p->is_wide_char ? p->u.str16[idx] : p->u.str8[idx];
    8002d642:	01054c83          	lbu	s9,16(a0)
    8002d646:	bfc1                	j	8002d616 <js_string_pad+0xda>
js_string_pad():
quickjs-nuttx/quickjs.c:42250
    JSValue str, v = JS_UNDEFINED;
    8002d648:	4a8d                	li	s5,3
    8002d64a:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:42253
    int n, len, c = ' ';
    8002d64c:	02000c93          	li	s9,32
    8002d650:	b7d9                	j	8002d616 <js_string_pad+0xda>
    8002d652:	892a                	mv	s2,a0
    8002d654:	02000c93          	li	s9,32
    8002d658:	b7c1                	j	8002d618 <js_string_pad+0xdc>
quickjs-nuttx/quickjs.c:42282
    if (string_buffer_init(ctx, b, n))
    8002d65a:	088c                	addi	a1,sp,80
    8002d65c:	8522                	mv	a0,s0
    8002d65e:	91ff00ef          	jal	ra,8001df7c <string_buffer_init>
    8002d662:	ed21                	bnez	a0,8002d6ba <js_string_pad+0x17e>
quickjs-nuttx/quickjs.c:42284
    n -= len;
    8002d664:	47f2                	lw	a5,28(sp)
    8002d666:	41878c3b          	subw	s8,a5,s8
    8002d66a:	ce62                	sw	s8,28(sp)
quickjs-nuttx/quickjs.c:42285
    if (padEnd) {
    8002d66c:	020b1d63          	bnez	s6,8002d6a6 <js_string_pad+0x16a>
quickjs-nuttx/quickjs.c:42289
    if (p1) {
    8002d670:	08090163          	beqz	s2,8002d6f2 <js_string_pad+0x1b6>
quickjs-nuttx/quickjs.c:42291
            int chunk = min_int(n, p1->len);
    8002d674:	80000c37          	lui	s8,0x80000
    8002d678:	fffc4c13          	not	s8,s8
quickjs-nuttx/quickjs.c:42290
        while (n > 0) {
    8002d67c:	47f2                	lw	a5,28(sp)
    8002d67e:	04f04463          	bgtz	a5,8002d6c6 <js_string_pad+0x18a>
quickjs-nuttx/quickjs.c:42300
    if (!padEnd) {
    8002d682:	060b0f63          	beqz	s6,8002d700 <js_string_pad+0x1c4>
quickjs-nuttx/quickjs.c:42304
    JS_FreeValue(ctx, v);
    8002d686:	85d2                	mv	a1,s4
    8002d688:	8656                	mv	a2,s5
    8002d68a:	8522                	mv	a0,s0
    8002d68c:	912de0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42305
    JS_FreeValue(ctx, str);
    8002d690:	7582                	ld	a1,32(sp)
    8002d692:	7622                	ld	a2,40(sp)
    8002d694:	8522                	mv	a0,s0
    8002d696:	908de0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42306
    return string_buffer_end(b);
    8002d69a:	0888                	addi	a0,sp,80
    8002d69c:	e04f20ef          	jal	ra,8001fca0 <string_buffer_end>
    8002d6a0:	e0aa                	sd	a0,64(sp)
    8002d6a2:	e4ae                	sd	a1,72(sp)
    8002d6a4:	b709                	j	8002d5a6 <js_string_pad+0x6a>
quickjs-nuttx/quickjs.c:42286
        if (string_buffer_concat(b, p, 0, len))
    8002d6a6:	86de                	mv	a3,s7
    8002d6a8:	4601                	li	a2,0
    8002d6aa:	85a6                	mv	a1,s1
    8002d6ac:	0888                	addi	a0,sp,80
    8002d6ae:	c34f10ef          	jal	ra,8001eae2 <string_buffer_concat>
    8002d6b2:	dd5d                	beqz	a0,8002d670 <js_string_pad+0x134>
quickjs-nuttx/quickjs.c:42309
    string_buffer_free(b);
    8002d6b4:	0888                	addi	a0,sp,80
    8002d6b6:	96ddd0ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:42311
    JS_FreeValue(ctx, v);
    8002d6ba:	85d2                	mv	a1,s4
    8002d6bc:	8656                	mv	a2,s5
    8002d6be:	8522                	mv	a0,s0
    8002d6c0:	8dede0ef          	jal	ra,8000b79e <JS_FreeValue>
    8002d6c4:	b7b5                	j	8002d630 <js_string_pad+0xf4>
quickjs-nuttx/quickjs.c:42291
            int chunk = min_int(n, p1->len);
    8002d6c6:	00492703          	lw	a4,4(s2) # ffffffff80000004 <_ebss+0xfffffffeffefee9e>
    8002d6ca:	01877733          	and	a4,a4,s8
    8002d6ce:	8cba                	mv	s9,a4
    8002d6d0:	2701                	sext.w	a4,a4
    8002d6d2:	00e7d363          	bge	a5,a4,8002d6d8 <js_string_pad+0x19c>
    8002d6d6:	8cbe                	mv	s9,a5
quickjs-nuttx/quickjs.c:42292
            if (string_buffer_concat(b, p1, 0, chunk))
    8002d6d8:	000c869b          	sext.w	a3,s9
    8002d6dc:	4601                	li	a2,0
    8002d6de:	85ca                	mv	a1,s2
    8002d6e0:	0888                	addi	a0,sp,80
    8002d6e2:	c00f10ef          	jal	ra,8001eae2 <string_buffer_concat>
    8002d6e6:	f579                	bnez	a0,8002d6b4 <js_string_pad+0x178>
quickjs-nuttx/quickjs.c:42294
            n -= chunk;
    8002d6e8:	47f2                	lw	a5,28(sp)
    8002d6ea:	419787bb          	subw	a5,a5,s9
    8002d6ee:	ce3e                	sw	a5,28(sp)
    8002d6f0:	b771                	j	8002d67c <js_string_pad+0x140>
quickjs-nuttx/quickjs.c:42297
        if (string_buffer_fill(b, c, n))
    8002d6f2:	4672                	lw	a2,28(sp)
    8002d6f4:	85e6                	mv	a1,s9
    8002d6f6:	0888                	addi	a0,sp,80
    8002d6f8:	ec8f10ef          	jal	ra,8001edc0 <string_buffer_fill>
    8002d6fc:	d159                	beqz	a0,8002d682 <js_string_pad+0x146>
    8002d6fe:	bf5d                	j	8002d6b4 <js_string_pad+0x178>
quickjs-nuttx/quickjs.c:42301
        if (string_buffer_concat(b, p, 0, len))
    8002d700:	86de                	mv	a3,s7
    8002d702:	4601                	li	a2,0
    8002d704:	85a6                	mv	a1,s1
    8002d706:	0888                	addi	a0,sp,80
    8002d708:	bdaf10ef          	jal	ra,8001eae2 <string_buffer_concat>
    8002d70c:	dd2d                	beqz	a0,8002d686 <js_string_pad+0x14a>
    8002d70e:	b75d                	j	8002d6b4 <js_string_pad+0x178>

000000008002d710 <js_string_repeat>:
js_string_repeat():
quickjs-nuttx/quickjs.c:42320
{
    8002d710:	7135                	addi	sp,sp,-160
    8002d712:	e922                	sd	s0,144(sp)
    8002d714:	e14a                	sd	s2,128(sp)
    8002d716:	843a                	mv	s0,a4
    8002d718:	ed06                	sd	ra,152(sp)
    8002d71a:	e526                	sd	s1,136(sp)
    8002d71c:	fcce                	sd	s3,120(sp)
    8002d71e:	f8d2                	sd	s4,112(sp)
    8002d720:	f4d6                	sd	s5,104(sp)
    8002d722:	892a                	mv	s2,a0
    8002d724:	e02e                	sd	a1,0(sp)
    8002d726:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:42327
    str = JS_ToStringCheckObject(ctx, this_val);
    8002d728:	f58f30ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    8002d72c:	f02a                	sd	a0,32(sp)
    8002d72e:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:42328
    if (JS_IsException(str))
    8002d730:	0005871b          	sext.w	a4,a1
    8002d734:	4799                	li	a5,6
    8002d736:	02f70963          	beq	a4,a5,8002d768 <js_string_repeat+0x58>
quickjs-nuttx/quickjs.c:42330
    if (JS_ToInt64Sat(ctx, &val, argv[0]))
    8002d73a:	6010                	ld	a2,0(s0)
    8002d73c:	6414                	ld	a3,8(s0)
    8002d73e:	84aa                	mv	s1,a0
    8002d740:	89ae                	mv	s3,a1
    8002d742:	854a                	mv	a0,s2
    8002d744:	082c                	addi	a1,sp,24
    8002d746:	c95f60ef          	jal	ra,800243da <JS_ToInt64Sat>
    8002d74a:	ed19                	bnez	a0,8002d768 <js_string_repeat+0x58>
quickjs-nuttx/quickjs.c:42332
    if (val < 0 || val > 2147483647) {
    8002d74c:	6662                	ld	a2,24(sp)
    8002d74e:	80000437          	lui	s0,0x80000
    8002d752:	fff44413          	not	s0,s0
    8002d756:	02c47263          	bgeu	s0,a2,8002d77a <js_string_repeat+0x6a>
quickjs-nuttx/quickjs.c:42333
        JS_ThrowRangeError(ctx, "invalid repeat count");
    8002d75a:	0003e597          	auipc	a1,0x3e
    8002d75e:	09658593          	addi	a1,a1,150 # 8006b7f0 <qjsc_repl+0x6240>
    8002d762:	854a                	mv	a0,s2
    8002d764:	96aec0ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:42358
    JS_FreeValue(ctx, str);
    8002d768:	7582                	ld	a1,32(sp)
    8002d76a:	7622                	ld	a2,40(sp)
    8002d76c:	854a                	mv	a0,s2
    8002d76e:	830de0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42359
    return JS_EXCEPTION;
    8002d772:	4799                	li	a5,6
    8002d774:	f802                	sd	zero,48(sp)
    8002d776:	fc3e                	sd	a5,56(sp)
    8002d778:	a821                	j	8002d790 <js_string_repeat+0x80>
quickjs-nuttx/quickjs.c:42338
    len = p->len;
    8002d77a:	40d4                	lw	a3,4(s1)
    8002d77c:	8c75                	and	s0,s0,a3
    8002d77e:	00040a1b          	sext.w	s4,s0
quickjs-nuttx/quickjs.c:42339
    if (len == 0 || n == 1)
    8002d782:	000a0563          	beqz	s4,8002d78c <js_string_repeat+0x7c>
quickjs-nuttx/quickjs.c:42339 (discriminator 1)
    8002d786:	4a85                	li	s5,1
    8002d788:	01561f63          	bne	a2,s5,8002d7a6 <js_string_repeat+0x96>
quickjs-nuttx/quickjs.c:42340
        return str;
    8002d78c:	f826                	sd	s1,48(sp)
    8002d78e:	fc4e                	sd	s3,56(sp)
quickjs-nuttx/quickjs.c:42360
}
    8002d790:	60ea                	ld	ra,152(sp)
    8002d792:	644a                	ld	s0,144(sp)
    8002d794:	7542                	ld	a0,48(sp)
    8002d796:	75e2                	ld	a1,56(sp)
    8002d798:	64aa                	ld	s1,136(sp)
    8002d79a:	690a                	ld	s2,128(sp)
    8002d79c:	79e6                	ld	s3,120(sp)
    8002d79e:	7a46                	ld	s4,112(sp)
    8002d7a0:	7aa6                	ld	s5,104(sp)
    8002d7a2:	610d                	addi	sp,sp,160
    8002d7a4:	8082                	ret
quickjs-nuttx/quickjs.c:42341
    if (val * len > JS_STRING_LEN_MAX) {
    8002d7a6:	020a1793          	slli	a5,s4,0x20
    8002d7aa:	9381                	srli	a5,a5,0x20
    8002d7ac:	02c787b3          	mul	a5,a5,a2
    8002d7b0:	40000737          	lui	a4,0x40000
    8002d7b4:	00e7ca63          	blt	a5,a4,8002d7c8 <js_string_repeat+0xb8>
quickjs-nuttx/quickjs.c:42342
        JS_ThrowInternalError(ctx, "string too long");
    8002d7b8:	854a                	mv	a0,s2
    8002d7ba:	0003d597          	auipc	a1,0x3d
    8002d7be:	0d658593          	addi	a1,a1,214 # 8006a890 <qjsc_repl+0x52e0>
    8002d7c2:	936ec0ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:42343
        goto fail;
    8002d7c6:	b74d                	j	8002d768 <js_string_repeat+0x58>
quickjs-nuttx/quickjs.c:42336
    n = val;
    8002d7c8:	0006099b          	sext.w	s3,a2
quickjs-nuttx/quickjs.c:42345
    if (string_buffer_init2(ctx, b, n * len, p->is_wide_char))
    8002d7cc:	0346063b          	mulw	a2,a2,s4
    8002d7d0:	01f6d69b          	srliw	a3,a3,0x1f
    8002d7d4:	008c                	addi	a1,sp,64
    8002d7d6:	854a                	mv	a0,s2
    8002d7d8:	f6cf00ef          	jal	ra,8001df44 <string_buffer_init2>
    8002d7dc:	f551                	bnez	a0,8002d768 <js_string_repeat+0x58>
quickjs-nuttx/quickjs.c:42347
    if (len == 1) {
    8002d7de:	055a1063          	bne	s4,s5,8002d81e <js_string_repeat+0x10e>
string_get():
quickjs-nuttx/quickjs.c:3704
    return p->is_wide_char ? p->u.str16[idx] : p->u.str8[idx];
    8002d7e2:	40dc                	lw	a5,4(s1)
    8002d7e4:	0207d363          	bgez	a5,8002d80a <js_string_repeat+0xfa>
    8002d7e8:	0104d583          	lhu	a1,16(s1)
js_string_repeat():
quickjs-nuttx/quickjs.c:42348
        string_buffer_fill(b, string_get(p, 0), n);
    8002d7ec:	864e                	mv	a2,s3
    8002d7ee:	0088                	addi	a0,sp,64
    8002d7f0:	dd0f10ef          	jal	ra,8001edc0 <string_buffer_fill>
quickjs-nuttx/quickjs.c:42354
    JS_FreeValue(ctx, str);
    8002d7f4:	7582                	ld	a1,32(sp)
    8002d7f6:	7622                	ld	a2,40(sp)
    8002d7f8:	854a                	mv	a0,s2
    8002d7fa:	fa5dd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42355
    return string_buffer_end(b);
    8002d7fe:	0088                	addi	a0,sp,64
    8002d800:	ca0f20ef          	jal	ra,8001fca0 <string_buffer_end>
    8002d804:	f82a                	sd	a0,48(sp)
    8002d806:	fc2e                	sd	a1,56(sp)
    8002d808:	b761                	j	8002d790 <js_string_repeat+0x80>
string_get():
quickjs-nuttx/quickjs.c:3704
    return p->is_wide_char ? p->u.str16[idx] : p->u.str8[idx];
    8002d80a:	0104c583          	lbu	a1,16(s1)
    8002d80e:	bff9                	j	8002d7ec <js_string_repeat+0xdc>
js_string_repeat():
quickjs-nuttx/quickjs.c:42351
            string_buffer_concat(b, p, 0, len);
    8002d810:	86d2                	mv	a3,s4
    8002d812:	4601                	li	a2,0
    8002d814:	85a6                	mv	a1,s1
    8002d816:	0088                	addi	a0,sp,64
    8002d818:	acaf10ef          	jal	ra,8001eae2 <string_buffer_concat>
    8002d81c:	39fd                	addiw	s3,s3,-1
quickjs-nuttx/quickjs.c:42350
        while (n-- > 0) {
    8002d81e:	fe0999e3          	bnez	s3,8002d810 <js_string_repeat+0x100>
    8002d822:	bfc9                	j	8002d7f4 <js_string_repeat+0xe4>

000000008002d824 <js_throw_URIError>:
js_throw_URIError():
quickjs-nuttx/quickjs.c:49013
{
    8002d824:	715d                	addi	sp,sp,-80
    8002d826:	f032                	sd	a2,32(sp)
    8002d828:	f436                	sd	a3,40(sp)
quickjs-nuttx/quickjs.c:49017
    JS_ThrowError(ctx, JS_URI_ERROR, fmt, ap);
    8002d82a:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:49016
    va_start(ap, fmt);
    8002d82c:	1014                	addi	a3,sp,32
quickjs-nuttx/quickjs.c:49017
    JS_ThrowError(ctx, JS_URI_ERROR, fmt, ap);
    8002d82e:	4595                	li	a1,5
quickjs-nuttx/quickjs.c:49013
{
    8002d830:	ec06                	sd	ra,24(sp)
    8002d832:	f83a                	sd	a4,48(sp)
    8002d834:	fc3e                	sd	a5,56(sp)
    8002d836:	e0c2                	sd	a6,64(sp)
    8002d838:	e4c6                	sd	a7,72(sp)
quickjs-nuttx/quickjs.c:49016
    va_start(ap, fmt);
    8002d83a:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:49017
    JS_ThrowError(ctx, JS_URI_ERROR, fmt, ap);
    8002d83c:	ac1ea0ef          	jal	ra,800182fc <JS_ThrowError>
quickjs-nuttx/quickjs.c:49020
}
    8002d840:	60e2                	ld	ra,24(sp)
    8002d842:	557d                	li	a0,-1
    8002d844:	6161                	addi	sp,sp,80
    8002d846:	8082                	ret

000000008002d848 <js_global_encodeURI>:
js_global_encodeURI():
quickjs-nuttx/quickjs.c:49148
{
    8002d848:	7155                	addi	sp,sp,-208
    8002d84a:	fd26                	sd	s1,184(sp)
    8002d84c:	f94a                	sd	s2,176(sp)
    8002d84e:	e586                	sd	ra,200(sp)
    8002d850:	e1a2                	sd	s0,192(sp)
    8002d852:	f54e                	sd	s3,168(sp)
    8002d854:	f152                	sd	s4,160(sp)
    8002d856:	ed56                	sd	s5,152(sp)
    8002d858:	e95a                	sd	s6,144(sp)
    8002d85a:	e55e                	sd	s7,136(sp)
    8002d85c:	e162                	sd	s8,128(sp)
    8002d85e:	fce6                	sd	s9,120(sp)
    8002d860:	f8ea                	sd	s10,112(sp)
    8002d862:	f4ee                	sd	s11,104(sp)
    8002d864:	e82e                	sd	a1,16(sp)
    8002d866:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:49154
    str = JS_ToString(ctx, argv[0]);
    8002d868:	630c                	ld	a1,0(a4)
    8002d86a:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:49148
{
    8002d86c:	e43e                	sd	a5,8(sp)
    8002d86e:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:49154
    str = JS_ToString(ctx, argv[0]);
    8002d870:	f0df20ef          	jal	ra,8002077c <JS_ToString>
    8002d874:	f02a                	sd	a0,32(sp)
    8002d876:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:49155
    if (JS_IsException(str))
    8002d878:	0005871b          	sext.w	a4,a1
    8002d87c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:49154
    str = JS_ToString(ctx, argv[0]);
    8002d87e:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:49155
    if (JS_IsException(str))
    8002d880:	00f71563          	bne	a4,a5,8002d88a <js_global_encodeURI+0x42>
quickjs-nuttx/quickjs.c:49156
        return str;
    8002d884:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:49202
    return string_buffer_end(b);
    8002d886:	fc2e                	sd	a1,56(sp)
    8002d888:	a0d5                	j	8002d96c <js_global_encodeURI+0x124>
quickjs-nuttx/quickjs.c:49159
    string_buffer_init(ctx, b, p->len);
    8002d88a:	4150                	lw	a2,4(a0)
    8002d88c:	80000a37          	lui	s4,0x80000
    8002d890:	fffa4a13          	not	s4,s4
    8002d894:	00ca7633          	and	a2,s4,a2
    8002d898:	008c                	addi	a1,sp,64
    8002d89a:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:49166
            if (c >= 0xdc00 && c <= 0xdfff) {
    8002d89c:	7ac9                	lui	s5,0xffff2
quickjs-nuttx/quickjs.c:49169
            } else if (c >= 0xd800 && c <= 0xdbff) {
    8002d89e:	7c4d                	lui	s8,0xffff3
quickjs-nuttx/quickjs.c:49180
                c = (((c & 0x3ff) << 10) | (c1 & 0x3ff)) + 0x10000;
    8002d8a0:	00100cb7          	lui	s9,0x100
quickjs-nuttx/quickjs.c:49159
    string_buffer_init(ctx, b, p->len);
    8002d8a4:	ed8f00ef          	jal	ra,8001df7c <string_buffer_init>
quickjs-nuttx/quickjs.c:49160
    for (k = 0; k < p->len;) {
    8002d8a8:	4981                	li	s3,0
isURIUnescaped():
quickjs-nuttx/quickjs.c:49121
    return c < 0x100 &&
    8002d8aa:	0ff00d13          	li	s10,255
js_global_encodeURI():
quickjs-nuttx/quickjs.c:49166
            if (c >= 0xdc00 && c <= 0xdfff) {
    8002d8ae:	400a8a9b          	addiw	s5,s5,1024
quickjs-nuttx/quickjs.c:49169
            } else if (c >= 0xd800 && c <= 0xdbff) {
    8002d8b2:	800c0c1b          	addiw	s8,s8,-2048
quickjs-nuttx/quickjs.c:49180
                c = (((c & 0x3ff) << 10) | (c1 & 0x3ff)) + 0x10000;
    8002d8b6:	c00c8c93          	addi	s9,s9,-1024 # ffc00 <asinh-0x7ff00400>
quickjs-nuttx/quickjs.c:49160 (discriminator 1)
    for (k = 0; k < p->len;) {
    8002d8ba:	0044ad83          	lw	s11,4(s1)
    8002d8be:	01ba7db3          	and	s11,s4,s11
    8002d8c2:	01b9cc63          	blt	s3,s11,8002d8da <js_global_encodeURI+0x92>
quickjs-nuttx/quickjs.c:49201
    JS_FreeValue(ctx, str);
    8002d8c6:	7582                	ld	a1,32(sp)
    8002d8c8:	7622                	ld	a2,40(sp)
    8002d8ca:	854a                	mv	a0,s2
    8002d8cc:	ed3dd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:49202
    return string_buffer_end(b);
    8002d8d0:	0088                	addi	a0,sp,64
    8002d8d2:	bcef20ef          	jal	ra,8001fca0 <string_buffer_end>
    8002d8d6:	f82a                	sd	a0,48(sp)
    8002d8d8:	b77d                	j	8002d886 <js_global_encodeURI+0x3e>
quickjs-nuttx/quickjs.c:49161
        c = string_get(p, k);
    8002d8da:	85ce                	mv	a1,s3
    8002d8dc:	8526                	mv	a0,s1
    8002d8de:	b86da0ef          	jal	ra,80007c64 <string_get>
    8002d8e2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:49162
        k++;
    8002d8e4:	00198b1b          	addiw	s6,s3,1
isURIUnescaped():
quickjs-nuttx/quickjs.c:49122
        ((c >= 0x61 && c <= 0x7a) ||
    8002d8e8:	00050b9b          	sext.w	s7,a0
quickjs-nuttx/quickjs.c:49121
    return c < 0x100 &&
    8002d8ec:	04ad4863          	blt	s10,a0,8002d93c <js_global_encodeURI+0xf4>
quickjs-nuttx/quickjs.c:49122
        ((c >= 0x61 && c <= 0x7a) ||
    8002d8f0:	fdfbf713          	andi	a4,s7,-33
    8002d8f4:	fbf7071b          	addiw	a4,a4,-65
    8002d8f8:	46e5                	li	a3,25
    8002d8fa:	02e6fb63          	bgeu	a3,a4,8002d930 <js_global_encodeURI+0xe8>
quickjs-nuttx/quickjs.c:49123
         (c >= 0x41 && c <= 0x5a) ||
    8002d8fe:	fd0b871b          	addiw	a4,s7,-48
    8002d902:	46a5                	li	a3,9
    8002d904:	02e6f663          	bgeu	a3,a4,8002d930 <js_global_encodeURI+0xe8>
quickjs-nuttx/quickjs.c:49125
         memchr("-_.!~*'()", c, sizeof("-_.!~*'()") - 1) != NULL ||
    8002d908:	85aa                	mv	a1,a0
    8002d90a:	4625                	li	a2,9
    8002d90c:	0003e517          	auipc	a0,0x3e
    8002d910:	efc50513          	addi	a0,a0,-260 # 8006b808 <qjsc_repl+0x6258>
    8002d914:	2a6360ef          	jal	ra,80063bba <memchr>
quickjs-nuttx/quickjs.c:49124
         (c >= 0x30 && c <= 0x39) ||
    8002d918:	ed01                	bnez	a0,8002d930 <js_global_encodeURI+0xe8>
quickjs-nuttx/quickjs.c:49125
         memchr("-_.!~*'()", c, sizeof("-_.!~*'()") - 1) != NULL ||
    8002d91a:	67a2                	ld	a5,8(sp)
    8002d91c:	e385                	bnez	a5,8002d93c <js_global_encodeURI+0xf4>
isURIReserved():
quickjs-nuttx/quickjs.c:49009
    return c < 0x100 && memchr(";/?:@&=+$,#", c, sizeof(";/?:@&=+$,#") - 1) != NULL;
    8002d91e:	462d                	li	a2,11
    8002d920:	85a2                	mv	a1,s0
    8002d922:	0003e517          	auipc	a0,0x3e
    8002d926:	ef650513          	addi	a0,a0,-266 # 8006b818 <qjsc_repl+0x6268>
    8002d92a:	290360ef          	jal	ra,80063bba <memchr>
    8002d92e:	c519                	beqz	a0,8002d93c <js_global_encodeURI+0xf4>
js_global_encodeURI():
quickjs-nuttx/quickjs.c:49164
            string_buffer_putc16(b, c);
    8002d930:	85de                	mv	a1,s7
    8002d932:	0088                	addi	a0,sp,64
    8002d934:	bfef10ef          	jal	ra,8001ed32 <string_buffer_putc16>
quickjs-nuttx/quickjs.c:49148 (discriminator 1)
{
    8002d938:	89da                	mv	s3,s6
    8002d93a:	b741                	j	8002d8ba <js_global_encodeURI+0x72>
quickjs-nuttx/quickjs.c:49166
            if (c >= 0xdc00 && c <= 0xdfff) {
    8002d93c:	017a86bb          	addw	a3,s5,s7
    8002d940:	3ff00713          	li	a4,1023
    8002d944:	04d76563          	bltu	a4,a3,8002d98e <js_global_encodeURI+0x146>
quickjs-nuttx/quickjs.c:49167
                js_throw_URIError(ctx, "invalid character");
    8002d948:	0003e597          	auipc	a1,0x3e
    8002d94c:	ee058593          	addi	a1,a1,-288 # 8006b828 <qjsc_repl+0x6278>
quickjs-nuttx/quickjs.c:49171
                    js_throw_URIError(ctx, "expecting surrogate pair");
    8002d950:	854a                	mv	a0,s2
    8002d952:	ed3ff0ef          	jal	ra,8002d824 <js_throw_URIError>
quickjs-nuttx/quickjs.c:49205
    JS_FreeValue(ctx, str);
    8002d956:	7582                	ld	a1,32(sp)
    8002d958:	7622                	ld	a2,40(sp)
    8002d95a:	854a                	mv	a0,s2
    8002d95c:	e43dd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:49206
    string_buffer_free(b);
    8002d960:	0088                	addi	a0,sp,64
    8002d962:	ec0dd0ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:49207
    return JS_EXCEPTION;
    8002d966:	4799                	li	a5,6
    8002d968:	f802                	sd	zero,48(sp)
    8002d96a:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:49208
}
    8002d96c:	60ae                	ld	ra,200(sp)
    8002d96e:	640e                	ld	s0,192(sp)
    8002d970:	7542                	ld	a0,48(sp)
    8002d972:	75e2                	ld	a1,56(sp)
    8002d974:	74ea                	ld	s1,184(sp)
    8002d976:	794a                	ld	s2,176(sp)
    8002d978:	79aa                	ld	s3,168(sp)
    8002d97a:	7a0a                	ld	s4,160(sp)
    8002d97c:	6aea                	ld	s5,152(sp)
    8002d97e:	6b4a                	ld	s6,144(sp)
    8002d980:	6baa                	ld	s7,136(sp)
    8002d982:	6c0a                	ld	s8,128(sp)
    8002d984:	7ce6                	ld	s9,120(sp)
    8002d986:	7d46                	ld	s10,112(sp)
    8002d988:	7da6                	ld	s11,104(sp)
    8002d98a:	6169                	addi	sp,sp,208
    8002d98c:	8082                	ret
quickjs-nuttx/quickjs.c:49169
            } else if (c >= 0xd800 && c <= 0xdbff) {
    8002d98e:	017c07bb          	addw	a5,s8,s7
    8002d992:	04f76d63          	bltu	a4,a5,8002d9ec <js_global_encodeURI+0x1a4>
quickjs-nuttx/quickjs.c:49170
                if (k >= p->len) {
    8002d996:	01bb4763          	blt	s6,s11,8002d9a4 <js_global_encodeURI+0x15c>
quickjs-nuttx/quickjs.c:49171
                    js_throw_URIError(ctx, "expecting surrogate pair");
    8002d99a:	0003e597          	auipc	a1,0x3e
    8002d99e:	ea658593          	addi	a1,a1,-346 # 8006b840 <qjsc_repl+0x6290>
    8002d9a2:	b77d                	j	8002d950 <js_global_encodeURI+0x108>
quickjs-nuttx/quickjs.c:49174
                c1 = string_get(p, k);
    8002d9a4:	85da                	mv	a1,s6
    8002d9a6:	8526                	mv	a0,s1
    8002d9a8:	abcda0ef          	jal	ra,80007c64 <string_get>
quickjs-nuttx/quickjs.c:49176
                if (c1 < 0xdc00 || c1 > 0xdfff) {
    8002d9ac:	00aa87bb          	addw	a5,s5,a0
    8002d9b0:	3ff00713          	li	a4,1023
quickjs-nuttx/quickjs.c:49175
                k++;
    8002d9b4:	00298b1b          	addiw	s6,s3,2
quickjs-nuttx/quickjs.c:49176
                if (c1 < 0xdc00 || c1 > 0xdfff) {
    8002d9b8:	fef761e3          	bltu	a4,a5,8002d99a <js_global_encodeURI+0x152>
quickjs-nuttx/quickjs.c:49180
                c = (((c & 0x3ff) << 10) | (c1 & 0x3ff)) + 0x10000;
    8002d9bc:	00a4141b          	slliw	s0,s0,0xa
    8002d9c0:	01947433          	and	s0,s0,s9
    8002d9c4:	3ff57513          	andi	a0,a0,1023
    8002d9c8:	8d41                	or	a0,a0,s0
    8002d9ca:	6441                	lui	s0,0x10
    8002d9cc:	9c29                	addw	s0,s0,a0
quickjs-nuttx/quickjs.c:49192
                        encodeURI_hex(b, (c >> 18) | 0xf0);
    8002d9ce:	4124559b          	sraiw	a1,s0,0x12
    8002d9d2:	0f05e593          	ori	a1,a1,240
    8002d9d6:	2581                	sext.w	a1,a1
    8002d9d8:	0088                	addi	a0,sp,64
    8002d9da:	a0ef10ef          	jal	ra,8001ebe8 <encodeURI_hex.isra.0>
quickjs-nuttx/quickjs.c:49193
                        encodeURI_hex(b, ((c >> 12) & 0x3f) | 0x80);
    8002d9de:	40c4559b          	sraiw	a1,s0,0xc
    8002d9e2:	03f5f593          	andi	a1,a1,63
    8002d9e6:	0805e593          	ori	a1,a1,128
    8002d9ea:	a089                	j	8002da2c <js_global_encodeURI+0x1e4>
quickjs-nuttx/quickjs.c:49182
            if (c < 0x80) {
    8002d9ec:	07f00793          	li	a5,127
quickjs-nuttx/quickjs.c:49183
                encodeURI_hex(b, c);
    8002d9f0:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:49182
            if (c < 0x80) {
    8002d9f2:	0287d263          	bge	a5,s0,8002da16 <js_global_encodeURI+0x1ce>
quickjs-nuttx/quickjs.c:49186
                if (c < 0x800) {
    8002d9f6:	7ff00793          	li	a5,2047
    8002d9fa:	0287c263          	blt	a5,s0,8002da1e <js_global_encodeURI+0x1d6>
quickjs-nuttx/quickjs.c:49187
                    encodeURI_hex(b, (c >> 6) | 0xc0);
    8002d9fe:	4064559b          	sraiw	a1,s0,0x6
    8002da02:	0c05e593          	ori	a1,a1,192
    8002da06:	2581                	sext.w	a1,a1
quickjs-nuttx/quickjs.c:49195
                    encodeURI_hex(b, ((c >> 6) & 0x3f) | 0x80);
    8002da08:	0088                	addi	a0,sp,64
    8002da0a:	9def10ef          	jal	ra,8001ebe8 <encodeURI_hex.isra.0>
quickjs-nuttx/quickjs.c:49197
                encodeURI_hex(b, (c & 0x3f) | 0x80);
    8002da0e:	03f47593          	andi	a1,s0,63
    8002da12:	0805e593          	ori	a1,a1,128
    8002da16:	0088                	addi	a0,sp,64
    8002da18:	9d0f10ef          	jal	ra,8001ebe8 <encodeURI_hex.isra.0>
    8002da1c:	bf31                	j	8002d938 <js_global_encodeURI+0xf0>
quickjs-nuttx/quickjs.c:49190
                        encodeURI_hex(b, (c >> 12) | 0xe0);
    8002da1e:	40c4559b          	sraiw	a1,s0,0xc
quickjs-nuttx/quickjs.c:49189
                    if (c < 0x10000) {
    8002da22:	67c1                	lui	a5,0x10
quickjs-nuttx/quickjs.c:49190
                        encodeURI_hex(b, (c >> 12) | 0xe0);
    8002da24:	0e05e593          	ori	a1,a1,224
quickjs-nuttx/quickjs.c:49189
                    if (c < 0x10000) {
    8002da28:	faf453e3          	bge	s0,a5,8002d9ce <js_global_encodeURI+0x186>
quickjs-nuttx/quickjs.c:49193
                        encodeURI_hex(b, ((c >> 12) & 0x3f) | 0x80);
    8002da2c:	0088                	addi	a0,sp,64
    8002da2e:	9baf10ef          	jal	ra,8001ebe8 <encodeURI_hex.isra.0>
quickjs-nuttx/quickjs.c:49195
                    encodeURI_hex(b, ((c >> 6) & 0x3f) | 0x80);
    8002da32:	4064559b          	sraiw	a1,s0,0x6
    8002da36:	03f5f593          	andi	a1,a1,63
    8002da3a:	0805e593          	ori	a1,a1,128
    8002da3e:	b7e9                	j	8002da08 <js_global_encodeURI+0x1c0>

000000008002da40 <hex_decode>:
hex_decode():
quickjs-nuttx/quickjs.c:49022
static int hex_decode(JSContext *ctx, JSString *p, int k) {
    8002da40:	7179                	addi	sp,sp,-48
    8002da42:	e44e                	sd	s3,8(sp)
    8002da44:	f406                	sd	ra,40(sp)
    8002da46:	f022                	sd	s0,32(sp)
    8002da48:	ec26                	sd	s1,24(sp)
    8002da4a:	e84a                	sd	s2,16(sp)
quickjs-nuttx/quickjs.c:49025
    if (k >= p->len || string_get(p, k) != '%')
    8002da4c:	41c4                	lw	s1,4(a1)
quickjs-nuttx/quickjs.c:49022
static int hex_decode(JSContext *ctx, JSString *p, int k) {
    8002da4e:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:49025
    if (k >= p->len || string_get(p, k) != '%')
    8002da50:	1486                	slli	s1,s1,0x21
    8002da52:	9085                	srli	s1,s1,0x21
    8002da54:	00965c63          	bge	a2,s1,8002da6c <hex_decode+0x2c>
    8002da58:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:49025 (discriminator 1)
    8002da5a:	854a                	mv	a0,s2
    8002da5c:	85b2                	mv	a1,a2
    8002da5e:	8432                	mv	s0,a2
    8002da60:	a04da0ef          	jal	ra,80007c64 <string_get>
    8002da64:	02500793          	li	a5,37
    8002da68:	00f50f63          	beq	a0,a5,8002da86 <hex_decode+0x46>
quickjs-nuttx/quickjs.c:49026
        return js_throw_URIError(ctx, "expecting %%");
    8002da6c:	0003e597          	auipc	a1,0x3e
    8002da70:	df458593          	addi	a1,a1,-524 # 8006b860 <qjsc_repl+0x62b0>
quickjs-nuttx/quickjs.c:49031
}
    8002da74:	7402                	ld	s0,32(sp)
    8002da76:	70a2                	ld	ra,40(sp)
    8002da78:	64e2                	ld	s1,24(sp)
    8002da7a:	6942                	ld	s2,16(sp)
quickjs-nuttx/quickjs.c:49028
        return js_throw_URIError(ctx, "expecting hex digit");
    8002da7c:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:49031
}
    8002da7e:	69a2                	ld	s3,8(sp)
    8002da80:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:49028
        return js_throw_URIError(ctx, "expecting hex digit");
    8002da82:	da3ff06f          	j	8002d824 <js_throw_URIError>
quickjs-nuttx/quickjs.c:49027
    if (k + 2 >= p->len || (c = string_get_hex(p, k + 1, 2)) < 0)
    8002da86:	0024079b          	addiw	a5,s0,2
    8002da8a:	0097da63          	bge	a5,s1,8002da9e <hex_decode+0x5e>
quickjs-nuttx/quickjs.c:49027 (discriminator 1)
    8002da8e:	4609                	li	a2,2
    8002da90:	0014059b          	addiw	a1,s0,1
    8002da94:	854a                	mv	a0,s2
    8002da96:	8cfda0ef          	jal	ra,80008364 <string_get_hex>
    8002da9a:	00055763          	bgez	a0,8002daa8 <hex_decode+0x68>
quickjs-nuttx/quickjs.c:49028
        return js_throw_URIError(ctx, "expecting hex digit");
    8002da9e:	0003e597          	auipc	a1,0x3e
    8002daa2:	dd258593          	addi	a1,a1,-558 # 8006b870 <qjsc_repl+0x62c0>
    8002daa6:	b7f9                	j	8002da74 <hex_decode+0x34>
quickjs-nuttx/quickjs.c:49031
}
    8002daa8:	70a2                	ld	ra,40(sp)
    8002daaa:	7402                	ld	s0,32(sp)
    8002daac:	64e2                	ld	s1,24(sp)
    8002daae:	6942                	ld	s2,16(sp)
    8002dab0:	69a2                	ld	s3,8(sp)
    8002dab2:	6145                	addi	sp,sp,48
    8002dab4:	8082                	ret

000000008002dab6 <js_global_decodeURI>:
js_global_decodeURI():
quickjs-nuttx/quickjs.c:49035
{
    8002dab6:	7131                	addi	sp,sp,-192
    8002dab8:	f526                	sd	s1,168(sp)
    8002daba:	f14a                	sd	s2,160(sp)
    8002dabc:	e556                	sd	s5,136(sp)
    8002dabe:	fd06                	sd	ra,184(sp)
    8002dac0:	f922                	sd	s0,176(sp)
    8002dac2:	ed4e                	sd	s3,152(sp)
    8002dac4:	e952                	sd	s4,144(sp)
    8002dac6:	e15a                	sd	s6,128(sp)
    8002dac8:	fcde                	sd	s7,120(sp)
    8002daca:	f8e2                	sd	s8,112(sp)
    8002dacc:	f4e6                	sd	s9,104(sp)
    8002dace:	f0ea                	sd	s10,96(sp)
    8002dad0:	ecee                	sd	s11,88(sp)
    8002dad2:	e02e                	sd	a1,0(sp)
    8002dad4:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:49041
    str = JS_ToString(ctx, argv[0]);
    8002dad6:	630c                	ld	a1,0(a4)
    8002dad8:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:49035
{
    8002dada:	8abe                	mv	s5,a5
    8002dadc:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:49041
    str = JS_ToString(ctx, argv[0]);
    8002dade:	c9ff20ef          	jal	ra,8002077c <JS_ToString>
    8002dae2:	e82a                	sd	a0,16(sp)
    8002dae4:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:49042
    if (JS_IsException(str))
    8002dae6:	0005871b          	sext.w	a4,a1
    8002daea:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:49041
    str = JS_ToString(ctx, argv[0]);
    8002daec:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:49042
    if (JS_IsException(str))
    8002daee:	02f71563          	bne	a4,a5,8002db18 <js_global_decodeURI+0x62>
quickjs-nuttx/quickjs.c:49043
        return str;
    8002daf2:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:49102
    return string_buffer_end(b);
    8002daf4:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:49108
}
    8002daf6:	70ea                	ld	ra,184(sp)
    8002daf8:	744a                	ld	s0,176(sp)
    8002dafa:	7502                	ld	a0,32(sp)
    8002dafc:	75a2                	ld	a1,40(sp)
    8002dafe:	74aa                	ld	s1,168(sp)
    8002db00:	790a                	ld	s2,160(sp)
    8002db02:	69ea                	ld	s3,152(sp)
    8002db04:	6a4a                	ld	s4,144(sp)
    8002db06:	6aaa                	ld	s5,136(sp)
    8002db08:	6b0a                	ld	s6,128(sp)
    8002db0a:	7be6                	ld	s7,120(sp)
    8002db0c:	7c46                	ld	s8,112(sp)
    8002db0e:	7ca6                	ld	s9,104(sp)
    8002db10:	7d06                	ld	s10,96(sp)
    8002db12:	6de6                	ld	s11,88(sp)
    8002db14:	6129                	addi	sp,sp,192
    8002db16:	8082                	ret
quickjs-nuttx/quickjs.c:49045
    string_buffer_init(ctx, b, 0);
    8002db18:	4601                	li	a2,0
    8002db1a:	180c                	addi	a1,sp,48
    8002db1c:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:49048
    for (k = 0; k < p->len;) {
    8002db1e:	80000a37          	lui	s4,0x80000
quickjs-nuttx/quickjs.c:49091
                    (c >= 0xd800 && c < 0xe000)) {
    8002db22:	7b4d                	lui	s6,0xffff3
quickjs-nuttx/quickjs.c:49068
                    c_min = 0x800;
    8002db24:	6b85                	lui	s7,0x1
quickjs-nuttx/quickjs.c:49045
    string_buffer_init(ctx, b, 0);
    8002db26:	c56f00ef          	jal	ra,8001df7c <string_buffer_init>
quickjs-nuttx/quickjs.c:49048
    for (k = 0; k < p->len;) {
    8002db2a:	4981                	li	s3,0
    8002db2c:	fffa4a13          	not	s4,s4
quickjs-nuttx/quickjs.c:49050
        if (c == '%') {
    8002db30:	02500c13          	li	s8,37
quickjs-nuttx/quickjs.c:49084
                    if ((c1 & 0xc0) != 0x80) {
    8002db34:	08000c93          	li	s9,128
quickjs-nuttx/quickjs.c:49091
                    (c >= 0xd800 && c < 0xe000)) {
    8002db38:	800b0b1b          	addiw	s6,s6,-2048
quickjs-nuttx/quickjs.c:49068
                    c_min = 0x800;
    8002db3c:	800b8b93          	addi	s7,s7,-2048 # 800 <asinh-0x7ffff800>
quickjs-nuttx/quickjs.c:49048 (discriminator 1)
    for (k = 0; k < p->len;) {
    8002db40:	00492783          	lw	a5,4(s2)
    8002db44:	00fa77b3          	and	a5,s4,a5
    8002db48:	00f9cc63          	blt	s3,a5,8002db60 <js_global_decodeURI+0xaa>
quickjs-nuttx/quickjs.c:49101
    JS_FreeValue(ctx, str);
    8002db4c:	65c2                	ld	a1,16(sp)
    8002db4e:	6662                	ld	a2,24(sp)
    8002db50:	8526                	mv	a0,s1
    8002db52:	c4ddd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:49102
    return string_buffer_end(b);
    8002db56:	1808                	addi	a0,sp,48
    8002db58:	948f20ef          	jal	ra,8001fca0 <string_buffer_end>
    8002db5c:	f02a                	sd	a0,32(sp)
    8002db5e:	bf59                	j	8002daf4 <js_global_decodeURI+0x3e>
quickjs-nuttx/quickjs.c:49049
        c = string_get(p, k);
    8002db60:	85ce                	mv	a1,s3
    8002db62:	854a                	mv	a0,s2
    8002db64:	900da0ef          	jal	ra,80007c64 <string_get>
    8002db68:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:49050
        if (c == '%') {
    8002db6a:	11851163          	bne	a0,s8,8002dc6c <js_global_decodeURI+0x1b6>
quickjs-nuttx/quickjs.c:49051
            c = hex_decode(ctx, p, k);
    8002db6e:	864e                	mv	a2,s3
    8002db70:	85ca                	mv	a1,s2
    8002db72:	8526                	mv	a0,s1
    8002db74:	ecdff0ef          	jal	ra,8002da40 <hex_decode>
    8002db78:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:49052
            if (c < 0)
    8002db7a:	0a054463          	bltz	a0,8002dc22 <js_global_decodeURI+0x16c>
quickjs-nuttx/quickjs.c:49055
            if (c < 0x80) {
    8002db7e:	07f00793          	li	a5,127
quickjs-nuttx/quickjs.c:49054
            k += 3;
    8002db82:	00398d9b          	addiw	s11,s3,3
quickjs-nuttx/quickjs.c:49055
            if (c < 0x80) {
    8002db86:	02a7c863          	blt	a5,a0,8002dbb6 <js_global_decodeURI+0x100>
quickjs-nuttx/quickjs.c:49056
                if (!isComponent && isURIReserved(c)) {
    8002db8a:	000a9f63          	bnez	s5,8002dba8 <js_global_decodeURI+0xf2>
isURIReserved():
quickjs-nuttx/quickjs.c:49009
    return c < 0x100 && memchr(";/?:@&=+$,#", c, sizeof(";/?:@&=+$,#") - 1) != NULL;
    8002db8e:	85aa                	mv	a1,a0
    8002db90:	462d                	li	a2,11
    8002db92:	0003e517          	auipc	a0,0x3e
    8002db96:	c8650513          	addi	a0,a0,-890 # 8006b818 <qjsc_repl+0x6268>
    8002db9a:	020360ef          	jal	ra,80063bba <memchr>
    8002db9e:	c509                	beqz	a0,8002dba8 <js_global_decodeURI+0xf2>
js_global_decodeURI():
quickjs-nuttx/quickjs.c:49058
                    k -= 2;
    8002dba0:	00198d9b          	addiw	s11,s3,1
quickjs-nuttx/quickjs.c:49057
                    c = '%';
    8002dba4:	02500413          	li	s0,37
quickjs-nuttx/quickjs.c:49099
        string_buffer_putc(b, c);
    8002dba8:	0004059b          	sext.w	a1,s0
    8002dbac:	1808                	addi	a0,sp,48
    8002dbae:	9c2f10ef          	jal	ra,8001ed70 <string_buffer_putc>
    8002dbb2:	89ee                	mv	s3,s11
    8002dbb4:	b771                	j	8002db40 <js_global_decodeURI+0x8a>
quickjs-nuttx/quickjs.c:49062
                if (c >= 0xc0 && c <= 0xdf) {
    8002dbb6:	f405071b          	addiw	a4,a0,-192
    8002dbba:	46fd                	li	a3,31
    8002dbbc:	0005079b          	sext.w	a5,a0
    8002dbc0:	00e6e963          	bltu	a3,a4,8002dbd2 <js_global_decodeURI+0x11c>
quickjs-nuttx/quickjs.c:49065
                    c &= 0x1f;
    8002dbc4:	01f57413          	andi	s0,a0,31
quickjs-nuttx/quickjs.c:49064
                    c_min = 0x80;
    8002dbc8:	08000d13          	li	s10,128
quickjs-nuttx/quickjs.c:49063
                    n = 1;
    8002dbcc:	4985                	li	s3,1
quickjs-nuttx/quickjs.c:49079
                while (n-- > 0) {
    8002dbce:	57fd                	li	a5,-1
    8002dbd0:	a895                	j	8002dc44 <js_global_decodeURI+0x18e>
quickjs-nuttx/quickjs.c:49066
                } else if (c >= 0xe0 && c <= 0xef) {
    8002dbd2:	f207871b          	addiw	a4,a5,-224
    8002dbd6:	46bd                	li	a3,15
    8002dbd8:	00e6e763          	bltu	a3,a4,8002dbe6 <js_global_decodeURI+0x130>
quickjs-nuttx/quickjs.c:49069
                    c &= 0xf;
    8002dbdc:	00f57413          	andi	s0,a0,15
quickjs-nuttx/quickjs.c:49068
                    c_min = 0x800;
    8002dbe0:	8d5e                	mv	s10,s7
quickjs-nuttx/quickjs.c:49067
                    n = 2;
    8002dbe2:	4989                	li	s3,2
    8002dbe4:	b7ed                	j	8002dbce <js_global_decodeURI+0x118>
quickjs-nuttx/quickjs.c:49070
                } else if (c >= 0xf0 && c <= 0xf7) {
    8002dbe6:	f107879b          	addiw	a5,a5,-240
    8002dbea:	471d                	li	a4,7
    8002dbec:	06f76c63          	bltu	a4,a5,8002dc64 <js_global_decodeURI+0x1ae>
quickjs-nuttx/quickjs.c:49073
                    c &= 0x7;
    8002dbf0:	00757413          	andi	s0,a0,7
quickjs-nuttx/quickjs.c:49072
                    c_min = 0x10000;
    8002dbf4:	6d41                	lui	s10,0x10
quickjs-nuttx/quickjs.c:49071
                    n = 3;
    8002dbf6:	498d                	li	s3,3
    8002dbf8:	bfd9                	j	8002dbce <js_global_decodeURI+0x118>
quickjs-nuttx/quickjs.c:49080
                    c1 = hex_decode(ctx, p, k);
    8002dbfa:	866e                	mv	a2,s11
    8002dbfc:	85ca                	mv	a1,s2
    8002dbfe:	8526                	mv	a0,s1
    8002dc00:	e41ff0ef          	jal	ra,8002da40 <hex_decode>
quickjs-nuttx/quickjs.c:49081
                    if (c1 < 0)
    8002dc04:	00054f63          	bltz	a0,8002dc22 <js_global_decodeURI+0x16c>
quickjs-nuttx/quickjs.c:49084
                    if ((c1 & 0xc0) != 0x80) {
    8002dc08:	0c057713          	andi	a4,a0,192
quickjs-nuttx/quickjs.c:49083
                    k += 3;
    8002dc0c:	2d8d                	addiw	s11,s11,3
quickjs-nuttx/quickjs.c:49084
                    if ((c1 & 0xc0) != 0x80) {
    8002dc0e:	57fd                	li	a5,-1
    8002dc10:	03970563          	beq	a4,s9,8002dc3a <js_global_decodeURI+0x184>
quickjs-nuttx/quickjs.c:49092
                    js_throw_URIError(ctx, "malformed UTF-8");
    8002dc14:	0003e597          	auipc	a1,0x3e
    8002dc18:	c7458593          	addi	a1,a1,-908 # 8006b888 <qjsc_repl+0x62d8>
    8002dc1c:	8526                	mv	a0,s1
    8002dc1e:	c07ff0ef          	jal	ra,8002d824 <js_throw_URIError>
quickjs-nuttx/quickjs.c:49105
    JS_FreeValue(ctx, str);
    8002dc22:	65c2                	ld	a1,16(sp)
    8002dc24:	6662                	ld	a2,24(sp)
    8002dc26:	8526                	mv	a0,s1
    8002dc28:	b77dd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:49106
    string_buffer_free(b);
    8002dc2c:	1808                	addi	a0,sp,48
    8002dc2e:	bf4dd0ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:49107
    return JS_EXCEPTION;
    8002dc32:	4799                	li	a5,6
    8002dc34:	f002                	sd	zero,32(sp)
    8002dc36:	f43e                	sd	a5,40(sp)
    8002dc38:	bd7d                	j	8002daf6 <js_global_decodeURI+0x40>
quickjs-nuttx/quickjs.c:49088
                    c = (c << 6) | (c1 & 0x3f);
    8002dc3a:	0064141b          	slliw	s0,s0,0x6
    8002dc3e:	03f57513          	andi	a0,a0,63
    8002dc42:	8c49                	or	s0,s0,a0
quickjs-nuttx/quickjs.c:49079
                while (n-- > 0) {
    8002dc44:	39fd                	addiw	s3,s3,-1
    8002dc46:	faf99ae3          	bne	s3,a5,8002dbfa <js_global_decodeURI+0x144>
quickjs-nuttx/quickjs.c:49090
                if (c < c_min || c > 0x10FFFF ||
    8002dc4a:	fda445e3          	blt	s0,s10,8002dc14 <js_global_decodeURI+0x15e>
quickjs-nuttx/quickjs.c:49090 (discriminator 1)
    8002dc4e:	001107b7          	lui	a5,0x110
    8002dc52:	fcf451e3          	bge	s0,a5,8002dc14 <js_global_decodeURI+0x15e>
quickjs-nuttx/quickjs.c:49090 (discriminator 2)
    8002dc56:	008b07bb          	addw	a5,s6,s0
    8002dc5a:	7ff00713          	li	a4,2047
    8002dc5e:	f4f765e3          	bltu	a4,a5,8002dba8 <js_global_decodeURI+0xf2>
    8002dc62:	bf4d                	j	8002dc14 <js_global_decodeURI+0x15e>
quickjs-nuttx/quickjs.c:49076
                    c_min = 1;
    8002dc64:	4d05                	li	s10,1
quickjs-nuttx/quickjs.c:49075
                    n = 0;
    8002dc66:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:49077
                    c = 0;
    8002dc68:	4401                	li	s0,0
    8002dc6a:	b795                	j	8002dbce <js_global_decodeURI+0x118>
quickjs-nuttx/quickjs.c:49097
            k++;
    8002dc6c:	00198d9b          	addiw	s11,s3,1
    8002dc70:	bf25                	j	8002dba8 <js_global_decodeURI+0xf2>

000000008002dc72 <js_parse_error>:
js_parse_error():
quickjs-nuttx/quickjs.c:20102
{
    8002dc72:	711d                	addi	sp,sp,-96
    8002dc74:	f022                	sd	s0,32(sp)
    8002dc76:	f832                	sd	a2,48(sp)
    8002dc78:	fc36                	sd	a3,56(sp)
    8002dc7a:	e0ba                	sd	a4,64(sp)
    8002dc7c:	e4be                	sd	a5,72(sp)
    8002dc7e:	f406                	sd	ra,40(sp)
    8002dc80:	ec26                	sd	s1,24(sp)
    8002dc82:	e8c2                	sd	a6,80(sp)
    8002dc84:	ecc6                	sd	a7,88(sp)
quickjs-nuttx/quickjs.c:20103
    JSContext *ctx = s->ctx;
    8002dc86:	6104                	ld	s1,0(a0)
quickjs-nuttx/quickjs.c:20102
{
    8002dc88:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:20107
    va_start(ap, fmt);
    8002dc8a:	1814                	addi	a3,sp,48
quickjs-nuttx/quickjs.c:20108
    JS_ThrowError2(ctx, JS_SYNTAX_ERROR, fmt, ap, FALSE);
    8002dc8c:	862e                	mv	a2,a1
    8002dc8e:	4701                	li	a4,0
    8002dc90:	458d                	li	a1,3
    8002dc92:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:20107
    va_start(ap, fmt);
    8002dc94:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:20108
    JS_ThrowError2(ctx, JS_SYNTAX_ERROR, fmt, ap, FALSE);
    8002dc96:	dd6ea0ef          	jal	ra,8001826c <JS_ThrowError2>
quickjs-nuttx/quickjs.c:20111
    if (s->cur_func && s->cur_func->backtrace_barrier)
    8002dc9a:	743c                	ld	a5,104(s0)
    8002dc9c:	c39d                	beqz	a5,8002dcc2 <js_parse_error+0x50>
quickjs-nuttx/quickjs.c:20111 (discriminator 1)
    8002dc9e:	0807a783          	lw	a5,128(a5) # 110080 <asinh-0x7feeff80>
    8002dca2:	c391                	beqz	a5,8002dca6 <js_parse_error+0x34>
quickjs-nuttx/quickjs.c:20112
        backtrace_flags = JS_BACKTRACE_FLAG_SINGLE_LEVEL;
    8002dca4:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:20113
    build_backtrace(ctx, ctx->rt->current_exception, s->filename, s->line_num,
    8002dca6:	6c90                	ld	a2,24(s1)
    8002dca8:	4458                	lw	a4,12(s0)
    8002dcaa:	6814                	ld	a3,16(s0)
    8002dcac:	726c                	ld	a1,224(a2)
    8002dcae:	7670                	ld	a2,232(a2)
    8002dcb0:	8526                	mv	a0,s1
    8002dcb2:	acff70ef          	jal	ra,80025780 <build_backtrace>
quickjs-nuttx/quickjs.c:20116
}
    8002dcb6:	70a2                	ld	ra,40(sp)
    8002dcb8:	7402                	ld	s0,32(sp)
    8002dcba:	64e2                	ld	s1,24(sp)
    8002dcbc:	557d                	li	a0,-1
    8002dcbe:	6125                	addi	sp,sp,96
    8002dcc0:	8082                	ret
quickjs-nuttx/quickjs.c:20110
    backtrace_flags = 0;
    8002dcc2:	4781                	li	a5,0
    8002dcc4:	b7cd                	j	8002dca6 <js_parse_error+0x34>

000000008002dcc6 <add_export_entry2>:
add_export_entry2():
quickjs-nuttx/quickjs.c:27252
{
    8002dcc6:	7119                	addi	sp,sp,-128
    8002dcc8:	f8a2                	sd	s0,112(sp)
    8002dcca:	f4a6                	sd	s1,104(sp)
    8002dccc:	f0ca                	sd	s2,96(sp)
    8002dcce:	ecce                	sd	s3,88(sp)
    8002dcd0:	e8d2                	sd	s4,80(sp)
    8002dcd2:	e4d6                	sd	s5,72(sp)
    8002dcd4:	fc86                	sd	ra,120(sp)
    8002dcd6:	84b2                	mv	s1,a2
    8002dcd8:	89ba                	mv	s3,a4
    8002dcda:	892a                	mv	s2,a0
find_export_entry():
quickjs-nuttx/quickjs.c:27240
    for(i = 0; i < m->export_entries_count; i++) {
    8002dcdc:	5a18                	lw	a4,48(a2)
add_export_entry2():
quickjs-nuttx/quickjs.c:27252
{
    8002dcde:	842e                	mv	s0,a1
    8002dce0:	8a36                	mv	s4,a3
    8002dce2:	8abe                	mv	s5,a5
find_export_entry():
quickjs-nuttx/quickjs.c:27240
    for(i = 0; i < m->export_entries_count; i++) {
    8002dce4:	4601                	li	a2,0
    8002dce6:	0006079b          	sext.w	a5,a2
    8002dcea:	04e7c863          	blt	a5,a4,8002dd3a <add_export_entry2+0x74>
add_export_entry2():
quickjs-nuttx/quickjs.c:27266
    if (js_resize_array(ctx, (void **)&m->export_entries,
    8002dcee:	2705                	addiw	a4,a4,1
    8002dcf0:	03448693          	addi	a3,s1,52
    8002dcf4:	02000613          	li	a2,32
    8002dcf8:	02848593          	addi	a1,s1,40
    8002dcfc:	854a                	mv	a0,s2
    8002dcfe:	cafee0ef          	jal	ra,8001c9ac <js_resize_array>
quickjs-nuttx/quickjs.c:27270
        return NULL;
    8002dd02:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:27266
    if (js_resize_array(ctx, (void **)&m->export_entries,
    8002dd04:	ed3d                	bnez	a0,8002dd82 <add_export_entry2+0xbc>
quickjs-nuttx/quickjs.c:27271
    me = &m->export_entries[m->export_entries_count++];
    8002dd06:	5898                	lw	a4,48(s1)
    8002dd08:	7480                	ld	s0,40(s1)
quickjs-nuttx/quickjs.c:27272
    memset(me, 0, sizeof(*me));
    8002dd0a:	02000613          	li	a2,32
quickjs-nuttx/quickjs.c:27271
    me = &m->export_entries[m->export_entries_count++];
    8002dd0e:	0017079b          	addiw	a5,a4,1
    8002dd12:	0716                	slli	a4,a4,0x5
    8002dd14:	943a                	add	s0,s0,a4
    8002dd16:	d89c                	sw	a5,48(s1)
quickjs-nuttx/quickjs.c:27272
    memset(me, 0, sizeof(*me));
    8002dd18:	4581                	li	a1,0
    8002dd1a:	8522                	mv	a0,s0
    8002dd1c:	727350ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:27273
    me->local_name = JS_DupAtom(ctx, local_name);
    8002dd20:	85d2                	mv	a1,s4
    8002dd22:	854a                	mv	a0,s2
    8002dd24:	be2dd0ef          	jal	ra,8000b106 <JS_DupAtom>
    8002dd28:	c848                	sw	a0,20(s0)
quickjs-nuttx/quickjs.c:27274
    me->export_name = JS_DupAtom(ctx, export_name);
    8002dd2a:	85ce                	mv	a1,s3
    8002dd2c:	854a                	mv	a0,s2
    8002dd2e:	bd8dd0ef          	jal	ra,8000b106 <JS_DupAtom>
    8002dd32:	cc08                	sw	a0,24(s0)
quickjs-nuttx/quickjs.c:27275
    me->export_type = export_type;
    8002dd34:	01542823          	sw	s5,16(s0) # 10010 <asinh-0x7ffefff0>
quickjs-nuttx/quickjs.c:27276
    return me;
    8002dd38:	a0a9                	j	8002dd82 <add_export_entry2+0xbc>
find_export_entry():
quickjs-nuttx/quickjs.c:27242
        if (me->export_name == export_name)
    8002dd3a:	749c                	ld	a5,40(s1)
    8002dd3c:	00561693          	slli	a3,a2,0x5
    8002dd40:	0605                	addi	a2,a2,1
    8002dd42:	97b6                	add	a5,a5,a3
    8002dd44:	4f9c                	lw	a5,24(a5)
    8002dd46:	faf990e3          	bne	s3,a5,8002dce6 <add_export_entry2+0x20>
add_export_entry2():
quickjs-nuttx/quickjs.c:27257
        if (s) {
    8002dd4a:	ec11                	bnez	s0,8002dd66 <add_export_entry2+0xa0>
quickjs-nuttx/quickjs.c:27261
            JS_ThrowSyntaxErrorAtom(ctx, "duplicate exported name '%s'", export_name);
    8002dd4c:	0003c697          	auipc	a3,0x3c
    8002dd50:	e3c68693          	addi	a3,a3,-452 # 80069b88 <qjsc_repl+0x45d8>
    8002dd54:	0003e617          	auipc	a2,0x3e
    8002dd58:	b4460613          	addi	a2,a2,-1212 # 8006b898 <qjsc_repl+0x62e8>
    8002dd5c:	85ce                	mv	a1,s3
    8002dd5e:	854a                	mv	a0,s2
    8002dd60:	e4cea0ef          	jal	ra,800183ac <__JS_ThrowSyntaxErrorAtom>
    8002dd64:	a831                	j	8002dd80 <add_export_entry2+0xba>
quickjs-nuttx/quickjs.c:27258
            js_parse_error(s, "duplicate exported name '%s'",
    8002dd66:	864e                	mv	a2,s3
    8002dd68:	858a                	mv	a1,sp
    8002dd6a:	854a                	mv	a0,s2
    8002dd6c:	eaadc0ef          	jal	ra,8000a416 <JS_AtomGetStr.constprop.0>
    8002dd70:	862a                	mv	a2,a0
    8002dd72:	0003e597          	auipc	a1,0x3e
    8002dd76:	b2658593          	addi	a1,a1,-1242 # 8006b898 <qjsc_repl+0x62e8>
    8002dd7a:	8522                	mv	a0,s0
    8002dd7c:	ef7ff0ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:27263
        return NULL;
    8002dd80:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:27277
}
    8002dd82:	70e6                	ld	ra,120(sp)
    8002dd84:	8522                	mv	a0,s0
    8002dd86:	7446                	ld	s0,112(sp)
    8002dd88:	74a6                	ld	s1,104(sp)
    8002dd8a:	7906                	ld	s2,96(sp)
    8002dd8c:	69e6                	ld	s3,88(sp)
    8002dd8e:	6a46                	ld	s4,80(sp)
    8002dd90:	6aa6                	ld	s5,72(sp)
    8002dd92:	6109                	addi	sp,sp,128
    8002dd94:	8082                	ret

000000008002dd96 <JS_AddModuleExport>:
JS_AddModuleExport():
quickjs-nuttx/quickjs.c:27317
{
    8002dd96:	1101                	addi	sp,sp,-32
    8002dd98:	e822                	sd	s0,16(sp)
    8002dd9a:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:27320
    name = JS_NewAtom(ctx, export_name);
    8002dd9c:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:27317
{
    8002dd9e:	e426                	sd	s1,8(sp)
    8002dda0:	e04a                	sd	s2,0(sp)
    8002dda2:	ec06                	sd	ra,24(sp)
    8002dda4:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:27320
    name = JS_NewAtom(ctx, export_name);
    8002dda6:	a14f10ef          	jal	ra,8001efba <JS_NewAtom>
    8002ddaa:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:27322
        return -1;
    8002ddae:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:27321
    if (name == JS_ATOM_NULL)
    8002ddb0:	c095                	beqz	s1,8002ddd4 <JS_AddModuleExport+0x3e>
quickjs-nuttx/quickjs.c:27323
    me = add_export_entry2(ctx, NULL, m, JS_ATOM_NULL, name,
    8002ddb2:	8622                	mv	a2,s0
    8002ddb4:	4781                	li	a5,0
    8002ddb6:	8726                	mv	a4,s1
    8002ddb8:	4681                	li	a3,0
    8002ddba:	4581                	li	a1,0
    8002ddbc:	854a                	mv	a0,s2
    8002ddbe:	f09ff0ef          	jal	ra,8002dcc6 <add_export_entry2>
    8002ddc2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:27325
    JS_FreeAtom(ctx, name);
    8002ddc4:	85a6                	mv	a1,s1
    8002ddc6:	854a                	mv	a0,s2
    8002ddc8:	b80dd0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:27326
    if (!me)
    8002ddcc:	00143513          	seqz	a0,s0
    8002ddd0:	40a00533          	neg	a0,a0
quickjs-nuttx/quickjs.c:27330
}
    8002ddd4:	60e2                	ld	ra,24(sp)
    8002ddd6:	6442                	ld	s0,16(sp)
    8002ddd8:	64a2                	ld	s1,8(sp)
    8002ddda:	6902                	ld	s2,0(sp)
    8002dddc:	6105                	addi	sp,sp,32
    8002ddde:	8082                	ret

000000008002dde0 <JS_AddModuleExportList>:
JS_AddModuleExportList():
quickjs-nuttx/quickjs.c:36818
{
    8002dde0:	7179                	addi	sp,sp,-48
    8002dde2:	f022                	sd	s0,32(sp)
    8002dde4:	ec26                	sd	s1,24(sp)
    8002dde6:	e84a                	sd	s2,16(sp)
    8002dde8:	e44e                	sd	s3,8(sp)
    8002ddea:	e052                	sd	s4,0(sp)
    8002ddec:	f406                	sd	ra,40(sp)
    8002ddee:	892a                	mv	s2,a0
    8002ddf0:	89ae                	mv	s3,a1
    8002ddf2:	8a32                	mv	s4,a2
    8002ddf4:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:36820
    for(i = 0; i < len; i++) {
    8002ddf6:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:36820 (discriminator 1)
    8002ddf8:	0004079b          	sext.w	a5,s0
    8002ddfc:	0097cb63          	blt	a5,s1,8002de12 <JS_AddModuleExportList+0x32>
quickjs-nuttx/quickjs.c:36824
    return 0;
    8002de00:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:36825
}
    8002de02:	70a2                	ld	ra,40(sp)
    8002de04:	7402                	ld	s0,32(sp)
    8002de06:	64e2                	ld	s1,24(sp)
    8002de08:	6942                	ld	s2,16(sp)
    8002de0a:	69a2                	ld	s3,8(sp)
    8002de0c:	6a02                	ld	s4,0(sp)
    8002de0e:	6145                	addi	sp,sp,48
    8002de10:	8082                	ret
quickjs-nuttx/quickjs.c:36821
        if (JS_AddModuleExport(ctx, m, tab[i].name))
    8002de12:	00541793          	slli	a5,s0,0x5
    8002de16:	97d2                	add	a5,a5,s4
    8002de18:	6390                	ld	a2,0(a5)
    8002de1a:	85ce                	mv	a1,s3
    8002de1c:	854a                	mv	a0,s2
    8002de1e:	f79ff0ef          	jal	ra,8002dd96 <JS_AddModuleExport>
    8002de22:	0405                	addi	s0,s0,1
    8002de24:	d971                	beqz	a0,8002ddf8 <JS_AddModuleExportList+0x18>
quickjs-nuttx/quickjs.c:36822
            return -1;
    8002de26:	557d                	li	a0,-1
    8002de28:	bfe9                	j	8002de02 <JS_AddModuleExportList+0x22>

000000008002de2a <js_parse_string>:
js_parse_string():
quickjs-nuttx/quickjs.c:20211
{
    8002de2a:	7135                	addi	sp,sp,-160
    8002de2c:	e526                	sd	s1,136(sp)
    8002de2e:	e14a                	sd	s2,128(sp)
    8002de30:	fcce                	sd	s3,120(sp)
    8002de32:	f4d6                	sd	s5,104(sp)
    8002de34:	e0ea                	sd	s10,64(sp)
    8002de36:	ed06                	sd	ra,152(sp)
    8002de38:	e922                	sd	s0,144(sp)
    8002de3a:	f8d2                	sd	s4,112(sp)
    8002de3c:	f0da                	sd	s6,96(sp)
    8002de3e:	ecde                	sd	s7,88(sp)
    8002de40:	e8e2                	sd	s8,80(sp)
    8002de42:	e4e6                	sd	s9,72(sp)
    8002de44:	8d2a                	mv	s10,a0
quickjs-nuttx/quickjs.c:20217
    if (string_buffer_init(s->ctx, b, 32))
    8002de46:	6108                	ld	a0,0(a0)
quickjs-nuttx/quickjs.c:20211
{
    8002de48:	84ae                	mv	s1,a1
    8002de4a:	8932                	mv	s2,a2
quickjs-nuttx/quickjs.c:20217
    if (string_buffer_init(s->ctx, b, 32))
    8002de4c:	100c                	addi	a1,sp,32
    8002de4e:	02000613          	li	a2,32
quickjs-nuttx/quickjs.c:20211
{
    8002de52:	e436                	sd	a3,8(sp)
    8002de54:	89ba                	mv	s3,a4
    8002de56:	8abe                	mv	s5,a5
quickjs-nuttx/quickjs.c:20217
    if (string_buffer_init(s->ctx, b, 32))
    8002de58:	924f00ef          	jal	ra,8001df7c <string_buffer_init>
    8002de5c:	ed1d                	bnez	a0,8002de9a <js_parse_string+0x70>
quickjs-nuttx/quickjs.c:20305
                    ret = lre_parse_escape(&p, TRUE);
    8002de5e:	4b05                	li	s6,1
quickjs-nuttx/quickjs.c:20301
                    if (c == CP_LS || c == CP_PS)
    8002de60:	7bf9                	lui	s7,0xffffe
    8002de62:	03ab1c13          	slli	s8,s6,0x3a
    8002de66:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:20240
        if (c == sep)
    8002de68:	00048c9b          	sext.w	s9,s1
quickjs-nuttx/quickjs.c:20301
                    if (c == CP_LS || c == CP_PS)
    8002de6c:	fd8b8b9b          	addiw	s7,s7,-40
    8002de70:	021c0c13          	addi	s8,s8,33 # ffffffffffff3021 <_ebss+0xffffffff7fef1ebb>
quickjs-nuttx/quickjs.c:20220
        if (p >= s->buf_end)
    8002de74:	060d3703          	ld	a4,96(s10) # 10060 <asinh-0x7ffeffa0>
    8002de78:	67a2                	ld	a5,8(sp)
    8002de7a:	0ae7fe63          	bgeu	a5,a4,8002df36 <js_parse_string+0x10c>
quickjs-nuttx/quickjs.c:20222
        c = *p;
    8002de7e:	0007c403          	lbu	s0,0(a5)
quickjs-nuttx/quickjs.c:20223
        if (c < 0x20) {
    8002de82:	46fd                	li	a3,31
    8002de84:	0286ee63          	bltu	a3,s0,8002dec0 <js_parse_string+0x96>
quickjs-nuttx/quickjs.c:20224
            if (!s->cur_func) {
    8002de88:	068d3683          	ld	a3,104(s10)
    8002de8c:	ee81                	bnez	a3,8002dea4 <js_parse_string+0x7a>
quickjs-nuttx/quickjs.c:20226
                    js_parse_error(s, "invalid character in a JSON string");
    8002de8e:	0003e597          	auipc	a1,0x3e
    8002de92:	a2a58593          	addi	a1,a1,-1494 # 8006b8b8 <qjsc_repl+0x6308>
quickjs-nuttx/quickjs.c:20225
                if (do_throw)
    8002de96:	18091863          	bnez	s2,8002e026 <js_parse_string+0x1fc>
quickjs-nuttx/quickjs.c:20344
    string_buffer_free(b);
    8002de9a:	1008                	addi	a0,sp,32
    8002de9c:	986dd0ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:20345
    return -1;
    8002dea0:	5a7d                	li	s4,-1
    8002dea2:	a0ad                	j	8002df0c <js_parse_string+0xe2>
quickjs-nuttx/quickjs.c:20229
            if (sep == '`') {
    8002dea4:	06000693          	li	a3,96
    8002dea8:	08d49163          	bne	s1,a3,8002df2a <js_parse_string+0x100>
quickjs-nuttx/quickjs.c:20230
                if (c == '\r') {
    8002deac:	46b5                	li	a3,13
    8002deae:	00d41963          	bne	s0,a3,8002dec0 <js_parse_string+0x96>
quickjs-nuttx/quickjs.c:20231
                    if (p[1] == '\n')
    8002deb2:	0017c683          	lbu	a3,1(a5)
quickjs-nuttx/quickjs.c:20233
                    c = '\n';
    8002deb6:	4429                	li	s0,10
quickjs-nuttx/quickjs.c:20231
                    if (p[1] == '\n')
    8002deb8:	00869463          	bne	a3,s0,8002dec0 <js_parse_string+0x96>
quickjs-nuttx/quickjs.c:20232
                        p++;
    8002debc:	0785                	addi	a5,a5,1
    8002debe:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:20239
        p++;
    8002dec0:	66a2                	ld	a3,8(sp)
    8002dec2:	00168513          	addi	a0,a3,1
    8002dec6:	e42a                	sd	a0,8(sp)
quickjs-nuttx/quickjs.c:20240
        if (c == sep)
    8002dec8:	028c8263          	beq	s9,s0,8002deec <js_parse_string+0xc2>
quickjs-nuttx/quickjs.c:20242
        if (c == '$' && *p == '{' && sep == '`') {
    8002decc:	02400793          	li	a5,36
    8002ded0:	06f41a63          	bne	s0,a5,8002df44 <js_parse_string+0x11a>
quickjs-nuttx/quickjs.c:20242 (discriminator 1)
    8002ded4:	0016c703          	lbu	a4,1(a3)
    8002ded8:	07b00793          	li	a5,123
    8002dedc:	0cf71563          	bne	a4,a5,8002dfa6 <js_parse_string+0x17c>
quickjs-nuttx/quickjs.c:20242 (discriminator 2)
    8002dee0:	06000793          	li	a5,96
    8002dee4:	0cf49163          	bne	s1,a5,8002dfa6 <js_parse_string+0x17c>
quickjs-nuttx/quickjs.c:20244
            p++;
    8002dee8:	0689                	addi	a3,a3,2
    8002deea:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:20330
    token->val = TOK_STRING;
    8002deec:	f8100793          	li	a5,-127
    8002def0:	00f9a023          	sw	a5,0(s3)
quickjs-nuttx/quickjs.c:20331
    token->u.str.sep = c;
    8002def4:	0289a023          	sw	s0,32(s3)
quickjs-nuttx/quickjs.c:20332
    token->u.str.str = string_buffer_end(b);
    8002def8:	1008                	addi	a0,sp,32
    8002defa:	da7f10ef          	jal	ra,8001fca0 <string_buffer_end>
quickjs-nuttx/quickjs.c:20333
    *pp = p;
    8002defe:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:20332
    token->u.str.str = string_buffer_end(b);
    8002df00:	00a9b823          	sd	a0,16(s3)
    8002df04:	00b9bc23          	sd	a1,24(s3)
quickjs-nuttx/quickjs.c:20333
    *pp = p;
    8002df08:	00fab023          	sd	a5,0(s5) # ffffffffffff2000 <_ebss+0xffffffff7fef0e9a>
quickjs-nuttx/quickjs.c:20346
}
    8002df0c:	60ea                	ld	ra,152(sp)
    8002df0e:	644a                	ld	s0,144(sp)
    8002df10:	64aa                	ld	s1,136(sp)
    8002df12:	690a                	ld	s2,128(sp)
    8002df14:	79e6                	ld	s3,120(sp)
    8002df16:	7aa6                	ld	s5,104(sp)
    8002df18:	7b06                	ld	s6,96(sp)
    8002df1a:	6be6                	ld	s7,88(sp)
    8002df1c:	6c46                	ld	s8,80(sp)
    8002df1e:	6ca6                	ld	s9,72(sp)
    8002df20:	6d06                	ld	s10,64(sp)
    8002df22:	8552                	mv	a0,s4
    8002df24:	7a46                	ld	s4,112(sp)
    8002df26:	610d                	addi	sp,sp,160
    8002df28:	8082                	ret
quickjs-nuttx/quickjs.c:20236
            } else if (c == '\n' || c == '\r')
    8002df2a:	47a9                	li	a5,10
    8002df2c:	00f40563          	beq	s0,a5,8002df36 <js_parse_string+0x10c>
quickjs-nuttx/quickjs.c:20236 (discriminator 1)
    8002df30:	47b5                	li	a5,13
    8002df32:	f8f417e3          	bne	s0,a5,8002dec0 <js_parse_string+0x96>
quickjs-nuttx/quickjs.c:20341
    if (do_throw)
    8002df36:	f60902e3          	beqz	s2,8002de9a <js_parse_string+0x70>
quickjs-nuttx/quickjs.c:20342
        js_parse_error(s, "unexpected end of string");
    8002df3a:	0003e597          	auipc	a1,0x3e
    8002df3e:	a2658593          	addi	a1,a1,-1498 # 8006b960 <qjsc_repl+0x63b0>
    8002df42:	a0d5                	j	8002e026 <js_parse_string+0x1fc>
quickjs-nuttx/quickjs.c:20247
        if (c == '\\') {
    8002df44:	05c00793          	li	a5,92
    8002df48:	12f41d63          	bne	s0,a5,8002e082 <js_parse_string+0x258>
quickjs-nuttx/quickjs.c:20248
            c = *p;
    8002df4c:	0016c803          	lbu	a6,1(a3)
quickjs-nuttx/quickjs.c:20251
            switch(c) {
    8002df50:	47b5                	li	a5,13
quickjs-nuttx/quickjs.c:20248
            c = *p;
    8002df52:	0008041b          	sext.w	s0,a6
quickjs-nuttx/quickjs.c:20251
            switch(c) {
    8002df56:	06f80563          	beq	a6,a5,8002dfc0 <js_parse_string+0x196>
    8002df5a:	0307e663          	bltu	a5,a6,8002df86 <js_parse_string+0x15c>
    8002df5e:	04080b63          	beqz	a6,8002dfb4 <js_parse_string+0x18a>
    8002df62:	47a9                	li	a5,10
    8002df64:	06f80563          	beq	a6,a5,8002dfce <js_parse_string+0x1a4>
quickjs-nuttx/quickjs.c:20274
                if (c >= '0' && c <= '9') {
    8002df68:	fd04079b          	addiw	a5,s0,-48
    8002df6c:	4725                	li	a4,9
    8002df6e:	0cf76563          	bltu	a4,a5,8002e038 <js_parse_string+0x20e>
quickjs-nuttx/quickjs.c:20275
                    if (!s->cur_func)
    8002df72:	068d3783          	ld	a5,104(s10)
    8002df76:	ebad                	bnez	a5,8002dfe8 <js_parse_string+0x1be>
quickjs-nuttx/quickjs.c:20308
                        if (do_throw)
    8002df78:	f20901e3          	beqz	s2,8002de9a <js_parse_string+0x70>
quickjs-nuttx/quickjs.c:20309
                            js_parse_error(s, "malformed escape sequence in string literal");
    8002df7c:	0003e597          	auipc	a1,0x3e
    8002df80:	99c58593          	addi	a1,a1,-1636 # 8006b918 <qjsc_repl+0x6368>
    8002df84:	a04d                	j	8002e026 <js_parse_string+0x1fc>
quickjs-nuttx/quickjs.c:20251
            switch(c) {
    8002df86:	fde8081b          	addiw	a6,a6,-34
    8002df8a:	0ff87813          	zext.b	a6,a6
    8002df8e:	03a00793          	li	a5,58
    8002df92:	fd07ebe3          	bltu	a5,a6,8002df68 <js_parse_string+0x13e>
    8002df96:	010b1833          	sll	a6,s6,a6
    8002df9a:	01887833          	and	a6,a6,s8
    8002df9e:	fc0805e3          	beqz	a6,8002df68 <js_parse_string+0x13e>
quickjs-nuttx/quickjs.c:20260
                p++;
    8002dfa2:	0689                	addi	a3,a3,2
    8002dfa4:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:20327
        if (string_buffer_putc(b, c))
    8002dfa6:	85a2                	mv	a1,s0
    8002dfa8:	1008                	addi	a0,sp,32
    8002dfaa:	dc7f00ef          	jal	ra,8001ed70 <string_buffer_putc>
    8002dfae:	ec0503e3          	beqz	a0,8002de74 <js_parse_string+0x4a>
    8002dfb2:	b5e5                	j	8002de9a <js_parse_string+0x70>
quickjs-nuttx/quickjs.c:20253
                if (p >= s->buf_end)
    8002dfb4:	f8e571e3          	bgeu	a0,a4,8002df36 <js_parse_string+0x10c>
quickjs-nuttx/quickjs.c:20280
                        p++;
    8002dfb8:	0689                	addi	a3,a3,2
    8002dfba:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:20281
                        c = '\0';
    8002dfbc:	4401                	li	s0,0
    8002dfbe:	b7e5                	j	8002dfa6 <js_parse_string+0x17c>
quickjs-nuttx/quickjs.c:20263
                if (p[1] == '\n') {
    8002dfc0:	0026c703          	lbu	a4,2(a3)
    8002dfc4:	47a9                	li	a5,10
    8002dfc6:	00f71463          	bne	a4,a5,8002dfce <js_parse_string+0x1a4>
quickjs-nuttx/quickjs.c:20264
                    p++;
    8002dfca:	0689                	addi	a3,a3,2
    8002dfcc:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:20269
                p++;
    8002dfce:	67a2                	ld	a5,8(sp)
    8002dfd0:	0785                	addi	a5,a5,1
    8002dfd2:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:20270
                if (sep != '`')
    8002dfd4:	06000793          	li	a5,96
    8002dfd8:	e8f48ee3          	beq	s1,a5,8002de74 <js_parse_string+0x4a>
quickjs-nuttx/quickjs.c:20271
                    s->line_num++;
    8002dfdc:	00cd2783          	lw	a5,12(s10)
    8002dfe0:	2785                	addiw	a5,a5,1
    8002dfe2:	00fd2623          	sw	a5,12(s10)
    8002dfe6:	b579                	j	8002de74 <js_parse_string+0x4a>
quickjs-nuttx/quickjs.c:20277
                    if (!(s->cur_func->js_mode & JS_MODE_STRICT) && sep != '`')
    8002dfe8:	0867c783          	lbu	a5,134(a5)
    8002dfec:	8b85                	andi	a5,a5,1
    8002dfee:	e789                	bnez	a5,8002dff8 <js_parse_string+0x1ce>
quickjs-nuttx/quickjs.c:20277 (discriminator 1)
    8002dff0:	06000793          	li	a5,96
    8002dff4:	06f49763          	bne	s1,a5,8002e062 <js_parse_string+0x238>
quickjs-nuttx/quickjs.c:20279
                    if (c == '0' && !(p[1] >= '0' && p[1] <= '9')) {
    8002dff8:	03000793          	li	a5,48
    8002dffc:	02f41963          	bne	s0,a5,8002e02e <js_parse_string+0x204>
quickjs-nuttx/quickjs.c:20279 (discriminator 1)
