    80021002:	b761                	j	80020f8a <JS_ToQuotedString+0xea>
quickjs-nuttx/quickjs.c:11696
        switch(c) {
    80021004:	07400b93          	li	s7,116
    80021008:	b749                	j	80020f8a <JS_ToQuotedString+0xea>
    8002100a:	02200b93          	li	s7,34
    8002100e:	bfb5                	j	80020f8a <JS_ToQuotedString+0xea>
quickjs-nuttx/quickjs.c:11726
                if (string_buffer_putc(b, c))
    80021010:	85b6                	mv	a1,a3
    80021012:	0888                	addi	a0,sp,80
    80021014:	d5dfd0ef          	jal	ra,8001ed70 <string_buffer_putc>
    80021018:	b759                	j	80020f9e <JS_ToQuotedString+0xfe>

000000008002101a <JS_ToQuotedStringFree>:
JS_ToQuotedStringFree():
quickjs-nuttx/quickjs.c:45118
static JSValue JS_ToQuotedStringFree(JSContext *ctx, JSValue val) {
    8002101a:	7139                	addi	sp,sp,-64
    8002101c:	fc06                	sd	ra,56(sp)
    8002101e:	f822                	sd	s0,48(sp)
    80021020:	e432                	sd	a2,8(sp)
    80021022:	842a                	mv	s0,a0
    80021024:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:45119
    JSValue r = JS_ToQuotedString(ctx, val);
    80021026:	e7bff0ef          	jal	ra,80020ea0 <JS_ToQuotedString>
    8002102a:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:45120
    JS_FreeValue(ctx, val);
    8002102c:	6622                	ld	a2,8(sp)
    8002102e:	6582                	ld	a1,0(sp)
quickjs-nuttx/quickjs.c:45119
    JSValue r = JS_ToQuotedString(ctx, val);
    80021030:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:45120
    JS_FreeValue(ctx, val);
    80021032:	8522                	mv	a0,s0
    80021034:	f6aea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45122
}
    80021038:	70e2                	ld	ra,56(sp)
    8002103a:	7442                	ld	s0,48(sp)
    8002103c:	6542                	ld	a0,16(sp)
    8002103e:	65e2                	ld	a1,24(sp)
    80021040:	6121                	addi	sp,sp,64
    80021042:	8082                	ret

0000000080021044 <js_string___quote>:
js_string___quote():
quickjs-nuttx/quickjs.c:42390
{
    80021044:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:42392
}
    80021046:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:42391
    return JS_ToQuotedString(ctx, this_val);
    80021048:	e59ff06f          	j	80020ea0 <JS_ToQuotedString>

000000008002104c <js_string_CreateHTML>:
js_string_CreateHTML():
quickjs-nuttx/quickjs.c:42785
{
    8002104c:	7135                	addi	sp,sp,-160
    8002104e:	e922                	sd	s0,144(sp)
    80021050:	e526                	sd	s1,136(sp)
    80021052:	e14a                	sd	s2,128(sp)
    80021054:	f8d2                	sd	s4,112(sp)
    80021056:	ed06                	sd	ra,152(sp)
    80021058:	fcce                	sd	s3,120(sp)
    8002105a:	f4d6                	sd	s5,104(sp)
    8002105c:	f0da                	sd	s6,96(sp)
    8002105e:	84aa                	mv	s1,a0
    80021060:	e02e                	sd	a1,0(sp)
    80021062:	e432                	sd	a2,8(sp)
    80021064:	893a                	mv	s2,a4
    80021066:	843e                	mv	s0,a5
quickjs-nuttx/quickjs.c:42796
    str = JS_ToStringCheckObject(ctx, this_val);
    80021068:	e19ff0ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    8002106c:	ec2e                	sd	a1,24(sp)
    8002106e:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:42797
    if (JS_IsException(str))
    80021070:	2581                	sext.w	a1,a1
    80021072:	4a19                	li	s4,6
    80021074:	01459563          	bne	a1,s4,8002107e <js_string_CreateHTML+0x32>
quickjs-nuttx/quickjs.c:42798
        return JS_EXCEPTION;
    80021078:	f802                	sd	zero,48(sp)
quickjs-nuttx/quickjs.c:42834
    return string_buffer_end(b);
    8002107a:	fc2e                	sd	a1,56(sp)
    8002107c:	a8d5                	j	80021170 <js_string_CreateHTML+0x124>
quickjs-nuttx/quickjs.c:42799
    string_buffer_init(ctx, b, 7);
    8002107e:	461d                	li	a2,7
    80021080:	008c                	addi	a1,sp,64
    80021082:	8526                	mv	a0,s1
    80021084:	ef9fc0ef          	jal	ra,8001df7c <string_buffer_init>
quickjs-nuttx/quickjs.c:42800
    string_buffer_putc8(b, '<');
    80021088:	03c00593          	li	a1,60
    8002108c:	0088                	addi	a0,sp,64
    8002108e:	bd3fd0ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:42801
    string_buffer_puts8(b, defs[magic].tag);
    80021092:	0004e797          	auipc	a5,0x4e
    80021096:	cce78793          	addi	a5,a5,-818 # 8006ed60 <defs.1>
    8002109a:	0412                	slli	s0,s0,0x4
    8002109c:	943e                	add	s0,s0,a5
    8002109e:	00043a83          	ld	s5,0(s0)
    800210a2:	0088                	addi	a0,sp,64
    800210a4:	85d6                	mv	a1,s5
    800210a6:	b21fd0ef          	jal	ra,8001ebc6 <string_buffer_puts8>
quickjs-nuttx/quickjs.c:42802
    if (defs[magic].attr) {
    800210aa:	6400                	ld	s0,8(s0)
    800210ac:	c82d                	beqz	s0,8002111e <js_string_CreateHTML+0xd2>
quickjs-nuttx/quickjs.c:42807
        string_buffer_putc8(b, ' ');
    800210ae:	02000593          	li	a1,32
    800210b2:	0088                	addi	a0,sp,64
    800210b4:	badfd0ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:42808
        string_buffer_puts8(b, defs[magic].attr);
    800210b8:	85a2                	mv	a1,s0
    800210ba:	0088                	addi	a0,sp,64
    800210bc:	b0bfd0ef          	jal	ra,8001ebc6 <string_buffer_puts8>
quickjs-nuttx/quickjs.c:42809
        string_buffer_puts8(b, "=\"");
    800210c0:	0004a597          	auipc	a1,0x4a
    800210c4:	9d058593          	addi	a1,a1,-1584 # 8006aa90 <qjsc_repl+0x54e0>
    800210c8:	0088                	addi	a0,sp,64
    800210ca:	afdfd0ef          	jal	ra,8001ebc6 <string_buffer_puts8>
quickjs-nuttx/quickjs.c:42810
        value = JS_ToStringCheckObject(ctx, argv[0]);
    800210ce:	00093583          	ld	a1,0(s2) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
    800210d2:	00893603          	ld	a2,8(s2)
    800210d6:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:42817
        for (i = 0; i < p->len; i++) {
    800210d8:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:42810
        value = JS_ToStringCheckObject(ctx, argv[0]);
    800210da:	da7ff0ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    800210de:	f02a                	sd	a0,32(sp)
    800210e0:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:42811
        if (JS_IsException(value)) {
    800210e2:	0005841b          	sext.w	s0,a1
quickjs-nuttx/quickjs.c:42810
        value = JS_ToStringCheckObject(ctx, argv[0]);
    800210e6:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:42811
        if (JS_IsException(value)) {
    800210e8:	07440a63          	beq	s0,s4,8002115c <js_string_CreateHTML+0x110>
quickjs-nuttx/quickjs.c:42817
        for (i = 0; i < p->len; i++) {
    800210ec:	80000437          	lui	s0,0x80000
    800210f0:	fff44413          	not	s0,s0
quickjs-nuttx/quickjs.c:42819
            if (c == '"') {
    800210f4:	02200a13          	li	s4,34
quickjs-nuttx/quickjs.c:42820
                string_buffer_puts8(b, "&quot;");
    800210f8:	0004ab17          	auipc	s6,0x4a
    800210fc:	9a0b0b13          	addi	s6,s6,-1632 # 8006aa98 <qjsc_repl+0x54e8>
quickjs-nuttx/quickjs.c:42817 (discriminator 1)
        for (i = 0; i < p->len; i++) {
    80021100:	00492783          	lw	a5,4(s2)
    80021104:	8fe1                	and	a5,a5,s0
    80021106:	08f9c163          	blt	s3,a5,80021188 <js_string_CreateHTML+0x13c>
quickjs-nuttx/quickjs.c:42825
        JS_FreeValue(ctx, value);
    8002110a:	7582                	ld	a1,32(sp)
    8002110c:	7622                	ld	a2,40(sp)
    8002110e:	8526                	mv	a0,s1
    80021110:	e8eea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42826
        string_buffer_putc8(b, '\"');
    80021114:	02200593          	li	a1,34
    80021118:	0088                	addi	a0,sp,64
    8002111a:	b47fd0ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:42829
    string_buffer_putc8(b, '>');
    8002111e:	03e00593          	li	a1,62
    80021122:	0088                	addi	a0,sp,64
    80021124:	b3dfd0ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:42830
    string_buffer_concat_value_free(b, str);
    80021128:	6662                	ld	a2,24(sp)
    8002112a:	65c2                	ld	a1,16(sp)
    8002112c:	0088                	addi	a0,sp,64
    8002112e:	b55ff0ef          	jal	ra,80020c82 <string_buffer_concat_value_free>
quickjs-nuttx/quickjs.c:42831
    string_buffer_puts8(b, "</");
    80021132:	0004a597          	auipc	a1,0x4a
    80021136:	96e58593          	addi	a1,a1,-1682 # 8006aaa0 <qjsc_repl+0x54f0>
    8002113a:	0088                	addi	a0,sp,64
    8002113c:	a8bfd0ef          	jal	ra,8001ebc6 <string_buffer_puts8>
quickjs-nuttx/quickjs.c:42832
    string_buffer_puts8(b, defs[magic].tag);
    80021140:	85d6                	mv	a1,s5
    80021142:	0088                	addi	a0,sp,64
    80021144:	a83fd0ef          	jal	ra,8001ebc6 <string_buffer_puts8>
quickjs-nuttx/quickjs.c:42833
    string_buffer_putc8(b, '>');
    80021148:	03e00593          	li	a1,62
    8002114c:	0088                	addi	a0,sp,64
    8002114e:	b13fd0ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:42834
    return string_buffer_end(b);
    80021152:	0088                	addi	a0,sp,64
    80021154:	b4dfe0ef          	jal	ra,8001fca0 <string_buffer_end>
    80021158:	f82a                	sd	a0,48(sp)
    8002115a:	b705                	j	8002107a <js_string_CreateHTML+0x2e>
quickjs-nuttx/quickjs.c:42812
            JS_FreeValue(ctx, str);
    8002115c:	65c2                	ld	a1,16(sp)
    8002115e:	6662                	ld	a2,24(sp)
    80021160:	8526                	mv	a0,s1
    80021162:	e3cea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42813
            string_buffer_free(b);
    80021166:	0088                	addi	a0,sp,64
    80021168:	ebbe90ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:42814
            return JS_EXCEPTION;
    8002116c:	f802                	sd	zero,48(sp)
    8002116e:	fc22                	sd	s0,56(sp)
quickjs-nuttx/quickjs.c:42835 (discriminator 3)
}
    80021170:	60ea                	ld	ra,152(sp)
    80021172:	644a                	ld	s0,144(sp)
    80021174:	7542                	ld	a0,48(sp)
    80021176:	75e2                	ld	a1,56(sp)
    80021178:	64aa                	ld	s1,136(sp)
    8002117a:	690a                	ld	s2,128(sp)
    8002117c:	79e6                	ld	s3,120(sp)
    8002117e:	7a46                	ld	s4,112(sp)
    80021180:	7aa6                	ld	s5,104(sp)
    80021182:	7b06                	ld	s6,96(sp)
    80021184:	610d                	addi	sp,sp,160
    80021186:	8082                	ret
quickjs-nuttx/quickjs.c:42818
            int c = string_get(p, i);
    80021188:	85ce                	mv	a1,s3
    8002118a:	854a                	mv	a0,s2
    8002118c:	ad9e60ef          	jal	ra,80007c64 <string_get>
quickjs-nuttx/quickjs.c:42819
            if (c == '"') {
    80021190:	01451863          	bne	a0,s4,800211a0 <js_string_CreateHTML+0x154>
quickjs-nuttx/quickjs.c:42820
                string_buffer_puts8(b, "&quot;");
    80021194:	85da                	mv	a1,s6
    80021196:	0088                	addi	a0,sp,64
    80021198:	a2ffd0ef          	jal	ra,8001ebc6 <string_buffer_puts8>
quickjs-nuttx/quickjs.c:42817 (discriminator 2)
        for (i = 0; i < p->len; i++) {
    8002119c:	2985                	addiw	s3,s3,1
    8002119e:	b78d                	j	80021100 <js_string_CreateHTML+0xb4>
quickjs-nuttx/quickjs.c:42822
                string_buffer_putc16(b, c);
    800211a0:	0005059b          	sext.w	a1,a0
    800211a4:	0088                	addi	a0,sp,64
    800211a6:	b8dfd0ef          	jal	ra,8001ed32 <string_buffer_putc16>
    800211aa:	bfcd                	j	8002119c <js_string_CreateHTML+0x150>

00000000800211ac <js_string_toLowerCase>:
js_string_toLowerCase():
quickjs-nuttx/quickjs.c:42449
{
    800211ac:	7155                	addi	sp,sp,-208
    800211ae:	e1a2                	sd	s0,192(sp)
    800211b0:	f94a                	sd	s2,176(sp)
    800211b2:	f152                	sd	s4,160(sp)
    800211b4:	e586                	sd	ra,200(sp)
    800211b6:	8a3e                	mv	s4,a5
    800211b8:	fd26                	sd	s1,184(sp)
    800211ba:	f54e                	sd	s3,168(sp)
    800211bc:	ed56                	sd	s5,152(sp)
    800211be:	e95a                	sd	s6,144(sp)
    800211c0:	e55e                	sd	s7,136(sp)
    800211c2:	e162                	sd	s8,128(sp)
    800211c4:	fce6                	sd	s9,120(sp)
    800211c6:	f8ea                	sd	s10,112(sp)
    800211c8:	892a                	mv	s2,a0
    800211ca:	e02e                	sd	a1,0(sp)
    800211cc:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:42456
    val = JS_ToStringCheckObject(ctx, this_val);
    800211ce:	cb3ff0ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    800211d2:	f82a                	sd	a0,48(sp)
    800211d4:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:42457
    if (JS_IsException(val))
    800211d6:	0005871b          	sext.w	a4,a1
    800211da:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:42456
    val = JS_ToStringCheckObject(ctx, this_val);
    800211dc:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:42457
    if (JS_IsException(val))
    800211de:	02f71463          	bne	a4,a5,80021206 <js_string_toLowerCase+0x5a>
quickjs-nuttx/quickjs.c:42461
        return val;
    800211e2:	e0a2                	sd	s0,64(sp)
quickjs-nuttx/quickjs.c:42478
    return string_buffer_end(b);
    800211e4:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:42483
}
    800211e6:	60ae                	ld	ra,200(sp)
    800211e8:	640e                	ld	s0,192(sp)
    800211ea:	6506                	ld	a0,64(sp)
    800211ec:	65a6                	ld	a1,72(sp)
    800211ee:	74ea                	ld	s1,184(sp)
    800211f0:	794a                	ld	s2,176(sp)
    800211f2:	79aa                	ld	s3,168(sp)
    800211f4:	7a0a                	ld	s4,160(sp)
    800211f6:	6aea                	ld	s5,152(sp)
    800211f8:	6b4a                	ld	s6,144(sp)
    800211fa:	6baa                	ld	s7,136(sp)
    800211fc:	6c0a                	ld	s8,128(sp)
    800211fe:	7ce6                	ld	s9,120(sp)
    80021200:	7d46                	ld	s10,112(sp)
    80021202:	6169                	addi	sp,sp,208
    80021204:	8082                	ret
quickjs-nuttx/quickjs.c:42460
    if (p->len == 0)
    80021206:	4150                	lw	a2,4(a0)
    80021208:	800009b7          	lui	s3,0x80000
    8002120c:	fff9c993          	not	s3,s3
    80021210:	00c9f633          	and	a2,s3,a2
    80021214:	d679                	beqz	a2,800211e2 <js_string_toLowerCase+0x36>
quickjs-nuttx/quickjs.c:42462
    if (string_buffer_init(ctx, b, p->len))
    80021216:	088c                	addi	a1,sp,80
    80021218:	854a                	mv	a0,s2
    8002121a:	d63fc0ef          	jal	ra,8001df7c <string_buffer_init>
    8002121e:	12051a63          	bnez	a0,80021352 <js_string_toLowerCase+0x1a6>
string_prevc():
quickjs-nuttx/quickjs.c:42405
        if (c >= 0xdc00 && c < 0xe000 && idx > 0) {
    80021222:	7b49                	lui	s6,0xffff2
quickjs-nuttx/quickjs.c:42407
            if (c1 >= 0xd800 && c1 <= 0xdc00) {
    80021224:	7bcd                	lui	s7,0xffff3
js_string_toLowerCase():
quickjs-nuttx/quickjs.c:42464
    for(i = 0; i < p->len;) {
    80021226:	ce02                	sw	zero,28(sp)
string_prevc():
quickjs-nuttx/quickjs.c:42405
        if (c >= 0xdc00 && c < 0xe000 && idx > 0) {
    80021228:	400b0b1b          	addiw	s6,s6,1024
quickjs-nuttx/quickjs.c:42407
            if (c1 >= 0xd800 && c1 <= 0xdc00) {
    8002122c:	800b8b9b          	addiw	s7,s7,-2048
js_string_toLowerCase():
quickjs-nuttx/quickjs.c:42464 (discriminator 1)
    for(i = 0; i < p->len;) {
    80021230:	405c                	lw	a5,4(s0)
    80021232:	4772                	lw	a4,28(sp)
    80021234:	00f9f7b3          	and	a5,s3,a5
    80021238:	00f74c63          	blt	a4,a5,80021250 <js_string_toLowerCase+0xa4>
quickjs-nuttx/quickjs.c:42477
    JS_FreeValue(ctx, val);
    8002123c:	75c2                	ld	a1,48(sp)
    8002123e:	7662                	ld	a2,56(sp)
    80021240:	854a                	mv	a0,s2
    80021242:	d5cea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42478
    return string_buffer_end(b);
    80021246:	0888                	addi	a0,sp,80
    80021248:	a59fe0ef          	jal	ra,8001fca0 <string_buffer_end>
    8002124c:	e0aa                	sd	a0,64(sp)
    8002124e:	bf59                	j	800211e4 <js_string_toLowerCase+0x38>
quickjs-nuttx/quickjs.c:42465
        c = string_getc(p, &i);
    80021250:	086c                	addi	a1,sp,28
    80021252:	8522                	mv	a0,s0
    80021254:	a2be60ef          	jal	ra,80007c7e <string_getc>
quickjs-nuttx/quickjs.c:42466
        if (c == 0x3a3 && to_lower && test_final_sigma(p, i - 1)) {
    80021258:	3a300793          	li	a5,931
quickjs-nuttx/quickjs.c:42465
        c = string_getc(p, &i);
    8002125c:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:42466
        if (c == 0x3a3 && to_lower && test_final_sigma(p, i - 1)) {
    8002125e:	0ef51263          	bne	a0,a5,80021342 <js_string_toLowerCase+0x196>
quickjs-nuttx/quickjs.c:42466 (discriminator 1)
    80021262:	0e0a0063          	beqz	s4,80021342 <js_string_toLowerCase+0x196>
quickjs-nuttx/quickjs.c:42466 (discriminator 2)
    80021266:	4c72                	lw	s8,28(sp)
string_prevc():
quickjs-nuttx/quickjs.c:42408 (discriminator 2)
                c = (((c1 & 0x3ff) << 10) | (c & 0x3ff)) + 0x10000;
    80021268:	00100cb7          	lui	s9,0x100
quickjs-nuttx/quickjs.c:42405 (discriminator 2)
        if (c >= 0xdc00 && c < 0xe000 && idx > 0) {
    8002126c:	3ff00d13          	li	s10,1023
js_string_toLowerCase():
quickjs-nuttx/quickjs.c:42466 (discriminator 2)
        if (c == 0x3a3 && to_lower && test_final_sigma(p, i - 1)) {
    80021270:	fffc079b          	addiw	a5,s8,-1
test_final_sigma():
quickjs-nuttx/quickjs.c:42425 (discriminator 2)
    k = sigma_pos;
    80021274:	c0be                	sw	a5,64(sp)
string_prevc():
quickjs-nuttx/quickjs.c:42408 (discriminator 2)
                c = (((c1 & 0x3ff) << 10) | (c & 0x3ff)) + 0x10000;
    80021276:	c00c8c93          	addi	s9,s9,-1024 # ffc00 <asinh-0x7ff00400>
quickjs-nuttx/quickjs.c:42399
    idx = *pidx;
    8002127a:	4786                	lw	a5,64(sp)
quickjs-nuttx/quickjs.c:42401
        return 0;
    8002127c:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:42400
    if (idx <= 0)
    8002127e:	04f05c63          	blez	a5,800212d6 <js_string_toLowerCase+0x12a>
quickjs-nuttx/quickjs.c:42403
    if (p->is_wide_char) {
    80021282:	4058                	lw	a4,4(s0)
quickjs-nuttx/quickjs.c:42402
    idx--;
    80021284:	fff7861b          	addiw	a2,a5,-1
quickjs-nuttx/quickjs.c:42403
    if (p->is_wide_char) {
    80021288:	0a075863          	bgez	a4,80021338 <js_string_toLowerCase+0x18c>
quickjs-nuttx/quickjs.c:42404
        c = p->u.str16[idx];
    8002128c:	00860713          	addi	a4,a2,8
    80021290:	0706                	slli	a4,a4,0x1
    80021292:	9722                	add	a4,a4,s0
    80021294:	00075583          	lhu	a1,0(a4)
quickjs-nuttx/quickjs.c:42405
        if (c >= 0xdc00 && c < 0xe000 && idx > 0) {
    80021298:	00bb06bb          	addw	a3,s6,a1
quickjs-nuttx/quickjs.c:42404
        c = p->u.str16[idx];
    8002129c:	0005871b          	sext.w	a4,a1
quickjs-nuttx/quickjs.c:42405
        if (c >= 0xdc00 && c < 0xe000 && idx > 0) {
    800212a0:	02dd6a63          	bltu	s10,a3,800212d4 <js_string_toLowerCase+0x128>
    800212a4:	ca05                	beqz	a2,800212d4 <js_string_toLowerCase+0x128>
quickjs-nuttx/quickjs.c:42406
            c1 = p->u.str16[idx - 1];
    800212a6:	37f9                	addiw	a5,a5,-2
    800212a8:	00878693          	addi	a3,a5,8
    800212ac:	0686                	slli	a3,a3,0x1
    800212ae:	96a2                	add	a3,a3,s0
    800212b0:	0006d683          	lhu	a3,0(a3) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
quickjs-nuttx/quickjs.c:42407
            if (c1 >= 0xd800 && c1 <= 0xdc00) {
    800212b4:	40000513          	li	a0,1024
    800212b8:	00db883b          	addw	a6,s7,a3
    800212bc:	01056c63          	bltu	a0,a6,800212d4 <js_string_toLowerCase+0x128>
quickjs-nuttx/quickjs.c:42408
                c = (((c1 & 0x3ff) << 10) | (c & 0x3ff)) + 0x10000;
    800212c0:	00a6969b          	slliw	a3,a3,0xa
    800212c4:	0196f733          	and	a4,a3,s9
    800212c8:	3ff5f693          	andi	a3,a1,1023
    800212cc:	8ed9                	or	a3,a3,a4
    800212ce:	6741                	lui	a4,0x10
    800212d0:	9f35                	addw	a4,a4,a3
quickjs-nuttx/quickjs.c:42409
                idx--;
    800212d2:	863e                	mv	a2,a5
quickjs-nuttx/quickjs.c:42415
    *pidx = idx;
    800212d4:	c0b2                	sw	a2,64(sp)
test_final_sigma():
quickjs-nuttx/quickjs.c:42428
        if (!lre_is_case_ignorable(c1))
    800212d6:	0007049b          	sext.w	s1,a4
    800212da:	8526                	mv	a0,s1
    800212dc:	2942f0ef          	jal	ra,80050570 <lre_is_case_ignorable>
    800212e0:	fd49                	bnez	a0,8002127a <js_string_toLowerCase+0xce>
quickjs-nuttx/quickjs.c:42431
    if (!lre_is_cased(c1))
    800212e2:	8526                	mv	a0,s1
    800212e4:	22a2f0ef          	jal	ra,8005050e <lre_is_cased>
    800212e8:	cd29                	beqz	a0,80021342 <js_string_toLowerCase+0x196>
quickjs-nuttx/quickjs.c:42436
    k = sigma_pos + 1;
    800212ea:	c0e2                	sw	s8,64(sp)
quickjs-nuttx/quickjs.c:42438
        if (k >= p->len)
    800212ec:	405c                	lw	a5,4(s0)
    800212ee:	4706                	lw	a4,64(sp)
    800212f0:	00f9f7b3          	and	a5,s3,a5
    800212f4:	02f75063          	bge	a4,a5,80021314 <js_string_toLowerCase+0x168>
quickjs-nuttx/quickjs.c:42440
        c1 = string_getc(p, &k);
    800212f8:	008c                	addi	a1,sp,64
    800212fa:	8522                	mv	a0,s0
    800212fc:	983e60ef          	jal	ra,80007c7e <string_getc>
quickjs-nuttx/quickjs.c:42441
        if (!lre_is_case_ignorable(c1))
    80021300:	0005049b          	sext.w	s1,a0
    80021304:	8526                	mv	a0,s1
    80021306:	26a2f0ef          	jal	ra,80050570 <lre_is_case_ignorable>
    8002130a:	f16d                	bnez	a0,800212ec <js_string_toLowerCase+0x140>
quickjs-nuttx/quickjs.c:42444
    return !lre_is_cased(c1);
    8002130c:	8526                	mv	a0,s1
    8002130e:	2002f0ef          	jal	ra,8005050e <lre_is_cased>
js_string_toLowerCase():
quickjs-nuttx/quickjs.c:42466
        if (c == 0x3a3 && to_lower && test_final_sigma(p, i - 1)) {
    80021312:	e905                	bnez	a0,80021342 <js_string_toLowerCase+0x196>
quickjs-nuttx/quickjs.c:42467
            res[0] = 0x3c2; /* final sigma */
    80021314:	3c200793          	li	a5,962
    80021318:	d03e                	sw	a5,32(sp)
quickjs-nuttx/quickjs.c:42468
            l = 1;
    8002131a:	4485                	li	s1,1
quickjs-nuttx/quickjs.c:42472
        for(j = 0; j < l; j++) {
    8002131c:	02010c13          	addi	s8,sp,32
    80021320:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:42472 (discriminator 1)
    80021322:	f09ad7e3          	bge	s5,s1,80021230 <js_string_toLowerCase+0x84>
quickjs-nuttx/quickjs.c:42473
            if (string_buffer_putc(b, res[j]))
    80021326:	000c2583          	lw	a1,0(s8)
    8002132a:	0888                	addi	a0,sp,80
    8002132c:	0c11                	addi	s8,s8,4
    8002132e:	a43fd0ef          	jal	ra,8001ed70 <string_buffer_putc>
    80021332:	e105                	bnez	a0,80021352 <js_string_toLowerCase+0x1a6>
quickjs-nuttx/quickjs.c:42472 (discriminator 2)
        for(j = 0; j < l; j++) {
    80021334:	2a85                	addiw	s5,s5,1
    80021336:	b7f5                	j	80021322 <js_string_toLowerCase+0x176>
string_prevc():
quickjs-nuttx/quickjs.c:42413
        c = p->u.str8[idx];
    80021338:	00c407b3          	add	a5,s0,a2
    8002133c:	0107c703          	lbu	a4,16(a5)
    80021340:	bf51                	j	800212d4 <js_string_toLowerCase+0x128>
js_string_toLowerCase():
quickjs-nuttx/quickjs.c:42470
            l = lre_case_conv(res, c, to_lower);
    80021342:	8652                	mv	a2,s4
    80021344:	000a859b          	sext.w	a1,s5
    80021348:	1008                	addi	a0,sp,32
    8002134a:	5e92e0ef          	jal	ra,80050132 <lre_case_conv>
    8002134e:	84aa                	mv	s1,a0
    80021350:	b7f1                	j	8002131c <js_string_toLowerCase+0x170>
quickjs-nuttx/quickjs.c:42480
    JS_FreeValue(ctx, val);
    80021352:	75c2                	ld	a1,48(sp)
    80021354:	7662                	ld	a2,56(sp)
    80021356:	854a                	mv	a0,s2
    80021358:	c46ea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42481
    string_buffer_free(b);
    8002135c:	0888                	addi	a0,sp,80
    8002135e:	cc5e90ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:42482
    return JS_EXCEPTION;
    80021362:	4799                	li	a5,6
    80021364:	e082                	sd	zero,64(sp)
    80021366:	e4be                	sd	a5,72(sp)
    80021368:	bdbd                	j	800211e6 <js_string_toLowerCase+0x3a>

000000008002136a <js_string_isWellFormed>:
js_string_isWellFormed():
quickjs-nuttx/quickjs.c:41580
{
    8002136a:	711d                	addi	sp,sp,-96
    8002136c:	e4a6                	sd	s1,72(sp)
    8002136e:	ec86                	sd	ra,88(sp)
    80021370:	e8a2                	sd	s0,80(sp)
    80021372:	84aa                	mv	s1,a0
    80021374:	e02e                	sd	a1,0(sp)
    80021376:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:41585
    str = JS_ToStringCheckObject(ctx, this_val);
    80021378:	b09ff0ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    8002137c:	ec2e                	sd	a1,24(sp)
    8002137e:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:41586
    if (JS_IsException(str))
    80021380:	2581                	sext.w	a1,a1
    80021382:	4719                	li	a4,6
    80021384:	00e59b63          	bne	a1,a4,8002139a <js_string_isWellFormed+0x30>
quickjs-nuttx/quickjs.c:41587
        return JS_EXCEPTION;
    80021388:	f002                	sd	zero,32(sp)
    8002138a:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:41592 (discriminator 1)
}
    8002138c:	60e6                	ld	ra,88(sp)
    8002138e:	6446                	ld	s0,80(sp)
    80021390:	7502                	ld	a0,32(sp)
    80021392:	75a2                	ld	a1,40(sp)
    80021394:	64a6                	ld	s1,72(sp)
    80021396:	6125                	addi	sp,sp,96
    80021398:	8082                	ret
js_string_find_invalid_codepoint():
quickjs-nuttx/quickjs.c:41562
    if (!p->is_wide_char)
    8002139a:	415c                	lw	a5,4(a0)
quickjs-nuttx/quickjs.c:41563
        return -1;
    8002139c:	547d                	li	s0,-1
quickjs-nuttx/quickjs.c:41562
    if (!p->is_wide_char)
    8002139e:	0007d563          	bgez	a5,800213a8 <js_string_isWellFormed+0x3e>
    800213a2:	a86e80ef          	jal	ra,80009628 <js_string_find_invalid_codepoint.part.0>
    800213a6:	842a                	mv	s0,a0
js_string_isWellFormed():
quickjs-nuttx/quickjs.c:41590
    JS_FreeValue(ctx, str);
    800213a8:	65c2                	ld	a1,16(sp)
    800213aa:	6662                	ld	a2,24(sp)
    800213ac:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:41589
    ret = (js_string_find_invalid_codepoint(p) < 0);
    800213ae:	01f4541b          	srliw	s0,s0,0x1f
quickjs-nuttx/quickjs.c:41590
    JS_FreeValue(ctx, str);
    800213b2:	becea0ef          	jal	ra,8000b79e <JS_FreeValue>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    800213b6:	da02                	sw	zero,52(sp)
    800213b8:	d822                	sw	s0,48(sp)
    800213ba:	77c2                	ld	a5,48(sp)
    800213bc:	f03e                	sd	a5,32(sp)
    800213be:	4785                	li	a5,1
    800213c0:	f43e                	sd	a5,40(sp)
    800213c2:	b7e9                	j	8002138c <js_string_isWellFormed+0x22>

00000000800213c4 <js_string_concat>:
js_string_concat():
quickjs-nuttx/quickjs.c:41483
{
    800213c4:	7119                	addi	sp,sp,-128
    800213c6:	f8a2                	sd	s0,112(sp)
    800213c8:	f4a6                	sd	s1,104(sp)
    800213ca:	f0ca                	sd	s2,96(sp)
    800213cc:	ecce                	sd	s3,88(sp)
    800213ce:	e8d2                	sd	s4,80(sp)
    800213d0:	fc86                	sd	ra,120(sp)
    800213d2:	892a                	mv	s2,a0
    800213d4:	84b6                	mv	s1,a3
    800213d6:	89ba                	mv	s3,a4
quickjs-nuttx/quickjs.c:41490
    r = JS_ToStringCheckObject(ctx, this_val);
    800213d8:	aa9ff0ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    800213dc:	f02a                	sd	a0,32(sp)
    800213de:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:41491
    for (i = 0; i < argc; i++) {
    800213e0:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:41492
        if (JS_IsException(r))
    800213e2:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:41491 (discriminator 1)
    for (i = 0; i < argc; i++) {
    800213e4:	0004079b          	sext.w	a5,s0
    800213e8:	0097cc63          	blt	a5,s1,80021400 <js_string_concat+0x3c>
quickjs-nuttx/quickjs.c:41497
}
    800213ec:	70e6                	ld	ra,120(sp)
    800213ee:	7446                	ld	s0,112(sp)
quickjs-nuttx/quickjs.c:41496
    return r;
    800213f0:	7502                	ld	a0,32(sp)
quickjs-nuttx/quickjs.c:41497
}
    800213f2:	74a6                	ld	s1,104(sp)
    800213f4:	7906                	ld	s2,96(sp)
    800213f6:	69e6                	ld	s3,88(sp)
    800213f8:	6a46                	ld	s4,80(sp)
    800213fa:	85b2                	mv	a1,a2
    800213fc:	6109                	addi	sp,sp,128
    800213fe:	8082                	ret
quickjs-nuttx/quickjs.c:41492
        if (JS_IsException(r))
    80021400:	0006079b          	sext.w	a5,a2
    80021404:	ff4784e3          	beq	a5,s4,800213ec <js_string_concat+0x28>
quickjs-nuttx/quickjs.c:41494 (discriminator 2)
        r = JS_ConcatString(ctx, r, JS_DupValue(ctx, argv[i]));
    80021408:	00441793          	slli	a5,s0,0x4
    8002140c:	97ce                	add	a5,a5,s3
    8002140e:	6388                	ld	a0,0(a5)
    80021410:	678c                	ld	a1,8(a5)
    80021412:	e432                	sd	a2,8(sp)
    80021414:	0405                	addi	s0,s0,1
    80021416:	804e90ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8002141a:	6622                	ld	a2,8(sp)
    8002141c:	872e                	mv	a4,a1
    8002141e:	7582                	ld	a1,32(sp)
    80021420:	86aa                	mv	a3,a0
    80021422:	854a                	mv	a0,s2
    80021424:	ce4ff0ef          	jal	ra,80020908 <JS_ConcatString>
    80021428:	f02a                	sd	a0,32(sp)
    8002142a:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:41491 (discriminator 2)
    for (i = 0; i < argc; i++) {
    8002142c:	bf65                	j	800213e4 <js_string_concat+0x20>

000000008002142e <js_string_toWellFormed>:
js_string_toWellFormed():
quickjs-nuttx/quickjs.c:41596
{
    8002142e:	7119                	addi	sp,sp,-128
    80021430:	e8d2                	sd	s4,80(sp)
    80021432:	e4d6                	sd	s5,72(sp)
    80021434:	fc86                	sd	ra,120(sp)
    80021436:	f8a2                	sd	s0,112(sp)
    80021438:	f4a6                	sd	s1,104(sp)
    8002143a:	f0ca                	sd	s2,96(sp)
    8002143c:	ecce                	sd	s3,88(sp)
    8002143e:	8a2a                	mv	s4,a0
    80021440:	e02e                	sd	a1,0(sp)
    80021442:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:41601
    str = JS_ToStringCheckObject(ctx, this_val);
    80021444:	a3dff0ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    80021448:	e82a                	sd	a0,16(sp)
    8002144a:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:41602
    if (JS_IsException(str))
    8002144c:	0005879b          	sext.w	a5,a1
    80021450:	4a99                	li	s5,6
    80021452:	03579063          	bne	a5,s5,80021472 <js_string_toWellFormed+0x44>
quickjs-nuttx/quickjs.c:41603
        return JS_EXCEPTION;
    80021456:	4799                	li	a5,6
    80021458:	f802                	sd	zero,48(sp)
    8002145a:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:41633 (discriminator 1)
}
    8002145c:	70e6                	ld	ra,120(sp)
    8002145e:	7446                	ld	s0,112(sp)
    80021460:	7542                	ld	a0,48(sp)
    80021462:	75e2                	ld	a1,56(sp)
    80021464:	74a6                	ld	s1,104(sp)
    80021466:	7906                	ld	s2,96(sp)
    80021468:	69e6                	ld	s3,88(sp)
    8002146a:	6a46                	ld	s4,80(sp)
    8002146c:	6aa6                	ld	s5,72(sp)
    8002146e:	6109                	addi	sp,sp,128
    80021470:	8082                	ret
js_string_find_invalid_codepoint():
quickjs-nuttx/quickjs.c:41562
    if (!p->is_wide_char)
    80021472:	00452983          	lw	s3,4(a0)
    80021476:	84aa                	mv	s1,a0
    80021478:	892e                	mv	s2,a1
    8002147a:	0009879b          	sext.w	a5,s3
    8002147e:	0007d763          	bgez	a5,8002148c <js_string_toWellFormed+0x5e>
    80021482:	9a6e80ef          	jal	ra,80009628 <js_string_find_invalid_codepoint.part.0>
    80021486:	842a                	mv	s0,a0
js_string_toWellFormed():
quickjs-nuttx/quickjs.c:41608
    if (i < 0)
    80021488:	00055563          	bgez	a0,80021492 <js_string_toWellFormed+0x64>
quickjs-nuttx/quickjs.c:41609
        return str;
    8002148c:	f826                	sd	s1,48(sp)
    8002148e:	fc4a                	sd	s2,56(sp)
    80021490:	b7f1                	j	8002145c <js_string_toWellFormed+0x2e>
quickjs-nuttx/quickjs.c:41611
    ret = js_new_string16(ctx, p->u.str16, p->len);
    80021492:	80000937          	lui	s2,0x80000
    80021496:	fff94913          	not	s2,s2
    8002149a:	0129f633          	and	a2,s3,s2
    8002149e:	2601                	sext.w	a2,a2
    800214a0:	01048593          	addi	a1,s1,16
    800214a4:	8552                	mv	a0,s4
    800214a6:	addfc0ef          	jal	ra,8001df82 <js_new_string16>
    800214aa:	89ae                	mv	s3,a1
    800214ac:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:41612
    JS_FreeValue(ctx, str);
    800214ae:	6662                	ld	a2,24(sp)
    800214b0:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:41611
    ret = js_new_string16(ctx, p->u.str16, p->len);
    800214b2:	f02a                	sd	a0,32(sp)
    800214b4:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:41612
    JS_FreeValue(ctx, str);
    800214b6:	8552                	mv	a0,s4
    800214b8:	ae6ea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41613
    if (JS_IsException(ret))
    800214bc:	0009879b          	sext.w	a5,s3
    800214c0:	f9578be3          	beq	a5,s5,80021456 <js_string_toWellFormed+0x28>
quickjs-nuttx/quickjs.c:41617
    for (; i < p->len; i++) {
    800214c4:	40dc                	lw	a5,4(s1)
quickjs-nuttx/quickjs.c:41619
        if (c >= 0xD800 && c <= 0xDFFF) {
    800214c6:	76cd                	lui	a3,0xffff3
quickjs-nuttx/quickjs.c:41620
            if (c >= 0xDC00 || (i + 1) >= p->len) {
    800214c8:	6639                	lui	a2,0xe
quickjs-nuttx/quickjs.c:41624
                if (c < 0xDC00 || c > 0xDFFF) {
    800214ca:	75c9                	lui	a1,0xffff2
quickjs-nuttx/quickjs.c:41617
    for (; i < p->len; i++) {
    800214cc:	00f97933          	and	s2,s2,a5
quickjs-nuttx/quickjs.c:41619
        if (c >= 0xD800 && c <= 0xDFFF) {
    800214d0:	8006869b          	addiw	a3,a3,-2048
    800214d4:	7ff00893          	li	a7,2047
quickjs-nuttx/quickjs.c:41620
            if (c >= 0xDC00 || (i + 1) >= p->len) {
    800214d8:	bff60613          	addi	a2,a2,-1025 # dbff <asinh-0x7fff2401>
quickjs-nuttx/quickjs.c:41621
                p->u.str16[i] = 0xFFFD;
    800214dc:	5875                	li	a6,-3
quickjs-nuttx/quickjs.c:41624
                if (c < 0xDC00 || c > 0xDFFF) {
    800214de:	4005859b          	addiw	a1,a1,1024
    800214e2:	3ff00313          	li	t1,1023
quickjs-nuttx/quickjs.c:41617 (discriminator 1)
    for (; i < p->len; i++) {
    800214e6:	01244563          	blt	s0,s2,800214f0 <js_string_toWellFormed+0xc2>
quickjs-nuttx/quickjs.c:41632
    return ret;
    800214ea:	f826                	sd	s1,48(sp)
    800214ec:	fc4e                	sd	s3,56(sp)
    800214ee:	b7bd                	j	8002145c <js_string_toWellFormed+0x2e>
quickjs-nuttx/quickjs.c:41618
        c = p->u.str16[i];
    800214f0:	00141793          	slli	a5,s0,0x1
    800214f4:	97a6                	add	a5,a5,s1
    800214f6:	0107d703          	lhu	a4,16(a5)
quickjs-nuttx/quickjs.c:41619
        if (c >= 0xD800 && c <= 0xDFFF) {
    800214fa:	00e6853b          	addw	a0,a3,a4
    800214fe:	00a8ea63          	bltu	a7,a0,80021512 <js_string_toWellFormed+0xe4>
quickjs-nuttx/quickjs.c:41620
            if (c >= 0xDC00 || (i + 1) >= p->len) {
    80021502:	00e66663          	bltu	a2,a4,8002150e <js_string_toWellFormed+0xe0>
quickjs-nuttx/quickjs.c:41620 (discriminator 1)
    80021506:	0014051b          	addiw	a0,s0,1
    8002150a:	01254663          	blt	a0,s2,80021516 <js_string_toWellFormed+0xe8>
quickjs-nuttx/quickjs.c:41625
                    p->u.str16[i] = 0xFFFD;
    8002150e:	01079823          	sh	a6,16(a5)
quickjs-nuttx/quickjs.c:41617
    for (; i < p->len; i++) {
    80021512:	2405                	addiw	s0,s0,1
    80021514:	bfc9                	j	800214e6 <js_string_toWellFormed+0xb8>
quickjs-nuttx/quickjs.c:41623
                c = p->u.str16[i + 1];
    80021516:	00850713          	addi	a4,a0,8
    8002151a:	0706                	slli	a4,a4,0x1
    8002151c:	9726                	add	a4,a4,s1
quickjs-nuttx/quickjs.c:41624
                if (c < 0xDC00 || c > 0xDFFF) {
    8002151e:	00075703          	lhu	a4,0(a4) # 10000 <asinh-0x7fff0000>
    80021522:	9f2d                	addw	a4,a4,a1
    80021524:	fee365e3          	bltu	t1,a4,8002150e <js_string_toWellFormed+0xe0>
    80021528:	842a                	mv	s0,a0
    8002152a:	b7e5                	j	80021512 <js_string_toWellFormed+0xe4>

000000008002152c <js_string_trim>:
js_string_trim():
quickjs-nuttx/quickjs.c:42364
{
    8002152c:	7159                	addi	sp,sp,-112
    8002152e:	eca6                	sd	s1,88(sp)
    80021530:	e4ce                	sd	s3,72(sp)
    80021532:	e0d2                	sd	s4,64(sp)
    80021534:	89be                	mv	s3,a5
    80021536:	f486                	sd	ra,104(sp)
    80021538:	f0a2                	sd	s0,96(sp)
    8002153a:	e8ca                	sd	s2,80(sp)
    8002153c:	8a2a                	mv	s4,a0
    8002153e:	e02e                	sd	a1,0(sp)
    80021540:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:42369
    str = JS_ToStringCheckObject(ctx, this_val);
    80021542:	93fff0ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    80021546:	e82a                	sd	a0,16(sp)
    80021548:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:42370
    if (JS_IsException(str))
    8002154a:	0005871b          	sext.w	a4,a1
    8002154e:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:42369
    str = JS_ToStringCheckObject(ctx, this_val);
    80021550:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:42370
    if (JS_IsException(str))
    80021552:	00f71e63          	bne	a4,a5,8002156e <js_string_trim+0x42>
quickjs-nuttx/quickjs.c:42371
        return str;
    80021556:	f82a                	sd	a0,48(sp)
    80021558:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:42386
}
    8002155a:	70a6                	ld	ra,104(sp)
    8002155c:	7406                	ld	s0,96(sp)
    8002155e:	7542                	ld	a0,48(sp)
    80021560:	75e2                	ld	a1,56(sp)
    80021562:	64e6                	ld	s1,88(sp)
    80021564:	6946                	ld	s2,80(sp)
    80021566:	69a6                	ld	s3,72(sp)
    80021568:	6a06                	ld	s4,64(sp)
    8002156a:	6165                	addi	sp,sp,112
    8002156c:	8082                	ret
quickjs-nuttx/quickjs.c:42374
    b = len = p->len;
    8002156e:	4140                	lw	s0,4(a0)
quickjs-nuttx/quickjs.c:42375
    if (magic & 1) {
    80021570:	0019f913          	andi	s2,s3,1
quickjs-nuttx/quickjs.c:42374
    b = len = p->len;
    80021574:	1406                	slli	s0,s0,0x21
    80021576:	9005                	srli	s0,s0,0x21
quickjs-nuttx/quickjs.c:42375
    if (magic & 1) {
    80021578:	04091e63          	bnez	s2,800215d4 <js_string_trim+0xa8>
quickjs-nuttx/quickjs.c:42379
    if (magic & 2) {
    8002157c:	0029f993          	andi	s3,s3,2
    80021580:	00098d63          	beqz	s3,8002159a <js_string_trim+0x6e>
quickjs-nuttx/quickjs.c:42380
        while (b > a && lre_is_space(string_get(p, b - 1)))
    80021584:	00895b63          	bge	s2,s0,8002159a <js_string_trim+0x6e>
quickjs-nuttx/quickjs.c:42380 (discriminator 1)
    80021588:	fff4099b          	addiw	s3,s0,-1
    8002158c:	85ce                	mv	a1,s3
    8002158e:	8526                	mv	a0,s1
    80021590:	ed4e60ef          	jal	ra,80007c64 <string_get>
    80021594:	0ef2c0ef          	jal	ra,8004de82 <lre_is_space>
    80021598:	e121                	bnez	a0,800215d8 <js_string_trim+0xac>
quickjs-nuttx/quickjs.c:42383
    ret = js_sub_string(ctx, p, a, b);
    8002159a:	86a2                	mv	a3,s0
    8002159c:	864a                	mv	a2,s2
    8002159e:	85a6                	mv	a1,s1
    800215a0:	8552                	mv	a0,s4
    800215a2:	b6dfe0ef          	jal	ra,8002010e <js_sub_string>
    800215a6:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:42384
    JS_FreeValue(ctx, str);
    800215a8:	6662                	ld	a2,24(sp)
    800215aa:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:42383
    ret = js_sub_string(ctx, p, a, b);
    800215ac:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:42384
    JS_FreeValue(ctx, str);
    800215ae:	8552                	mv	a0,s4
    800215b0:	9eeea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42385
    return ret;
    800215b4:	7782                	ld	a5,32(sp)
    800215b6:	f83e                	sd	a5,48(sp)
    800215b8:	77a2                	ld	a5,40(sp)
    800215ba:	fc3e                	sd	a5,56(sp)
    800215bc:	bf79                	j	8002155a <js_string_trim+0x2e>
quickjs-nuttx/quickjs.c:42377
            a++;
    800215be:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:42376
        while (a < len && lre_is_space(string_get(p, a)))
    800215c0:	fa895ee3          	bge	s2,s0,8002157c <js_string_trim+0x50>
quickjs-nuttx/quickjs.c:42376 (discriminator 1)
    800215c4:	85ca                	mv	a1,s2
    800215c6:	8526                	mv	a0,s1
    800215c8:	e9ce60ef          	jal	ra,80007c64 <string_get>
    800215cc:	0b72c0ef          	jal	ra,8004de82 <lre_is_space>
    800215d0:	f57d                	bnez	a0,800215be <js_string_trim+0x92>
    800215d2:	b76d                	j	8002157c <js_string_trim+0x50>
quickjs-nuttx/quickjs.c:42373
    a = 0;
    800215d4:	4901                	li	s2,0
    800215d6:	b7ed                	j	800215c0 <js_string_trim+0x94>
quickjs-nuttx/quickjs.c:42381
            b--;
    800215d8:	844e                	mv	s0,s3
    800215da:	b76d                	j	80021584 <js_string_trim+0x58>

00000000800215dc <js_string_normalize1>:
js_string_normalize1():
quickjs-nuttx/quickjs.c:42535
{
    800215dc:	7119                	addi	sp,sp,-128
    800215de:	e8d2                	sd	s4,80(sp)
    800215e0:	e032                	sd	a2,0(sp)
    800215e2:	f032                	sd	a2,32(sp)
    800215e4:	8a2e                	mv	s4,a1
    800215e6:	85b2                	mv	a1,a2
    800215e8:	8636                	mv	a2,a3
    800215ea:	f4a6                	sd	s1,104(sp)
    800215ec:	e0da                	sd	s6,64(sp)
    800215ee:	fc86                	sd	ra,120(sp)
    800215f0:	8b3a                	mv	s6,a4
    800215f2:	f8a2                	sd	s0,112(sp)
    800215f4:	f0ca                	sd	s2,96(sp)
    800215f6:	ecce                	sd	s3,88(sp)
    800215f8:	e4d6                	sd	s5,72(sp)
    800215fa:	84aa                	mv	s1,a0
    800215fc:	e436                	sd	a3,8(sp)
    800215fe:	f436                	sd	a3,40(sp)
JS_ToUTF32String():
quickjs-nuttx/quickjs.c:42495
    val = JS_ToString(ctx, val1);
    80021600:	97cff0ef          	jal	ra,8002077c <JS_ToString>
    80021604:	f82a                	sd	a0,48(sp)
    80021606:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:42496
    if (JS_IsException(val))
    80021608:	0005879b          	sext.w	a5,a1
    8002160c:	4719                	li	a4,6
    8002160e:	00e79e63          	bne	a5,a4,8002162a <js_string_normalize1+0x4e>
js_string_normalize1():
quickjs-nuttx/quickjs.c:42541
        return -1;
    80021612:	547d                	li	s0,-1
quickjs-nuttx/quickjs.c:42549
}
    80021614:	70e6                	ld	ra,120(sp)
    80021616:	8522                	mv	a0,s0
    80021618:	7446                	ld	s0,112(sp)
    8002161a:	74a6                	ld	s1,104(sp)
    8002161c:	7906                	ld	s2,96(sp)
    8002161e:	69e6                	ld	s3,88(sp)
    80021620:	6a46                	ld	s4,80(sp)
    80021622:	6aa6                	ld	s5,72(sp)
    80021624:	6b06                	ld	s6,64(sp)
    80021626:	6109                	addi	sp,sp,128
    80021628:	8082                	ret
JS_ToUTF32String():
quickjs-nuttx/quickjs.c:42499
    len = p->len;
    8002162a:	4140                	lw	s0,4(a0)
    8002162c:	8aaa                	mv	s5,a0
    8002162e:	1406                	slli	s0,s0,0x21
    80021630:	9005                	srli	s0,s0,0x21
quickjs-nuttx/quickjs.c:42501
    buf = js_malloc(ctx, sizeof(buf[0]) * max_int(len, 1));
    80021632:	0004059b          	sext.w	a1,s0
    80021636:	00804363          	bgtz	s0,8002163c <js_string_normalize1+0x60>
    8002163a:	4585                	li	a1,1
    8002163c:	058a                	slli	a1,a1,0x2
    8002163e:	8526                	mv	a0,s1
    80021640:	ac5f80ef          	jal	ra,8001a104 <js_malloc>
    80021644:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:42502
    if (!buf) {
    80021646:	e519                	bnez	a0,80021654 <js_string_normalize1+0x78>
quickjs-nuttx/quickjs.c:42503
        JS_FreeValue(ctx, val);
    80021648:	75c2                	ld	a1,48(sp)
    8002164a:	7662                	ld	a2,56(sp)
    8002164c:	8526                	mv	a0,s1
    8002164e:	950ea0ef          	jal	ra,8000b79e <JS_FreeValue>
js_string_normalize1():
quickjs-nuttx/quickjs.c:42540
    if (buf_len < 0)
    80021652:	b7c1                	j	80021612 <js_string_normalize1+0x36>
JS_ToUTF32String():
quickjs-nuttx/quickjs.c:42506
    for(i = j = 0; i < len;)
    80021654:	ce02                	sw	zero,28(sp)
    80021656:	4981                	li	s3,0
    80021658:	47f2                	lw	a5,28(sp)
    8002165a:	0287cf63          	blt	a5,s0,80021698 <js_string_normalize1+0xbc>
quickjs-nuttx/quickjs.c:42508
    JS_FreeValue(ctx, val);
    8002165e:	75c2                	ld	a1,48(sp)
    80021660:	7662                	ld	a2,56(sp)
    80021662:	8526                	mv	a0,s1
    80021664:	93aea0ef          	jal	ra,8000b79e <JS_FreeValue>
js_string_normalize1():
quickjs-nuttx/quickjs.c:42540
    if (buf_len < 0)
    80021668:	fa09c5e3          	bltz	s3,80021612 <js_string_normalize1+0x36>
quickjs-nuttx/quickjs.c:42542
    out_len = unicode_normalize(&out_buf, buf, buf_len, n_type,
    8002166c:	6c98                	ld	a4,24(s1)
    8002166e:	85ca                	mv	a1,s2
    80021670:	fffe6797          	auipc	a5,0xfffe6
    80021674:	4ea78793          	addi	a5,a5,1258 # 80007b5a <js_realloc_rt>
    80021678:	86da                	mv	a3,s6
    8002167a:	864e                	mv	a2,s3
    8002167c:	1808                	addi	a0,sp,48
    8002167e:	7282f0ef          	jal	ra,80050da6 <unicode_normalize>
    80021682:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:42544
    js_free(ctx, buf);
    80021684:	85ca                	mv	a1,s2
    80021686:	8526                	mv	a0,s1
    80021688:	96fe90ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:42545
    if (out_len < 0)
    8002168c:	f80443e3          	bltz	s0,80021612 <js_string_normalize1+0x36>
quickjs-nuttx/quickjs.c:42547
    *pout_buf = out_buf;
    80021690:	77c2                	ld	a5,48(sp)
    80021692:	00fa3023          	sd	a5,0(s4)
quickjs-nuttx/quickjs.c:42548
    return out_len;
    80021696:	bfbd                	j	80021614 <js_string_normalize1+0x38>
JS_ToUTF32String():
quickjs-nuttx/quickjs.c:42507
        buf[j++] = string_getc(p, &i);
    80021698:	086c                	addi	a1,sp,28
    8002169a:	8556                	mv	a0,s5
    8002169c:	de2e60ef          	jal	ra,80007c7e <string_getc>
    800216a0:	00299793          	slli	a5,s3,0x2
    800216a4:	97ca                	add	a5,a5,s2
    800216a6:	c388                	sw	a0,0(a5)
    800216a8:	2985                	addiw	s3,s3,1
    800216aa:	b77d                	j	80021658 <js_string_normalize1+0x7c>

00000000800216ac <string_buffer_concat_value>:
string_buffer_concat_value():
quickjs-nuttx/quickjs.c:3791
{
    800216ac:	7139                	addi	sp,sp,-64
    800216ae:	fc06                	sd	ra,56(sp)
    800216b0:	f822                	sd	s0,48(sp)
    800216b2:	f426                	sd	s1,40(sp)
quickjs-nuttx/quickjs.c:3796
    if (s->error_status) {
    800216b4:	4d5c                	lw	a5,28(a0)
quickjs-nuttx/quickjs.c:3791
{
    800216b6:	e02e                	sd	a1,0(sp)
    800216b8:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:3796
    if (s->error_status) {
    800216ba:	e7ad                	bnez	a5,80021724 <string_buffer_concat_value+0x78>
quickjs-nuttx/quickjs.c:3800
    if (unlikely(JS_VALUE_GET_TAG(v) != JS_TAG_STRING)) {
    800216bc:	0006079b          	sext.w	a5,a2
    800216c0:	5765                	li	a4,-7
    800216c2:	04e78763          	beq	a5,a4,80021710 <string_buffer_concat_value+0x64>
    800216c6:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:3801
        v1 = JS_ToString(s->ctx, v);
    800216c8:	6108                	ld	a0,0(a0)
    800216ca:	8b2ff0ef          	jal	ra,8002077c <JS_ToString>
    800216ce:	ec2e                	sd	a1,24(sp)
    800216d0:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:3802
        if (JS_IsException(v1))
    800216d2:	2581                	sext.w	a1,a1
    800216d4:	4799                	li	a5,6
    800216d6:	00f59963          	bne	a1,a5,800216e8 <string_buffer_concat_value+0x3c>
quickjs-nuttx/quickjs.c:3803
            return string_buffer_set_error(s);
    800216da:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:3811
}
    800216dc:	7442                	ld	s0,48(sp)
    800216de:	70e2                	ld	ra,56(sp)
    800216e0:	74a2                	ld	s1,40(sp)
    800216e2:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:3803
            return string_buffer_set_error(s);
    800216e4:	919e906f          	j	8000affc <string_buffer_set_error>
quickjs-nuttx/quickjs.c:3805
        res = string_buffer_concat(s, p, 0, p->len);
    800216e8:	4154                	lw	a3,4(a0)
    800216ea:	85aa                	mv	a1,a0
    800216ec:	4601                	li	a2,0
    800216ee:	1686                	slli	a3,a3,0x21
    800216f0:	9285                	srli	a3,a3,0x21
    800216f2:	8522                	mv	a0,s0
    800216f4:	beefd0ef          	jal	ra,8001eae2 <string_buffer_concat>
    800216f8:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:3806
        JS_FreeValue(s->ctx, v1);
    800216fa:	65c2                	ld	a1,16(sp)
    800216fc:	6662                	ld	a2,24(sp)
    800216fe:	6008                	ld	a0,0(s0)
    80021700:	89eea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:3811
}
    80021704:	70e2                	ld	ra,56(sp)
    80021706:	7442                	ld	s0,48(sp)
    80021708:	8526                	mv	a0,s1
    8002170a:	74a2                	ld	s1,40(sp)
    8002170c:	6121                	addi	sp,sp,64
    8002170e:	8082                	ret
quickjs-nuttx/quickjs.c:3810
    return string_buffer_concat(s, p, 0, p->len);
    80021710:	41d4                	lw	a3,4(a1)
quickjs-nuttx/quickjs.c:3811
}
    80021712:	7442                	ld	s0,48(sp)
    80021714:	70e2                	ld	ra,56(sp)
    80021716:	74a2                	ld	s1,40(sp)
quickjs-nuttx/quickjs.c:3810
    return string_buffer_concat(s, p, 0, p->len);
    80021718:	1686                	slli	a3,a3,0x21
    8002171a:	9285                	srli	a3,a3,0x21
    8002171c:	4601                	li	a2,0
quickjs-nuttx/quickjs.c:3811
}
    8002171e:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:3810
    return string_buffer_concat(s, p, 0, p->len);
    80021720:	bc2fd06f          	j	8001eae2 <string_buffer_concat>
quickjs-nuttx/quickjs.c:3798
        return -1;
    80021724:	54fd                	li	s1,-1
    80021726:	bff9                	j	80021704 <string_buffer_concat_value+0x58>

0000000080021728 <js_Date_parse>:
js_Date_parse():
quickjs-nuttx/quickjs.c:49861
{
    80021728:	714d                	addi	sp,sp,-336
    8002172a:	f252                	sd	s4,288(sp)
    8002172c:	e82e                	sd	a1,16(sp)
    8002172e:	8a2a                	mv	s4,a0
    80021730:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:49864
    int64_t fields[] = { 0, 1, 1, 0, 0, 0, 0 };
    80021732:	00043597          	auipc	a1,0x43
    80021736:	2fe58593          	addi	a1,a1,766 # 80064a30 <_srodata>
    8002173a:	03800613          	li	a2,56
    8002173e:	1088                	addi	a0,sp,96
quickjs-nuttx/quickjs.c:49861
{
    80021740:	e686                	sd	ra,328(sp)
    80021742:	e2a2                	sd	s0,320(sp)
    80021744:	ada2                	fsd	fs0,216(sp)
    80021746:	843a                	mv	s0,a4
    80021748:	fe26                	sd	s1,312(sp)
    8002174a:	fa4a                	sd	s2,304(sp)
    8002174c:	f64e                	sd	s3,296(sp)
    8002174e:	ee56                	sd	s5,280(sp)
    80021750:	ea5a                	sd	s6,272(sp)
    80021752:	e65e                	sd	s7,264(sp)
    80021754:	e262                	sd	s8,256(sp)
    80021756:	fde6                	sd	s9,248(sp)
    80021758:	f9ea                	sd	s10,240(sp)
    8002175a:	f5ee                	sd	s11,232(sp)
quickjs-nuttx/quickjs.c:49864
    int64_t fields[] = { 0, 1, 1, 0, 0, 0, 0 };
    8002175c:	650420ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:49872
    rv = JS_NAN;
    80021760:	00072797          	auipc	a5,0x72
    80021764:	4207b407          	fld	fs0,1056(a5) # 80093b80 <_erodata+0xe>
    80021768:	12847453          	fmul.d	fs0,fs0,fs0
    8002176c:	f20007d3          	fmv.d.x	fa5,zero
quickjs-nuttx/quickjs.c:49874
    s = JS_ToString(ctx, argv[0]);
    80021770:	600c                	ld	a1,0(s0)
    80021772:	6410                	ld	a2,8(s0)
    80021774:	8552                	mv	a0,s4
quickjs-nuttx/quickjs.c:49872
    rv = JS_NAN;
    80021776:	12f47453          	fmul.d	fs0,fs0,fa5
quickjs-nuttx/quickjs.c:49874
    s = JS_ToString(ctx, argv[0]);
    8002177a:	802ff0ef          	jal	ra,8002077c <JS_ToString>
    8002177e:	e4ae                	sd	a1,72(sp)
    80021780:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:49875
    if (JS_IsException(s))
    80021782:	2581                	sext.w	a1,a1
    80021784:	4799                	li	a5,6
    80021786:	02f59663          	bne	a1,a5,800217b2 <js_Date_parse+0x8a>
quickjs-nuttx/quickjs.c:49876
        return JS_EXCEPTION;
    8002178a:	e882                	sd	zero,80(sp)
    8002178c:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:50020 (discriminator 1)
}
    8002178e:	60b6                	ld	ra,328(sp)
    80021790:	6416                	ld	s0,320(sp)
    80021792:	6546                	ld	a0,80(sp)
    80021794:	65e6                	ld	a1,88(sp)
    80021796:	74f2                	ld	s1,312(sp)
    80021798:	7952                	ld	s2,304(sp)
    8002179a:	79b2                	ld	s3,296(sp)
    8002179c:	7a12                	ld	s4,288(sp)
    8002179e:	6af2                	ld	s5,280(sp)
    800217a0:	6b52                	ld	s6,272(sp)
    800217a2:	6bb2                	ld	s7,264(sp)
    800217a4:	6c12                	ld	s8,256(sp)
    800217a6:	7cee                	ld	s9,248(sp)
    800217a8:	7d4e                	ld	s10,240(sp)
    800217aa:	7dae                	ld	s11,232(sp)
    800217ac:	246e                	fld	fs0,216(sp)
    800217ae:	6171                	addi	sp,sp,336
    800217b0:	8082                	ret
quickjs-nuttx/quickjs.c:49880
    if (p < sp->len && (((c = string_get(sp, p)) >= '0' && c <= '9') || c == '+' || c == '-')) {
    800217b2:	415c                	lw	a5,4(a0)
quickjs-nuttx/quickjs.c:49879
    p = 0;
    800217b4:	d602                	sw	zero,44(sp)
    800217b6:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:49880
    if (p < sp->len && (((c = string_get(sp, p)) >= '0' && c <= '9') || c == '+' || c == '-')) {
    800217b8:	02179713          	slli	a4,a5,0x21
    800217bc:	02175913          	srli	s2,a4,0x21
    800217c0:	cf11                	beqz	a4,800217dc <js_Date_parse+0xb4>
string_get():
quickjs-nuttx/quickjs.c:3704
    return p->is_wide_char ? p->u.str16[idx] : p->u.str8[idx];
    800217c2:	2781                	sext.w	a5,a5
    800217c4:	0207d063          	bgez	a5,800217e4 <js_Date_parse+0xbc>
    800217c8:	01055783          	lhu	a5,16(a0)
js_Date_parse():
quickjs-nuttx/quickjs.c:49880
    if (p < sp->len && (((c = string_get(sp, p)) >= '0' && c <= '9') || c == '+' || c == '-')) {
    800217cc:	02f00713          	li	a4,47
    800217d0:	00f75d63          	bge	a4,a5,800217ea <js_Date_parse+0xc2>
quickjs-nuttx/quickjs.c:49880 (discriminator 2)
    800217d4:	03900713          	li	a4,57
    800217d8:	00f75e63          	bge	a4,a5,800217f4 <js_Date_parse+0xcc>
string_skip_non_spaces():
quickjs-nuttx/quickjs.c:49737
    while (*pp < sp->len && string_get(sp, *pp) != ' ')
    800217dc:	2901                	sext.w	s2,s2
    800217de:	02000993          	li	s3,32
    800217e2:	a421                	j	800219ea <js_Date_parse+0x2c2>
string_get():
quickjs-nuttx/quickjs.c:3704
    return p->is_wide_char ? p->u.str16[idx] : p->u.str8[idx];
    800217e4:	01054783          	lbu	a5,16(a0)
    800217e8:	b7d5                	j	800217cc <js_Date_parse+0xa4>
js_Date_parse():
quickjs-nuttx/quickjs.c:49880 (discriminator 4)
    if (p < sp->len && (((c = string_get(sp, p)) >= '0' && c <= '9') || c == '+' || c == '-')) {
    800217ea:	fd57879b          	addiw	a5,a5,-43
    800217ee:	9bf5                	andi	a5,a5,-3
    800217f0:	2781                	sext.w	a5,a5
    800217f2:	f7ed                	bnez	a5,800217dc <js_Date_parse+0xb4>
quickjs-nuttx/quickjs.c:49883
        if (string_get_signed_digits(sp, &p, &fields[0]))
    800217f4:	1090                	addi	a2,sp,96
    800217f6:	106c                	addi	a1,sp,44
    800217f8:	8522                	mv	a0,s0
    800217fa:	ce3e60ef          	jal	ra,800084dc <string_get_signed_digits>
    800217fe:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:49872
    rv = JS_NAN;
    80021800:	491d                	li	s2,7
quickjs-nuttx/quickjs.c:49883
        if (string_get_signed_digits(sp, &p, &fields[0]))
    80021802:	1c051163          	bnez	a0,800219c4 <js_Date_parse+0x29c>
quickjs-nuttx/quickjs.c:49887
            if (p >= sp->len)
    80021806:	80000b37          	lui	s6,0x80000
    8002180a:	06810a93          	addi	s5,sp,104
quickjs-nuttx/quickjs.c:49886
        for (i = 1; i < 7; i++) {
    8002180e:	4905                	li	s2,1
quickjs-nuttx/quickjs.c:49887
            if (p >= sp->len)
    80021810:	fffb4b13          	not	s6,s6
string_get_milliseconds():
quickjs-nuttx/quickjs.c:49819
        if (mul == 1 && c >= '5')
    80021814:	4c05                	li	s8,1
    80021816:	03400c93          	li	s9,52
quickjs-nuttx/quickjs.c:49821
        ms += (c - '0') * (mul /= 10);
    8002181a:	4d29                	li	s10,10
js_Date_parse():
quickjs-nuttx/quickjs.c:49887
            if (p >= sp->len)
    8002181c:	4058                	lw	a4,4(s0)
    8002181e:	54b2                	lw	s1,44(sp)
    80021820:	00eb7bb3          	and	s7,s6,a4
    80021824:	0974dd63          	bge	s1,s7,800218be <js_Date_parse+0x196>
quickjs-nuttx/quickjs.c:49889
            switch(i) {
    80021828:	ffd9079b          	addiw	a5,s2,-3
    8002182c:	0007861b          	sext.w	a2,a5
    80021830:	468d                	li	a3,3
quickjs-nuttx/quickjs.c:49887
            if (p >= sp->len)
    80021832:	02d00d93          	li	s11,45
    80021836:	00c6eb63          	bltu	a3,a2,8002184c <js_Date_parse+0x124>
    8002183a:	1782                	slli	a5,a5,0x20
    8002183c:	9381                	srli	a5,a5,0x20
    8002183e:	00073717          	auipc	a4,0x73
    80021842:	98270713          	addi	a4,a4,-1662 # 800941c0 <CSWTCH.4439>
    80021846:	97ba                	add	a5,a5,a4
    80021848:	00078d83          	lb	s11,0(a5)
quickjs-nuttx/quickjs.c:49905
            if (string_get(sp, p) != c)
    8002184c:	85a6                	mv	a1,s1
    8002184e:	8522                	mv	a0,s0
    80021850:	c14e60ef          	jal	ra,80007c64 <string_get>
    80021854:	07b51563          	bne	a0,s11,800218be <js_Date_parse+0x196>
quickjs-nuttx/quickjs.c:49907
            p++;
    80021858:	0014861b          	addiw	a2,s1,1
    8002185c:	d632                	sw	a2,44(sp)
quickjs-nuttx/quickjs.c:49908
            if (i == 6) {
    8002185e:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:49907
            p++;
    80021860:	84b2                	mv	s1,a2
quickjs-nuttx/quickjs.c:49908
            if (i == 6) {
    80021862:	06f91c63          	bne	s2,a5,800218da <js_Date_parse+0x1b2>
string_get_milliseconds():
quickjs-nuttx/quickjs.c:49808
    if (p >= sp->len)
    80021866:	03765563          	bge	a2,s7,80021890 <js_Date_parse+0x168>
quickjs-nuttx/quickjs.c:49807
    int mul = 1000, ms = 0, p = *pp, c, p_start;
    8002186a:	4d81                	li	s11,0
    8002186c:	3e800693          	li	a3,1000
quickjs-nuttx/quickjs.c:49812
        c = string_get(sp, p);
    80021870:	85a6                	mv	a1,s1
    80021872:	8522                	mv	a0,s0
    80021874:	e436                	sd	a3,8(sp)
    80021876:	e032                	sd	a2,0(sp)
    80021878:	bece60ef          	jal	ra,80007c64 <string_get>
quickjs-nuttx/quickjs.c:49813
        if (!(c >= '0' && c <= '9')) {
    8002187c:	fd05059b          	addiw	a1,a0,-48
    80021880:	4825                	li	a6,9
    80021882:	6602                	ld	a2,0(sp)
    80021884:	66a2                	ld	a3,8(sp)
    80021886:	87ae                	mv	a5,a1
    80021888:	00b87663          	bgeu	a6,a1,80021894 <js_Date_parse+0x16c>
quickjs-nuttx/quickjs.c:49814
            if (p == p_start)
    8002188c:	02961263          	bne	a2,s1,800218b0 <js_Date_parse+0x188>
js_Date_parse():
quickjs-nuttx/quickjs.c:49872
    rv = JS_NAN;
    80021890:	491d                	li	s2,7
    80021892:	aa0d                	j	800219c4 <js_Date_parse+0x29c>
string_get_milliseconds():
quickjs-nuttx/quickjs.c:49819
        if (mul == 1 && c >= '5')
    80021894:	01869563          	bne	a3,s8,8002189e <js_Date_parse+0x176>
    80021898:	00acd363          	bge	s9,a0,8002189e <js_Date_parse+0x176>
quickjs-nuttx/quickjs.c:49820
            ms += 1;
    8002189c:	2d85                	addiw	s11,s11,1
quickjs-nuttx/quickjs.c:49821
        ms += (c - '0') * (mul /= 10);
    8002189e:	03a6c6bb          	divw	a3,a3,s10
quickjs-nuttx/quickjs.c:49822
        p++;
    800218a2:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:49821
        ms += (c - '0') * (mul /= 10);
    800218a4:	02d787bb          	mulw	a5,a5,a3
    800218a8:	01b78dbb          	addw	s11,a5,s11
quickjs-nuttx/quickjs.c:49811
    while (p < sp->len) {
    800218ac:	fd74c2e3          	blt	s1,s7,80021870 <js_Date_parse+0x148>
quickjs-nuttx/quickjs.c:49824
    *pval = ms;
    800218b0:	e96e                	sd	s11,144(sp)
quickjs-nuttx/quickjs.c:49825
    *pp = p;
    800218b2:	d626                	sw	s1,44(sp)
js_Date_parse():
quickjs-nuttx/quickjs.c:49886 (discriminator 2)
        for (i = 1; i < 7; i++) {
    800218b4:	2905                	addiw	s2,s2,1
    800218b6:	479d                	li	a5,7
    800218b8:	0aa1                	addi	s5,s5,8
    800218ba:	f6f911e3          	bne	s2,a5,8002181c <js_Date_parse+0xf4>
quickjs-nuttx/quickjs.c:49918
        fields[1] -= 1;
    800218be:	77a6                	ld	a5,104(sp)
quickjs-nuttx/quickjs.c:49922
        if (p < sp->len) {
    800218c0:	5ab2                	lw	s5,44(sp)
quickjs-nuttx/quickjs.c:49918
        fields[1] -= 1;
    800218c2:	17fd                	addi	a5,a5,-1
    800218c4:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:49922
        if (p < sp->len) {
    800218c6:	4044                	lw	s1,4(s0)
    800218c8:	1486                	slli	s1,s1,0x21
    800218ca:	9085                	srli	s1,s1,0x21
    800218cc:	009ace63          	blt	s5,s1,800218e8 <js_Date_parse+0x1c0>
quickjs-nuttx/quickjs.c:49917
        is_local = (i > 3);
    800218d0:	498d                	li	s3,3
    800218d2:	0129a9b3          	slt	s3,s3,s2
quickjs-nuttx/quickjs.c:49997
        for (tz = 0; p < sp->len; p++) {
    800218d6:	4481                	li	s1,0
    800218d8:	a859                	j	8002196e <js_Date_parse+0x246>
quickjs-nuttx/quickjs.c:49912
                if (string_get_digits(sp, &p, &fields[i]))
    800218da:	8656                	mv	a2,s5
    800218dc:	106c                	addi	a1,sp,44
    800218de:	8522                	mv	a0,s0
    800218e0:	b79e60ef          	jal	ra,80008458 <string_get_digits>
    800218e4:	d961                	beqz	a0,800218b4 <js_Date_parse+0x18c>
    800218e6:	b76d                	j	80021890 <js_Date_parse+0x168>
quickjs-nuttx/quickjs.c:49923
            sgn = string_get(sp, p);
    800218e8:	85d6                	mv	a1,s5
    800218ea:	8522                	mv	a0,s0
    800218ec:	b78e60ef          	jal	ra,80007c64 <string_get>
quickjs-nuttx/quickjs.c:49924
            if (sgn == '+' || sgn == '-') {
    800218f0:	fd55079b          	addiw	a5,a0,-43
    800218f4:	9bf5                	andi	a5,a5,-3
    800218f6:	2781                	sext.w	a5,a5
quickjs-nuttx/quickjs.c:49923
            sgn = string_get(sp, p);
    800218f8:	8b2a                	mv	s6,a0
quickjs-nuttx/quickjs.c:49924
            if (sgn == '+' || sgn == '-') {
    800218fa:	efe9                	bnez	a5,800219d4 <js_Date_parse+0x2ac>
quickjs-nuttx/quickjs.c:49925
                p++;
    800218fc:	2a85                	addiw	s5,s5,1
    800218fe:	d656                	sw	s5,44(sp)
quickjs-nuttx/quickjs.c:49926
                l = sp->len - p;
    80021900:	41548abb          	subw	s5,s1,s5
quickjs-nuttx/quickjs.c:49927
                if (l != 4 && l != 5)
    80021904:	ffca849b          	addiw	s1,s5,-4
    80021908:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:49872
    rv = JS_NAN;
    8002190a:	491d                	li	s2,7
quickjs-nuttx/quickjs.c:49927
                if (l != 4 && l != 5)
    8002190c:	0a97ec63          	bltu	a5,s1,800219c4 <js_Date_parse+0x29c>
quickjs-nuttx/quickjs.c:49929
                if (string_get_fixed_width_digits(sp, &p, 2, &hh))
    80021910:	1810                	addi	a2,sp,48
    80021912:	106c                	addi	a1,sp,44
    80021914:	8522                	mv	a0,s0
    80021916:	d42e80ef          	jal	ra,80009e58 <string_get_fixed_width_digits.constprop.0>
    8002191a:	e54d                	bnez	a0,800219c4 <js_Date_parse+0x29c>
quickjs-nuttx/quickjs.c:49931
                if (l == 5) {
    8002191c:	4795                	li	a5,5
    8002191e:	00fa9d63          	bne	s5,a5,80021938 <js_Date_parse+0x210>
quickjs-nuttx/quickjs.c:49932
                    if (string_get(sp, p) != ':')
    80021922:	54b2                	lw	s1,44(sp)
    80021924:	8522                	mv	a0,s0
    80021926:	85a6                	mv	a1,s1
    80021928:	b3ce60ef          	jal	ra,80007c64 <string_get>
    8002192c:	03a00793          	li	a5,58
    80021930:	08f51a63          	bne	a0,a5,800219c4 <js_Date_parse+0x29c>
quickjs-nuttx/quickjs.c:49934
                    p++;
    80021934:	2485                	addiw	s1,s1,1
    80021936:	d626                	sw	s1,44(sp)
quickjs-nuttx/quickjs.c:49936
                if (string_get_fixed_width_digits(sp, &p, 2, &mm))
    80021938:	1830                	addi	a2,sp,56
    8002193a:	106c                	addi	a1,sp,44
    8002193c:	8522                	mv	a0,s0
    8002193e:	d1ae80ef          	jal	ra,80009e58 <string_get_fixed_width_digits.constprop.0>
quickjs-nuttx/quickjs.c:49872
    rv = JS_NAN;
    80021942:	491d                	li	s2,7
quickjs-nuttx/quickjs.c:49936
                if (string_get_fixed_width_digits(sp, &p, 2, &mm))
    80021944:	e141                	bnez	a0,800219c4 <js_Date_parse+0x29c>
quickjs-nuttx/quickjs.c:49938
                tz = hh * 60 + mm;
    80021946:	77c2                	ld	a5,48(sp)
    80021948:	03c00493          	li	s1,60
    8002194c:	02f484b3          	mul	s1,s1,a5
    80021950:	77e2                	ld	a5,56(sp)
    80021952:	94be                	add	s1,s1,a5
quickjs-nuttx/quickjs.c:49939
                if (sgn == '-')
    80021954:	02d00793          	li	a5,45
    80021958:	00fb1463          	bne	s6,a5,80021960 <js_Date_parse+0x238>
quickjs-nuttx/quickjs.c:49940
                    tz = -tz;
    8002195c:	409004b3          	neg	s1,s1
quickjs-nuttx/quickjs.c:49949
            if (p != sp->len)
    80021960:	405c                	lw	a5,4(s0)
    80021962:	5732                	lw	a4,44(sp)
quickjs-nuttx/quickjs.c:49872
    rv = JS_NAN;
    80021964:	491d                	li	s2,7
quickjs-nuttx/quickjs.c:49949
            if (p != sp->len)
    80021966:	1786                	slli	a5,a5,0x21
    80021968:	9385                	srli	a5,a5,0x21
    8002196a:	04f71d63          	bne	a4,a5,800219c4 <js_Date_parse+0x29c>
quickjs-nuttx/quickjs.c:49997
        for (tz = 0; p < sp->len; p++) {
    8002196e:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:50012
    for(i = 0; i < 7; i++)
    80021970:	03800713          	li	a4,56
quickjs-nuttx/quickjs.c:50013 (discriminator 3)
        fields1[i] = fields[i];
    80021974:	1090                	addi	a2,sp,96
    80021976:	963e                	add	a2,a2,a5
    80021978:	6210                	ld	a2,0(a2)
    8002197a:	0934                	addi	a3,sp,152
    8002197c:	96be                	add	a3,a3,a5
    8002197e:	d22677d3          	fcvt.d.l	fa5,a2
quickjs-nuttx/quickjs.c:50012 (discriminator 3)
    for(i = 0; i < 7; i++)
    80021982:	07a1                	addi	a5,a5,8
quickjs-nuttx/quickjs.c:50013 (discriminator 3)
        fields1[i] = fields[i];
    80021984:	a29c                	fsd	fa5,0(a3)
quickjs-nuttx/quickjs.c:50012 (discriminator 3)
    for(i = 0; i < 7; i++)
    80021986:	fee797e3          	bne	a5,a4,80021974 <js_Date_parse+0x24c>
quickjs-nuttx/quickjs.c:50014
    d = set_date_fields(fields1, is_local) - tz * 60000;
    8002198a:	85ce                	mv	a1,s3
    8002198c:	0928                	addi	a0,sp,152
    8002198e:	e0be80ef          	jal	ra,8000a798 <set_date_fields>
    80021992:	67bd                	lui	a5,0xf
    80021994:	a6078793          	addi	a5,a5,-1440 # ea60 <asinh-0x7fff15a0>
    80021998:	02f484b3          	mul	s1,s1,a5
    8002199c:	d224f7d3          	fcvt.d.l	fa5,s1
    800219a0:	0af577d3          	fsub.d	fa5,fa0,fa5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    800219a4:	c20796d3          	fcvt.w.d	a3,fa5,rtz
js_Date_parse():
quickjs-nuttx/quickjs.c:50014
    800219a8:	e20787d3          	fmv.x.d	a5,fa5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    800219ac:	d20687d3          	fcvt.d.w	fa5,a3
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    800219b0:	0006871b          	sext.w	a4,a3
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    800219b4:	e2078653          	fmv.x.d	a2,fa5
    800219b8:	16f61c63          	bne	a2,a5,80021b30 <js_Date_parse+0x408>
quickjs-nuttx/quickjs.h:562
        v = JS_MKVAL(JS_TAG_INT, val);
    800219bc:	ca82                	sw	zero,84(sp)
    800219be:	4901                	li	s2,0
quickjs-nuttx/quickjs.h:566
    return v;
    800219c0:	c8ba                	sw	a4,80(sp)
    800219c2:	2446                	fld	fs0,80(sp)
js_Date_parse():
quickjs-nuttx/quickjs.c:50018
    JS_FreeValue(ctx, s);
    800219c4:	6626                	ld	a2,72(sp)
    800219c6:	85a2                	mv	a1,s0
    800219c8:	8552                	mv	a0,s4
    800219ca:	dd5e90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50019
    return rv;
    800219ce:	a8a2                	fsd	fs0,80(sp)
    800219d0:	ecca                	sd	s2,88(sp)
    800219d2:	bb75                	j	8002178e <js_Date_parse+0x66>
quickjs-nuttx/quickjs.c:49942
            } else if (sgn == 'Z') {
    800219d4:	05a00793          	li	a5,90
quickjs-nuttx/quickjs.c:49872
    rv = JS_NAN;
    800219d8:	491d                	li	s2,7
quickjs-nuttx/quickjs.c:49942
            } else if (sgn == 'Z') {
    800219da:	fef515e3          	bne	a0,a5,800219c4 <js_Date_parse+0x29c>
quickjs-nuttx/quickjs.c:49943
                p++;
    800219de:	2a85                	addiw	s5,s5,1
    800219e0:	d656                	sw	s5,44(sp)
quickjs-nuttx/quickjs.c:49921
        tz = 0;
    800219e2:	4481                	li	s1,0
    800219e4:	bfb5                	j	80021960 <js_Date_parse+0x238>
string_skip_non_spaces():
quickjs-nuttx/quickjs.c:49738
        *pp += 1;
    800219e6:	2485                	addiw	s1,s1,1
    800219e8:	d626                	sw	s1,44(sp)
quickjs-nuttx/quickjs.c:49737
    while (*pp < sp->len && string_get(sp, *pp) != ' ')
    800219ea:	54b2                	lw	s1,44(sp)
    800219ec:	0124d863          	bge	s1,s2,800219fc <js_Date_parse+0x2d4>
    800219f0:	85a6                	mv	a1,s1
    800219f2:	8522                	mv	a0,s0
    800219f4:	a70e60ef          	jal	ra,80007c64 <string_get>
    800219f8:	ff3517e3          	bne	a0,s3,800219e6 <js_Date_parse+0x2be>
js_Date_parse():
quickjs-nuttx/quickjs.c:49956
        string_skip_spaces(sp, &p);
    800219fc:	106c                	addi	a1,sp,44
    800219fe:	8522                	mv	a0,s0
    80021a00:	a09e60ef          	jal	ra,80008408 <string_skip_spaces>
quickjs-nuttx/quickjs.c:49957
        if (p >= sp->len)
    80021a04:	405c                	lw	a5,4(s0)
    80021a06:	55b2                	lw	a1,44(sp)
quickjs-nuttx/quickjs.c:49872
    rv = JS_NAN;
    80021a08:	491d                	li	s2,7
quickjs-nuttx/quickjs.c:49957
        if (p >= sp->len)
    80021a0a:	1786                	slli	a5,a5,0x21
    80021a0c:	9385                	srli	a5,a5,0x21
    80021a0e:	faf5dbe3          	bge	a1,a5,800219c4 <js_Date_parse+0x29c>
quickjs-nuttx/quickjs.c:49959
        c = string_get(sp, p);
    80021a12:	8522                	mv	a0,s0
    80021a14:	a50e60ef          	jal	ra,80007c64 <string_get>
quickjs-nuttx/quickjs.c:49960
        if (c >= '0' && c <= '9') {
    80021a18:	fd05051b          	addiw	a0,a0,-48
    80021a1c:	47a5                	li	a5,9
    80021a1e:	0ca7e563          	bltu	a5,a0,80021ae8 <js_Date_parse+0x3c0>
quickjs-nuttx/quickjs.c:49962
            if (string_get_digits(sp, &p, &fields[2]))
    80021a22:	1890                	addi	a2,sp,112
    80021a24:	106c                	addi	a1,sp,44
    80021a26:	8522                	mv	a0,s0
    80021a28:	a31e60ef          	jal	ra,80008458 <string_get_digits>
    80021a2c:	fd41                	bnez	a0,800219c4 <js_Date_parse+0x29c>
quickjs-nuttx/quickjs.c:49964
            if (string_get_month(sp, &p, &fields[1]))
    80021a2e:	10b0                	addi	a2,sp,104
    80021a30:	106c                	addi	a1,sp,44
    80021a32:	8522                	mv	a0,s0
    80021a34:	b7ee80ef          	jal	ra,80009db2 <string_get_month>
    80021a38:	f551                	bnez	a0,800219c4 <js_Date_parse+0x29c>
quickjs-nuttx/quickjs.c:49975
        string_skip_spaces(sp, &p);
    80021a3a:	106c                	addi	a1,sp,44
    80021a3c:	8522                	mv	a0,s0
    80021a3e:	9cbe60ef          	jal	ra,80008408 <string_skip_spaces>
quickjs-nuttx/quickjs.c:49976
        if (string_get_signed_digits(sp, &p, &fields[0]))
    80021a42:	1090                	addi	a2,sp,96
    80021a44:	106c                	addi	a1,sp,44
    80021a46:	8522                	mv	a0,s0
    80021a48:	a95e60ef          	jal	ra,800084dc <string_get_signed_digits>
quickjs-nuttx/quickjs.c:49872
    rv = JS_NAN;
    80021a4c:	491d                	li	s2,7
quickjs-nuttx/quickjs.c:49976
        if (string_get_signed_digits(sp, &p, &fields[0]))
    80021a4e:	f93d                	bnez	a0,800219c4 <js_Date_parse+0x29c>
quickjs-nuttx/quickjs.c:49980
        string_skip_spaces(sp, &p);
    80021a50:	106c                	addi	a1,sp,44
    80021a52:	8522                	mv	a0,s0
    80021a54:	800004b7          	lui	s1,0x80000
    80021a58:	9b1e60ef          	jal	ra,80008408 <string_skip_spaces>
quickjs-nuttx/quickjs.c:49982
            if (i == 1 || i == 2) {
    80021a5c:	07810c13          	addi	s8,sp,120
quickjs-nuttx/quickjs.c:49980
        string_skip_spaces(sp, &p);
    80021a60:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:49981
        for(i = 0; i < 3; i++) {
    80021a62:	4a89                	li	s5,2
    80021a64:	fff4c493          	not	s1,s1
quickjs-nuttx/quickjs.c:49985
                if (string_get(sp, p) != ':')
    80021a68:	03a00b13          	li	s6,58
quickjs-nuttx/quickjs.c:49989
            if (string_get_digits(sp, &p, &fields[3 + i]))
    80021a6c:	8662                	mv	a2,s8
    80021a6e:	106c                	addi	a1,sp,44
    80021a70:	8522                	mv	a0,s0
    80021a72:	9e7e60ef          	jal	ra,80008458 <string_get_digits>
    80021a76:	89aa                	mv	s3,a0
    80021a78:	e0051ce3          	bnez	a0,80021890 <js_Date_parse+0x168>
quickjs-nuttx/quickjs.c:49981 (discriminator 2)
        for(i = 0; i < 3; i++) {
    80021a7c:	405c                	lw	a5,4(s0)
    80021a7e:	095b9763          	bne	s7,s5,80021b0c <js_Date_parse+0x3e4>
quickjs-nuttx/quickjs.c:49997
        for (tz = 0; p < sp->len; p++) {
    80021a82:	8cfd                	and	s1,s1,a5
    80021a84:	2481                	sext.w	s1,s1
quickjs-nuttx/quickjs.c:49999
            if (sgn == '+' || sgn == '-') {
    80021a86:	02b00b13          	li	s6,43
    80021a8a:	02d00b93          	li	s7,45
quickjs-nuttx/quickjs.c:49997 (discriminator 1)
        for (tz = 0; p < sp->len; p++) {
    80021a8e:	5932                	lw	s2,44(sp)
    80021a90:	e49953e3          	bge	s2,s1,800218d6 <js_Date_parse+0x1ae>
quickjs-nuttx/quickjs.c:49998
            sgn = string_get(sp, p);
    80021a94:	85ca                	mv	a1,s2
    80021a96:	8522                	mv	a0,s0
    80021a98:	9cce60ef          	jal	ra,80007c64 <string_get>
    80021a9c:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:49997
        for (tz = 0; p < sp->len; p++) {
    80021a9e:	0019079b          	addiw	a5,s2,1
quickjs-nuttx/quickjs.c:49999
            if (sgn == '+' || sgn == '-') {
    80021aa2:	01650463          	beq	a0,s6,80021aaa <js_Date_parse+0x382>
quickjs-nuttx/quickjs.c:49999 (discriminator 1)
    80021aa6:	09751363          	bne	a0,s7,80021b2c <js_Date_parse+0x404>
quickjs-nuttx/quickjs.c:50001
                if (string_get_fixed_width_digits(sp, &p, 2, &hh))
    80021aaa:	1810                	addi	a2,sp,48
    80021aac:	106c                	addi	a1,sp,44
    80021aae:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:50000
                p++;
    80021ab0:	d63e                	sw	a5,44(sp)
quickjs-nuttx/quickjs.c:50001
                if (string_get_fixed_width_digits(sp, &p, 2, &hh))
    80021ab2:	ba6e80ef          	jal	ra,80009e58 <string_get_fixed_width_digits.constprop.0>
quickjs-nuttx/quickjs.c:49872
    rv = JS_NAN;
    80021ab6:	491d                	li	s2,7
quickjs-nuttx/quickjs.c:50001
                if (string_get_fixed_width_digits(sp, &p, 2, &hh))
    80021ab8:	f00516e3          	bnez	a0,800219c4 <js_Date_parse+0x29c>
quickjs-nuttx/quickjs.c:50003
                if (string_get_fixed_width_digits(sp, &p, 2, &mm))
    80021abc:	1830                	addi	a2,sp,56
    80021abe:	106c                	addi	a1,sp,44
    80021ac0:	8522                	mv	a0,s0
    80021ac2:	b96e80ef          	jal	ra,80009e58 <string_get_fixed_width_digits.constprop.0>
    80021ac6:	89aa                	mv	s3,a0
    80021ac8:	ee051ee3          	bnez	a0,800219c4 <js_Date_parse+0x29c>
quickjs-nuttx/quickjs.c:50005
                tz = hh * 60 + mm;
    80021acc:	77c2                	ld	a5,48(sp)
    80021ace:	03c00493          	li	s1,60
    80021ad2:	02f484b3          	mul	s1,s1,a5
    80021ad6:	77e2                	ld	a5,56(sp)
    80021ad8:	94be                	add	s1,s1,a5
quickjs-nuttx/quickjs.c:50006
                if (sgn == '-')
    80021ada:	02d00793          	li	a5,45
    80021ade:	e8fa98e3          	bne	s5,a5,8002196e <js_Date_parse+0x246>
quickjs-nuttx/quickjs.c:50007
                    tz = -tz;
    80021ae2:	409004b3          	neg	s1,s1
    80021ae6:	b561                	j	8002196e <js_Date_parse+0x246>
quickjs-nuttx/quickjs.c:49968
            if (string_get_month(sp, &p, &fields[1]))
    80021ae8:	10b0                	addi	a2,sp,104
    80021aea:	106c                	addi	a1,sp,44
    80021aec:	8522                	mv	a0,s0
    80021aee:	ac4e80ef          	jal	ra,80009db2 <string_get_month>
quickjs-nuttx/quickjs.c:49872
    rv = JS_NAN;
    80021af2:	491d                	li	s2,7
quickjs-nuttx/quickjs.c:49968
            if (string_get_month(sp, &p, &fields[1]))
    80021af4:	ec0518e3          	bnez	a0,800219c4 <js_Date_parse+0x29c>
quickjs-nuttx/quickjs.c:49970
            string_skip_spaces(sp, &p);
    80021af8:	106c                	addi	a1,sp,44
    80021afa:	8522                	mv	a0,s0
    80021afc:	90de60ef          	jal	ra,80008408 <string_skip_spaces>
quickjs-nuttx/quickjs.c:49971
            if (string_get_digits(sp, &p, &fields[2]))
    80021b00:	1890                	addi	a2,sp,112
    80021b02:	106c                	addi	a1,sp,44
    80021b04:	8522                	mv	a0,s0
    80021b06:	953e60ef          	jal	ra,80008458 <string_get_digits>
    80021b0a:	b73d                	j	80021a38 <js_Date_parse+0x310>
quickjs-nuttx/quickjs.c:49983
                if (p >= sp->len)
    80021b0c:	5932                	lw	s2,44(sp)
    80021b0e:	8fe5                	and	a5,a5,s1
    80021b10:	2781                	sext.w	a5,a5
    80021b12:	d6f95fe3          	bge	s2,a5,80021890 <js_Date_parse+0x168>
quickjs-nuttx/quickjs.c:49985
                if (string_get(sp, p) != ':')
    80021b16:	85ca                	mv	a1,s2
    80021b18:	8522                	mv	a0,s0
    80021b1a:	94ae60ef          	jal	ra,80007c64 <string_get>
    80021b1e:	d76519e3          	bne	a0,s6,80021890 <js_Date_parse+0x168>
quickjs-nuttx/quickjs.c:49987
                p++;
    80021b22:	2905                	addiw	s2,s2,1
    80021b24:	d64a                	sw	s2,44(sp)
    80021b26:	0b85                	addi	s7,s7,1
    80021b28:	0c21                	addi	s8,s8,8
    80021b2a:	b789                	j	80021a6c <js_Date_parse+0x344>
quickjs-nuttx/quickjs.c:49997 (discriminator 2)
        for (tz = 0; p < sp->len; p++) {
    80021b2c:	d63e                	sw	a5,44(sp)
    80021b2e:	b785                	j	80021a8e <js_Date_parse+0x366>
quickjs-nuttx/quickjs.h:230
    return v;
    80021b30:	e8be                	sd	a5,80(sp)
    80021b32:	0007871b          	sext.w	a4,a5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80021b36:	491d                	li	s2,7
    80021b38:	b561                	j	800219c0 <js_Date_parse+0x298>

0000000080021b3a <js_symbol_for>:
js_symbol_for():
quickjs-nuttx/quickjs.c:46746
    str = JS_ToString(ctx, argv[0]);
    80021b3a:	630c                	ld	a1,0(a4)
    80021b3c:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:46743
{
    80021b3e:	7139                	addi	sp,sp,-64
    80021b40:	f822                	sd	s0,48(sp)
    80021b42:	fc06                	sd	ra,56(sp)
    80021b44:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:46746
    str = JS_ToString(ctx, argv[0]);
    80021b46:	c37fe0ef          	jal	ra,8002077c <JS_ToString>
quickjs-nuttx/quickjs.c:46747
    if (JS_IsException(str))
    80021b4a:	2581                	sext.w	a1,a1
    80021b4c:	4799                	li	a5,6
    80021b4e:	00f58a63          	beq	a1,a5,80021b62 <js_symbol_for+0x28>
quickjs-nuttx/quickjs.c:46749
    return JS_NewSymbol(ctx, JS_VALUE_GET_STRING(str), JS_ATOM_TYPE_GLOBAL_SYMBOL);
    80021b52:	85aa                	mv	a1,a0
    80021b54:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:46750
}
    80021b56:	7442                	ld	s0,48(sp)
    80021b58:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:46749
    return JS_NewSymbol(ctx, JS_VALUE_GET_STRING(str), JS_ATOM_TYPE_GLOBAL_SYMBOL);
    80021b5a:	4609                	li	a2,2
quickjs-nuttx/quickjs.c:46750
}
    80021b5c:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:46749
    return JS_NewSymbol(ctx, JS_VALUE_GET_STRING(str), JS_ATOM_TYPE_GLOBAL_SYMBOL);
    80021b5e:	b24fc06f          	j	8001de82 <JS_NewSymbol>
quickjs-nuttx/quickjs.c:46750 (discriminator 1)
}
    80021b62:	70e2                	ld	ra,56(sp)
    80021b64:	7442                	ld	s0,48(sp)
    80021b66:	4501                	li	a0,0
    80021b68:	4599                	li	a1,6
    80021b6a:	6121                	addi	sp,sp,64
    80021b6c:	8082                	ret

0000000080021b6e <js_symbol_constructor>:
js_symbol_constructor():
quickjs-nuttx/quickjs.c:46667
    if (!JS_IsUndefined(new_target))
    80021b6e:	0006079b          	sext.w	a5,a2
    80021b72:	460d                	li	a2,3
    80021b74:	00c78863          	beq	a5,a2,80021b84 <js_symbol_constructor+0x16>
quickjs-nuttx/quickjs.c:46668
        return JS_ThrowTypeError(ctx, "not a constructor");
    80021b78:	00049597          	auipc	a1,0x49
    80021b7c:	82058593          	addi	a1,a1,-2016 # 8006a398 <qjsc_repl+0x4de8>
    80021b80:	aedf606f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:46663
{
    80021b84:	7139                	addi	sp,sp,-64
    80021b86:	f822                	sd	s0,48(sp)
    80021b88:	fc06                	sd	ra,56(sp)
    80021b8a:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:46669
    if (argc == 0 || JS_IsUndefined(argv[0])) {
    80021b8c:	ca8d                	beqz	a3,80021bbe <js_symbol_constructor+0x50>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80021b8e:	6710                	ld	a2,8(a4)
js_symbol_constructor():
quickjs-nuttx/quickjs.c:46670
        p = NULL;
    80021b90:	4581                	li	a1,0
quickjs-nuttx/quickjs.c:46669
    if (argc == 0 || JS_IsUndefined(argv[0])) {
    80021b92:	0006069b          	sext.w	a3,a2
    80021b96:	02f68563          	beq	a3,a5,80021bc0 <js_symbol_constructor+0x52>
quickjs-nuttx/quickjs.c:46672
        str = JS_ToString(ctx, argv[0]);
    80021b9a:	630c                	ld	a1,0(a4)
    80021b9c:	be1fe0ef          	jal	ra,8002077c <JS_ToString>
    80021ba0:	87ae                	mv	a5,a1
    80021ba2:	ec2e                	sd	a1,24(sp)
    80021ba4:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:46673
        if (JS_IsException(str))
    80021ba6:	2781                	sext.w	a5,a5
    80021ba8:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:46672
        str = JS_ToString(ctx, argv[0]);
    80021baa:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs.c:46673
        if (JS_IsException(str))
    80021bac:	00e79a63          	bne	a5,a4,80021bc0 <js_symbol_constructor+0x52>
quickjs-nuttx/quickjs.c:46674
            return JS_EXCEPTION;
    80021bb0:	f002                	sd	zero,32(sp)
    80021bb2:	4599                	li	a1,6
quickjs-nuttx/quickjs.c:46678
}
    80021bb4:	70e2                	ld	ra,56(sp)
    80021bb6:	7442                	ld	s0,48(sp)
    80021bb8:	7502                	ld	a0,32(sp)
    80021bba:	6121                	addi	sp,sp,64
    80021bbc:	8082                	ret
quickjs-nuttx/quickjs.c:46670
        p = NULL;
    80021bbe:	4581                	li	a1,0
quickjs-nuttx/quickjs.c:46677
    return JS_NewSymbol(ctx, p, JS_ATOM_TYPE_SYMBOL);
    80021bc0:	460d                	li	a2,3
    80021bc2:	8522                	mv	a0,s0
    80021bc4:	abefc0ef          	jal	ra,8001de82 <JS_NewSymbol>
    80021bc8:	f02a                	sd	a0,32(sp)
    80021bca:	b7ed                	j	80021bb4 <js_symbol_constructor+0x46>

0000000080021bcc <js_string_localeCompare>:
js_string_localeCompare():
quickjs-nuttx/quickjs.c:42627
{
    80021bcc:	7175                	addi	sp,sp,-144
    80021bce:	e122                	sd	s0,128(sp)
    80021bd0:	fca6                	sd	s1,120(sp)
    80021bd2:	f0d2                	sd	s4,96(sp)
    80021bd4:	e506                	sd	ra,136(sp)
    80021bd6:	f8ca                	sd	s2,112(sp)
    80021bd8:	f4ce                	sd	s3,104(sp)
    80021bda:	842a                	mv	s0,a0
    80021bdc:	e02e                	sd	a1,0(sp)
    80021bde:	e432                	sd	a2,8(sp)
    80021be0:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:42632
    a = JS_ToStringCheckObject(ctx, this_val);
    80021be2:	a9eff0ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    80021be6:	f42e                	sd	a1,40(sp)
    80021be8:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:42633
    if (JS_IsException(a))
    80021bea:	2581                	sext.w	a1,a1
    80021bec:	4a19                	li	s4,6
    80021bee:	01459e63          	bne	a1,s4,80021c0a <js_string_localeCompare+0x3e>
quickjs-nuttx/quickjs.c:42634
        return JS_EXCEPTION;
    80021bf2:	e082                	sd	zero,64(sp)
    80021bf4:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:42657 (discriminator 1)
}
    80021bf6:	60aa                	ld	ra,136(sp)
    80021bf8:	640a                	ld	s0,128(sp)
    80021bfa:	6506                	ld	a0,64(sp)
    80021bfc:	65a6                	ld	a1,72(sp)
    80021bfe:	74e6                	ld	s1,120(sp)
    80021c00:	7946                	ld	s2,112(sp)
    80021c02:	79a6                	ld	s3,104(sp)
    80021c04:	7a06                	ld	s4,96(sp)
    80021c06:	6149                	addi	sp,sp,144
    80021c08:	8082                	ret
quickjs-nuttx/quickjs.c:42635
    b = JS_ToString(ctx, argv[0]);
    80021c0a:	608c                	ld	a1,0(s1)
    80021c0c:	6490                	ld	a2,8(s1)
    80021c0e:	8522                	mv	a0,s0
    80021c10:	b6dfe0ef          	jal	ra,8002077c <JS_ToString>
    80021c14:	f82a                	sd	a0,48(sp)
    80021c16:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:42636
    if (JS_IsException(b)) {
    80021c18:	0005849b          	sext.w	s1,a1
    80021c1c:	01449a63          	bne	s1,s4,80021c30 <js_string_localeCompare+0x64>
quickjs-nuttx/quickjs.c:42637
        JS_FreeValue(ctx, a);
    80021c20:	7582                	ld	a1,32(sp)
    80021c22:	7622                	ld	a2,40(sp)
    80021c24:	8522                	mv	a0,s0
    80021c26:	b79e90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42638
        return JS_EXCEPTION;
    80021c2a:	e082                	sd	zero,64(sp)
    80021c2c:	e4a6                	sd	s1,72(sp)
    80021c2e:	b7e1                	j	80021bf6 <js_string_localeCompare+0x2a>
quickjs-nuttx/quickjs.c:42640
    a_len = js_string_normalize1(ctx, &a_buf, a, UNICODE_NFC);
    80021c30:	7602                	ld	a2,32(sp)
    80021c32:	76a2                	ld	a3,40(sp)
    80021c34:	080c                	addi	a1,sp,16
    80021c36:	4701                	li	a4,0
    80021c38:	8522                	mv	a0,s0
    80021c3a:	9a3ff0ef          	jal	ra,800215dc <js_string_normalize1>
quickjs-nuttx/quickjs.c:42641
    JS_FreeValue(ctx, a);
    80021c3e:	7582                	ld	a1,32(sp)
    80021c40:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:42640
    a_len = js_string_normalize1(ctx, &a_buf, a, UNICODE_NFC);
    80021c42:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:42641
    JS_FreeValue(ctx, a);
    80021c44:	8522                	mv	a0,s0
    80021c46:	b59e90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42642
    if (a_len < 0) {
    80021c4a:	0009da63          	bgez	s3,80021c5e <js_string_localeCompare+0x92>
quickjs-nuttx/quickjs.c:42643
        JS_FreeValue(ctx, b);
    80021c4e:	75c2                	ld	a1,48(sp)
    80021c50:	7662                	ld	a2,56(sp)
    80021c52:	8522                	mv	a0,s0
    80021c54:	b4be90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42651
        return JS_EXCEPTION;
    80021c58:	e082                	sd	zero,64(sp)
    80021c5a:	e4d2                	sd	s4,72(sp)
    80021c5c:	bf69                	j	80021bf6 <js_string_localeCompare+0x2a>
quickjs-nuttx/quickjs.c:42647
    b_len = js_string_normalize1(ctx, &b_buf, b, UNICODE_NFC);
    80021c5e:	7642                	ld	a2,48(sp)
    80021c60:	76e2                	ld	a3,56(sp)
    80021c62:	4701                	li	a4,0
    80021c64:	082c                	addi	a1,sp,24
    80021c66:	8522                	mv	a0,s0
    80021c68:	975ff0ef          	jal	ra,800215dc <js_string_normalize1>
quickjs-nuttx/quickjs.c:42648
    JS_FreeValue(ctx, b);
    80021c6c:	75c2                	ld	a1,48(sp)
    80021c6e:	7662                	ld	a2,56(sp)
quickjs-nuttx/quickjs.c:42647
    b_len = js_string_normalize1(ctx, &b_buf, b, UNICODE_NFC);
    80021c70:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:42648
    JS_FreeValue(ctx, b);
    80021c72:	8522                	mv	a0,s0
    80021c74:	b2be90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42649
    if (b_len < 0) {
    80021c78:	65c2                	ld	a1,16(sp)
    80021c7a:	00095663          	bgez	s2,80021c86 <js_string_localeCompare+0xba>
quickjs-nuttx/quickjs.c:42650
        js_free(ctx, a_buf);
    80021c7e:	8522                	mv	a0,s0
    80021c80:	b76e90ef          	jal	ra,8000aff6 <js_free>
    80021c84:	bfd1                	j	80021c58 <js_string_localeCompare+0x8c>
quickjs-nuttx/quickjs.c:42653
    cmp = js_UTF32_compare(a_buf, a_len, b_buf, b_len);
    80021c86:	6662                	ld	a2,24(sp)
quickjs-nuttx/cutils.h:79
    if (a < b)
    80021c88:	0009879b          	sext.w	a5,s3
    80021c8c:	01395463          	bge	s2,s3,80021c94 <js_string_localeCompare+0xc8>
    80021c90:	0009079b          	sext.w	a5,s2
js_UTF32_compare():
quickjs-nuttx/quickjs.c:42610
    for(i = 0; i < len; i++) {
    80021c94:	4701                	li	a4,0
    80021c96:	0007069b          	sext.w	a3,a4
    80021c9a:	00f6ca63          	blt	a3,a5,80021cae <js_string_localeCompare+0xe2>
quickjs-nuttx/quickjs.c:42617
        res = 0;
    80021c9e:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:42616
    if (buf1_len == buf2_len)
    80021ca0:	03298163          	beq	s3,s2,80021cc2 <js_string_localeCompare+0xf6>
quickjs-nuttx/quickjs.c:42619
        res = -1;
    80021ca4:	54fd                	li	s1,-1
quickjs-nuttx/quickjs.c:42618
    else if (buf1_len < buf2_len)
    80021ca6:	0129ce63          	blt	s3,s2,80021cc2 <js_string_localeCompare+0xf6>
quickjs-nuttx/quickjs.c:42621
        res = 1;
    80021caa:	4485                	li	s1,1
    80021cac:	a819                	j	80021cc2 <js_string_localeCompare+0xf6>
quickjs-nuttx/quickjs.c:42612
        c = buf1[i] - buf2[i];
    80021cae:	00271693          	slli	a3,a4,0x2
    80021cb2:	00d58533          	add	a0,a1,a3
    80021cb6:	96b2                	add	a3,a3,a2
    80021cb8:	4104                	lw	s1,0(a0)
    80021cba:	4294                	lw	a3,0(a3)
quickjs-nuttx/quickjs.c:42613
        if (c != 0)
    80021cbc:	0705                	addi	a4,a4,1
quickjs-nuttx/quickjs.c:42612
        c = buf1[i] - buf2[i];
    80021cbe:	9c95                	subw	s1,s1,a3
quickjs-nuttx/quickjs.c:42613
        if (c != 0)
    80021cc0:	d8f9                	beqz	s1,80021c96 <js_string_localeCompare+0xca>
js_string_localeCompare():
quickjs-nuttx/quickjs.c:42654
    js_free(ctx, a_buf);
    80021cc2:	8522                	mv	a0,s0
    80021cc4:	b32e90ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:42655
    js_free(ctx, b_buf);
    80021cc8:	65e2                	ld	a1,24(sp)
    80021cca:	8522                	mv	a0,s0
    80021ccc:	b2ae90ef          	jal	ra,8000aff6 <js_free>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80021cd0:	ca82                	sw	zero,84(sp)
    80021cd2:	c8a6                	sw	s1,80(sp)
    80021cd4:	67c6                	ld	a5,80(sp)
    80021cd6:	e482                	sd	zero,72(sp)
    80021cd8:	e0be                	sd	a5,64(sp)
    80021cda:	bf31                	j	80021bf6 <js_string_localeCompare+0x2a>

0000000080021cdc <js_global_unescape>:
js_global_unescape():
quickjs-nuttx/quickjs.c:49238
{
    80021cdc:	7135                	addi	sp,sp,-160
    80021cde:	e526                	sd	s1,136(sp)
    80021ce0:	fcce                	sd	s3,120(sp)
    80021ce2:	ed06                	sd	ra,152(sp)
    80021ce4:	e922                	sd	s0,144(sp)
    80021ce6:	e14a                	sd	s2,128(sp)
    80021ce8:	f8d2                	sd	s4,112(sp)
    80021cea:	f4d6                	sd	s5,104(sp)
    80021cec:	f0da                	sd	s6,96(sp)
    80021cee:	ecde                	sd	s7,88(sp)
    80021cf0:	e02e                	sd	a1,0(sp)
    80021cf2:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:49244
    str = JS_ToString(ctx, argv[0]);
    80021cf4:	630c                	ld	a1,0(a4)
    80021cf6:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:49238
{
    80021cf8:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:49244
    str = JS_ToString(ctx, argv[0]);
    80021cfa:	a83fe0ef          	jal	ra,8002077c <JS_ToString>
    80021cfe:	e82a                	sd	a0,16(sp)
    80021d00:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:49245
    if (JS_IsException(str))
    80021d02:	0005871b          	sext.w	a4,a1
    80021d06:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:49244
    str = JS_ToString(ctx, argv[0]);
    80021d08:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:49245
    if (JS_IsException(str))
    80021d0a:	02f71163          	bne	a4,a5,80021d2c <js_global_unescape+0x50>
quickjs-nuttx/quickjs.c:49246
        return str;
    80021d0e:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:49269
}
    80021d10:	60ea                	ld	ra,152(sp)
    80021d12:	644a                	ld	s0,144(sp)
quickjs-nuttx/quickjs.c:49268
    return string_buffer_end(b);
    80021d14:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:49269
}
    80021d16:	7502                	ld	a0,32(sp)
    80021d18:	75a2                	ld	a1,40(sp)
    80021d1a:	64aa                	ld	s1,136(sp)
    80021d1c:	690a                	ld	s2,128(sp)
    80021d1e:	79e6                	ld	s3,120(sp)
    80021d20:	7a46                	ld	s4,112(sp)
    80021d22:	7aa6                	ld	s5,104(sp)
    80021d24:	7b06                	ld	s6,96(sp)
    80021d26:	6be6                	ld	s7,88(sp)
    80021d28:	610d                	addi	sp,sp,160
    80021d2a:	8082                	ret
quickjs-nuttx/quickjs.c:49248
    string_buffer_init(ctx, b, 0);
    80021d2c:	4601                	li	a2,0
    80021d2e:	180c                	addi	a1,sp,48
    80021d30:	854e                	mv	a0,s3
    80021d32:	a4afc0ef          	jal	ra,8001df7c <string_buffer_init>
quickjs-nuttx/quickjs.c:49250
    for (i = 0, len = p->len; i < len; i++) {
    80021d36:	0044a903          	lw	s2,4(s1) # ffffffff80000004 <_ebss+0xfffffffeffefee9e>
    80021d3a:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:49252
        if (c == '%') {
    80021d3c:	02500b13          	li	s6,37
quickjs-nuttx/quickjs.c:49250
    for (i = 0, len = p->len; i < len; i++) {
    80021d40:	1906                	slli	s2,s2,0x21
    80021d42:	02195913          	srli	s2,s2,0x21
quickjs-nuttx/quickjs.c:49254
            &&  string_get(p, i + 1) == 'u'
    80021d46:	07500b93          	li	s7,117
quickjs-nuttx/quickjs.c:49250 (discriminator 1)
    for (i = 0, len = p->len; i < len; i++) {
    80021d4a:	01244c63          	blt	s0,s2,80021d62 <js_global_unescape+0x86>
quickjs-nuttx/quickjs.c:49267
    JS_FreeValue(ctx, str);
    80021d4e:	65c2                	ld	a1,16(sp)
    80021d50:	6662                	ld	a2,24(sp)
    80021d52:	854e                	mv	a0,s3
    80021d54:	a4be90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:49268
    return string_buffer_end(b);
    80021d58:	1808                	addi	a0,sp,48
    80021d5a:	f47fd0ef          	jal	ra,8001fca0 <string_buffer_end>
    80021d5e:	f02a                	sd	a0,32(sp)
    80021d60:	bf45                	j	80021d10 <js_global_unescape+0x34>
quickjs-nuttx/quickjs.c:49251
        c = string_get(p, i);
    80021d62:	85a2                	mv	a1,s0
    80021d64:	8526                	mv	a0,s1
    80021d66:	effe50ef          	jal	ra,80007c64 <string_get>
    80021d6a:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:49252
        if (c == '%') {
    80021d6c:	03651863          	bne	a0,s6,80021d9c <js_global_unescape+0xc0>
quickjs-nuttx/quickjs.c:49253
            if (i + 6 <= len
    80021d70:	0064079b          	addiw	a5,s0,6
quickjs-nuttx/quickjs.c:49254
            &&  string_get(p, i + 1) == 'u'
    80021d74:	00140a9b          	addiw	s5,s0,1
quickjs-nuttx/quickjs.c:49253
            if (i + 6 <= len
    80021d78:	02f94963          	blt	s2,a5,80021daa <js_global_unescape+0xce>
quickjs-nuttx/quickjs.c:49254
            &&  string_get(p, i + 1) == 'u'
    80021d7c:	85d6                	mv	a1,s5
    80021d7e:	8526                	mv	a0,s1
    80021d80:	ee5e50ef          	jal	ra,80007c64 <string_get>
    80021d84:	03751363          	bne	a0,s7,80021daa <js_global_unescape+0xce>
quickjs-nuttx/quickjs.c:49255
            &&  (n = string_get_hex(p, i + 2, 4)) >= 0) {
    80021d88:	4611                	li	a2,4
    80021d8a:	0024059b          	addiw	a1,s0,2
    80021d8e:	8526                	mv	a0,s1
    80021d90:	dd4e60ef          	jal	ra,80008364 <string_get_hex>
    80021d94:	00054b63          	bltz	a0,80021daa <js_global_unescape+0xce>
quickjs-nuttx/quickjs.c:49257
                i += 6 - 1;
    80021d98:	2415                	addiw	s0,s0,5
quickjs-nuttx/quickjs.c:49262
                i += 3 - 1;
    80021d9a:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:49265 (discriminator 2)
        string_buffer_putc16(b, c);
    80021d9c:	000a059b          	sext.w	a1,s4
    80021da0:	1808                	addi	a0,sp,48
    80021da2:	f91fc0ef          	jal	ra,8001ed32 <string_buffer_putc16>
quickjs-nuttx/quickjs.c:49250 (discriminator 2)
    for (i = 0, len = p->len; i < len; i++) {
    80021da6:	2405                	addiw	s0,s0,1
    80021da8:	b74d                	j	80021d4a <js_global_unescape+0x6e>
quickjs-nuttx/quickjs.c:49259
            if (i + 3 <= len
    80021daa:	0034079b          	addiw	a5,s0,3
    80021dae:	fef947e3          	blt	s2,a5,80021d9c <js_global_unescape+0xc0>
quickjs-nuttx/quickjs.c:49260
            &&  (n = string_get_hex(p, i + 1, 2)) >= 0) {
    80021db2:	4609                	li	a2,2
    80021db4:	85d6                	mv	a1,s5
    80021db6:	8526                	mv	a0,s1
    80021db8:	dace60ef          	jal	ra,80008364 <string_get_hex>
    80021dbc:	fe0540e3          	bltz	a0,80021d9c <js_global_unescape+0xc0>
quickjs-nuttx/quickjs.c:49262
                i += 3 - 1;
    80021dc0:	2409                	addiw	s0,s0,2
    80021dc2:	bfe1                	j	80021d9a <js_global_unescape+0xbe>

0000000080021dc4 <js_global_escape>:
js_global_escape():
quickjs-nuttx/quickjs.c:49212
{
    80021dc4:	7135                	addi	sp,sp,-160
    80021dc6:	e922                	sd	s0,144(sp)
    80021dc8:	e14a                	sd	s2,128(sp)
    80021dca:	ed06                	sd	ra,152(sp)
    80021dcc:	e526                	sd	s1,136(sp)
    80021dce:	fcce                	sd	s3,120(sp)
    80021dd0:	f8d2                	sd	s4,112(sp)
    80021dd2:	f4d6                	sd	s5,104(sp)
    80021dd4:	e82e                	sd	a1,16(sp)
    80021dd6:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:49218
    str = JS_ToString(ctx, argv[0]);
    80021dd8:	630c                	ld	a1,0(a4)
    80021dda:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:49212
{
    80021ddc:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:49218
    str = JS_ToString(ctx, argv[0]);
    80021dde:	99ffe0ef          	jal	ra,8002077c <JS_ToString>
    80021de2:	f02a                	sd	a0,32(sp)
    80021de4:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:49219
    if (JS_IsException(str))
    80021de6:	0005871b          	sext.w	a4,a1
    80021dea:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:49218
    str = JS_ToString(ctx, argv[0]);
    80021dec:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:49219
    if (JS_IsException(str))
    80021dee:	00f71f63          	bne	a4,a5,80021e0c <js_global_escape+0x48>
quickjs-nuttx/quickjs.c:49220
        return str;
    80021df2:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:49234
}
    80021df4:	60ea                	ld	ra,152(sp)
    80021df6:	644a                	ld	s0,144(sp)
quickjs-nuttx/quickjs.c:49233
    return string_buffer_end(b);
    80021df8:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:49234
}
    80021dfa:	7542                	ld	a0,48(sp)
    80021dfc:	75e2                	ld	a1,56(sp)
    80021dfe:	64aa                	ld	s1,136(sp)
    80021e00:	690a                	ld	s2,128(sp)
    80021e02:	79e6                	ld	s3,120(sp)
    80021e04:	7a46                	ld	s4,112(sp)
    80021e06:	7aa6                	ld	s5,104(sp)
    80021e08:	610d                	addi	sp,sp,160
    80021e0a:	8082                	ret
quickjs-nuttx/quickjs.c:49223
    string_buffer_init(ctx, b, p->len);
    80021e0c:	4150                	lw	a2,4(a0)
    80021e0e:	800004b7          	lui	s1,0x80000
    80021e12:	fff4c493          	not	s1,s1
    80021e16:	8e65                	and	a2,a2,s1
    80021e18:	008c                	addi	a1,sp,64
    80021e1a:	854a                	mv	a0,s2
    80021e1c:	960fc0ef          	jal	ra,8001df7c <string_buffer_init>
quickjs-nuttx/quickjs.c:49224
    for (i = 0, len = p->len; i < len; i++) {
    80021e20:	405c                	lw	a5,4(s0)
    80021e22:	4981                	li	s3,0
isUnescaped():
quickjs-nuttx/quickjs.c:49116
    return c < 0x100 &&
    80021e24:	0ff00a13          	li	s4,255
js_global_escape():
quickjs-nuttx/quickjs.c:49224
    for (i = 0, len = p->len; i < len; i++) {
    80021e28:	8cfd                	and	s1,s1,a5
isUnescaped():
quickjs-nuttx/quickjs.c:49117
        memchr(unescaped_chars, c, sizeof(unescaped_chars) - 1);
    80021e2a:	00053a97          	auipc	s5,0x53
    80021e2e:	3c6a8a93          	addi	s5,s5,966 # 800751f0 <unescaped_chars.0>
js_global_escape():
quickjs-nuttx/quickjs.c:49224 (discriminator 1)
    for (i = 0, len = p->len; i < len; i++) {
    80021e32:	0099cc63          	blt	s3,s1,80021e4a <js_global_escape+0x86>
quickjs-nuttx/quickjs.c:49232
    JS_FreeValue(ctx, str);
    80021e36:	7582                	ld	a1,32(sp)
    80021e38:	7622                	ld	a2,40(sp)
    80021e3a:	854a                	mv	a0,s2
    80021e3c:	963e90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:49233
    return string_buffer_end(b);
    80021e40:	0088                	addi	a0,sp,64
    80021e42:	e5ffd0ef          	jal	ra,8001fca0 <string_buffer_end>
    80021e46:	f82a                	sd	a0,48(sp)
    80021e48:	b775                	j	80021df4 <js_global_escape+0x30>
quickjs-nuttx/quickjs.c:49225
        c = string_get(p, i);
    80021e4a:	85ce                	mv	a1,s3
    80021e4c:	8522                	mv	a0,s0
    80021e4e:	e17e50ef          	jal	ra,80007c64 <string_get>
    80021e52:	85aa                	mv	a1,a0
isUnescaped():
quickjs-nuttx/quickjs.c:49116
    return c < 0x100 &&
    80021e54:	02aa4063          	blt	s4,a0,80021e74 <js_global_escape+0xb0>
quickjs-nuttx/quickjs.c:49117
        memchr(unescaped_chars, c, sizeof(unescaped_chars) - 1);
    80021e58:	e42a                	sd	a0,8(sp)
    80021e5a:	04500613          	li	a2,69
    80021e5e:	8556                	mv	a0,s5
    80021e60:	55b410ef          	jal	ra,80063bba <memchr>
quickjs-nuttx/quickjs.c:49116
    return c < 0x100 &&
    80021e64:	65a2                	ld	a1,8(sp)
    80021e66:	c519                	beqz	a0,80021e74 <js_global_escape+0xb0>
js_global_escape():
quickjs-nuttx/quickjs.c:49227
            string_buffer_putc16(b, c);
    80021e68:	2581                	sext.w	a1,a1
    80021e6a:	0088                	addi	a0,sp,64
    80021e6c:	ec7fc0ef          	jal	ra,8001ed32 <string_buffer_putc16>
quickjs-nuttx/quickjs.c:49224 (discriminator 2)
    for (i = 0, len = p->len; i < len; i++) {
    80021e70:	2985                	addiw	s3,s3,1
    80021e72:	b7c1                	j	80021e32 <js_global_escape+0x6e>
quickjs-nuttx/quickjs.c:49229
            encodeURI_hex(b, c);
    80021e74:	0088                	addi	a0,sp,64
    80021e76:	d73fc0ef          	jal	ra,8001ebe8 <encodeURI_hex.isra.0>
    80021e7a:	bfdd                	j	80021e70 <js_global_escape+0xac>

0000000080021e7c <JS_ToCStringLen2>:
JS_ToCStringLen2():
quickjs-nuttx/quickjs.c:3991
{
    80021e7c:	7175                	addi	sp,sp,-144
    80021e7e:	f0d2                	sd	s4,96(sp)
    80021e80:	ecd6                	sd	s5,88(sp)
    80021e82:	e4de                	sd	s7,72(sp)
    80021e84:	e506                	sd	ra,136(sp)
    80021e86:	8bba                	mv	s7,a4
    80021e88:	e122                	sd	s0,128(sp)
    80021e8a:	fca6                	sd	s1,120(sp)
    80021e8c:	f8ca                	sd	s2,112(sp)
    80021e8e:	f4ce                	sd	s3,104(sp)
    80021e90:	e8da                	sd	s6,80(sp)
    80021e92:	e0e2                	sd	s8,64(sp)
    80021e94:	fc66                	sd	s9,56(sp)
    80021e96:	f86a                	sd	s10,48(sp)
    80021e98:	f46e                	sd	s11,40(sp)
    80021e9a:	e032                	sd	a2,0(sp)
    80021e9c:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:3997
    if (JS_VALUE_GET_TAG(val1) != JS_TAG_STRING) {
    80021e9e:	0006871b          	sext.w	a4,a3
    80021ea2:	57e5                	li	a5,-7
quickjs-nuttx/quickjs.c:3991
{
    80021ea4:	8aaa                	mv	s5,a0
    80021ea6:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:3997
    if (JS_VALUE_GET_TAG(val1) != JS_TAG_STRING) {
    80021ea8:	02f70363          	beq	a4,a5,80021ece <JS_ToCStringLen2+0x52>
quickjs-nuttx/quickjs.c:3998
        val = JS_ToString(ctx, val1);
    80021eac:	85b2                	mv	a1,a2
    80021eae:	8636                	mv	a2,a3
    80021eb0:	8cdfe0ef          	jal	ra,8002077c <JS_ToString>
    80021eb4:	ec2e                	sd	a1,24(sp)
    80021eb6:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:3999
        if (JS_IsException(val))
    80021eb8:	2581                	sext.w	a1,a1
    80021eba:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:3998
        val = JS_ToString(ctx, val1);
    80021ebc:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:3999
        if (JS_IsException(val))
    80021ebe:	00f59f63          	bne	a1,a5,80021edc <JS_ToCStringLen2+0x60>
quickjs-nuttx/quickjs.c:4084
    return NULL;
    80021ec2:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:4082
    if (plen)
    80021ec4:	0a0a0463          	beqz	s4,80021f6c <JS_ToCStringLen2+0xf0>
quickjs-nuttx/quickjs.c:4083
        *plen = 0;
    80021ec8:	000a3023          	sd	zero,0(s4)
    80021ecc:	a045                	j	80021f6c <JS_ToCStringLen2+0xf0>
quickjs-nuttx/quickjs.c:4002
        val = JS_DupValue(ctx, val1);
    80021ece:	8532                	mv	a0,a2
    80021ed0:	85b6                	mv	a1,a3
    80021ed2:	d48e80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80021ed6:	84aa                	mv	s1,a0
    80021ed8:	e82a                	sd	a0,16(sp)
    80021eda:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:4006
    len = str->len;
    80021edc:	40dc                	lw	a5,4(s1)
quickjs-nuttx/quickjs.c:4008
        const uint8_t *src = str->u.str8;
    80021ede:	01048b13          	addi	s6,s1,16 # ffffffff80000010 <_ebss+0xfffffffeffefeeaa>
quickjs-nuttx/quickjs.c:4006
    len = str->len;
    80021ee2:	02179993          	slli	s3,a5,0x21
    80021ee6:	0219d693          	srli	a3,s3,0x21
quickjs-nuttx/quickjs.c:4007
    if (!str->is_wide_char) {
    80021eea:	2781                	sext.w	a5,a5
quickjs-nuttx/quickjs.c:4006
    len = str->len;
    80021eec:	89b6                	mv	s3,a3
quickjs-nuttx/quickjs.c:4007
    if (!str->is_wide_char) {
    80021eee:	0807df63          	bgez	a5,80021f8c <JS_ToCStringLen2+0x110>
quickjs-nuttx/quickjs.c:4044
        str_new = js_alloc_string(ctx, len * 3, 0);
    80021ef2:	458d                	li	a1,3
    80021ef4:	02d585bb          	mulw	a1,a1,a3
    80021ef8:	4601                	li	a2,0
    80021efa:	8556                	mv	a0,s5
    80021efc:	822fc0ef          	jal	ra,8001df1e <js_alloc_string>
    80021f00:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:4045
        if (!str_new)
    80021f02:	d161                	beqz	a0,80021ec2 <JS_ToCStringLen2+0x46>
quickjs-nuttx/quickjs.c:4054
                if (c >= 0xd800 && c < 0xdc00) {
    80021f04:	7ccd                	lui	s9,0xffff3
quickjs-nuttx/quickjs.c:4057
                        if (c1 >= 0xdc00 && c1 < 0xe000) {
    80021f06:	7d49                	lui	s10,0xffff2
quickjs-nuttx/quickjs.c:4060
                            c = (((c & 0x3ff) << 10) | (c1 & 0x3ff)) + 0x10000;
    80021f08:	00100db7          	lui	s11,0x100
quickjs-nuttx/quickjs.c:4047
        q = str_new->u.str8;
    80021f0c:	01050413          	addi	s0,a0,16
quickjs-nuttx/quickjs.c:4048
        pos = 0;
    80021f10:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:4051
            if (c < 0x80) {
    80021f12:	07f00813          	li	a6,127
quickjs-nuttx/quickjs.c:4054
                if (c >= 0xd800 && c < 0xdc00) {
    80021f16:	800c8c9b          	addiw	s9,s9,-2048
    80021f1a:	3ff00613          	li	a2,1023
quickjs-nuttx/quickjs.c:4057
                        if (c1 >= 0xdc00 && c1 < 0xe000) {
    80021f1e:	400d0d1b          	addiw	s10,s10,1024
quickjs-nuttx/quickjs.c:4060
                            c = (((c & 0x3ff) << 10) | (c1 & 0x3ff)) + 0x10000;
    80021f22:	c00d8d93          	addi	s11,s11,-1024 # ffc00 <asinh-0x7ff00400>
quickjs-nuttx/quickjs.c:4049
        while (pos < len) {
    80021f26:	09375763          	bge	a4,s3,80021fb4 <JS_ToCStringLen2+0x138>
quickjs-nuttx/quickjs.c:4050
            c = src[pos++];
    80021f2a:	00171793          	slli	a5,a4,0x1
    80021f2e:	97da                	add	a5,a5,s6
    80021f30:	0007d783          	lhu	a5,0(a5)
    80021f34:	00170c1b          	addiw	s8,a4,1
    80021f38:	0007859b          	sext.w	a1,a5
quickjs-nuttx/quickjs.c:4051
            if (c < 0x80) {
    80021f3c:	0ef84a63          	blt	a6,a5,80022030 <JS_ToCStringLen2+0x1b4>
quickjs-nuttx/quickjs.c:4052
                *q++ = c;
    80021f40:	00f40023          	sb	a5,0(s0) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
    80021f44:	0405                	addi	s0,s0,1
    80021f46:	8762                	mv	a4,s8
    80021f48:	bff9                	j	80021f26 <JS_ToCStringLen2+0xaa>
quickjs-nuttx/quickjs.c:4019 (discriminator 3)
            count += src[pos] >> 7;
    80021f4a:	00f48733          	add	a4,s1,a5
    80021f4e:	01074703          	lbu	a4,16(a4)
    80021f52:	0785                	addi	a5,a5,1
    80021f54:	0077571b          	srliw	a4,a4,0x7
    80021f58:	9db9                	addw	a1,a1,a4
quickjs-nuttx/quickjs.c:4018 (discriminator 1)
        for (pos = 0; pos < len; pos++) {
    80021f5a:	0007871b          	sext.w	a4,a5
    80021f5e:	ff3746e3          	blt	a4,s3,80021f4a <JS_ToCStringLen2+0xce>
quickjs-nuttx/quickjs.c:4021
        if (count == 0) {
    80021f62:	e985                	bnez	a1,80021f92 <JS_ToCStringLen2+0x116>
quickjs-nuttx/quickjs.c:4022
            if (plen)
    80021f64:	000a0463          	beqz	s4,80021f6c <JS_ToCStringLen2+0xf0>
quickjs-nuttx/quickjs.c:4023
                *plen = len;
    80021f68:	00da3023          	sd	a3,0(s4)
quickjs-nuttx/quickjs.c:4085
}
    80021f6c:	60aa                	ld	ra,136(sp)
    80021f6e:	640a                	ld	s0,128(sp)
    80021f70:	74e6                	ld	s1,120(sp)
    80021f72:	7946                	ld	s2,112(sp)
    80021f74:	79a6                	ld	s3,104(sp)
    80021f76:	7a06                	ld	s4,96(sp)
    80021f78:	6ae6                	ld	s5,88(sp)
    80021f7a:	6ba6                	ld	s7,72(sp)
    80021f7c:	6c06                	ld	s8,64(sp)
    80021f7e:	7ce2                	ld	s9,56(sp)
    80021f80:	7d42                	ld	s10,48(sp)
    80021f82:	7da2                	ld	s11,40(sp)
    80021f84:	855a                	mv	a0,s6
    80021f86:	6b46                	ld	s6,80(sp)
    80021f88:	6149                	addi	sp,sp,144
    80021f8a:	8082                	ret
    80021f8c:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:4017
        count = 0;
    80021f8e:	4581                	li	a1,0
    80021f90:	b7e9                	j	80021f5a <JS_ToCStringLen2+0xde>
quickjs-nuttx/quickjs.c:4026
        str_new = js_alloc_string(ctx, len + count, 0);
    80021f92:	4601                	li	a2,0
    80021f94:	013585bb          	addw	a1,a1,s3
    80021f98:	8556                	mv	a0,s5
    80021f9a:	f85fb0ef          	jal	ra,8001df1e <js_alloc_string>
    80021f9e:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:4027
        if (!str_new)
    80021fa0:	d10d                	beqz	a0,80021ec2 <JS_ToCStringLen2+0x46>
quickjs-nuttx/quickjs.c:4029
        q = str_new->u.str8;
    80021fa2:	01050413          	addi	s0,a0,16
quickjs-nuttx/quickjs.c:4030
        for (pos = 0; pos < len; pos++) {
    80021fa6:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:4032
            if (c < 0x80) {
    80021fa8:	07f00613          	li	a2,127
quickjs-nuttx/quickjs.c:4030 (discriminator 1)
        for (pos = 0; pos < len; pos++) {
    80021fac:	0006879b          	sext.w	a5,a3
    80021fb0:	0537c563          	blt	a5,s3,80021ffa <JS_ToCStringLen2+0x17e>
quickjs-nuttx/quickjs.c:4075
    *q = '\0';
    80021fb4:	00040023          	sb	zero,0(s0)
quickjs-nuttx/quickjs.c:4076
    str_new->len = q - str_new->u.str8;
    80021fb8:	00492703          	lw	a4,4(s2) # ffffffff80000004 <_ebss+0xfffffffeffefee9e>
    80021fbc:	800007b7          	lui	a5,0x80000
    80021fc0:	01090b13          	addi	s6,s2,16
    80021fc4:	41640433          	sub	s0,s0,s6
    80021fc8:	fff7c993          	not	s3,a5
    80021fcc:	01347433          	and	s0,s0,s3
    80021fd0:	8f7d                	and	a4,a4,a5
quickjs-nuttx/quickjs.c:4077
    JS_FreeValue(ctx, val);
    80021fd2:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs.c:4076
    str_new->len = q - str_new->u.str8;
    80021fd4:	8c59                	or	s0,s0,a4
    80021fd6:	00892223          	sw	s0,4(s2)
quickjs-nuttx/quickjs.c:4077
    JS_FreeValue(ctx, val);
    80021fda:	85a6                	mv	a1,s1
    80021fdc:	8556                	mv	a0,s5
    80021fde:	e826                	sd	s1,16(sp)
    80021fe0:	fbee90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:4078
    if (plen)
    80021fe4:	f80a04e3          	beqz	s4,80021f6c <JS_ToCStringLen2+0xf0>
quickjs-nuttx/quickjs.c:4079
        *plen = str_new->len;
    80021fe8:	00492783          	lw	a5,4(s2)
    80021fec:	0137f7b3          	and	a5,a5,s3
    80021ff0:	1782                	slli	a5,a5,0x20
    80021ff2:	9381                	srli	a5,a5,0x20
    80021ff4:	00fa3023          	sd	a5,0(s4)
    80021ff8:	bf95                	j	80021f6c <JS_ToCStringLen2+0xf0>
quickjs-nuttx/quickjs.c:4031
            c = src[pos];
    80021ffa:	00d487b3          	add	a5,s1,a3
    80021ffe:	0107c783          	lbu	a5,16(a5) # ffffffff80000010 <_ebss+0xfffffffeffefeeaa>
