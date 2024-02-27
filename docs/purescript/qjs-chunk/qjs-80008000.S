    80007000:	4709                	li	a4,2
    80007002:	fee81be3          	bne	a6,a4,80006ff8 <__trunctfdf2+0x216>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 73)
    80007006:	daed                	beqz	a3,80006ff8 <__trunctfdf2+0x216>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 78)
    80007008:	0058e893          	ori	a7,a7,5
    8000700c:	b549                	j	80006e8e <__trunctfdf2+0xac>

000000008000700e <sig_trampoline>:
sig_trampoline():
/Users/Luppy/ox64/nuttx/arch/risc-v/src/common/crt0.c:70
 ****************************************************************************/

static void sig_trampoline(void) naked_function;
static void sig_trampoline(void)
{
  __asm__ __volatile__
    8000700e:	1141                	addi	sp,sp,-16
    80007010:	e006                	sd	ra,0(sp)
    80007012:	82aa                	mv	t0,a0
    80007014:	852e                	mv	a0,a1
    80007016:	85b2                	mv	a1,a2
    80007018:	8636                	mv	a2,a3
    8000701a:	9282                	jalr	t0
    8000701c:	6082                	ld	ra,0(sp)
    8000701e:	0141                	addi	sp,sp,16
    80007020:	451d                	li	a0,7
    80007022:	00000073          	ecall
    80007026:	0001                	nop

0000000080007028 <_start>:
_start():
/Users/Luppy/ox64/nuttx/arch/risc-v/src/common/crt0.c:166
 *   exit.
 *
 ****************************************************************************/

void _start(int argc, char *argv[])
{
    80007028:	1141                	addi	sp,sp,-16
/Users/Luppy/ox64/nuttx/arch/risc-v/src/common/crt0.c:173

  /* Initialize the reserved area at the beginning of the .bss/.data region
   * that is visible to the RTOS.
   */

  ARCH_DATA_RESERVE->ar_sigtramp = (addrenv_sigtramp_t)sig_trampoline;
    8000702a:	008017b7          	lui	a5,0x801
/Users/Luppy/ox64/nuttx/arch/risc-v/src/common/crt0.c:166
{
    8000702e:	e406                	sd	ra,8(sp)
/Users/Luppy/ox64/nuttx/arch/risc-v/src/common/crt0.c:173
  ARCH_DATA_RESERVE->ar_sigtramp = (addrenv_sigtramp_t)sig_trampoline;
    80007030:	07a2                	slli	a5,a5,0x8
    80007032:	00000717          	auipc	a4,0x0
    80007036:	fdc70713          	addi	a4,a4,-36 # 8000700e <sig_trampoline>
    8000703a:	e398                	sd	a4,0(a5)
/Users/Luppy/ox64/nuttx/arch/risc-v/src/common/crt0.c:187
  atexit(exec_dtors);
#endif

  /* Call the main() entry point passing argc and argv. */

  ret = main(argc, argv);
    8000703c:	3da000ef          	jal	ra,80007416 <main>
/Users/Luppy/ox64/nuttx/arch/risc-v/src/common/crt0.c:191

  /* Call exit() if/when the main() returns */

  exit(ret);
    80007040:	3615b0ef          	jal	ra,80062ba0 <exit>

0000000080007044 <js_trace_malloc_usable_size>:
js_trace_malloc_usable_size():
quickjs-nuttx/qjs.c:156
    return 0;
#elif defined(__linux__)
    return malloc_usable_size((void *)ptr);
#else
    /* change this to `return 0;` if compilation fails */
    return malloc_usable_size((void *)ptr);
    80007044:	4675806f          	j	8005fcaa <malloc_size>

0000000080007048 <js_trace_malloc_printf>:
js_trace_malloc_printf():
quickjs-nuttx/qjs.c:168
__attribute__((format(gnu_printf, 2, 3)))
#else
__attribute__((format(printf, 2, 3)))
#endif
    js_trace_malloc_printf(JSMallocState *s, const char *fmt, ...)
{
    80007048:	7171                	addi	sp,sp,-176
    8000704a:	ed3e                	sd	a5,152(sp)
quickjs-nuttx/qjs.c:172
    va_list ap;
    int c;

    va_start(ap, fmt);
    8000704c:	011c                	addi	a5,sp,128
quickjs-nuttx/qjs.c:168
{
    8000704e:	f8a2                	sd	s0,112(sp)
    80007050:	f0ca                	sd	s2,96(sp)
    80007052:	ecce                	sd	s3,88(sp)
    80007054:	e8d2                	sd	s4,80(sp)
    80007056:	e4d6                	sd	s5,72(sp)
    80007058:	e0da                	sd	s6,64(sp)
    8000705a:	fc5e                	sd	s7,56(sp)
    8000705c:	f862                	sd	s8,48(sp)
    8000705e:	f466                	sd	s9,40(sp)
    80007060:	fc86                	sd	ra,120(sp)
    80007062:	f4a6                	sd	s1,104(sp)
    80007064:	f06a                	sd	s10,32(sp)
    80007066:	892a                	mv	s2,a0
    80007068:	842e                	mv	s0,a1
    8000706a:	e132                	sd	a2,128(sp)
    8000706c:	e536                	sd	a3,136(sp)
    8000706e:	e93a                	sd	a4,144(sp)
    80007070:	f142                	sd	a6,160(sp)
    80007072:	f546                	sd	a7,168(sp)
quickjs-nuttx/qjs.c:172
    va_start(ap, fmt);
    80007074:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/qjs.c:174
    while ((c = *fmt++) != '\0') {
        if (c == '%') {
    80007076:	02500993          	li	s3,37
quickjs-nuttx/qjs.c:176
            /* only handle %p and %zd */
            if (*fmt == 'p') {
    8000707a:	07000a13          	li	s4,112
quickjs-nuttx/qjs.c:188
                           js_trace_malloc_usable_size(ptr));
                }
                fmt++;
                continue;
            }
            if (fmt[0] == 'z' && fmt[1] == 'd') {
    8000707e:	07a00a93          	li	s5,122
    80007082:	06400b13          	li	s6,100
quickjs-nuttx/qjs.c:190
                size_t sz = va_arg(ap, size_t);
                printf("%zd", sz);
    80007086:	0005eb97          	auipc	s7,0x5e
    8000708a:	edab8b93          	addi	s7,s7,-294 # 80064f60 <__clz_tab+0x118>
quickjs-nuttx/qjs.c:181
                    printf("H%+06lld.%zd",
    8000708e:	0005ec17          	auipc	s8,0x5e
    80007092:	ec2c0c13          	addi	s8,s8,-318 # 80064f50 <__clz_tab+0x108>
quickjs-nuttx/qjs.c:179
                    printf("NULL");
    80007096:	0005ec97          	auipc	s9,0x5e
    8000709a:	eb2c8c93          	addi	s9,s9,-334 # 80064f48 <__clz_tab+0x100>
quickjs-nuttx/qjs.c:173
    while ((c = *fmt++) != '\0') {
    8000709e:	00044483          	lbu	s1,0(s0)
    800070a2:	00140d13          	addi	s10,s0,1
    800070a6:	ec99                	bnez	s1,800070c4 <js_trace_malloc_printf+0x7c>
quickjs-nuttx/qjs.c:198
            }
        }
        putc(c, stdout);
    }
    va_end(ap);
}
    800070a8:	70e6                	ld	ra,120(sp)
    800070aa:	7446                	ld	s0,112(sp)
    800070ac:	74a6                	ld	s1,104(sp)
    800070ae:	7906                	ld	s2,96(sp)
    800070b0:	69e6                	ld	s3,88(sp)
    800070b2:	6a46                	ld	s4,80(sp)
    800070b4:	6aa6                	ld	s5,72(sp)
    800070b6:	6b06                	ld	s6,64(sp)
    800070b8:	7be2                	ld	s7,56(sp)
    800070ba:	7c42                	ld	s8,48(sp)
    800070bc:	7ca2                	ld	s9,40(sp)
    800070be:	7d02                	ld	s10,32(sp)
    800070c0:	614d                	addi	sp,sp,176
    800070c2:	8082                	ret
quickjs-nuttx/qjs.c:174
        if (c == '%') {
    800070c4:	05349f63          	bne	s1,s3,80007122 <js_trace_malloc_printf+0xda>
quickjs-nuttx/qjs.c:176
            if (*fmt == 'p') {
    800070c8:	00144783          	lbu	a5,1(s0)
    800070cc:	03479b63          	bne	a5,s4,80007102 <js_trace_malloc_printf+0xba>
quickjs-nuttx/qjs.c:177
                uint8_t *ptr = va_arg(ap, void *);
    800070d0:	67e2                	ld	a5,24(sp)
    800070d2:	6388                	ld	a0,0(a5)
    800070d4:	00878713          	addi	a4,a5,8 # 801008 <asinh-0x7f7feff8>
    800070d8:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/qjs.c:178
                if (ptr == NULL) {
    800070da:	e511                	bnez	a0,800070e6 <js_trace_malloc_printf+0x9e>
quickjs-nuttx/qjs.c:179
                    printf("NULL");
    800070dc:	8566                	mv	a0,s9
    800070de:	0fa5a0ef          	jal	ra,800611d8 <printf>
quickjs-nuttx/qjs.c:185
                fmt++;
    800070e2:	0409                	addi	s0,s0,2
quickjs-nuttx/qjs.c:186
                continue;
    800070e4:	bf6d                	j	8000709e <js_trace_malloc_printf+0x56>
js_trace_malloc_ptr_offset():
quickjs-nuttx/qjs.c:140
    return ptr - dp->base;
    800070e6:	01893783          	ld	a5,24(s2)
    800070ea:	638c                	ld	a1,0(a5)
    800070ec:	40b505b3          	sub	a1,a0,a1
    800070f0:	e42e                	sd	a1,8(sp)
js_trace_malloc_usable_size():
quickjs-nuttx/qjs.c:156
    return malloc_usable_size((void *)ptr);
    800070f2:	3b9580ef          	jal	ra,8005fcaa <malloc_size>
js_trace_malloc_printf():
quickjs-nuttx/qjs.c:181
                    printf("H%+06lld.%zd",
    800070f6:	65a2                	ld	a1,8(sp)
js_trace_malloc_usable_size():
quickjs-nuttx/qjs.c:156
    return malloc_usable_size((void *)ptr);
    800070f8:	862a                	mv	a2,a0
js_trace_malloc_printf():
quickjs-nuttx/qjs.c:181
                    printf("H%+06lld.%zd",
    800070fa:	8562                	mv	a0,s8
    800070fc:	0dc5a0ef          	jal	ra,800611d8 <printf>
    80007100:	b7cd                	j	800070e2 <js_trace_malloc_printf+0x9a>
quickjs-nuttx/qjs.c:188
            if (fmt[0] == 'z' && fmt[1] == 'd') {
    80007102:	03579063          	bne	a5,s5,80007122 <js_trace_malloc_printf+0xda>
quickjs-nuttx/qjs.c:188 (discriminator 1)
    80007106:	00244783          	lbu	a5,2(s0)
    8000710a:	01679c63          	bne	a5,s6,80007122 <js_trace_malloc_printf+0xda>
quickjs-nuttx/qjs.c:189
                size_t sz = va_arg(ap, size_t);
    8000710e:	67e2                	ld	a5,24(sp)
quickjs-nuttx/qjs.c:190
                printf("%zd", sz);
    80007110:	855e                	mv	a0,s7
quickjs-nuttx/qjs.c:191
                fmt += 2;
    80007112:	040d                	addi	s0,s0,3
quickjs-nuttx/qjs.c:190
                printf("%zd", sz);
    80007114:	638c                	ld	a1,0(a5)
quickjs-nuttx/qjs.c:189
                size_t sz = va_arg(ap, size_t);
    80007116:	00878713          	addi	a4,a5,8
    8000711a:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/qjs.c:190
                printf("%zd", sz);
    8000711c:	0bc5a0ef          	jal	ra,800611d8 <printf>
quickjs-nuttx/qjs.c:192
                continue;
    80007120:	bfbd                	j	8000709e <js_trace_malloc_printf+0x56>
quickjs-nuttx/qjs.c:195
        putc(c, stdout);
    80007122:	4505                	li	a0,1
    80007124:	23d5b0ef          	jal	ra,80062b60 <lib_get_stream>
    80007128:	85aa                	mv	a1,a0
    8000712a:	8526                	mv	a0,s1
    8000712c:	7f65b0ef          	jal	ra,80062922 <putc>
quickjs-nuttx/qjs.c:173
    while ((c = *fmt++) != '\0') {
    80007130:	846a                	mv	s0,s10
    80007132:	b7b5                	j	8000709e <js_trace_malloc_printf+0x56>

0000000080007134 <js_trace_malloc>:
js_trace_malloc():
quickjs-nuttx/qjs.c:206
{
    free(s->base = malloc(8));
}

static void *js_trace_malloc(JSMallocState *s, size_t size)
{
    80007134:	7179                	addi	sp,sp,-48
    80007136:	f406                	sd	ra,40(sp)
    80007138:	f022                	sd	s0,32(sp)
    8000713a:	ec26                	sd	s1,24(sp)
    8000713c:	862e                	mv	a2,a1
quickjs-nuttx/qjs.c:210
    void *ptr;

    /* Do not allocate zero bytes: behavior is platform dependent */
    assert(size != 0);
    8000713e:	e989                	bnez	a1,80007150 <js_trace_malloc+0x1c>
quickjs-nuttx/qjs.c:210 (discriminator 1)
    80007140:	0d200593          	li	a1,210
    80007144:	0005e517          	auipc	a0,0x5e
    80007148:	e2450513          	addi	a0,a0,-476 # 80064f68 <__clz_tab+0x120>
    8000714c:	011590ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/qjs.c:212 (discriminator 2)

    if (unlikely(s->malloc_size + size > s->malloc_limit))
    80007150:	651c                	ld	a5,8(a0)
    80007152:	6918                	ld	a4,16(a0)
    80007154:	842a                	mv	s0,a0
    80007156:	97ae                	add	a5,a5,a1
quickjs-nuttx/qjs.c:213 (discriminator 2)
        return NULL;
    80007158:	4481                	li	s1,0
quickjs-nuttx/qjs.c:212 (discriminator 2)
    if (unlikely(s->malloc_size + size > s->malloc_limit))
    8000715a:	02f76b63          	bltu	a4,a5,80007190 <js_trace_malloc+0x5c>
quickjs-nuttx/qjs.c:214
    ptr = malloc(size);
    8000715e:	852e                	mv	a0,a1
    80007160:	e42e                	sd	a1,8(sp)
    80007162:	361580ef          	jal	ra,8005fcc2 <malloc>
quickjs-nuttx/qjs.c:215
    js_trace_malloc_printf(s, "A %zd -> %p\n", size, ptr);
    80007166:	6622                	ld	a2,8(sp)
quickjs-nuttx/qjs.c:214
    ptr = malloc(size);
    80007168:	84aa                	mv	s1,a0
quickjs-nuttx/qjs.c:215
    js_trace_malloc_printf(s, "A %zd -> %p\n", size, ptr);
    8000716a:	86aa                	mv	a3,a0
    8000716c:	0005e597          	auipc	a1,0x5e
    80007170:	e0458593          	addi	a1,a1,-508 # 80064f70 <__clz_tab+0x128>
    80007174:	8522                	mv	a0,s0
    80007176:	ed3ff0ef          	jal	ra,80007048 <js_trace_malloc_printf>
quickjs-nuttx/qjs.c:216
    if (ptr) {
    8000717a:	c899                	beqz	s1,80007190 <js_trace_malloc+0x5c>
quickjs-nuttx/qjs.c:217
        s->malloc_count++;
    8000717c:	601c                	ld	a5,0(s0)
js_trace_malloc_usable_size():
quickjs-nuttx/qjs.c:156
    return malloc_usable_size((void *)ptr);
    8000717e:	8526                	mv	a0,s1
js_trace_malloc():
quickjs-nuttx/qjs.c:217
        s->malloc_count++;
    80007180:	0785                	addi	a5,a5,1
    80007182:	e01c                	sd	a5,0(s0)
js_trace_malloc_usable_size():
quickjs-nuttx/qjs.c:156
    return malloc_usable_size((void *)ptr);
    80007184:	327580ef          	jal	ra,8005fcaa <malloc_size>
js_trace_malloc():
quickjs-nuttx/qjs.c:218
        s->malloc_size += js_trace_malloc_usable_size(ptr) + MALLOC_OVERHEAD;
    80007188:	641c                	ld	a5,8(s0)
    8000718a:	07a1                	addi	a5,a5,8
    8000718c:	97aa                	add	a5,a5,a0
    8000718e:	e41c                	sd	a5,8(s0)
quickjs-nuttx/qjs.c:221
    }
    return ptr;
}
    80007190:	70a2                	ld	ra,40(sp)
    80007192:	7402                	ld	s0,32(sp)
    80007194:	8526                	mv	a0,s1
    80007196:	64e2                	ld	s1,24(sp)
    80007198:	6145                	addi	sp,sp,48
    8000719a:	8082                	ret

000000008000719c <JS_NewCustomContext>:
JS_NewCustomContext():
quickjs-nuttx/qjs.c:108
{
    8000719c:	1141                	addi	sp,sp,-16
    8000719e:	e022                	sd	s0,0(sp)
    800071a0:	e406                	sd	ra,8(sp)
quickjs-nuttx/qjs.c:110
    ctx = JS_NewContext(rt);
    800071a2:	42d450ef          	jal	ra,8004cdce <JS_NewContext>
    800071a6:	842a                	mv	s0,a0
quickjs-nuttx/qjs.c:111
    if (!ctx)
    800071a8:	c121                	beqz	a0,800071e8 <JS_NewCustomContext+0x4c>
quickjs-nuttx/qjs.c:114
    if (bignum_ext) {
    800071aa:	000fa797          	auipc	a5,0xfa
    800071ae:	f867a783          	lw	a5,-122(a5) # 80101130 <bignum_ext>
    800071b2:	cf89                	beqz	a5,800071cc <JS_NewCustomContext+0x30>
quickjs-nuttx/qjs.c:115
        JS_AddIntrinsicBigFloat(ctx);
    800071b4:	4cf430ef          	jal	ra,8004ae82 <JS_AddIntrinsicBigFloat>
quickjs-nuttx/qjs.c:116
        JS_AddIntrinsicBigDecimal(ctx);
    800071b8:	8522                	mv	a0,s0
    800071ba:	5ef430ef          	jal	ra,8004afa8 <JS_AddIntrinsicBigDecimal>
quickjs-nuttx/qjs.c:117
        JS_AddIntrinsicOperators(ctx);
    800071be:	8522                	mv	a0,s0
    800071c0:	363430ef          	jal	ra,8004ad22 <JS_AddIntrinsicOperators>
quickjs-nuttx/qjs.c:118
        JS_EnableBignumExt(ctx, TRUE);
    800071c4:	4585                	li	a1,1
    800071c6:	8522                	mv	a0,s0
    800071c8:	68b430ef          	jal	ra,8004b052 <JS_EnableBignumExt>
quickjs-nuttx/qjs.c:122
    js_init_module_std(ctx, "std");
    800071cc:	0005e597          	auipc	a1,0x5e
    800071d0:	db458593          	addi	a1,a1,-588 # 80064f80 <__clz_tab+0x138>
    800071d4:	8522                	mv	a0,s0
    800071d6:	6c74e0ef          	jal	ra,8005609c <js_init_module_std>
quickjs-nuttx/qjs.c:123
    js_init_module_os(ctx, "os");
    800071da:	0005e597          	auipc	a1,0x5e
    800071de:	dae58593          	addi	a1,a1,-594 # 80064f88 <__clz_tab+0x140>
    800071e2:	8522                	mv	a0,s0
    800071e4:	72b4e0ef          	jal	ra,8005610e <js_init_module_os>
quickjs-nuttx/qjs.c:125
}
    800071e8:	60a2                	ld	ra,8(sp)
    800071ea:	8522                	mv	a0,s0
    800071ec:	6402                	ld	s0,0(sp)
    800071ee:	0141                	addi	sp,sp,16
    800071f0:	8082                	ret

00000000800071f2 <eval_buf>:
eval_buf():
quickjs-nuttx/qjs.c:54
{
    800071f2:	715d                	addi	sp,sp,-80
    800071f4:	e0a2                	sd	s0,64(sp)
    800071f6:	e486                	sd	ra,72(sp)
    800071f8:	fc26                	sd	s1,56(sp)
    800071fa:	f84a                	sd	s2,48(sp)
quickjs-nuttx/qjs.c:58
    if ((eval_flags & JS_EVAL_TYPE_MASK) == JS_EVAL_TYPE_MODULE) {
    800071fc:	4785                	li	a5,1
quickjs-nuttx/qjs.c:54
{
    800071fe:	842a                	mv	s0,a0
quickjs-nuttx/qjs.c:58
    if ((eval_flags & JS_EVAL_TYPE_MASK) == JS_EVAL_TYPE_MODULE) {
    80007200:	08f71463          	bne	a4,a5,80007288 <eval_buf+0x96>
quickjs-nuttx/qjs.c:61
        val = JS_Eval(ctx, buf, buf_len, filename,
    80007204:	02100713          	li	a4,33
    80007208:	199110ef          	jal	ra,80018ba0 <JS_Eval>
    8000720c:	e82a                	sd	a0,16(sp)
    8000720e:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/qjs.c:63
        if (!JS_IsException(val)) {
    80007210:	0005871b          	sext.w	a4,a1
    80007214:	4799                	li	a5,6
quickjs-nuttx/qjs.c:61
        val = JS_Eval(ctx, buf, buf_len, filename,
    80007216:	862e                	mv	a2,a1
quickjs-nuttx/qjs.c:63
        if (!JS_IsException(val)) {
    80007218:	00f70f63          	beq	a4,a5,80007236 <eval_buf+0x44>
quickjs-nuttx/qjs.c:64
            js_module_set_import_meta(ctx, val, TRUE, TRUE);
    8000721c:	85aa                	mv	a1,a0
    8000721e:	4705                	li	a4,1
    80007220:	4685                	li	a3,1
    80007222:	8522                	mv	a0,s0
    80007224:	41b4e0ef          	jal	ra,80055e3e <js_module_set_import_meta>
quickjs-nuttx/qjs.c:65
            val = JS_EvalFunction(ctx, val);
    80007228:	6662                	ld	a2,24(sp)
    8000722a:	65c2                	ld	a1,16(sp)
    8000722c:	8522                	mv	a0,s0
    8000722e:	401420ef          	jal	ra,80049e2e <JS_EvalFunction>
    80007232:	e82a                	sd	a0,16(sp)
    80007234:	862e                	mv	a2,a1
quickjs-nuttx/qjs.c:67
        val = js_std_await(ctx, val);
    80007236:	65c2                	ld	a1,16(sp)
    80007238:	8522                	mv	a0,s0
    8000723a:	6024f0ef          	jal	ra,8005683c <js_std_await>
quickjs-nuttx/qjs.c:69
        val = JS_Eval(ctx, buf, buf_len, filename, eval_flags);
    8000723e:	e82a                	sd	a0,16(sp)
quickjs-nuttx/qjs.c:71
    if (JS_IsException(val)) {
    80007240:	0005891b          	sext.w	s2,a1
    80007244:	4799                	li	a5,6
quickjs-nuttx/qjs.c:69
        val = JS_Eval(ctx, buf, buf_len, filename, eval_flags);
    80007246:	862e                	mv	a2,a1
quickjs-nuttx/qjs.c:75
        ret = 0;
    80007248:	4481                	li	s1,0
quickjs-nuttx/qjs.c:71
    if (JS_IsException(val)) {
    8000724a:	00f91863          	bne	s2,a5,8000725a <eval_buf+0x68>
quickjs-nuttx/qjs.c:72
        js_std_dump_error(ctx);
    8000724e:	8522                	mv	a0,s0
    80007250:	e42e                	sd	a1,8(sp)
    80007252:	17a4f0ef          	jal	ra,800563cc <js_std_dump_error>
quickjs-nuttx/qjs.c:73
        ret = -1;
    80007256:	6622                	ld	a2,8(sp)
    80007258:	54fd                	li	s1,-1
quickjs-nuttx/qjs.c:77
    JS_FreeValue(ctx, val);
    8000725a:	65c2                	ld	a1,16(sp)
    8000725c:	ec32                	sd	a2,24(sp)
    8000725e:	f432                	sd	a2,40(sp)
JS_FreeValue():
quickjs-nuttx/quickjs.h:648
JSValue JS_ThrowOutOfMemory(JSContext *ctx);

void __JS_FreeValue(JSContext *ctx, JSValue v);
static inline void JS_FreeValue(JSContext *ctx, JSValue v)
{
    if (JS_VALUE_HAS_REF_COUNT(v)) {
    80007260:	f02e                	sd	a1,32(sp)
    80007262:	57d1                	li	a5,-12
    80007264:	0127fb63          	bgeu	a5,s2,8000727a <eval_buf+0x88>
quickjs-nuttx/quickjs.h:650
        JSRefCountHeader *p = (JSRefCountHeader *)JS_VALUE_GET_PTR(v);
        if (--p->ref_count <= 0) {
    80007268:	419c                	lw	a5,0(a1)
    8000726a:	fff7871b          	addiw	a4,a5,-1
    8000726e:	c198                	sw	a4,0(a1)
    80007270:	00e04563          	bgtz	a4,8000727a <eval_buf+0x88>
quickjs-nuttx/quickjs.h:651
            __JS_FreeValue(ctx, v);
    80007274:	8522                	mv	a0,s0
    80007276:	51e040ef          	jal	ra,8000b794 <__JS_FreeValue>
eval_buf():
quickjs-nuttx/qjs.c:79
}
    8000727a:	60a6                	ld	ra,72(sp)
    8000727c:	6406                	ld	s0,64(sp)
    8000727e:	7942                	ld	s2,48(sp)
    80007280:	8526                	mv	a0,s1
    80007282:	74e2                	ld	s1,56(sp)
    80007284:	6161                	addi	sp,sp,80
    80007286:	8082                	ret
quickjs-nuttx/qjs.c:69
        val = JS_Eval(ctx, buf, buf_len, filename, eval_flags);
    80007288:	4701                	li	a4,0
    8000728a:	117110ef          	jal	ra,80018ba0 <JS_Eval>
    8000728e:	bf45                	j	8000723e <eval_buf+0x4c>

0000000080007290 <eval_file>:
eval_file():
quickjs-nuttx/qjs.c:82
{
    80007290:	7139                	addi	sp,sp,-64
    80007292:	f426                	sd	s1,40(sp)
    80007294:	ec4e                	sd	s3,24(sp)
    80007296:	84ae                	mv	s1,a1
    80007298:	89b2                	mv	s3,a2
quickjs-nuttx/qjs.c:87
    buf = js_load_file(ctx, &buf_len, filename);
    8000729a:	862e                	mv	a2,a1
    8000729c:	002c                	addi	a1,sp,8
quickjs-nuttx/qjs.c:82
{
    8000729e:	f04a                	sd	s2,32(sp)
    800072a0:	fc06                	sd	ra,56(sp)
    800072a2:	f822                	sd	s0,48(sp)
    800072a4:	892a                	mv	s2,a0
quickjs-nuttx/qjs.c:87
    buf = js_load_file(ctx, &buf_len, filename);
    800072a6:	1e14e0ef          	jal	ra,80055c86 <js_load_file>
quickjs-nuttx/qjs.c:88
    if (!buf) {
    800072aa:	e519                	bnez	a0,800072b8 <eval_file+0x28>
quickjs-nuttx/qjs.c:89
        perror(filename);
    800072ac:	8526                	mv	a0,s1
    800072ae:	0045a0ef          	jal	ra,800612b2 <perror>
quickjs-nuttx/qjs.c:90
        exit(1);
    800072b2:	4505                	li	a0,1
    800072b4:	0ed5b0ef          	jal	ra,80062ba0 <exit>
    800072b8:	842a                	mv	s0,a0
quickjs-nuttx/qjs.c:98
        eval_flags = JS_EVAL_TYPE_MODULE;
    800072ba:	01303733          	snez	a4,s3
quickjs-nuttx/qjs.c:93
    if (module < 0) {
    800072be:	0209d163          	bgez	s3,800072e0 <eval_file+0x50>
quickjs-nuttx/qjs.c:94
        module = (has_suffix(filename, ".mjs") ||
    800072c2:	0005e597          	auipc	a1,0x5e
    800072c6:	cce58593          	addi	a1,a1,-818 # 80064f90 <__clz_tab+0x148>
    800072ca:	8526                	mv	a0,s1
    800072cc:	6644a0ef          	jal	ra,80051930 <has_suffix>
quickjs-nuttx/qjs.c:98
        eval_flags = JS_EVAL_TYPE_MODULE;
    800072d0:	4705                	li	a4,1
quickjs-nuttx/qjs.c:94
        module = (has_suffix(filename, ".mjs") ||
    800072d2:	e519                	bnez	a0,800072e0 <eval_file+0x50>
quickjs-nuttx/qjs.c:95 (discriminator 2)
                  JS_DetectModule((const char *)buf, buf_len));
    800072d4:	65a2                	ld	a1,8(sp)
    800072d6:	8522                	mv	a0,s0
    800072d8:	32f070ef          	jal	ra,8000ee06 <JS_DetectModule>
quickjs-nuttx/qjs.c:98 (discriminator 2)
        eval_flags = JS_EVAL_TYPE_MODULE;
    800072dc:	00a03733          	snez	a4,a0
quickjs-nuttx/qjs.c:101
    ret = eval_buf(ctx, buf, buf_len, filename, eval_flags);
    800072e0:	4622                	lw	a2,8(sp)
    800072e2:	86a6                	mv	a3,s1
    800072e4:	85a2                	mv	a1,s0
    800072e6:	854a                	mv	a0,s2
    800072e8:	f0bff0ef          	jal	ra,800071f2 <eval_buf>
    800072ec:	84aa                	mv	s1,a0
quickjs-nuttx/qjs.c:102
    js_free(ctx, buf);
    800072ee:	85a2                	mv	a1,s0
    800072f0:	854a                	mv	a0,s2
    800072f2:	505030ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/qjs.c:104
}
    800072f6:	70e2                	ld	ra,56(sp)
    800072f8:	7442                	ld	s0,48(sp)
    800072fa:	7902                	ld	s2,32(sp)
    800072fc:	69e2                	ld	s3,24(sp)
    800072fe:	8526                	mv	a0,s1
    80007300:	74a2                	ld	s1,40(sp)
    80007302:	6121                	addi	sp,sp,64
    80007304:	8082                	ret

0000000080007306 <js_trace_free>:
js_trace_free():
quickjs-nuttx/qjs.c:225

static void js_trace_free(JSMallocState *s, void *ptr)
{
    if (!ptr)
    80007306:	cd9d                	beqz	a1,80007344 <js_trace_free+0x3e>
quickjs-nuttx/qjs.c:224
{
    80007308:	1101                	addi	sp,sp,-32
    8000730a:	e822                	sd	s0,16(sp)
quickjs-nuttx/qjs.c:228
        return;

    js_trace_malloc_printf(s, "F %p\n", ptr);
    8000730c:	862e                	mv	a2,a1
    8000730e:	842e                	mv	s0,a1
    80007310:	0005e597          	auipc	a1,0x5e
    80007314:	c8858593          	addi	a1,a1,-888 # 80064f98 <__clz_tab+0x150>
quickjs-nuttx/qjs.c:224
{
    80007318:	ec06                	sd	ra,24(sp)
    8000731a:	e426                	sd	s1,8(sp)
    8000731c:	84aa                	mv	s1,a0
quickjs-nuttx/qjs.c:228
    js_trace_malloc_printf(s, "F %p\n", ptr);
    8000731e:	d2bff0ef          	jal	ra,80007048 <js_trace_malloc_printf>
quickjs-nuttx/qjs.c:229
    s->malloc_count--;
    80007322:	609c                	ld	a5,0(s1)
js_trace_malloc_usable_size():
quickjs-nuttx/qjs.c:156
    return malloc_usable_size((void *)ptr);
    80007324:	8522                	mv	a0,s0
js_trace_free():
quickjs-nuttx/qjs.c:229
    s->malloc_count--;
    80007326:	17fd                	addi	a5,a5,-1
    80007328:	e09c                	sd	a5,0(s1)
js_trace_malloc_usable_size():
quickjs-nuttx/qjs.c:156
    return malloc_usable_size((void *)ptr);
    8000732a:	181580ef          	jal	ra,8005fcaa <malloc_size>
js_trace_free():
quickjs-nuttx/qjs.c:230
    s->malloc_size -= js_trace_malloc_usable_size(ptr) + MALLOC_OVERHEAD;
    8000732e:	649c                	ld	a5,8(s1)
    80007330:	17e1                	addi	a5,a5,-8
    80007332:	8f89                	sub	a5,a5,a0
    80007334:	e49c                	sd	a5,8(s1)
quickjs-nuttx/qjs.c:231
    free(ptr);
    80007336:	8522                	mv	a0,s0
quickjs-nuttx/qjs.c:232
}
    80007338:	6442                	ld	s0,16(sp)
    8000733a:	60e2                	ld	ra,24(sp)
    8000733c:	64a2                	ld	s1,8(sp)
    8000733e:	6105                	addi	sp,sp,32
quickjs-nuttx/qjs.c:231
    free(ptr);
    80007340:	1775806f          	j	8005fcb6 <free>
    80007344:	8082                	ret

0000000080007346 <js_trace_realloc>:
js_trace_realloc():
quickjs-nuttx/qjs.c:235

static void *js_trace_realloc(JSMallocState *s, void *ptr, size_t size)
{
    80007346:	7179                	addi	sp,sp,-48
    80007348:	e84a                	sd	s2,16(sp)
    8000734a:	f406                	sd	ra,40(sp)
    8000734c:	f022                	sd	s0,32(sp)
    8000734e:	ec26                	sd	s1,24(sp)
    80007350:	e44e                	sd	s3,8(sp)
    80007352:	8932                	mv	s2,a2
quickjs-nuttx/qjs.c:238
    size_t old_size;

    if (!ptr) {
    80007354:	e19d                	bnez	a1,8000737a <js_trace_realloc+0x34>
quickjs-nuttx/qjs.c:239
        if (size == 0)
    80007356:	ea11                	bnez	a2,8000736a <js_trace_realloc+0x24>
quickjs-nuttx/qjs.c:249
    if (size == 0) {
        js_trace_malloc_printf(s, "R %zd %p\n", size, ptr);
        s->malloc_count--;
        s->malloc_size -= old_size + MALLOC_OVERHEAD;
        free(ptr);
        return NULL;
    80007358:	4481                	li	s1,0
quickjs-nuttx/qjs.c:262
    js_trace_malloc_printf(s, " -> %p\n", ptr);
    if (ptr) {
        s->malloc_size += js_trace_malloc_usable_size(ptr) - old_size;
    }
    return ptr;
}
    8000735a:	70a2                	ld	ra,40(sp)
    8000735c:	7402                	ld	s0,32(sp)
    8000735e:	6942                	ld	s2,16(sp)
    80007360:	69a2                	ld	s3,8(sp)
    80007362:	8526                	mv	a0,s1
    80007364:	64e2                	ld	s1,24(sp)
    80007366:	6145                	addi	sp,sp,48
    80007368:	8082                	ret
    8000736a:	7402                	ld	s0,32(sp)
    8000736c:	70a2                	ld	ra,40(sp)
    8000736e:	64e2                	ld	s1,24(sp)
    80007370:	6942                	ld	s2,16(sp)
    80007372:	69a2                	ld	s3,8(sp)
quickjs-nuttx/qjs.c:241
        return js_trace_malloc(s, size);
    80007374:	85b2                	mv	a1,a2
quickjs-nuttx/qjs.c:262
}
    80007376:	6145                	addi	sp,sp,48
quickjs-nuttx/qjs.c:241
        return js_trace_malloc(s, size);
    80007378:	bb75                	j	80007134 <js_trace_malloc>
    8000737a:	842a                	mv	s0,a0
js_trace_malloc_usable_size():
quickjs-nuttx/qjs.c:156
    return malloc_usable_size((void *)ptr);
    8000737c:	852e                	mv	a0,a1
    8000737e:	84ae                	mv	s1,a1
    80007380:	12b580ef          	jal	ra,8005fcaa <malloc_size>
    80007384:	89aa                	mv	s3,a0
js_trace_realloc():
quickjs-nuttx/qjs.c:244
    if (size == 0) {
    80007386:	02091763          	bnez	s2,800073b4 <js_trace_realloc+0x6e>
quickjs-nuttx/qjs.c:245
        js_trace_malloc_printf(s, "R %zd %p\n", size, ptr);
    8000738a:	8522                	mv	a0,s0
    8000738c:	86a6                	mv	a3,s1
    8000738e:	4601                	li	a2,0
    80007390:	0005e597          	auipc	a1,0x5e
    80007394:	c1058593          	addi	a1,a1,-1008 # 80064fa0 <__clz_tab+0x158>
    80007398:	cb1ff0ef          	jal	ra,80007048 <js_trace_malloc_printf>
quickjs-nuttx/qjs.c:246
        s->malloc_count--;
    8000739c:	601c                	ld	a5,0(s0)
quickjs-nuttx/qjs.c:248
        free(ptr);
    8000739e:	8526                	mv	a0,s1
quickjs-nuttx/qjs.c:246
        s->malloc_count--;
    800073a0:	17fd                	addi	a5,a5,-1
    800073a2:	e01c                	sd	a5,0(s0)
quickjs-nuttx/qjs.c:247
        s->malloc_size -= old_size + MALLOC_OVERHEAD;
    800073a4:	641c                	ld	a5,8(s0)
    800073a6:	17e1                	addi	a5,a5,-8
    800073a8:	413787b3          	sub	a5,a5,s3
    800073ac:	e41c                	sd	a5,8(s0)
quickjs-nuttx/qjs.c:248
        free(ptr);
    800073ae:	109580ef          	jal	ra,8005fcb6 <free>
    800073b2:	b75d                	j	80007358 <js_trace_realloc+0x12>
quickjs-nuttx/qjs.c:251
    if (s->malloc_size + size - old_size > s->malloc_limit)
    800073b4:	641c                	ld	a5,8(s0)
    800073b6:	6818                	ld	a4,16(s0)
    800073b8:	97ca                	add	a5,a5,s2
    800073ba:	8f89                	sub	a5,a5,a0
    800073bc:	f8f76ee3          	bltu	a4,a5,80007358 <js_trace_realloc+0x12>
quickjs-nuttx/qjs.c:254
    js_trace_malloc_printf(s, "R %zd %p", size, ptr);
    800073c0:	86a6                	mv	a3,s1
    800073c2:	864a                	mv	a2,s2
    800073c4:	0005e597          	auipc	a1,0x5e
    800073c8:	bec58593          	addi	a1,a1,-1044 # 80064fb0 <__clz_tab+0x168>
    800073cc:	8522                	mv	a0,s0
    800073ce:	c7bff0ef          	jal	ra,80007048 <js_trace_malloc_printf>
quickjs-nuttx/qjs.c:256
    ptr = realloc(ptr, size);
    800073d2:	85ca                	mv	a1,s2
    800073d4:	8526                	mv	a0,s1
    800073d6:	141580ef          	jal	ra,8005fd16 <realloc>
    800073da:	84aa                	mv	s1,a0
quickjs-nuttx/qjs.c:257
    js_trace_malloc_printf(s, " -> %p\n", ptr);
    800073dc:	862a                	mv	a2,a0
    800073de:	0005e597          	auipc	a1,0x5e
    800073e2:	be258593          	addi	a1,a1,-1054 # 80064fc0 <__clz_tab+0x178>
    800073e6:	8522                	mv	a0,s0
    800073e8:	c61ff0ef          	jal	ra,80007048 <js_trace_malloc_printf>
quickjs-nuttx/qjs.c:258
    if (ptr) {
    800073ec:	d4bd                	beqz	s1,8000735a <js_trace_realloc+0x14>
js_trace_malloc_usable_size():
quickjs-nuttx/qjs.c:156
    return malloc_usable_size((void *)ptr);
    800073ee:	8526                	mv	a0,s1
    800073f0:	0bb580ef          	jal	ra,8005fcaa <malloc_size>
js_trace_realloc():
quickjs-nuttx/qjs.c:259
        s->malloc_size += js_trace_malloc_usable_size(ptr) - old_size;
    800073f4:	641c                	ld	a5,8(s0)
    800073f6:	413787b3          	sub	a5,a5,s3
    800073fa:	97aa                	add	a5,a5,a0
    800073fc:	e41c                	sd	a5,8(s0)
    800073fe:	bfb1                	j	8000735a <js_trace_realloc+0x14>

0000000080007400 <help>:
help():
quickjs-nuttx/qjs.c:274
};

#define PROG_NAME "qjs"

void help(void)
{
    80007400:	1141                	addi	sp,sp,-16
quickjs-nuttx/qjs.c:275
    printf("QuickJS version " CONFIG_VERSION "\n"
    80007402:	0005e517          	auipc	a0,0x5e
    80007406:	bc650513          	addi	a0,a0,-1082 # 80064fc8 <__clz_tab+0x180>
quickjs-nuttx/qjs.c:274
{
    8000740a:	e406                	sd	ra,8(sp)
quickjs-nuttx/qjs.c:275
    printf("QuickJS version " CONFIG_VERSION "\n"
    8000740c:	711590ef          	jal	ra,8006131c <puts>
quickjs-nuttx/qjs.c:294
           "-d  --dump         dump the memory usage stats\n"
           "    --memory-limit n       limit the memory usage to 'n' bytes\n"
           "    --stack-size n         limit the stack size to 'n' bytes\n"
           "    --unhandled-rejection  dump unhandled promise rejections\n"
           "-q  --quit         just instantiate the interpreter and quit\n");
    exit(1);
    80007410:	4505                	li	a0,1
    80007412:	78e5b0ef          	jal	ra,80062ba0 <exit>

0000000080007416 <main>:
main():
quickjs-nuttx/qjs.c:298
}

int main(int argc, char **argv)
{
    80007416:	d6010113          	addi	sp,sp,-672
    8000741a:	28913423          	sd	s1,648(sp)
    8000741e:	27413823          	sd	s4,624(sp)
    80007422:	28113c23          	sd	ra,664(sp)
    80007426:	28813823          	sd	s0,656(sp)
    8000742a:	29213023          	sd	s2,640(sp)
    8000742e:	27313c23          	sd	s3,632(sp)
    80007432:	27513423          	sd	s5,616(sp)
    80007436:	27613023          	sd	s6,608(sp)
    8000743a:	25713c23          	sd	s7,600(sp)
    8000743e:	25813823          	sd	s8,592(sp)
    80007442:	25913423          	sd	s9,584(sp)
    80007446:	25a13023          	sd	s10,576(sp)
    8000744a:	23b13c23          	sd	s11,568(sp)
    8000744e:	22813427          	fsd	fs0,552(sp)
quickjs-nuttx/qjs.c:323
    
#ifdef CONFIG_BIGNUM
    /* load jscalc runtime if invoked as 'qjscalc' */
    {
        const char *p, *exename;
        exename = argv[0];
    80007452:	6180                	ld	s0,0(a1)
quickjs-nuttx/qjs.c:298
{
    80007454:	8a2a                	mv	s4,a0
    80007456:	84ae                	mv	s1,a1
quickjs-nuttx/qjs.c:324
        p = strrchr(exename, '/');
    80007458:	8522                	mv	a0,s0
    8000745a:	02f00593          	li	a1,47
quickjs-nuttx/qjs.c:301
    struct trace_malloc_data trace_data = { NULL };
    8000745e:	f802                	sd	zero,48(sp)
quickjs-nuttx/qjs.c:324
        p = strrchr(exename, '/');
    80007460:	7125c0ef          	jal	ra,80063b72 <strrchr>
quickjs-nuttx/qjs.c:325
        if (p)
    80007464:	c119                	beqz	a0,8000746a <main+0x54>
quickjs-nuttx/qjs.c:326
            exename = p + 1;
    80007466:	00150413          	addi	s0,a0,1
quickjs-nuttx/qjs.c:327
        load_jscalc = !strcmp(exename, "qjscalc");
    8000746a:	0005e597          	auipc	a1,0x5e
    8000746e:	ed658593          	addi	a1,a1,-298 # 80065340 <__clz_tab+0x4f8>
    80007472:	8522                	mv	a0,s0
    80007474:	0ad5c0ef          	jal	ra,80063d20 <strcmp>
    80007478:	00153793          	seqz	a5,a0
    8000747c:	e83e                	sd	a5,16(sp)
quickjs-nuttx/qjs.c:333
    }
#endif
    
    /* cannot use getopt because we want to pass the command line to
       the script */
    optind = 1;
    8000747e:	4395c0ef          	jal	ra,800640b6 <getoptindp>
    80007482:	4785                	li	a5,1
    80007484:	c11c                	sw	a5,0(a0)
quickjs-nuttx/qjs.c:317
    size_t stack_size = 0;
    80007486:	4d01                	li	s10,0
quickjs-nuttx/qjs.c:313
    int i, include_count = 0;
    80007488:	4c01                	li	s8,0
quickjs-nuttx/qjs.c:311
    size_t memory_limit = 0;
    8000748a:	4d81                	li	s11,0
quickjs-nuttx/qjs.c:310
    int dump_unhandled_promise_rejection = 0;
    8000748c:	f002                	sd	zero,32(sp)
quickjs-nuttx/qjs.c:309
    int load_std = 0;
    8000748e:	ec02                	sd	zero,24(sp)
quickjs-nuttx/qjs.c:308
    int module = -1;
    80007490:	5b7d                	li	s6,-1
quickjs-nuttx/qjs.c:307
    int empty_run = 0;
    80007492:	4a81                	li	s5,0
quickjs-nuttx/qjs.c:306
    int trace_memory = 0;
    80007494:	e402                	sd	zero,8(sp)
quickjs-nuttx/qjs.c:305
    int dump_memory = 0;
    80007496:	4c81                	li	s9,0
quickjs-nuttx/qjs.c:304
    int interactive = 0;
    80007498:	e002                	sd	zero,0(sp)
quickjs-nuttx/qjs.c:303
    char *expr = NULL;
    8000749a:	4b81                	li	s7,0
quickjs-nuttx/qjs.c:334
    while (optind < argc && *argv[optind] == '-') {
    8000749c:	41b5c0ef          	jal	ra,800640b6 <getoptindp>
    800074a0:	411c                	lw	a5,0(a0)
    800074a2:	0347dc63          	bge	a5,s4,800074da <main+0xc4>
quickjs-nuttx/qjs.c:334 (discriminator 1)
    800074a6:	4115c0ef          	jal	ra,800640b6 <getoptindp>
    800074aa:	411c                	lw	a5,0(a0)
    800074ac:	078e                	slli	a5,a5,0x3
    800074ae:	97a6                	add	a5,a5,s1
    800074b0:	639c                	ld	a5,0(a5)
    800074b2:	0007c783          	lbu	a5,0(a5)
    800074b6:	f43e                	sd	a5,40(sp)
    800074b8:	7722                	ld	a4,40(sp)
    800074ba:	02d00793          	li	a5,45
    800074be:	00f71e63          	bne	a4,a5,800074da <main+0xc4>
quickjs-nuttx/qjs.c:335
        char *arg = argv[optind] + 1;
    800074c2:	3f55c0ef          	jal	ra,800640b6 <getoptindp>
    800074c6:	411c                	lw	a5,0(a0)
    800074c8:	078e                	slli	a5,a5,0x3
    800074ca:	97a6                	add	a5,a5,s1
    800074cc:	0007b903          	ld	s2,0(a5)
quickjs-nuttx/qjs.c:338
        const char *longopt = "";
        /* a single - is not an option, it also stops argument scanning */
        if (!*arg)
    800074d0:	00194703          	lbu	a4,1(s2)
quickjs-nuttx/qjs.c:335
        char *arg = argv[optind] + 1;
    800074d4:	00190993          	addi	s3,s2,1
quickjs-nuttx/qjs.c:338
        if (!*arg)
    800074d8:	e321                	bnez	a4,80007518 <main+0x102>
quickjs-nuttx/qjs.c:448
            help();
        }
    }

#ifdef CONFIG_BIGNUM
    if (load_jscalc)
    800074da:	67c2                	ld	a5,16(sp)
    800074dc:	34079663          	bnez	a5,80007828 <main+0x412>
quickjs-nuttx/qjs.c:452
        bignum_ext = 1;
#endif

    if (trace_memory) {
    800074e0:	67a2                	ld	a5,8(sp)
    800074e2:	34078963          	beqz	a5,80007834 <main+0x41e>
js_trace_malloc_init():
quickjs-nuttx/qjs.c:202
    free(s->base = malloc(8));
    800074e6:	4521                	li	a0,8
    800074e8:	7da580ef          	jal	ra,8005fcc2 <malloc>
    800074ec:	f82a                	sd	a0,48(sp)
    800074ee:	7c8580ef          	jal	ra,8005fcb6 <free>
main():
quickjs-nuttx/qjs.c:454
        js_trace_malloc_init(&trace_data);
        rt = JS_NewRuntime2(&trace_mf, &trace_data);
    800074f2:	180c                	addi	a1,sp,48
    800074f4:	0005e517          	auipc	a0,0x5e
    800074f8:	09c50513          	addi	a0,a0,156 # 80065590 <trace_mf>
    800074fc:	220060ef          	jal	ra,8000d71c <JS_NewRuntime2>
quickjs-nuttx/qjs.c:456
    } else {
        rt = JS_NewRuntime();
    80007500:	842a                	mv	s0,a0
quickjs-nuttx/qjs.c:458
    }
    if (!rt) {
    80007502:	32051c63          	bnez	a0,8000783a <main+0x424>
quickjs-nuttx/qjs.c:459
        fprintf(stderr, "qjs: cannot allocate JS runtime\n");
    80007506:	4509                	li	a0,2
    80007508:	6585b0ef          	jal	ra,80062b60 <lib_get_stream>
    8000750c:	85aa                	mv	a1,a0
    8000750e:	0005e517          	auipc	a0,0x5e
    80007512:	f7a50513          	addi	a0,a0,-134 # 80065488 <__clz_tab+0x640>
    80007516:	a865                	j	800075ce <main+0x1b8>
quickjs-nuttx/qjs.c:340
        optind++;
    80007518:	39f5c0ef          	jal	ra,800640b6 <getoptindp>
    8000751c:	4118                	lw	a4,0(a0)
quickjs-nuttx/qjs.c:341
        if (*arg == '-') {
    8000751e:	77a2                	ld	a5,40(sp)
quickjs-nuttx/qjs.c:336
        const char *longopt = "";
    80007520:	00062417          	auipc	s0,0x62
    80007524:	66840413          	addi	s0,s0,1640 # 80069b88 <qjsc_repl+0x45d8>
quickjs-nuttx/qjs.c:340
        optind++;
    80007528:	2705                	addiw	a4,a4,1
    8000752a:	c118                	sw	a4,0(a0)
quickjs-nuttx/qjs.c:341
        if (*arg == '-') {
    8000752c:	00194703          	lbu	a4,1(s2)
    80007530:	00f71b63          	bne	a4,a5,80007546 <main+0x130>
quickjs-nuttx/qjs.c:343
            arg += strlen(arg);
    80007534:	854e                	mv	a0,s3
    80007536:	04d5c0ef          	jal	ra,80063d82 <strlen>
quickjs-nuttx/qjs.c:345
            if (!*longopt)
    8000753a:	00294783          	lbu	a5,2(s2)
quickjs-nuttx/qjs.c:342
            longopt = arg + 1;
    8000753e:	00290413          	addi	s0,s2,2
quickjs-nuttx/qjs.c:343
            arg += strlen(arg);
    80007542:	99aa                	add	s3,s3,a0
quickjs-nuttx/qjs.c:345
            if (!*longopt)
    80007544:	dbd9                	beqz	a5,800074da <main+0xc4>
quickjs-nuttx/qjs.c:348 (discriminator 1)
        for (; *arg || *longopt; longopt = "") {
    80007546:	0009c903          	lbu	s2,0(s3)
    8000754a:	00091763          	bnez	s2,80007558 <main+0x142>
quickjs-nuttx/qjs.c:348 (discriminator 2)
    8000754e:	00044783          	lbu	a5,0(s0)
    80007552:	ef81                	bnez	a5,8000756a <main+0x154>
    80007554:	89de                	mv	s3,s7
    80007556:	a095                	j	800075ba <main+0x1a4>
quickjs-nuttx/qjs.c:352
            if (opt == 'h' || opt == '?' || !strcmp(longopt, "help")) {
    80007558:	06800793          	li	a5,104
quickjs-nuttx/qjs.c:351
                arg++;
    8000755c:	0985                	addi	s3,s3,1
quickjs-nuttx/qjs.c:352
            if (opt == 'h' || opt == '?' || !strcmp(longopt, "help")) {
    8000755e:	00f90e63          	beq	s2,a5,8000757a <main+0x164>
quickjs-nuttx/qjs.c:352 (discriminator 1)
    80007562:	03f00793          	li	a5,63
    80007566:	00f90a63          	beq	s2,a5,8000757a <main+0x164>
quickjs-nuttx/qjs.c:352 (discriminator 2)
    8000756a:	0005e597          	auipc	a1,0x5e
    8000756e:	dde58593          	addi	a1,a1,-546 # 80065348 <__clz_tab+0x500>
    80007572:	8522                	mv	a0,s0
    80007574:	7ac5c0ef          	jal	ra,80063d20 <strcmp>
    80007578:	e119                	bnez	a0,8000757e <main+0x168>
quickjs-nuttx/qjs.c:353
                help();
    8000757a:	e87ff0ef          	jal	ra,80007400 <help>
quickjs-nuttx/qjs.c:356
            if (opt == 'e' || !strcmp(longopt, "eval")) {
    8000757e:	06500793          	li	a5,101
    80007582:	00f90a63          	beq	s2,a5,80007596 <main+0x180>
quickjs-nuttx/qjs.c:356 (discriminator 1)
    80007586:	0005e597          	auipc	a1,0x5e
    8000758a:	dca58593          	addi	a1,a1,-566 # 80065350 <__clz_tab+0x508>
    8000758e:	8522                	mv	a0,s0
    80007590:	7905c0ef          	jal	ra,80063d20 <strcmp>
    80007594:	e129                	bnez	a0,800075d6 <main+0x1c0>
quickjs-nuttx/qjs.c:357
                if (*arg) {
    80007596:	0009c783          	lbu	a5,0(s3)
    8000759a:	e385                	bnez	a5,800075ba <main+0x1a4>
quickjs-nuttx/qjs.c:361
                if (optind < argc) {
    8000759c:	31b5c0ef          	jal	ra,800640b6 <getoptindp>
    800075a0:	411c                	lw	a5,0(a0)
    800075a2:	0147de63          	bge	a5,s4,800075be <main+0x1a8>
quickjs-nuttx/qjs.c:362
                    expr = argv[optind++];
    800075a6:	3115c0ef          	jal	ra,800640b6 <getoptindp>
    800075aa:	411c                	lw	a5,0(a0)
    800075ac:	0017871b          	addiw	a4,a5,1
    800075b0:	078e                	slli	a5,a5,0x3
    800075b2:	c118                	sw	a4,0(a0)
    800075b4:	97a6                	add	a5,a5,s1
    800075b6:	0007b983          	ld	s3,0(a5)
quickjs-nuttx/qjs.c:363
                    break;
    800075ba:	8bce                	mv	s7,s3
    800075bc:	b5c5                	j	8000749c <main+0x86>
quickjs-nuttx/qjs.c:365
                fprintf(stderr, "qjs: missing expression for -e\n");
    800075be:	4509                	li	a0,2
    800075c0:	5a05b0ef          	jal	ra,80062b60 <lib_get_stream>
    800075c4:	85aa                	mv	a1,a0
    800075c6:	0005e517          	auipc	a0,0x5e
    800075ca:	d9250513          	addi	a0,a0,-622 # 80065358 <__clz_tab+0x510>
quickjs-nuttx/qjs.c:470
        JS_SetMaxStackSize(rt, stack_size);
    js_std_set_worker_new_context_func(JS_NewCustomContext);
    js_std_init_handlers(rt);
    ctx = JS_NewCustomContext(rt);
    if (!ctx) {
        fprintf(stderr, "qjs: cannot allocate JS context\n");
    800075ce:	4545b0ef          	jal	ra,80062a22 <fputs>
quickjs-nuttx/qjs.c:471
        exit(2);
    800075d2:	4509                	li	a0,2
    800075d4:	a82d                	j	8000760e <main+0x1f8>
quickjs-nuttx/qjs.c:368
            if (opt == 'I' || !strcmp(longopt, "include")) {
    800075d6:	04900793          	li	a5,73
    800075da:	00f90a63          	beq	s2,a5,800075ee <main+0x1d8>
quickjs-nuttx/qjs.c:368 (discriminator 1)
    800075de:	0005e597          	auipc	a1,0x5e
    800075e2:	d9a58593          	addi	a1,a1,-614 # 80065378 <__clz_tab+0x530>
    800075e6:	8522                	mv	a0,s0
    800075e8:	7385c0ef          	jal	ra,80063d20 <strcmp>
    800075ec:	e525                	bnez	a0,80007654 <main+0x23e>
quickjs-nuttx/qjs.c:369
                if (optind >= argc) {
    800075ee:	2c95c0ef          	jal	ra,800640b6 <getoptindp>
    800075f2:	411c                	lw	a5,0(a0)
    800075f4:	0147cf63          	blt	a5,s4,80007612 <main+0x1fc>
quickjs-nuttx/qjs.c:370
                    fprintf(stderr, "expecting filename");
    800075f8:	4509                	li	a0,2
    800075fa:	5665b0ef          	jal	ra,80062b60 <lib_get_stream>
    800075fe:	85aa                	mv	a1,a0
    80007600:	0005e517          	auipc	a0,0x5e
    80007604:	d8050513          	addi	a0,a0,-640 # 80065380 <__clz_tab+0x538>
    80007608:	41a5b0ef          	jal	ra,80062a22 <fputs>
quickjs-nuttx/qjs.c:371
                    exit(1);
    8000760c:	4505                	li	a0,1
    8000760e:	5925b0ef          	jal	ra,80062ba0 <exit>
quickjs-nuttx/qjs.c:373
                if (include_count >= countof(include_list)) {
    80007612:	47fd                	li	a5,31
    80007614:	0187db63          	bge	a5,s8,8000762a <main+0x214>
quickjs-nuttx/qjs.c:374
                    fprintf(stderr, "too many included files");
    80007618:	4509                	li	a0,2
    8000761a:	5465b0ef          	jal	ra,80062b60 <lib_get_stream>
    8000761e:	85aa                	mv	a1,a0
    80007620:	0005e517          	auipc	a0,0x5e
    80007624:	d7850513          	addi	a0,a0,-648 # 80065398 <__clz_tab+0x550>
    80007628:	b7c5                	j	80007608 <main+0x1f2>
quickjs-nuttx/qjs.c:377
                include_list[include_count++] = argv[optind++];
    8000762a:	28d5c0ef          	jal	ra,800640b6 <getoptindp>
    8000762e:	411c                	lw	a5,0(a0)
    80007630:	1414                	addi	a3,sp,544
    80007632:	0017871b          	addiw	a4,a5,1
    80007636:	078e                	slli	a5,a5,0x3
    80007638:	c118                	sw	a4,0(a0)
    8000763a:	97a6                	add	a5,a5,s1
    8000763c:	639c                	ld	a5,0(a5)
    8000763e:	003c1713          	slli	a4,s8,0x3
    80007642:	9736                	add	a4,a4,a3
    80007644:	f0f73023          	sd	a5,-256(a4)
    80007648:	2c05                	addiw	s8,s8,1
quickjs-nuttx/qjs.c:414 (discriminator 1)
                load_jscalc = 1;
    8000764a:	00062417          	auipc	s0,0x62
    8000764e:	53e40413          	addi	s0,s0,1342 # 80069b88 <qjsc_repl+0x45d8>
    80007652:	bdd5                	j	80007546 <main+0x130>
quickjs-nuttx/qjs.c:380
            if (opt == 'i' || !strcmp(longopt, "interactive")) {
    80007654:	06900793          	li	a5,105
    80007658:	00f90a63          	beq	s2,a5,8000766c <main+0x256>
quickjs-nuttx/qjs.c:380 (discriminator 1)
    8000765c:	0005e597          	auipc	a1,0x5e
    80007660:	d5458593          	addi	a1,a1,-684 # 800653b0 <__clz_tab+0x568>
    80007664:	8522                	mv	a0,s0
    80007666:	6ba5c0ef          	jal	ra,80063d20 <strcmp>
    8000766a:	e509                	bnez	a0,80007674 <main+0x25e>
quickjs-nuttx/qjs.c:381
                interactive++;
    8000766c:	6782                	ld	a5,0(sp)
    8000766e:	2785                	addiw	a5,a5,1
    80007670:	e03e                	sd	a5,0(sp)
quickjs-nuttx/qjs.c:382
                continue;
    80007672:	bfe1                	j	8000764a <main+0x234>
quickjs-nuttx/qjs.c:384
            if (opt == 'm' || !strcmp(longopt, "module")) {
    80007674:	06d00793          	li	a5,109
    80007678:	18f90b63          	beq	s2,a5,8000780e <main+0x3f8>
quickjs-nuttx/qjs.c:384 (discriminator 1)
    8000767c:	00078597          	auipc	a1,0x78
    80007680:	9a458593          	addi	a1,a1,-1628 # 8007f020 <utf8_min_code+0x498>
    80007684:	8522                	mv	a0,s0
    80007686:	69a5c0ef          	jal	ra,80063d20 <strcmp>
    8000768a:	18050263          	beqz	a0,8000780e <main+0x3f8>
quickjs-nuttx/qjs.c:388
            if (!strcmp(longopt, "script")) {
    8000768e:	0006e597          	auipc	a1,0x6e
    80007692:	d8258593          	addi	a1,a1,-638 # 80075410 <unescaped_chars.0+0x220>
    80007696:	8522                	mv	a0,s0
    80007698:	6885c0ef          	jal	ra,80063d20 <strcmp>
    8000769c:	16050b63          	beqz	a0,80007812 <main+0x3fc>
quickjs-nuttx/qjs.c:392
            if (opt == 'd' || !strcmp(longopt, "dump")) {
    800076a0:	06400793          	li	a5,100
    800076a4:	00f90a63          	beq	s2,a5,800076b8 <main+0x2a2>
quickjs-nuttx/qjs.c:392 (discriminator 1)
    800076a8:	0005e597          	auipc	a1,0x5e
    800076ac:	d1858593          	addi	a1,a1,-744 # 800653c0 <__clz_tab+0x578>
    800076b0:	8522                	mv	a0,s0
    800076b2:	66e5c0ef          	jal	ra,80063d20 <strcmp>
    800076b6:	e119                	bnez	a0,800076bc <main+0x2a6>
quickjs-nuttx/qjs.c:393
                dump_memory++;
    800076b8:	2c85                	addiw	s9,s9,1
quickjs-nuttx/qjs.c:394
                continue;
    800076ba:	bf41                	j	8000764a <main+0x234>
quickjs-nuttx/qjs.c:396
            if (opt == 'T' || !strcmp(longopt, "trace")) {
    800076bc:	05400793          	li	a5,84
    800076c0:	00f90a63          	beq	s2,a5,800076d4 <main+0x2be>
quickjs-nuttx/qjs.c:396 (discriminator 1)
    800076c4:	0005e597          	auipc	a1,0x5e
    800076c8:	d0458593          	addi	a1,a1,-764 # 800653c8 <__clz_tab+0x580>
    800076cc:	8522                	mv	a0,s0
    800076ce:	6525c0ef          	jal	ra,80063d20 <strcmp>
    800076d2:	e509                	bnez	a0,800076dc <main+0x2c6>
quickjs-nuttx/qjs.c:397
                trace_memory++;
    800076d4:	67a2                	ld	a5,8(sp)
    800076d6:	2785                	addiw	a5,a5,1
    800076d8:	e43e                	sd	a5,8(sp)
quickjs-nuttx/qjs.c:398
                continue;
    800076da:	bf85                	j	8000764a <main+0x234>
quickjs-nuttx/qjs.c:400
            if (!strcmp(longopt, "std")) {
    800076dc:	0005e597          	auipc	a1,0x5e
    800076e0:	8a458593          	addi	a1,a1,-1884 # 80064f80 <__clz_tab+0x138>
    800076e4:	8522                	mv	a0,s0
    800076e6:	63a5c0ef          	jal	ra,80063d20 <strcmp>
    800076ea:	12050663          	beqz	a0,80007816 <main+0x400>
quickjs-nuttx/qjs.c:404
            if (!strcmp(longopt, "unhandled-rejection")) {
    800076ee:	0005e597          	auipc	a1,0x5e
    800076f2:	ce258593          	addi	a1,a1,-798 # 800653d0 <__clz_tab+0x588>
    800076f6:	8522                	mv	a0,s0
    800076f8:	6285c0ef          	jal	ra,80063d20 <strcmp>
    800076fc:	12050063          	beqz	a0,8000781c <main+0x406>
quickjs-nuttx/qjs.c:409
            if (!strcmp(longopt, "bignum")) {
    80007700:	0005e597          	auipc	a1,0x5e
    80007704:	ce858593          	addi	a1,a1,-792 # 800653e8 <__clz_tab+0x5a0>
    80007708:	8522                	mv	a0,s0
    8000770a:	6165c0ef          	jal	ra,80063d20 <strcmp>
    8000770e:	e901                	bnez	a0,8000771e <main+0x308>
quickjs-nuttx/qjs.c:410
                bignum_ext = 1;
    80007710:	4785                	li	a5,1
    80007712:	000fa717          	auipc	a4,0xfa
    80007716:	a1e70713          	addi	a4,a4,-1506 # 80101130 <bignum_ext>
    8000771a:	c31c                	sw	a5,0(a4)
quickjs-nuttx/qjs.c:411
                continue;
    8000771c:	b73d                	j	8000764a <main+0x234>
quickjs-nuttx/qjs.c:413
            if (!strcmp(longopt, "qjscalc")) {
    8000771e:	0005e597          	auipc	a1,0x5e
    80007722:	c2258593          	addi	a1,a1,-990 # 80065340 <__clz_tab+0x4f8>
    80007726:	8522                	mv	a0,s0
    80007728:	5f85c0ef          	jal	ra,80063d20 <strcmp>
    8000772c:	0e050b63          	beqz	a0,80007822 <main+0x40c>
quickjs-nuttx/qjs.c:418
            if (opt == 'q' || !strcmp(longopt, "quit")) {
    80007730:	07100793          	li	a5,113
    80007734:	00f90a63          	beq	s2,a5,80007748 <main+0x332>
quickjs-nuttx/qjs.c:418 (discriminator 1)
    80007738:	0005e597          	auipc	a1,0x5e
    8000773c:	cb858593          	addi	a1,a1,-840 # 800653f0 <__clz_tab+0x5a8>
    80007740:	8522                	mv	a0,s0
    80007742:	5de5c0ef          	jal	ra,80063d20 <strcmp>
    80007746:	e119                	bnez	a0,8000774c <main+0x336>
quickjs-nuttx/qjs.c:419
                empty_run++;
    80007748:	2a85                	addiw	s5,s5,1
quickjs-nuttx/qjs.c:420
                continue;
    8000774a:	b701                	j	8000764a <main+0x234>
quickjs-nuttx/qjs.c:422
            if (!strcmp(longopt, "memory-limit")) {
    8000774c:	0005e597          	auipc	a1,0x5e
    80007750:	cac58593          	addi	a1,a1,-852 # 800653f8 <__clz_tab+0x5b0>
    80007754:	8522                	mv	a0,s0
    80007756:	5ca5c0ef          	jal	ra,80063d20 <strcmp>
    8000775a:	ed15                	bnez	a0,80007796 <main+0x380>
quickjs-nuttx/qjs.c:423
                if (optind >= argc) {
    8000775c:	15b5c0ef          	jal	ra,800640b6 <getoptindp>
    80007760:	411c                	lw	a5,0(a0)
    80007762:	0147cb63          	blt	a5,s4,80007778 <main+0x362>
quickjs-nuttx/qjs.c:424
                    fprintf(stderr, "expecting memory limit");
    80007766:	4509                	li	a0,2
    80007768:	3f85b0ef          	jal	ra,80062b60 <lib_get_stream>
    8000776c:	85aa                	mv	a1,a0
    8000776e:	0005e517          	auipc	a0,0x5e
    80007772:	c9a50513          	addi	a0,a0,-870 # 80065408 <__clz_tab+0x5c0>
    80007776:	bd49                	j	80007608 <main+0x1f2>
quickjs-nuttx/qjs.c:427
                memory_limit = (size_t)strtod(argv[optind++], NULL);
    80007778:	13f5c0ef          	jal	ra,800640b6 <getoptindp>
    8000777c:	411c                	lw	a5,0(a0)
    8000777e:	4581                	li	a1,0
    80007780:	0017871b          	addiw	a4,a5,1
    80007784:	078e                	slli	a5,a5,0x3
    80007786:	c118                	sw	a4,0(a0)
    80007788:	97a6                	add	a5,a5,s1
    8000778a:	6388                	ld	a0,0(a5)
    8000778c:	7755b0ef          	jal	ra,80063700 <strtod>
    80007790:	c2351dd3          	fcvt.lu.d	s11,fa0,rtz
quickjs-nuttx/qjs.c:428
                continue;
    80007794:	bd5d                	j	8000764a <main+0x234>
quickjs-nuttx/qjs.c:430
            if (!strcmp(longopt, "stack-size")) {
    80007796:	0005e597          	auipc	a1,0x5e
    8000779a:	c8a58593          	addi	a1,a1,-886 # 80065420 <__clz_tab+0x5d8>
    8000779e:	8522                	mv	a0,s0
    800077a0:	5805c0ef          	jal	ra,80063d20 <strcmp>
    800077a4:	ed15                	bnez	a0,800077e0 <main+0x3ca>
quickjs-nuttx/qjs.c:431
                if (optind >= argc) {
    800077a6:	1115c0ef          	jal	ra,800640b6 <getoptindp>
    800077aa:	411c                	lw	a5,0(a0)
    800077ac:	0147cb63          	blt	a5,s4,800077c2 <main+0x3ac>
quickjs-nuttx/qjs.c:432
                    fprintf(stderr, "expecting stack size");
    800077b0:	4509                	li	a0,2
    800077b2:	3ae5b0ef          	jal	ra,80062b60 <lib_get_stream>
    800077b6:	85aa                	mv	a1,a0
    800077b8:	0005e517          	auipc	a0,0x5e
    800077bc:	c7850513          	addi	a0,a0,-904 # 80065430 <__clz_tab+0x5e8>
    800077c0:	b5a1                	j	80007608 <main+0x1f2>
quickjs-nuttx/qjs.c:435
                stack_size = (size_t)strtod(argv[optind++], NULL);
    800077c2:	0f55c0ef          	jal	ra,800640b6 <getoptindp>
    800077c6:	411c                	lw	a5,0(a0)
    800077c8:	4581                	li	a1,0
    800077ca:	0017871b          	addiw	a4,a5,1
    800077ce:	078e                	slli	a5,a5,0x3
    800077d0:	c118                	sw	a4,0(a0)
    800077d2:	97a6                	add	a5,a5,s1
    800077d4:	6388                	ld	a0,0(a5)
    800077d6:	72b5b0ef          	jal	ra,80063700 <strtod>
    800077da:	c2351d53          	fcvt.lu.d	s10,fa0,rtz
quickjs-nuttx/qjs.c:436
                continue;
    800077de:	b5b5                	j	8000764a <main+0x234>
quickjs-nuttx/qjs.c:439
                fprintf(stderr, "qjs: unknown option '-%c'\n", opt);
    800077e0:	4509                	li	a0,2
quickjs-nuttx/qjs.c:438
            if (opt) {
    800077e2:	00090c63          	beqz	s2,800077fa <main+0x3e4>
quickjs-nuttx/qjs.c:439
                fprintf(stderr, "qjs: unknown option '-%c'\n", opt);
    800077e6:	37a5b0ef          	jal	ra,80062b60 <lib_get_stream>
    800077ea:	864a                	mv	a2,s2
    800077ec:	0005e597          	auipc	a1,0x5e
    800077f0:	c5c58593          	addi	a1,a1,-932 # 80065448 <__clz_tab+0x600>
    800077f4:	25c5b0ef          	jal	ra,80062a50 <fprintf>
    800077f8:	b349                	j	8000757a <main+0x164>
quickjs-nuttx/qjs.c:441
                fprintf(stderr, "qjs: unknown option '--%s'\n", longopt);
    800077fa:	3665b0ef          	jal	ra,80062b60 <lib_get_stream>
    800077fe:	8622                	mv	a2,s0
    80007800:	0005e597          	auipc	a1,0x5e
    80007804:	c6858593          	addi	a1,a1,-920 # 80065468 <__clz_tab+0x620>
    80007808:	2485b0ef          	jal	ra,80062a50 <fprintf>
    8000780c:	b3bd                	j	8000757a <main+0x164>
quickjs-nuttx/qjs.c:385
                module = 1;
    8000780e:	4b05                	li	s6,1
    80007810:	bd2d                	j	8000764a <main+0x234>
quickjs-nuttx/qjs.c:389
                module = 0;
    80007812:	4b01                	li	s6,0
    80007814:	bd1d                	j	8000764a <main+0x234>
quickjs-nuttx/qjs.c:401
                load_std = 1;
    80007816:	4785                	li	a5,1
    80007818:	ec3e                	sd	a5,24(sp)
    8000781a:	bd05                	j	8000764a <main+0x234>
quickjs-nuttx/qjs.c:405
                dump_unhandled_promise_rejection = 1;
    8000781c:	4785                	li	a5,1
    8000781e:	f03e                	sd	a5,32(sp)
    80007820:	b52d                	j	8000764a <main+0x234>
quickjs-nuttx/qjs.c:414
                load_jscalc = 1;
    80007822:	4785                	li	a5,1
    80007824:	e83e                	sd	a5,16(sp)
    80007826:	b515                	j	8000764a <main+0x234>
quickjs-nuttx/qjs.c:449
        bignum_ext = 1;
    80007828:	4785                	li	a5,1
    8000782a:	000fa717          	auipc	a4,0xfa
    8000782e:	90f72323          	sw	a5,-1786(a4) # 80101130 <bignum_ext>
    80007832:	b17d                	j	800074e0 <main+0xca>
quickjs-nuttx/qjs.c:456
        rt = JS_NewRuntime();
    80007834:	128060ef          	jal	ra,8000d95c <JS_NewRuntime>
    80007838:	b1e1                	j	80007500 <main+0xea>
quickjs-nuttx/qjs.c:462
    if (memory_limit != 0)
    8000783a:	000d8563          	beqz	s11,80007844 <main+0x42e>
quickjs-nuttx/qjs.c:463
        JS_SetMemoryLimit(rt, memory_limit);
    8000783e:	85ee                	mv	a1,s11
    80007840:	011030ef          	jal	ra,8000b050 <JS_SetMemoryLimit>
quickjs-nuttx/qjs.c:464
    if (stack_size != 0)
    80007844:	000d0663          	beqz	s10,80007850 <main+0x43a>
quickjs-nuttx/qjs.c:465
        JS_SetMaxStackSize(rt, stack_size);
    80007848:	85ea                	mv	a1,s10
    8000784a:	8522                	mv	a0,s0
    8000784c:	095030ef          	jal	ra,8000b0e0 <JS_SetMaxStackSize>
quickjs-nuttx/qjs.c:466
    js_std_set_worker_new_context_func(JS_NewCustomContext);
    80007850:	00000517          	auipc	a0,0x0
    80007854:	94c50513          	addi	a0,a0,-1716 # 8000719c <JS_NewCustomContext>
    80007858:	0ad4e0ef          	jal	ra,80056104 <js_std_set_worker_new_context_func>
quickjs-nuttx/qjs.c:467
    js_std_init_handlers(rt);
    8000785c:	8522                	mv	a0,s0
    8000785e:	2334e0ef          	jal	ra,80056290 <js_std_init_handlers>
quickjs-nuttx/qjs.c:468
    ctx = JS_NewCustomContext(rt);
    80007862:	8522                	mv	a0,s0
    80007864:	939ff0ef          	jal	ra,8000719c <JS_NewCustomContext>
    80007868:	892a                	mv	s2,a0
quickjs-nuttx/qjs.c:469
    if (!ctx) {
    8000786a:	e911                	bnez	a0,8000787e <main+0x468>
quickjs-nuttx/qjs.c:470
        fprintf(stderr, "qjs: cannot allocate JS context\n");
    8000786c:	4509                	li	a0,2
    8000786e:	2f25b0ef          	jal	ra,80062b60 <lib_get_stream>
    80007872:	85aa                	mv	a1,a0
    80007874:	0005e517          	auipc	a0,0x5e
    80007878:	c3c50513          	addi	a0,a0,-964 # 800654b0 <__clz_tab+0x668>
    8000787c:	bb89                	j	800075ce <main+0x1b8>
quickjs-nuttx/qjs.c:475
    }

    /* loader for ES6 modules */
    JS_SetModuleLoaderFunc(rt, NULL, js_module_loader, NULL);
    8000787e:	4681                	li	a3,0
    80007880:	0004e617          	auipc	a2,0x4e
    80007884:	6ea60613          	addi	a2,a2,1770 # 80055f6a <js_module_loader>
    80007888:	4581                	li	a1,0
    8000788a:	8522                	mv	a0,s0
    8000788c:	5c8070ef          	jal	ra,8000ee54 <JS_SetModuleLoaderFunc>
quickjs-nuttx/qjs.c:477

    if (dump_unhandled_promise_rejection) {
    80007890:	7782                	ld	a5,32(sp)
    80007892:	cb89                	beqz	a5,800078a4 <main+0x48e>
quickjs-nuttx/qjs.c:478
        JS_SetHostPromiseRejectionTracker(rt, js_std_promise_rejection_tracker,
    80007894:	4601                	li	a2,0
    80007896:	0004f597          	auipc	a1,0x4f
    8000789a:	f2e58593          	addi	a1,a1,-210 # 800567c4 <js_std_promise_rejection_tracker>
    8000789e:	8522                	mv	a0,s0
    800078a0:	6b8070ef          	jal	ra,8000ef58 <JS_SetHostPromiseRejectionTracker>
quickjs-nuttx/qjs.c:482
                                          NULL);
    }
    
    if (!empty_run) {
    800078a4:	080a9c63          	bnez	s5,8000793c <main+0x526>
quickjs-nuttx/qjs.c:484
#ifdef CONFIG_BIGNUM
        if (load_jscalc) {
    800078a8:	67c2                	ld	a5,16(sp)
    800078aa:	cf89                	beqz	a5,800078c4 <main+0x4ae>
quickjs-nuttx/qjs.c:485
            js_std_eval_binary(ctx, qjsc_qjscalc, qjsc_qjscalc_size, 0);
    800078ac:	4681                	li	a3,0
    800078ae:	0008d617          	auipc	a2,0x8d
    800078b2:	98a66603          	lwu	a2,-1654(a2) # 80094238 <qjsc_qjscalc_size>
    800078b6:	00079597          	auipc	a1,0x79
    800078ba:	62258593          	addi	a1,a1,1570 # 80080ed8 <qjsc_qjscalc>
    800078be:	854a                	mv	a0,s2
    800078c0:	11c4f0ef          	jal	ra,800569dc <js_std_eval_binary>
quickjs-nuttx/qjs.c:488
        }
#endif
        js_std_add_helpers(ctx, argc - optind, argv + optind);
    800078c4:	7f25c0ef          	jal	ra,800640b6 <getoptindp>
    800078c8:	410c                	lw	a1,0(a0)
    800078ca:	40ba05bb          	subw	a1,s4,a1
    800078ce:	e42e                	sd	a1,8(sp)
    800078d0:	7e65c0ef          	jal	ra,800640b6 <getoptindp>
    800078d4:	4110                	lw	a2,0(a0)
    800078d6:	65a2                	ld	a1,8(sp)
    800078d8:	854a                	mv	a0,s2
    800078da:	060e                	slli	a2,a2,0x3
    800078dc:	9626                	add	a2,a2,s1
    800078de:	07b4e0ef          	jal	ra,80056158 <js_std_add_helpers>
quickjs-nuttx/qjs.c:491

        /* make 'std' and 'os' visible to non module code */
        if (load_std) {
    800078e2:	67e2                	ld	a5,24(sp)
    800078e4:	cf99                	beqz	a5,80007902 <main+0x4ec>
quickjs-nuttx/qjs.c:496
            const char *str = "import * as std from 'std';\n"
                "import * as os from 'os';\n"
                "globalThis.std = std;\n"
                "globalThis.os = os;\n";
            eval_buf(ctx, str, strlen(str), "<input>", JS_EVAL_TYPE_MODULE);
    800078e6:	4705                	li	a4,1
    800078e8:	0005e697          	auipc	a3,0x5e
    800078ec:	bf068693          	addi	a3,a3,-1040 # 800654d8 <__clz_tab+0x690>
    800078f0:	06000613          	li	a2,96
    800078f4:	0005e597          	auipc	a1,0x5e
    800078f8:	bec58593          	addi	a1,a1,-1044 # 800654e0 <__clz_tab+0x698>
    800078fc:	854a                	mv	a0,s2
    800078fe:	8f5ff0ef          	jal	ra,800071f2 <eval_buf>
    80007902:	12010d13          	addi	s10,sp,288
quickjs-nuttx/qjs.c:303 (discriminator 1)
    char *expr = NULL;
    80007906:	4981                	li	s3,0
quickjs-nuttx/qjs.c:499 (discriminator 1)
        }

        for(i = 0; i < include_count; i++) {
    80007908:	15899d63          	bne	s3,s8,80007a62 <main+0x64c>
quickjs-nuttx/qjs.c:504
            if (eval_file(ctx, include_list[i], module))
                goto fail;
        }

        if (expr) {
    8000790c:	160b8563          	beqz	s7,80007a76 <main+0x660>
quickjs-nuttx/qjs.c:505
            if (eval_buf(ctx, expr, strlen(expr), "<cmdline>", 0))
    80007910:	855e                	mv	a0,s7
    80007912:	4705c0ef          	jal	ra,80063d82 <strlen>
    80007916:	0005061b          	sext.w	a2,a0
    8000791a:	4701                	li	a4,0
    8000791c:	0005e697          	auipc	a3,0x5e
    80007920:	c2c68693          	addi	a3,a3,-980 # 80065548 <__clz_tab+0x700>
    80007924:	85de                	mv	a1,s7
    80007926:	854a                	mv	a0,s2
    80007928:	8cbff0ef          	jal	ra,800071f2 <eval_buf>
    8000792c:	18051263          	bnez	a0,80007ab0 <main+0x69a>
quickjs-nuttx/qjs.c:517
            const char *filename;
            filename = argv[optind];
            if (eval_file(ctx, filename, module))
                goto fail;
        }
        if (interactive) {
    80007930:	6782                	ld	a5,0(sp)
    80007932:	14079763          	bnez	a5,80007a80 <main+0x66a>
quickjs-nuttx/qjs.c:520
            js_std_eval_binary(ctx, qjsc_repl, qjsc_repl_size, 0);
        }
        js_std_loop(ctx);
    80007936:	854a                	mv	a0,s2
    80007938:	6c74e0ef          	jal	ra,800567fe <js_std_loop>
quickjs-nuttx/qjs.c:523
    }
    
    if (dump_memory) {
    8000793c:	000c8d63          	beqz	s9,80007956 <main+0x540>
quickjs-nuttx/qjs.c:525
        JSMemoryUsage stats;
        JS_ComputeMemoryUsage(rt, &stats);
    80007940:	088c                	addi	a1,sp,80
    80007942:	8522                	mv	a0,s0
    80007944:	048060ef          	jal	ra,8000d98c <JS_ComputeMemoryUsage>
quickjs-nuttx/qjs.c:526
        JS_DumpMemoryUsage(stdout, &stats, rt);
    80007948:	4505                	li	a0,1
    8000794a:	2165b0ef          	jal	ra,80062b60 <lib_get_stream>
    8000794e:	8622                	mv	a2,s0
    80007950:	088c                	addi	a1,sp,80
    80007952:	6b0060ef          	jal	ra,8000e002 <JS_DumpMemoryUsage>
quickjs-nuttx/qjs.c:528
    }
    js_std_free_handlers(rt);
    80007956:	8522                	mv	a0,s0
    80007958:	1cf4e0ef          	jal	ra,80056326 <js_std_free_handlers>
quickjs-nuttx/qjs.c:529
    JS_FreeContext(ctx);
    8000795c:	854a                	mv	a0,s2
    8000795e:	3b6040ef          	jal	ra,8000bd14 <JS_FreeContext>
quickjs-nuttx/qjs.c:530
    JS_FreeRuntime(rt);
    80007962:	8522                	mv	a0,s0
    80007964:	4a9050ef          	jal	ra,8000d60c <JS_FreeRuntime>
quickjs-nuttx/qjs.c:532

    if (empty_run && dump_memory) {
    80007968:	0a0a8d63          	beqz	s5,80007a22 <main+0x60c>
quickjs-nuttx/qjs.c:556 (discriminator 1)
        }
        printf("\nInstantiation times (ms): %.3f = %.3f+%.3f+%.3f+%.3f\n",
               best[1] + best[2] + best[3] + best[4],
               best[1], best[2], best[3], best[4]);
    }
    return 0;
    8000796c:	4a81                	li	s5,0
quickjs-nuttx/qjs.c:532 (discriminator 1)
    if (empty_run && dump_memory) {
    8000796e:	0a0c8a63          	beqz	s9,80007a22 <main+0x60c>
quickjs-nuttx/qjs.c:536
        for (i = 0; i < 100; i++) {
    80007972:	4401                	li	s0,0
    80007974:	05010a13          	addi	s4,sp,80
quickjs-nuttx/qjs.c:547
                double ms = 1000.0 * (t[j] - t[j - 1]) / CLOCKS_PER_SEC;
    80007978:	0008c797          	auipc	a5,0x8c
    8000797c:	2007b407          	fld	fs0,512(a5) # 80093b78 <_erodata+0x6>
quickjs-nuttx/qjs.c:536
        for (i = 0; i < 100; i++) {
    80007980:	06400993          	li	s3,100
quickjs-nuttx/qjs.c:537
            t[0] = clock();
    80007984:	4a35c0ef          	jal	ra,80064626 <clock>
    80007988:	dc2a                	sw	a0,56(sp)
quickjs-nuttx/qjs.c:538
            rt = JS_NewRuntime();
    8000798a:	7d3050ef          	jal	ra,8000d95c <JS_NewRuntime>
    8000798e:	84aa                	mv	s1,a0
quickjs-nuttx/qjs.c:539
            t[1] = clock();
    80007990:	4975c0ef          	jal	ra,80064626 <clock>
    80007994:	de2a                	sw	a0,60(sp)
quickjs-nuttx/qjs.c:540
            ctx = JS_NewContext(rt);
    80007996:	8526                	mv	a0,s1
    80007998:	436450ef          	jal	ra,8004cdce <JS_NewContext>
    8000799c:	892a                	mv	s2,a0
quickjs-nuttx/qjs.c:541
            t[2] = clock();
    8000799e:	4895c0ef          	jal	ra,80064626 <clock>
    800079a2:	c0aa                	sw	a0,64(sp)
quickjs-nuttx/qjs.c:542
            JS_FreeContext(ctx);
    800079a4:	854a                	mv	a0,s2
    800079a6:	36e040ef          	jal	ra,8000bd14 <JS_FreeContext>
quickjs-nuttx/qjs.c:543
            t[3] = clock();
    800079aa:	47d5c0ef          	jal	ra,80064626 <clock>
    800079ae:	c2aa                	sw	a0,68(sp)
quickjs-nuttx/qjs.c:544
            JS_FreeRuntime(rt);
    800079b0:	8526                	mv	a0,s1
    800079b2:	45b050ef          	jal	ra,8000d60c <JS_FreeRuntime>
quickjs-nuttx/qjs.c:545
            t[4] = clock();
    800079b6:	4715c0ef          	jal	ra,80064626 <clock>
    800079ba:	c4aa                	sw	a0,72(sp)
quickjs-nuttx/qjs.c:546
            for (j = 4; j > 0; j--) {
    800079bc:	1838                	addi	a4,sp,56
    800079be:	189c                	addi	a5,sp,112
quickjs-nuttx/qjs.c:547
                double ms = 1000.0 * (t[j] - t[j - 1]) / CLOCKS_PER_SEC;
    800079c0:	4b14                	lw	a3,16(a4)
    800079c2:	4750                	lw	a2,12(a4)
    800079c4:	9e91                	subw	a3,a3,a2
    800079c6:	d21687d3          	fcvt.d.wu	fa5,a3
    800079ca:	1287f7d3          	fmul.d	fa5,fa5,fs0
    800079ce:	1a87f7d3          	fdiv.d	fa5,fa5,fs0
quickjs-nuttx/qjs.c:548
                if (i == 0 || best[j] > ms)
    800079d2:	c409                	beqz	s0,800079dc <main+0x5c6>
quickjs-nuttx/qjs.c:548 (discriminator 1)
    800079d4:	2398                	fld	fa4,0(a5)
    800079d6:	a2e796d3          	flt.d	a3,fa5,fa4
    800079da:	c291                	beqz	a3,800079de <main+0x5c8>
quickjs-nuttx/qjs.c:549
                    best[j] = ms;
    800079dc:	a39c                	fsd	fa5,0(a5)
quickjs-nuttx/qjs.c:546 (discriminator 1)
            for (j = 4; j > 0; j--) {
    800079de:	17e1                	addi	a5,a5,-8
    800079e0:	1771                	addi	a4,a4,-4
    800079e2:	fcfa1fe3          	bne	s4,a5,800079c0 <main+0x5aa>
quickjs-nuttx/qjs.c:536 (discriminator 2)
        for (i = 0; i < 100; i++) {
    800079e6:	2405                	addiw	s0,s0,1
    800079e8:	f9341ee3          	bne	s0,s3,80007984 <main+0x56e>
quickjs-nuttx/qjs.c:553
               best[1] + best[2] + best[3] + best[4],
    800079ec:	2766                	fld	fa4,88(sp)
    800079ee:	3686                	fld	fa3,96(sp)
    800079f0:	3626                	fld	fa2,104(sp)
quickjs-nuttx/qjs.c:552
        printf("\nInstantiation times (ms): %.3f = %.3f+%.3f+%.3f+%.3f\n",
    800079f2:	77c6                	ld	a5,112(sp)
quickjs-nuttx/qjs.c:553
               best[1] + best[2] + best[3] + best[4],
    800079f4:	02d777d3          	fadd.d	fa5,fa4,fa3
quickjs-nuttx/qjs.c:552
        printf("\nInstantiation times (ms): %.3f = %.3f+%.3f+%.3f+%.3f\n",
    800079f8:	e2070653          	fmv.x.d	a2,fa4
    800079fc:	f2078753          	fmv.d.x	fa4,a5
    80007a00:	e2060753          	fmv.x.d	a4,fa2
    80007a04:	e20686d3          	fmv.x.d	a3,fa3
    80007a08:	0005e517          	auipc	a0,0x5e
    80007a0c:	b5050513          	addi	a0,a0,-1200 # 80065558 <__clz_tab+0x710>
quickjs-nuttx/qjs.c:556
    return 0;
    80007a10:	4a81                	li	s5,0
quickjs-nuttx/qjs.c:553
               best[1] + best[2] + best[3] + best[4],
    80007a12:	02c7f7d3          	fadd.d	fa5,fa5,fa2
quickjs-nuttx/qjs.c:552
        printf("\nInstantiation times (ms): %.3f = %.3f+%.3f+%.3f+%.3f\n",
    80007a16:	02e7f7d3          	fadd.d	fa5,fa5,fa4
    80007a1a:	e20785d3          	fmv.x.d	a1,fa5
    80007a1e:	7ba590ef          	jal	ra,800611d8 <printf>
quickjs-nuttx/qjs.c:562
 fail:
    js_std_free_handlers(rt);
    JS_FreeContext(ctx);
    JS_FreeRuntime(rt);
    return 1;
}
    80007a22:	29813083          	ld	ra,664(sp)
    80007a26:	29013403          	ld	s0,656(sp)
    80007a2a:	28813483          	ld	s1,648(sp)
    80007a2e:	28013903          	ld	s2,640(sp)
    80007a32:	27813983          	ld	s3,632(sp)
    80007a36:	27013a03          	ld	s4,624(sp)
    80007a3a:	26013b03          	ld	s6,608(sp)
    80007a3e:	25813b83          	ld	s7,600(sp)
    80007a42:	25013c03          	ld	s8,592(sp)
    80007a46:	24813c83          	ld	s9,584(sp)
    80007a4a:	24013d03          	ld	s10,576(sp)
    80007a4e:	23813d83          	ld	s11,568(sp)
    80007a52:	22813407          	fld	fs0,552(sp)
    80007a56:	8556                	mv	a0,s5
    80007a58:	26813a83          	ld	s5,616(sp)
    80007a5c:	2a010113          	addi	sp,sp,672
    80007a60:	8082                	ret
quickjs-nuttx/qjs.c:500
            if (eval_file(ctx, include_list[i], module))
    80007a62:	000d3583          	ld	a1,0(s10)
    80007a66:	865a                	mv	a2,s6
    80007a68:	854a                	mv	a0,s2
    80007a6a:	827ff0ef          	jal	ra,80007290 <eval_file>
    80007a6e:	0d21                	addi	s10,s10,8
    80007a70:	e121                	bnez	a0,80007ab0 <main+0x69a>
quickjs-nuttx/qjs.c:499 (discriminator 2)
        for(i = 0; i < include_count; i++) {
    80007a72:	2985                	addiw	s3,s3,1
    80007a74:	bd51                	j	80007908 <main+0x4f2>
quickjs-nuttx/qjs.c:508
        if (optind >= argc) {
    80007a76:	6405c0ef          	jal	ra,800640b6 <getoptindp>
    80007a7a:	411c                	lw	a5,0(a0)
    80007a7c:	0147cf63          	blt	a5,s4,80007a9a <main+0x684>
quickjs-nuttx/qjs.c:518
            js_std_eval_binary(ctx, qjsc_repl, qjsc_repl_size, 0);
    80007a80:	4681                	li	a3,0
    80007a82:	0008c617          	auipc	a2,0x8c
    80007a86:	73666603          	lwu	a2,1846(a2) # 800941b8 <qjsc_repl_size>
    80007a8a:	0005e597          	auipc	a1,0x5e
    80007a8e:	b2658593          	addi	a1,a1,-1242 # 800655b0 <qjsc_repl>
    80007a92:	854a                	mv	a0,s2
    80007a94:	7494e0ef          	jal	ra,800569dc <js_std_eval_binary>
    80007a98:	bd79                	j	80007936 <main+0x520>
quickjs-nuttx/qjs.c:513
            filename = argv[optind];
    80007a9a:	61c5c0ef          	jal	ra,800640b6 <getoptindp>
    80007a9e:	410c                	lw	a1,0(a0)
quickjs-nuttx/qjs.c:514
            if (eval_file(ctx, filename, module))
    80007aa0:	865a                	mv	a2,s6
    80007aa2:	854a                	mv	a0,s2
quickjs-nuttx/qjs.c:513
            filename = argv[optind];
    80007aa4:	058e                	slli	a1,a1,0x3
    80007aa6:	94ae                	add	s1,s1,a1
quickjs-nuttx/qjs.c:514
            if (eval_file(ctx, filename, module))
    80007aa8:	608c                	ld	a1,0(s1)
    80007aaa:	fe6ff0ef          	jal	ra,80007290 <eval_file>
    80007aae:	bdbd                	j	8000792c <main+0x516>
quickjs-nuttx/qjs.c:558
    js_std_free_handlers(rt);
    80007ab0:	8522                	mv	a0,s0
    80007ab2:	0754e0ef          	jal	ra,80056326 <js_std_free_handlers>
quickjs-nuttx/qjs.c:559
    JS_FreeContext(ctx);
    80007ab6:	854a                	mv	a0,s2
    80007ab8:	25c040ef          	jal	ra,8000bd14 <JS_FreeContext>
quickjs-nuttx/qjs.c:560
    JS_FreeRuntime(rt);
    80007abc:	8522                	mv	a0,s0
    80007abe:	34f050ef          	jal	ra,8000d60c <JS_FreeRuntime>
quickjs-nuttx/qjs.c:561
    return 1;
    80007ac2:	4a85                	li	s5,1
    80007ac4:	bfb9                	j	80007a22 <main+0x60c>

0000000080007ac6 <bswap32>:
bswap32():
quickjs-nuttx/cutils.h:221
}

static inline uint32_t bswap32(uint32_t v)
{
    return ((v & 0xff000000) >> 24) | ((v & 0x00ff0000) >>  8) |
        ((v & 0x0000ff00) <<  8) | ((v & 0x000000ff) << 24);
    80007ac6:	0185171b          	slliw	a4,a0,0x18
quickjs-nuttx/cutils.h:220
    return ((v & 0xff000000) >> 24) | ((v & 0x00ff0000) >>  8) |
    80007aca:	0185579b          	srliw	a5,a0,0x18
    80007ace:	66c1                	lui	a3,0x10
quickjs-nuttx/cutils.h:221
        ((v & 0x0000ff00) <<  8) | ((v & 0x000000ff) << 24);
    80007ad0:	8fd9                	or	a5,a5,a4
quickjs-nuttx/cutils.h:220
    return ((v & 0xff000000) >> 24) | ((v & 0x00ff0000) >>  8) |
    80007ad2:	f0068693          	addi	a3,a3,-256 # ff00 <asinh-0x7fff0100>
    80007ad6:	0085571b          	srliw	a4,a0,0x8
    80007ada:	8f75                	and	a4,a4,a3
quickjs-nuttx/cutils.h:221
        ((v & 0x0000ff00) <<  8) | ((v & 0x000000ff) << 24);
    80007adc:	8fd9                	or	a5,a5,a4
    80007ade:	0085151b          	slliw	a0,a0,0x8
    80007ae2:	00ff0737          	lui	a4,0xff0
    80007ae6:	8d79                	and	a0,a0,a4
    80007ae8:	8d5d                	or	a0,a0,a5
quickjs-nuttx/cutils.h:222
}
    80007aea:	2501                	sext.w	a0,a0
    80007aec:	8082                	ret

0000000080007aee <bswap64>:
bswap64():
quickjs-nuttx/cutils.h:233
        ((v & ((uint64_t)0xff << (5 * 8))) >> (3 * 8)) | 
        ((v & ((uint64_t)0xff << (4 * 8))) >> (1 * 8)) | 
        ((v & ((uint64_t)0xff << (3 * 8))) << (1 * 8)) | 
        ((v & ((uint64_t)0xff << (2 * 8))) << (3 * 8)) | 
        ((v & ((uint64_t)0xff << (1 * 8))) << (5 * 8)) | 
        ((v & ((uint64_t)0xff << (0 * 8))) << (7 * 8));
    80007aee:	03851713          	slli	a4,a0,0x38
quickjs-nuttx/cutils.h:226
    return ((v & ((uint64_t)0xff << (7 * 8))) >> (7 * 8)) | 
    80007af2:	03855793          	srli	a5,a0,0x38
quickjs-nuttx/cutils.h:227
        ((v & ((uint64_t)0xff << (6 * 8))) >> (5 * 8)) | 
    80007af6:	66c1                	lui	a3,0x10
quickjs-nuttx/cutils.h:232
        ((v & ((uint64_t)0xff << (1 * 8))) << (5 * 8)) | 
    80007af8:	8fd9                	or	a5,a5,a4
quickjs-nuttx/cutils.h:227
        ((v & ((uint64_t)0xff << (6 * 8))) >> (5 * 8)) | 
    80007afa:	f0068693          	addi	a3,a3,-256 # ff00 <asinh-0x7fff0100>
    80007afe:	02855713          	srli	a4,a0,0x28
    80007b02:	8f75                	and	a4,a4,a3
quickjs-nuttx/cutils.h:232
        ((v & ((uint64_t)0xff << (1 * 8))) << (5 * 8)) | 
    80007b04:	8fd9                	or	a5,a5,a4
quickjs-nuttx/cutils.h:228
        ((v & ((uint64_t)0xff << (5 * 8))) >> (3 * 8)) | 
    80007b06:	00ff06b7          	lui	a3,0xff0
    80007b0a:	01855713          	srli	a4,a0,0x18
    80007b0e:	8f75                	and	a4,a4,a3
quickjs-nuttx/cutils.h:232
        ((v & ((uint64_t)0xff << (1 * 8))) << (5 * 8)) | 
    80007b10:	8fd9                	or	a5,a5,a4
quickjs-nuttx/cutils.h:229
        ((v & ((uint64_t)0xff << (4 * 8))) >> (1 * 8)) | 
    80007b12:	0ff00713          	li	a4,255
    80007b16:	01871613          	slli	a2,a4,0x18
    80007b1a:	00855693          	srli	a3,a0,0x8
    80007b1e:	8ef1                	and	a3,a3,a2
quickjs-nuttx/cutils.h:232
        ((v & ((uint64_t)0xff << (1 * 8))) << (5 * 8)) | 
    80007b20:	8fd5                	or	a5,a5,a3
quickjs-nuttx/cutils.h:230
        ((v & ((uint64_t)0xff << (3 * 8))) << (1 * 8)) | 
    80007b22:	02071613          	slli	a2,a4,0x20
    80007b26:	00851693          	slli	a3,a0,0x8
    80007b2a:	8ef1                	and	a3,a3,a2
quickjs-nuttx/cutils.h:232
        ((v & ((uint64_t)0xff << (1 * 8))) << (5 * 8)) | 
    80007b2c:	8fd5                	or	a5,a5,a3
quickjs-nuttx/cutils.h:231
        ((v & ((uint64_t)0xff << (2 * 8))) << (3 * 8)) | 
    80007b2e:	02871613          	slli	a2,a4,0x28
    80007b32:	01851693          	slli	a3,a0,0x18
    80007b36:	8ef1                	and	a3,a3,a2
quickjs-nuttx/cutils.h:232
        ((v & ((uint64_t)0xff << (1 * 8))) << (5 * 8)) | 
    80007b38:	1742                	slli	a4,a4,0x30
    80007b3a:	1522                	slli	a0,a0,0x28
    80007b3c:	8fd5                	or	a5,a5,a3
    80007b3e:	8d79                	and	a0,a0,a4
quickjs-nuttx/cutils.h:234
}
    80007b40:	8d5d                	or	a0,a0,a5
    80007b42:	8082                	ret

0000000080007b44 <list_del>:
list_del():
quickjs-nuttx/list.h:72
}

static inline void list_del(struct list_head *el)
{
    struct list_head *prev, *next;
    prev = el->prev;
    80007b44:	6118                	ld	a4,0(a0)
quickjs-nuttx/list.h:73
    next = el->next;
    80007b46:	651c                	ld	a5,8(a0)
quickjs-nuttx/list.h:74
    prev->next = next;
    80007b48:	e71c                	sd	a5,8(a4)
quickjs-nuttx/list.h:75
    next->prev = prev;
    80007b4a:	e398                	sd	a4,0(a5)
quickjs-nuttx/list.h:76
    el->prev = NULL; /* fail safe */
    80007b4c:	00053023          	sd	zero,0(a0)
quickjs-nuttx/list.h:77
    el->next = NULL; /* fail safe */
    80007b50:	00053423          	sd	zero,8(a0)
quickjs-nuttx/list.h:78
}
    80007b54:	8082                	ret

0000000080007b56 <js_malloc_usable_size_unknown>:
js_malloc_usable_size_unknown():
quickjs-nuttx/quickjs.c:1309
}

static size_t js_malloc_usable_size_unknown(const void *ptr)
{
    return 0;
}
    80007b56:	4501                	li	a0,0
    80007b58:	8082                	ret

0000000080007b5a <js_realloc_rt>:
js_realloc_rt():
quickjs-nuttx/quickjs.c:1323
    rt->mf.js_free(&rt->malloc_state, ptr);
}

void *js_realloc_rt(JSRuntime *rt, void *ptr, size_t size)
{
    return rt->mf.js_realloc(&rt->malloc_state, ptr, size);
    80007b5a:	691c                	ld	a5,16(a0)
    80007b5c:	02050513          	addi	a0,a0,32
    80007b60:	8782                	jr	a5

0000000080007b62 <js_bf_realloc>:
js_bf_realloc():
quickjs-nuttx/quickjs.c:1344

/* called by libbf */
static void *js_bf_realloc(void *opaque, void *ptr, size_t size)
{
    JSRuntime *rt = opaque;
    return js_realloc_rt(rt, ptr, size);
    80007b62:	bfe5                	j	80007b5a <js_realloc_rt>

0000000080007b64 <invalid_from_string>:
invalid_from_string():
quickjs-nuttx/quickjs.c:1550
}

static JSValue invalid_from_string(JSContext *ctx, const char *buf,
                                   int radix, int flags, slimb_t *pexponent)
{
    return JS_NAN;
    80007b64:	0008c797          	auipc	a5,0x8c
    80007b68:	01c7b787          	fld	fa5,28(a5) # 80093b80 <_erodata+0xe>
    80007b6c:	12f7f7d3          	fmul.d	fa5,fa5,fa5
quickjs-nuttx/quickjs.c:1551
}
    80007b70:	f2000753          	fmv.d.x	fa4,zero
quickjs-nuttx/quickjs.c:1549
{
    80007b74:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:1551
}
    80007b76:	459d                	li	a1,7
    80007b78:	0141                	addi	sp,sp,16
    80007b7a:	12e7f7d3          	fmul.d	fa5,fa5,fa4
    80007b7e:	e2078553          	fmv.x.d	a0,fa5
    80007b82:	8082                	ret

0000000080007b84 <is_strict_mode>:
is_strict_mode():
quickjs-nuttx/quickjs.c:2370
    update_stack_limit(rt);
}

static inline BOOL is_strict_mode(JSContext *ctx)
{
    JSStackFrame *sf = ctx->rt->current_stack_frame;
    80007b84:	6d1c                	ld	a5,24(a0)
    80007b86:	7ffc                	ld	a5,248(a5)
quickjs-nuttx/quickjs.c:2371
    return (sf && (sf->js_mode & JS_MODE_STRICT));
    80007b88:	c781                	beqz	a5,80007b90 <is_strict_mode+0xc>
quickjs-nuttx/quickjs.c:2371 (discriminator 1)
    80007b8a:	43e8                	lw	a0,68(a5)
    80007b8c:	8905                	andi	a0,a0,1
    80007b8e:	8082                	ret
quickjs-nuttx/quickjs.c:2371
    80007b90:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:2372
}
    80007b92:	8082                	ret

0000000080007b94 <is_math_mode>:
is_math_mode():
quickjs-nuttx/quickjs.c:2377

#ifdef CONFIG_BIGNUM
static inline BOOL is_math_mode(JSContext *ctx)
{
    JSStackFrame *sf = ctx->rt->current_stack_frame;
    80007b94:	6d1c                	ld	a5,24(a0)
    80007b96:	7ffc                	ld	a5,248(a5)
quickjs-nuttx/quickjs.c:2378
    return (sf && (sf->js_mode & JS_MODE_MATH));
    80007b98:	c791                	beqz	a5,80007ba4 <is_math_mode+0x10>
quickjs-nuttx/quickjs.c:2378 (discriminator 1)
    80007b9a:	43e8                	lw	a0,68(a5)
    80007b9c:	4025551b          	sraiw	a0,a0,0x2
    80007ba0:	8905                	andi	a0,a0,1
    80007ba2:	8082                	ret
quickjs-nuttx/quickjs.c:2378
    80007ba4:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:2379
}
    80007ba6:	8082                	ret

0000000080007ba8 <is_num_string>:
is_num_string():
quickjs-nuttx/quickjs.c:2432
{
    uint32_t n;
    uint64_t n64;
    int c, i, len;

    len = p->len;
    80007ba8:	41d8                	lw	a4,4(a1)
    80007baa:	800007b7          	lui	a5,0x80000
    80007bae:	fff7c693          	not	a3,a5
    80007bb2:	8f75                	and	a4,a4,a3
quickjs-nuttx/quickjs.c:2433
    if (len == 0 || len > 10)
    80007bb4:	00d707bb          	addw	a5,a4,a3
    80007bb8:	8ff5                	and	a5,a5,a3
    80007bba:	2781                	sext.w	a5,a5
    80007bbc:	46a5                	li	a3,9
quickjs-nuttx/quickjs.c:2427
{
    80007bbe:	862a                	mv	a2,a0
quickjs-nuttx/quickjs.c:2433
    if (len == 0 || len > 10)
    80007bc0:	08f6e163          	bltu	a3,a5,80007c42 <is_num_string+0x9a>
quickjs-nuttx/quickjs.c:2435
        return FALSE;
    if (p->is_wide_char)
    80007bc4:	0045a803          	lw	a6,4(a1)
    80007bc8:	04085d63          	bgez	a6,80007c22 <is_num_string+0x7a>
quickjs-nuttx/quickjs.c:2436
        c = p->u.str16[0];
    80007bcc:	0105d683          	lhu	a3,16(a1)
is_num():
quickjs-nuttx/quickjs.c:2422
    return c >= '0' && c <= '9';
    80007bd0:	fd06879b          	addiw	a5,a3,-48
is_num_string():
quickjs-nuttx/quickjs.c:2439
    else
        c = p->u.str8[0];
    if (is_num(c)) {
    80007bd4:	48a5                	li	a7,9
quickjs-nuttx/quickjs.c:2434
        return FALSE;
    80007bd6:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:2439
    if (is_num(c)) {
    80007bd8:	06f8e663          	bltu	a7,a5,80007c44 <is_num_string+0x9c>
quickjs-nuttx/quickjs.c:2440
        if (c == '0') {
    80007bdc:	03000513          	li	a0,48
quickjs-nuttx/quickjs.c:2432
    len = p->len;
    80007be0:	0007089b          	sext.w	a7,a4
quickjs-nuttx/quickjs.c:2440
        if (c == '0') {
    80007be4:	04a68263          	beq	a3,a0,80007c28 <is_num_string+0x80>
    80007be8:	01258513          	addi	a0,a1,18
    80007bec:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:2451
            for(i = 1; i < len; i++) {
                if (p->is_wide_char)
                    c = p->u.str16[i];
                else
                    c = p->u.str8[i];
                if (!is_num(c))
    80007bee:	4325                	li	t1,9
quickjs-nuttx/quickjs.c:2453
                    return FALSE;
                n64 = (uint64_t)n * 10 + (c - '0');
    80007bf0:	4e29                	li	t3,10
quickjs-nuttx/quickjs.c:2446 (discriminator 1)
            for(i = 1; i < len; i++) {
    80007bf2:	0006871b          	sext.w	a4,a3
    80007bf6:	03175e63          	bge	a4,a7,80007c32 <is_num_string+0x8a>
quickjs-nuttx/quickjs.c:2447
                if (p->is_wide_char)
    80007bfa:	02085f63          	bgez	a6,80007c38 <is_num_string+0x90>
quickjs-nuttx/quickjs.c:2448
                    c = p->u.str16[i];
    80007bfe:	00055703          	lhu	a4,0(a0)
quickjs-nuttx/quickjs.c:2451
                if (!is_num(c))
    80007c02:	fd07071b          	addiw	a4,a4,-48
    80007c06:	02e36e63          	bltu	t1,a4,80007c42 <is_num_string+0x9a>
quickjs-nuttx/quickjs.c:2453
                n64 = (uint64_t)n * 10 + (c - '0');
    80007c0a:	1782                	slli	a5,a5,0x20
    80007c0c:	9381                	srli	a5,a5,0x20
    80007c0e:	03c787b3          	mul	a5,a5,t3
quickjs-nuttx/quickjs.c:2454
                if ((n64 >> 32) != 0)
    80007c12:	0685                	addi	a3,a3,1
    80007c14:	0509                	addi	a0,a0,2
quickjs-nuttx/quickjs.c:2453
                n64 = (uint64_t)n * 10 + (c - '0');
    80007c16:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:2454
                if ((n64 >> 32) != 0)
    80007c18:	0207d713          	srli	a4,a5,0x20
    80007c1c:	e31d                	bnez	a4,80007c42 <is_num_string+0x9a>
quickjs-nuttx/quickjs.c:2456 (discriminator 2)
                    return FALSE;
                n = n64;
    80007c1e:	2781                	sext.w	a5,a5
quickjs-nuttx/quickjs.c:2446 (discriminator 2)
            for(i = 1; i < len; i++) {
    80007c20:	bfc9                	j	80007bf2 <is_num_string+0x4a>
quickjs-nuttx/quickjs.c:2438
        c = p->u.str8[0];
    80007c22:	0105c683          	lbu	a3,16(a1)
    80007c26:	b76d                	j	80007bd0 <is_num_string+0x28>
quickjs-nuttx/quickjs.c:2441
            if (len != 1)
    80007c28:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:2434
        return FALSE;
    80007c2a:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:2441
            if (len != 1)
    80007c2c:	00f71c63          	bne	a4,a5,80007c44 <is_num_string+0x9c>
quickjs-nuttx/quickjs.c:2443
            n = 0;
    80007c30:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:2459
            }
        }
        *pval = n;
    80007c32:	c21c                	sw	a5,0(a2)
quickjs-nuttx/quickjs.c:2460
        return TRUE;
    80007c34:	4505                	li	a0,1
    80007c36:	8082                	ret
quickjs-nuttx/quickjs.c:2450
                    c = p->u.str8[i];
    80007c38:	00d58733          	add	a4,a1,a3
    80007c3c:	01074703          	lbu	a4,16(a4) # ff0010 <asinh-0x7f00fff0>
    80007c40:	b7c9                	j	80007c02 <is_num_string+0x5a>
quickjs-nuttx/quickjs.c:2434
        return FALSE;
    80007c42:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:2464
    } else {
        return FALSE;
    }
}
    80007c44:	8082                	ret

0000000080007c46 <JS_IsEmptyString>:
JS_IsEmptyString():
quickjs-nuttx/quickjs.c:3373
    snprintf(buf, sizeof(buf), "%u", n);
    return js_atom_concat_str(ctx, name, buf);
}

static inline BOOL JS_IsEmptyString(JSValueConst v)
{
    80007c46:	1141                	addi	sp,sp,-16
    80007c48:	e42e                	sd	a1,8(sp)
    80007c4a:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:3374
    return JS_VALUE_GET_TAG(v) == JS_TAG_STRING && JS_VALUE_GET_STRING(v)->len == 0;
    80007c4c:	2581                	sext.w	a1,a1
    80007c4e:	57e5                	li	a5,-7
    80007c50:	00f59863          	bne	a1,a5,80007c60 <JS_IsEmptyString+0x1a>
quickjs-nuttx/quickjs.c:3374 (discriminator 1)
    80007c54:	4148                	lw	a0,4(a0)
    80007c56:	1506                	slli	a0,a0,0x21
    80007c58:	00153513          	seqz	a0,a0
quickjs-nuttx/quickjs.c:3375 (discriminator 6)
}
    80007c5c:	0141                	addi	sp,sp,16
    80007c5e:	8082                	ret
quickjs-nuttx/quickjs.c:3374
    return JS_VALUE_GET_TAG(v) == JS_TAG_STRING && JS_VALUE_GET_STRING(v)->len == 0;
    80007c60:	4501                	li	a0,0
    80007c62:	bfed                	j	80007c5c <JS_IsEmptyString+0x16>

0000000080007c64 <string_get>:
string_get():
quickjs-nuttx/quickjs.c:3704
    }
    return string_buffer_putc16(s, c);
}

static int string_get(const JSString *p, int idx) {
    return p->is_wide_char ? p->u.str16[idx] : p->u.str8[idx];
    80007c64:	415c                	lw	a5,4(a0)
    80007c66:	0007d863          	bgez	a5,80007c76 <string_get+0x12>
quickjs-nuttx/quickjs.c:3704 (discriminator 1)
    80007c6a:	05a1                	addi	a1,a1,8
    80007c6c:	0586                	slli	a1,a1,0x1
    80007c6e:	952e                	add	a0,a0,a1
    80007c70:	00055503          	lhu	a0,0(a0)
    80007c74:	8082                	ret
quickjs-nuttx/quickjs.c:3704 (discriminator 2)
    80007c76:	952e                	add	a0,a0,a1
    80007c78:	01054503          	lbu	a0,16(a0)
quickjs-nuttx/quickjs.c:3705 (discriminator 2)
}
    80007c7c:	8082                	ret

0000000080007c7e <string_getc>:
string_getc():
quickjs-nuttx/quickjs.c:3711

static int string_getc(const JSString *p, int *pidx)
{
    int idx, c, c1;
    idx = *pidx;
    if (p->is_wide_char) {
    80007c7e:	4158                	lw	a4,4(a0)
quickjs-nuttx/quickjs.c:3710
    idx = *pidx;
    80007c80:	0005a803          	lw	a6,0(a1)
quickjs-nuttx/quickjs.c:3708
{
    80007c84:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:3711
    if (p->is_wide_char) {
    80007c86:	0007069b          	sext.w	a3,a4
quickjs-nuttx/quickjs.c:3712
        c = p->u.str16[idx++];
    80007c8a:	0018061b          	addiw	a2,a6,1
quickjs-nuttx/quickjs.c:3711
    if (p->is_wide_char) {
    80007c8e:	0606d363          	bgez	a3,80007cf4 <string_getc+0x76>
quickjs-nuttx/quickjs.c:3712
        c = p->u.str16[idx++];
    80007c92:	00880693          	addi	a3,a6,8
    80007c96:	0686                	slli	a3,a3,0x1
    80007c98:	96aa                	add	a3,a3,a0
    80007c9a:	0006d883          	lhu	a7,0(a3) # ff0000 <asinh-0x7f010000>
quickjs-nuttx/quickjs.c:3713
        if (c >= 0xd800 && c < 0xdc00 && idx < p->len) {
    80007c9e:	76cd                	lui	a3,0xffff3
    80007ca0:	8006869b          	addiw	a3,a3,-2048
quickjs-nuttx/quickjs.c:3712
        c = p->u.str16[idx++];
    80007ca4:	0008851b          	sext.w	a0,a7
quickjs-nuttx/quickjs.c:3713
        if (c >= 0xd800 && c < 0xdc00 && idx < p->len) {
    80007ca8:	011686bb          	addw	a3,a3,a7
    80007cac:	3ff00893          	li	a7,1023
    80007cb0:	04d8e063          	bltu	a7,a3,80007cf0 <string_getc+0x72>
quickjs-nuttx/quickjs.c:3713 (discriminator 1)
    80007cb4:	1706                	slli	a4,a4,0x21
    80007cb6:	9305                	srli	a4,a4,0x21
    80007cb8:	02e65c63          	bge	a2,a4,80007cf0 <string_getc+0x72>
quickjs-nuttx/quickjs.c:3714
            c1 = p->u.str16[idx];
    80007cbc:	00860713          	addi	a4,a2,8
    80007cc0:	0706                	slli	a4,a4,0x1
    80007cc2:	97ba                	add	a5,a5,a4
    80007cc4:	0007d783          	lhu	a5,0(a5) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
quickjs-nuttx/quickjs.c:3715
            if (c1 >= 0xdc00 && c1 < 0xe000) {
    80007cc8:	7749                	lui	a4,0xffff2
    80007cca:	4007071b          	addiw	a4,a4,1024
    80007cce:	9f3d                	addw	a4,a4,a5
    80007cd0:	02e8e063          	bltu	a7,a4,80007cf0 <string_getc+0x72>
quickjs-nuttx/quickjs.c:3716
                c = (((c & 0x3ff) << 10) | (c1 & 0x3ff)) + 0x10000;
    80007cd4:	00100737          	lui	a4,0x100
    80007cd8:	00a5151b          	slliw	a0,a0,0xa
    80007cdc:	c0070713          	addi	a4,a4,-1024 # ffc00 <asinh-0x7ff00400>
    80007ce0:	3ff7f793          	andi	a5,a5,1023
    80007ce4:	8d79                	and	a0,a0,a4
    80007ce6:	8d5d                	or	a0,a0,a5
    80007ce8:	67c1                	lui	a5,0x10
    80007cea:	9d3d                	addw	a0,a0,a5
quickjs-nuttx/quickjs.c:3717
                idx++;
    80007cec:	0028061b          	addiw	a2,a6,2
quickjs-nuttx/quickjs.c:3723
            }
        }
    } else {
        c = p->u.str8[idx++];
    }
    *pidx = idx;
    80007cf0:	c190                	sw	a2,0(a1)
quickjs-nuttx/quickjs.c:3725
    return c;
}
    80007cf2:	8082                	ret
quickjs-nuttx/quickjs.c:3721
        c = p->u.str8[idx++];
    80007cf4:	010507b3          	add	a5,a0,a6
    80007cf8:	0107c503          	lbu	a0,16(a5) # 10010 <asinh-0x7ffefff0>
    80007cfc:	bfd5                	j	80007cf0 <string_getc+0x72>

0000000080007cfe <js_shape_hash_link>:
get_shape_hash():
quickjs-nuttx/quickjs.c:4291
}

/* truncate the shape hash to 'hash_bits' bits */
static uint32_t get_shape_hash(uint32_t h, int hash_bits)
{
    return h >> (32 - hash_bits);
    80007cfe:	17852703          	lw	a4,376(a0)
    80007d02:	02000793          	li	a5,32
    80007d06:	40e7873b          	subw	a4,a5,a4
    80007d0a:	4ddc                	lw	a5,28(a1)
    80007d0c:	00e7d7bb          	srlw	a5,a5,a4
js_shape_hash_link():
quickjs-nuttx/quickjs.c:4333

static void js_shape_hash_link(JSRuntime *rt, JSShape *sh)
{
    uint32_t h;
    h = get_shape_hash(sh->hash, rt->shape_hash_bits);
    sh->shape_hash_next = rt->shape_hash[h];
    80007d10:	02079713          	slli	a4,a5,0x20
    80007d14:	01d75793          	srli	a5,a4,0x1d
    80007d18:	18853703          	ld	a4,392(a0)
    80007d1c:	973e                	add	a4,a4,a5
    80007d1e:	6318                	ld	a4,0(a4)
    80007d20:	f998                	sd	a4,48(a1)
quickjs-nuttx/quickjs.c:4334
    rt->shape_hash[h] = sh;
    80007d22:	18853703          	ld	a4,392(a0)
    80007d26:	97ba                	add	a5,a5,a4
    80007d28:	e38c                	sd	a1,0(a5)
quickjs-nuttx/quickjs.c:4335
    rt->shape_hash_count++;
    80007d2a:	18052783          	lw	a5,384(a0)
    80007d2e:	2785                	addiw	a5,a5,1
    80007d30:	18f52023          	sw	a5,384(a0)
quickjs-nuttx/quickjs.c:4336
}
    80007d34:	8082                	ret

0000000080007d36 <js_shape_hash_unlink>:
get_shape_hash():
quickjs-nuttx/quickjs.c:4291
    return h >> (32 - hash_bits);
    80007d36:	17852783          	lw	a5,376(a0)
    80007d3a:	02000713          	li	a4,32
    80007d3e:	9f1d                	subw	a4,a4,a5
    80007d40:	4ddc                	lw	a5,28(a1)
    80007d42:	00e7d7bb          	srlw	a5,a5,a4
js_shape_hash_unlink():
quickjs-nuttx/quickjs.c:4344
{
    uint32_t h;
    JSShape **psh;

    h = get_shape_hash(sh->hash, rt->shape_hash_bits);
    psh = &rt->shape_hash[h];
    80007d46:	02079693          	slli	a3,a5,0x20
    80007d4a:	18853783          	ld	a5,392(a0)
    80007d4e:	01d6d713          	srli	a4,a3,0x1d
    80007d52:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:4345
    while (*psh != sh)
    80007d54:	6398                	ld	a4,0(a5)
    80007d56:	00b71a63          	bne	a4,a1,80007d6a <js_shape_hash_unlink+0x34>
quickjs-nuttx/quickjs.c:4347
        psh = &(*psh)->shape_hash_next;
    *psh = sh->shape_hash_next;
    80007d5a:	7998                	ld	a4,48(a1)
    80007d5c:	e398                	sd	a4,0(a5)
quickjs-nuttx/quickjs.c:4348
    rt->shape_hash_count--;
    80007d5e:	18052783          	lw	a5,384(a0)
    80007d62:	37fd                	addiw	a5,a5,-1
    80007d64:	18f52023          	sw	a5,384(a0)
quickjs-nuttx/quickjs.c:4349
}
    80007d68:	8082                	ret
quickjs-nuttx/quickjs.c:4346
        psh = &(*psh)->shape_hash_next;
    80007d6a:	03070793          	addi	a5,a4,48
    80007d6e:	b7dd                	j	80007d54 <js_shape_hash_unlink+0x1e>

0000000080007d70 <js_c_function_mark>:
js_c_function_mark():
quickjs-nuttx/quickjs.c:5306
        JS_FreeContext(p->u.cfunc.realm);
}

static void js_c_function_mark(JSRuntime *rt, JSValueConst val,
                               JS_MarkFunc *mark_func)
{
    80007d70:	1141                	addi	sp,sp,-16
    80007d72:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:5309
    JSObject *p = JS_VALUE_GET_OBJ(val);

    if (p->u.cfunc.realm)
    80007d74:	798c                	ld	a1,48(a1)
quickjs-nuttx/quickjs.c:5306
{
    80007d76:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:5309
    if (p->u.cfunc.realm)
    80007d78:	c199                	beqz	a1,80007d7e <js_c_function_mark+0xe>
quickjs-nuttx/quickjs.c:5311
        mark_func(rt, &p->u.cfunc.realm->header);
}
    80007d7a:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:5310
        mark_func(rt, &p->u.cfunc.realm->header);
    80007d7c:	8682                	jr	a3
quickjs-nuttx/quickjs.c:5311
}
    80007d7e:	0141                	addi	sp,sp,16
    80007d80:	8082                	ret

0000000080007d82 <gc_scan_incref_child2>:
gc_scan_incref_child2():
quickjs-nuttx/quickjs.c:5762
    }
}

static void gc_scan_incref_child2(JSRuntime *rt, JSGCObjectHeader *p)
{
    p->ref_count++;
    80007d82:	419c                	lw	a5,0(a1)
    80007d84:	2785                	addiw	a5,a5,1
    80007d86:	c19c                	sw	a5,0(a1)
quickjs-nuttx/quickjs.c:5763
}
    80007d88:	8082                	ret

0000000080007d8a <JS_GetPrototypePrimitive>:
JS_GetPrototypePrimitive():
quickjs-nuttx/quickjs.c:6914
    return JS_SetPrototypeInternal(ctx, obj, proto_val, TRUE);
}

/* Only works for primitive types, otherwise return JS_NULL. */
static JSValueConst JS_GetPrototypePrimitive(JSContext *ctx, JSValueConst val)
{
    80007d8a:	1101                	addi	sp,sp,-32
    80007d8c:	e432                	sd	a2,8(sp)
    80007d8e:	262d                	addiw	a2,a2,11
    80007d90:	e02e                	sd	a1,0(sp)
    80007d92:	0006071b          	sext.w	a4,a2
    80007d96:	47c9                	li	a5,18
    80007d98:	06e7e963          	bltu	a5,a4,80007e0a <JS_GetPrototypePrimitive+0x80>
    80007d9c:	02061793          	slli	a5,a2,0x20
    80007da0:	01e7d613          	srli	a2,a5,0x1e
    80007da4:	00061717          	auipc	a4,0x61
    80007da8:	7a470713          	addi	a4,a4,1956 # 80069548 <qjsc_repl+0x3f98>
    80007dac:	963a                	add	a2,a2,a4
    80007dae:	421c                	lw	a5,0(a2)
    80007db0:	97ba                	add	a5,a5,a4
    80007db2:	8782                	jr	a5
quickjs-nuttx/quickjs.c:6917
    switch(JS_VALUE_GET_NORM_TAG(val)) {
    case JS_TAG_BIG_INT:
        val = ctx->class_proto[JS_CLASS_BIG_INT];
    80007db4:	613c                	ld	a5,64(a0)
    80007db6:	2107b703          	ld	a4,528(a5)
    80007dba:	2187b583          	ld	a1,536(a5)
    80007dbe:	e03a                	sd	a4,0(sp)
quickjs-nuttx/quickjs.c:6948
    default:
        val = JS_NULL;
        break;
    }
    return val;
}
    80007dc0:	6502                	ld	a0,0(sp)
    80007dc2:	6105                	addi	sp,sp,32
    80007dc4:	8082                	ret
quickjs-nuttx/quickjs.c:6921
        val = ctx->class_proto[JS_CLASS_BIG_FLOAT];
    80007dc6:	613c                	ld	a5,64(a0)
    80007dc8:	2207b703          	ld	a4,544(a5)
    80007dcc:	2287b583          	ld	a1,552(a5)
    80007dd0:	e03a                	sd	a4,0(sp)
quickjs-nuttx/quickjs.c:6922
        break;
    80007dd2:	b7fd                	j	80007dc0 <JS_GetPrototypePrimitive+0x36>
quickjs-nuttx/quickjs.c:6924
        val = ctx->class_proto[JS_CLASS_BIG_DECIMAL];
    80007dd4:	613c                	ld	a5,64(a0)
    80007dd6:	2407b703          	ld	a4,576(a5)
    80007dda:	2487b583          	ld	a1,584(a5)
    80007dde:	e03a                	sd	a4,0(sp)
quickjs-nuttx/quickjs.c:6925
        break;
    80007de0:	b7c5                	j	80007dc0 <JS_GetPrototypePrimitive+0x36>
quickjs-nuttx/quickjs.c:6929
        val = ctx->class_proto[JS_CLASS_NUMBER];
    80007de2:	613c                	ld	a5,64(a0)
    80007de4:	63b8                	ld	a4,64(a5)
    80007de6:	67ac                	ld	a1,72(a5)
    80007de8:	e03a                	sd	a4,0(sp)
quickjs-nuttx/quickjs.c:6930
        break;
    80007dea:	bfd9                	j	80007dc0 <JS_GetPrototypePrimitive+0x36>
quickjs-nuttx/quickjs.c:6932
        val = ctx->class_proto[JS_CLASS_BOOLEAN];
    80007dec:	613c                	ld	a5,64(a0)
    80007dee:	73b8                	ld	a4,96(a5)
    80007df0:	77ac                	ld	a1,104(a5)
    80007df2:	e03a                	sd	a4,0(sp)
quickjs-nuttx/quickjs.c:6933
        break;
    80007df4:	b7f1                	j	80007dc0 <JS_GetPrototypePrimitive+0x36>
quickjs-nuttx/quickjs.c:6935
        val = ctx->class_proto[JS_CLASS_STRING];
    80007df6:	613c                	ld	a5,64(a0)
    80007df8:	6bb8                	ld	a4,80(a5)
    80007dfa:	6fac                	ld	a1,88(a5)
    80007dfc:	e03a                	sd	a4,0(sp)
quickjs-nuttx/quickjs.c:6936
        break;
    80007dfe:	b7c9                	j	80007dc0 <JS_GetPrototypePrimitive+0x36>
quickjs-nuttx/quickjs.c:6938
        val = ctx->class_proto[JS_CLASS_SYMBOL];
    80007e00:	613c                	ld	a5,64(a0)
    80007e02:	7bb8                	ld	a4,112(a5)
    80007e04:	7fac                	ld	a1,120(a5)
    80007e06:	e03a                	sd	a4,0(sp)
quickjs-nuttx/quickjs.c:6939
        break;
    80007e08:	bf65                	j	80007dc0 <JS_GetPrototypePrimitive+0x36>
quickjs-nuttx/quickjs.c:6944
        val = JS_NULL;
    80007e0a:	e002                	sd	zero,0(sp)
    80007e0c:	4589                	li	a1,2
quickjs-nuttx/quickjs.c:6945
        break;
    80007e0e:	bf4d                	j	80007dc0 <JS_GetPrototypePrimitive+0x36>

0000000080007e10 <to_digit>:
to_digit():
quickjs-nuttx/quickjs.c:10027
    return p - p_start;
}

static inline int to_digit(int c)
{
    if (c >= '0' && c <= '9')
    80007e10:	fd05061b          	addiw	a2,a0,-48
    80007e14:	46a5                	li	a3,9
quickjs-nuttx/quickjs.c:10026
{
    80007e16:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:10027
    if (c >= '0' && c <= '9')
    80007e18:	0005071b          	sext.w	a4,a0
    80007e1c:	00c6e463          	bltu	a3,a2,80007e24 <to_digit+0x14>
quickjs-nuttx/quickjs.c:10028
        return c - '0';
    80007e20:	8532                	mv	a0,a2
    80007e22:	8082                	ret
quickjs-nuttx/quickjs.c:10029
    else if (c >= 'A' && c <= 'Z')
    80007e24:	fbf7069b          	addiw	a3,a4,-65
    80007e28:	4665                	li	a2,25
    80007e2a:	00d66563          	bltu	a2,a3,80007e34 <to_digit+0x24>
quickjs-nuttx/quickjs.c:10030
        return c - 'A' + 10;
    80007e2e:	fc95051b          	addiw	a0,a0,-55
    80007e32:	8082                	ret
quickjs-nuttx/quickjs.c:10031
    else if (c >= 'a' && c <= 'z')
    80007e34:	f9f7071b          	addiw	a4,a4,-97
quickjs-nuttx/quickjs.c:10034
        return c - 'a' + 10;
    else
        return 36;
    80007e38:	02400513          	li	a0,36
quickjs-nuttx/quickjs.c:10031
    else if (c >= 'a' && c <= 'z')
    80007e3c:	00e66463          	bltu	a2,a4,80007e44 <to_digit+0x34>
quickjs-nuttx/quickjs.c:10032
        return c - 'a' + 10;
    80007e40:	fa97851b          	addiw	a0,a5,-87
quickjs-nuttx/quickjs.c:10035
}
    80007e44:	8082                	ret

0000000080007e46 <js_generator_mark>:
js_generator_mark():
quickjs-nuttx/quickjs.c:18919

static void js_generator_mark(JSRuntime *rt, JSValueConst val,
                              JS_MarkFunc *mark_func)
{
    JSObject *p = JS_VALUE_GET_OBJ(val);
    JSGeneratorData *s = p->u.generator_data;
    80007e46:	799c                	ld	a5,48(a1)
quickjs-nuttx/quickjs.c:18917
{
    80007e48:	1141                	addi	sp,sp,-16
    80007e4a:	e02e                	sd	a1,0(sp)
    80007e4c:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:18921

    if (!s || !s->func_state)
    80007e4e:	c789                	beqz	a5,80007e58 <js_generator_mark+0x12>
quickjs-nuttx/quickjs.c:18921 (discriminator 1)
    80007e50:	678c                	ld	a1,8(a5)
    80007e52:	c199                	beqz	a1,80007e58 <js_generator_mark+0x12>
quickjs-nuttx/quickjs.c:18924
        return;
    mark_func(rt, &s->func_state->header);
}
    80007e54:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:18923
    mark_func(rt, &s->func_state->header);
    80007e56:	8682                	jr	a3
quickjs-nuttx/quickjs.c:18924
}
    80007e58:	0141                	addi	sp,sp,16
    80007e5a:	8082                	ret

0000000080007e5c <js_async_function_resolve_mark>:
js_async_function_resolve_mark():
quickjs-nuttx/quickjs.c:19060
    }
}

static void js_async_function_resolve_mark(JSRuntime *rt, JSValueConst val,
                                           JS_MarkFunc *mark_func)
{
    80007e5c:	1141                	addi	sp,sp,-16
    80007e5e:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:19062
    JSObject *p = JS_VALUE_GET_OBJ(val);
    JSAsyncFunctionState *s = p->u.async_function_data;
    80007e60:	798c                	ld	a1,48(a1)
quickjs-nuttx/quickjs.c:19060
{
    80007e62:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:19063
    if (s) {
    80007e64:	c199                	beqz	a1,80007e6a <js_async_function_resolve_mark+0xe>
quickjs-nuttx/quickjs.c:19066
        mark_func(rt, &s->header);
    }
}
    80007e66:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:19064
        mark_func(rt, &s->header);
    80007e68:	8682                	jr	a3
quickjs-nuttx/quickjs.c:19066
}
    80007e6a:	0141                	addi	sp,sp,16
    80007e6c:	8082                	ret

0000000080007e6e <token_is_pseudo_keyword>:
token_is_pseudo_keyword():
quickjs-nuttx/quickjs.c:20349
    string_buffer_free(b);
    return -1;
}

static inline BOOL token_is_pseudo_keyword(JSParseState *s, JSAtom atom) {
    return s->token.val == TOK_IDENT && s->token.u.ident.atom == atom &&
    80007e6e:	4d14                	lw	a3,24(a0)
    80007e70:	f8300713          	li	a4,-125
quickjs-nuttx/quickjs.c:20348
static inline BOOL token_is_pseudo_keyword(JSParseState *s, JSAtom atom) {
    80007e74:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:20349
    return s->token.val == TOK_IDENT && s->token.u.ident.atom == atom &&
    80007e76:	4501                	li	a0,0
    80007e78:	00e69a63          	bne	a3,a4,80007e8c <token_is_pseudo_keyword+0x1e>
quickjs-nuttx/quickjs.c:20349 (discriminator 1)
    80007e7c:	5798                	lw	a4,40(a5)
    80007e7e:	4501                	li	a0,0
    80007e80:	00b71663          	bne	a4,a1,80007e8c <token_is_pseudo_keyword+0x1e>
quickjs-nuttx/quickjs.c:20349 (discriminator 3)
    80007e84:	57c8                	lw	a0,44(a5)
    80007e86:	00153513          	seqz	a0,a0
    80007e8a:	8082                	ret
quickjs-nuttx/quickjs.c:20351 (discriminator 8)
        !s->token.u.ident.has_escape;
}
    80007e8c:	8082                	ret

0000000080007e8e <update_token_ident>:
update_token_ident():
quickjs-nuttx/quickjs.c:20481
}

/* convert a TOK_IDENT to a keyword when needed */
static void update_token_ident(JSParseState *s)
{
    if (s->token.u.ident.atom <= JS_ATOM_LAST_KEYWORD ||
    80007e8e:	551c                	lw	a5,40(a0)
    80007e90:	02400713          	li	a4,36
    80007e94:	08f77063          	bgeu	a4,a5,80007f14 <update_token_ident+0x86>
quickjs-nuttx/quickjs.c:20481 (discriminator 1)
    80007e98:	02d00613          	li	a2,45
    80007e9c:	02f66c63          	bltu	a2,a5,80007ed4 <update_token_ident+0x46>
quickjs-nuttx/quickjs.c:20483
        (s->token.u.ident.atom <= JS_ATOM_LAST_STRICT_KEYWORD &&
         (s->cur_func->js_mode & JS_MODE_STRICT)) ||
    80007ea0:	7538                	ld	a4,104(a0)
quickjs-nuttx/quickjs.c:20482
        (s->token.u.ident.atom <= JS_ATOM_LAST_STRICT_KEYWORD &&
    80007ea2:	08674683          	lbu	a3,134(a4)
    80007ea6:	8a85                	andi	a3,a3,1
    80007ea8:	e6b5                	bnez	a3,80007f14 <update_token_ident+0x86>
quickjs-nuttx/quickjs.c:20483
         (s->cur_func->js_mode & JS_MODE_STRICT)) ||
    80007eaa:	00c78363          	beq	a5,a2,80007eb0 <update_token_ident+0x22>
quickjs-nuttx/quickjs.c:20505
        } else {
            /* The keywords atoms are pre allocated */
            s->token.val = s->token.u.ident.atom - 1 + TOK_FIRST_KEYWORD;
        }
    }
}
    80007eae:	8082                	ret
quickjs-nuttx/quickjs.c:20484
        (s->token.u.ident.atom == JS_ATOM_yield &&
    80007eb0:	08474683          	lbu	a3,132(a4)
    80007eb4:	8a85                	andi	a3,a3,1
    80007eb6:	eeb9                	bnez	a3,80007f14 <update_token_ident+0x86>
quickjs-nuttx/quickjs.c:20485
         ((s->cur_func->func_kind & JS_FUNC_GENERATOR) ||
    80007eb8:	08574603          	lbu	a2,133(a4)
    80007ebc:	468d                	li	a3,3
    80007ebe:	fed618e3          	bne	a2,a3,80007eae <update_token_ident+0x20>
quickjs-nuttx/quickjs.c:20486
          (s->cur_func->func_type == JS_PARSE_FUNC_ARROW &&
    80007ec2:	5f74                	lw	a3,124(a4)
    80007ec4:	f6ed                	bnez	a3,80007eae <update_token_ident+0x20>
quickjs-nuttx/quickjs.c:20487
           !s->cur_func->in_function_body && s->cur_func->parent &&
    80007ec6:	6718                	ld	a4,8(a4)
    80007ec8:	d37d                	beqz	a4,80007eae <update_token_ident+0x20>
quickjs-nuttx/quickjs.c:20487 (discriminator 1)
    80007eca:	08474703          	lbu	a4,132(a4)
    80007ece:	8b05                	andi	a4,a4,1
    80007ed0:	e331                	bnez	a4,80007f14 <update_token_ident+0x86>
    80007ed2:	8082                	ret
quickjs-nuttx/quickjs.c:20488
           (s->cur_func->parent->func_kind & JS_FUNC_GENERATOR)))) ||
    80007ed4:	02e00713          	li	a4,46
    80007ed8:	fce79be3          	bne	a5,a4,80007eae <update_token_ident+0x20>
quickjs-nuttx/quickjs.c:20489
        (s->token.u.ident.atom == JS_ATOM_await &&
    80007edc:	5938                	lw	a4,112(a0)
    80007ede:	eb1d                	bnez	a4,80007f14 <update_token_ident+0x86>
quickjs-nuttx/quickjs.c:20491
          (s->cur_func->func_kind & JS_FUNC_ASYNC) ||
    80007ee0:	7538                	ld	a4,104(a0)
quickjs-nuttx/quickjs.c:20490
         (s->is_module ||
    80007ee2:	08474683          	lbu	a3,132(a4)
    80007ee6:	8a89                	andi	a3,a3,2
    80007ee8:	e695                	bnez	a3,80007f14 <update_token_ident+0x86>
quickjs-nuttx/quickjs.c:20492
          s->cur_func->func_type == JS_PARSE_FUNC_CLASS_STATIC_INIT ||
    80007eea:	08574683          	lbu	a3,133(a4)
quickjs-nuttx/quickjs.c:20491
          (s->cur_func->func_kind & JS_FUNC_ASYNC) ||
    80007eee:	461d                	li	a2,7
    80007ef0:	02c68263          	beq	a3,a2,80007f14 <update_token_ident+0x86>
quickjs-nuttx/quickjs.c:20492
          s->cur_func->func_type == JS_PARSE_FUNC_CLASS_STATIC_INIT ||
    80007ef4:	460d                	li	a2,3
    80007ef6:	fac69ce3          	bne	a3,a2,80007eae <update_token_ident+0x20>
quickjs-nuttx/quickjs.c:20493
          (s->cur_func->func_type == JS_PARSE_FUNC_ARROW &&
    80007efa:	5f74                	lw	a3,124(a4)
    80007efc:	facd                	bnez	a3,80007eae <update_token_ident+0x20>
quickjs-nuttx/quickjs.c:20494
           !s->cur_func->in_function_body && s->cur_func->parent &&
    80007efe:	6718                	ld	a4,8(a4)
    80007f00:	d75d                	beqz	a4,80007eae <update_token_ident+0x20>
quickjs-nuttx/quickjs.c:20494 (discriminator 1)
    80007f02:	08474683          	lbu	a3,132(a4)
    80007f06:	8a89                	andi	a3,a3,2
    80007f08:	e691                	bnez	a3,80007f14 <update_token_ident+0x86>
quickjs-nuttx/quickjs.c:20495
           ((s->cur_func->parent->func_kind & JS_FUNC_ASYNC) ||
    80007f0a:	08574683          	lbu	a3,133(a4)
    80007f0e:	471d                	li	a4,7
    80007f10:	f8e69fe3          	bne	a3,a4,80007eae <update_token_ident+0x20>
quickjs-nuttx/quickjs.c:20497
        if (s->token.u.ident.has_escape) {
    80007f14:	5558                	lw	a4,44(a0)
quickjs-nuttx/quickjs.c:20502
            s->token.val = s->token.u.ident.atom - 1 + TOK_FIRST_KEYWORD;
    80007f16:	fac7879b          	addiw	a5,a5,-84
quickjs-nuttx/quickjs.c:20497
        if (s->token.u.ident.has_escape) {
    80007f1a:	c709                	beqz	a4,80007f24 <update_token_ident+0x96>
quickjs-nuttx/quickjs.c:20498
            s->token.u.ident.is_reserved = TRUE;
    80007f1c:	4785                	li	a5,1
    80007f1e:	d91c                	sw	a5,48(a0)
quickjs-nuttx/quickjs.c:20499
            s->token.val = TOK_IDENT;
    80007f20:	f8300793          	li	a5,-125
quickjs-nuttx/quickjs.c:20502
            s->token.val = s->token.u.ident.atom - 1 + TOK_FIRST_KEYWORD;
    80007f24:	cd1c                	sw	a5,24(a0)
quickjs-nuttx/quickjs.c:20505
}
    80007f26:	8082                	ret

0000000080007f28 <get_prev_opcode>:
get_prev_opcode():
quickjs-nuttx/quickjs.c:21423
        return FALSE;
    }
}

static inline int get_prev_opcode(JSFunctionDef *fd) {
    if (fd->last_opcode_pos < 0)
    80007f28:	16052703          	lw	a4,352(a0)
    80007f2c:	00074863          	bltz	a4,80007f3c <get_prev_opcode+0x14>
quickjs-nuttx/quickjs.c:21426
        return OP_invalid;
    else
        return fd->byte_code.buf[fd->last_opcode_pos];
    80007f30:	13053783          	ld	a5,304(a0)
    80007f34:	97ba                	add	a5,a5,a4
    80007f36:	0007c503          	lbu	a0,0(a5)
    80007f3a:	8082                	ret
quickjs-nuttx/quickjs.c:21424
        return OP_invalid;
    80007f3c:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:21427
}
    80007f3e:	8082                	ret

0000000080007f40 <js_is_live_code>:
js_is_live_code():
quickjs-nuttx/quickjs.c:21429

static BOOL js_is_live_code(JSParseState *s) {
    80007f40:	1141                	addi	sp,sp,-16
    80007f42:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs.c:21430
    switch (get_prev_opcode(s->cur_func)) {
    80007f44:	7528                	ld	a0,104(a0)
    80007f46:	fe3ff0ef          	jal	ra,80007f28 <get_prev_opcode>
    80007f4a:	03000713          	li	a4,48
    80007f4e:	87aa                	mv	a5,a0
    80007f50:	02a74263          	blt	a4,a0,80007f74 <js_is_live_code+0x34>
    80007f54:	02200713          	li	a4,34
    80007f58:	4505                	li	a0,1
    80007f5a:	00f75a63          	bge	a4,a5,80007f6e <js_is_live_code+0x2e>
quickjs-nuttx/quickjs.c:21444
#if SHORT_OPCODES
    case OP_goto8:
    case OP_goto16:
#endif
    case OP_ret:
        return FALSE;
    80007f5e:	00f517b3          	sll	a5,a0,a5
    80007f62:	03865537          	lui	a0,0x3865
    80007f66:	055e                	slli	a0,a0,0x17
    80007f68:	8fe9                	and	a5,a5,a0
    80007f6a:	0017b513          	seqz	a0,a5
quickjs-nuttx/quickjs.c:21448
    default:
        return TRUE;
    }
}
    80007f6e:	60a2                	ld	ra,8(sp)
    80007f70:	0141                	addi	sp,sp,16
    80007f72:	8082                	ret
quickjs-nuttx/quickjs.c:21430
    switch (get_prev_opcode(s->cur_func)) {
    80007f74:	06f00713          	li	a4,111
quickjs-nuttx/quickjs.c:21444
        return FALSE;
    80007f78:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:21430
    switch (get_prev_opcode(s->cur_func)) {
    80007f7a:	fee78ae3          	beq	a5,a4,80007f6e <js_is_live_code+0x2e>
    80007f7e:	00f74763          	blt	a4,a5,80007f8c <js_is_live_code+0x4c>
    80007f82:	f9478793          	addi	a5,a5,-108
quickjs-nuttx/quickjs.c:21444
        return FALSE;
    80007f86:	00f03533          	snez	a0,a5
    80007f8a:	b7d5                	j	80007f6e <js_is_live_code+0x2e>
quickjs-nuttx/quickjs.c:21430
    switch (get_prev_opcode(s->cur_func)) {
    80007f8c:	f127879b          	addiw	a5,a5,-238
quickjs-nuttx/quickjs.c:21444
        return FALSE;
    80007f90:	4505                	li	a0,1
    80007f92:	00f53533          	sltu	a0,a0,a5
    80007f96:	bfe1                	j	80007f6e <js_is_live_code+0x2e>

0000000080007f98 <find_global_var>:
find_global_var():
quickjs-nuttx/quickjs.c:21665


static JSGlobalVar *find_global_var(JSFunctionDef *fd, JSAtom name)
{
    int i;
    for(i = 0; i < fd->global_var_count; i++) {
    80007f98:	11c52603          	lw	a2,284(a0) # 386511c <asinh-0x7c79aee4>
quickjs-nuttx/quickjs.c:21663
{
    80007f9c:	86aa                	mv	a3,a0
quickjs-nuttx/quickjs.c:21665
    for(i = 0; i < fd->global_var_count; i++) {
    80007f9e:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:21665 (discriminator 1)
    80007fa0:	0007079b          	sext.w	a5,a4
    80007fa4:	00c7c463          	blt	a5,a2,80007fac <find_global_var+0x14>
quickjs-nuttx/quickjs.c:21670
        JSGlobalVar *hf = &fd->global_vars[i];
        if (hf->var_name == name)
            return hf;
    }
    return NULL;
    80007fa8:	4501                	li	a0,0
    80007faa:	a811                	j	80007fbe <find_global_var+0x26>
quickjs-nuttx/quickjs.c:21666
        JSGlobalVar *hf = &fd->global_vars[i];
    80007fac:	1286b783          	ld	a5,296(a3) # ffffffffffff3128 <_ebss+0xffffffff7fef1fc2>
    80007fb0:	00471513          	slli	a0,a4,0x4
quickjs-nuttx/quickjs.c:21667
        if (hf->var_name == name)
    80007fb4:	0705                	addi	a4,a4,1
quickjs-nuttx/quickjs.c:21666
        JSGlobalVar *hf = &fd->global_vars[i];
    80007fb6:	953e                	add	a0,a0,a5
quickjs-nuttx/quickjs.c:21667
        if (hf->var_name == name)
    80007fb8:	455c                	lw	a5,12(a0)
    80007fba:	feb793e3          	bne	a5,a1,80007fa0 <find_global_var+0x8>
quickjs-nuttx/quickjs.c:21672

}
    80007fbe:	8082                	ret

0000000080007fc0 <token_is_ident>:
token_is_ident():
quickjs-nuttx/quickjs.c:22214
#define PROP_TYPE_PRIVATE (1 << 4)

static BOOL token_is_ident(int tok)
{
    /* Accept keywords and reserved words as property names */
    return (tok == TOK_IDENT ||
    80007fc0:	f8300793          	li	a5,-125
    80007fc4:	00f50763          	beq	a0,a5,80007fd2 <token_is_ident+0x12>
quickjs-nuttx/quickjs.c:22214 (discriminator 2)
    80007fc8:	0535051b          	addiw	a0,a0,83
    80007fcc:	02e53513          	sltiu	a0,a0,46
    80007fd0:	8082                	ret
quickjs-nuttx/quickjs.c:22214
    80007fd2:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:22217
            (tok >= TOK_FIRST_KEYWORD &&
             tok <= TOK_LAST_KEYWORD));
}
    80007fd4:	8082                	ret

0000000080007fd6 <exec_module_list_cmp>:
exec_module_list_cmp():
quickjs-nuttx/quickjs.c:28612

static int exec_module_list_cmp(const void *p1, const void *p2, void *opaque)
{
    JSModuleDef *m1 = *(JSModuleDef **)p1;
    JSModuleDef *m2 = *(JSModuleDef **)p2;
    return (m1->async_evaluation_timestamp > m2->async_evaluation_timestamp) -
    80007fd6:	611c                	ld	a5,0(a0)
    80007fd8:	6198                	ld	a4,0(a1)
    80007fda:	7bdc                	ld	a5,176(a5)
    80007fdc:	7b58                	ld	a4,176(a4)
    80007fde:	00f72533          	slt	a0,a4,a5
quickjs-nuttx/quickjs.c:28613
        (m1->async_evaluation_timestamp < m2->async_evaluation_timestamp);
    80007fe2:	00e7a7b3          	slt	a5,a5,a4
quickjs-nuttx/quickjs.c:28614
}
    80007fe6:	9d1d                	subw	a0,a0,a5
    80007fe8:	8082                	ret

0000000080007fea <can_opt_put_global_ref_value>:
can_opt_put_ref_value():
quickjs-nuttx/quickjs.c:29969
        return OP_with_get_var + (op - OP_scope_get_var);
}

static BOOL can_opt_put_ref_value(const uint8_t *bc_buf, int pos)
{
    int opcode = bc_buf[pos];
    80007fea:	00b507b3          	add	a5,a0,a1
quickjs-nuttx/quickjs.c:29970
    return (bc_buf[pos + 1] == OP_put_ref_value &&
    80007fee:	2585                	addiw	a1,a1,1
    80007ff0:	952e                	add	a0,a0,a1
    80007ff2:	00054683          	lbu	a3,0(a0)
    80007ff6:	03d00713          	li	a4,61
quickjs-nuttx/quickjs.c:29969
    int opcode = bc_buf[pos];
    80007ffa:	0007c783          	lbu	a5,0(a5)
quickjs-nuttx/quickjs.c:29970
    return (bc_buf[pos + 1] == OP_put_ref_value &&
    80007ffe:	4501                	li	a0,0
