    80051000:	97fe                	add	a5,a5,t6
    80051002:	4394                	lw	a3,0(a5)
quickjs-nuttx/libunicode.c:803
        d_offset = idx1 & 0x3f;
    80051004:	03f67793          	andi	a5,a2,63
quickjs-nuttx/libunicode.c:809
        unicode_decomp_entry(pair, ch, d_idx, code, len, type);
    80051008:	8219                	srli	a2,a2,0x6
quickjs-nuttx/libunicode.c:805
        code = v >> (32 - 18);
    8005100a:	00e6d59b          	srliw	a1,a3,0xe
quickjs-nuttx/libunicode.c:808
        ch = code + d_offset;
    8005100e:	9dbd                	addw	a1,a1,a5
quickjs-nuttx/libunicode.c:806
        len = (v >> (32 - 18 - 7)) & 0x7f;
    80051010:	0076d71b          	srliw	a4,a3,0x7
quickjs-nuttx/libunicode.c:807
        type = (v >> (32 - 18 - 7 - 6)) & 0x3f;
    80051014:	0016d79b          	srliw	a5,a3,0x1
quickjs-nuttx/libunicode.c:809
        unicode_decomp_entry(pair, ch, d_idx, code, len, type);
    80051018:	03f7f793          	andi	a5,a5,63
    8005101c:	07f77713          	andi	a4,a4,127
    80051020:	00e6d69b          	srliw	a3,a3,0xe
quickjs-nuttx/libunicode.c:798
        idx = (idx_max + idx_min) / 2;
    80051024:	f01a                	sd	t1,32(sp)
    80051026:	ec76                	sd	t4,24(sp)
quickjs-nuttx/libunicode.c:809
        unicode_decomp_entry(pair, ch, d_idx, code, len, type);
    80051028:	e42e                	sd	a1,8(sp)
    8005102a:	cdffe0ef          	jal	ra,8004fd08 <unicode_decomp_entry>
quickjs-nuttx/libunicode.c:810
        d = c0 - pair[0];
    8005102e:	57e2                	lw	a5,56(sp)
quickjs-nuttx/libunicode.c:811
        if (d == 0)
    80051030:	48d2                	lw	a7,20(sp)
    80051032:	6ee2                	ld	t4,24(sp)
quickjs-nuttx/libunicode.c:810
        d = c0 - pair[0];
    80051034:	40fd87bb          	subw	a5,s11,a5
quickjs-nuttx/libunicode.c:811
        if (d == 0)
    80051038:	7302                	ld	t1,32(sp)
    8005103a:	7e22                	ld	t3,40(sp)
    8005103c:	00028f97          	auipc	t6,0x28
    80051040:	03cf8f93          	addi	t6,t6,60 # 80079078 <unicode_decomp_table1>
    80051044:	00025f17          	auipc	t5,0x25
    80051048:	444f0f13          	addi	t5,t5,1092 # 80076488 <unicode_comp_table>
    8005104c:	f3b1                	bnez	a5,80050f90 <unicode_normalize+0x1ea>
quickjs-nuttx/libunicode.c:812
            d = c1 - pair[1];
    8005104e:	57f2                	lw	a5,60(sp)
quickjs-nuttx/libunicode.c:813
        if (d < 0) {
    80051050:	65a2                	ld	a1,8(sp)
quickjs-nuttx/libunicode.c:812
            d = c1 - pair[1];
    80051052:	40fe07bb          	subw	a5,t3,a5
quickjs-nuttx/libunicode.c:813
        if (d < 0) {
    80051056:	f207d5e3          	bgez	a5,80050f80 <unicode_normalize+0x1da>
quickjs-nuttx/libunicode.c:814
            idx_max = idx - 1;
    8005105a:	fff8831b          	addiw	t1,a7,-1
quickjs-nuttx/libunicode.c:797
    while (idx_min <= idx_max) {
    8005105e:	f9d353e3          	bge	t1,t4,80050fe4 <unicode_normalize+0x23e>
    80051062:	bd4d                	j	80050f14 <unicode_normalize+0x16e>

0000000080051064 <unicode_script>:
unicode_script():
quickjs-nuttx/libunicode.c:1062
{
    80051064:	7171                	addi	sp,sp,-176
    80051066:	e94a                	sd	s2,144(sp)
    80051068:	892a                	mv	s2,a0
quickjs-nuttx/libunicode.c:1070
    script_idx = unicode_find_name(unicode_script_name_table, script_name);
    8005106a:	0002c517          	auipc	a0,0x2c
    8005106e:	6b650513          	addi	a0,a0,1718 # 8007d720 <unicode_script_name_table>
quickjs-nuttx/libunicode.c:1062
{
    80051072:	e152                	sd	s4,128(sp)
    80051074:	f506                	sd	ra,168(sp)
    80051076:	f122                	sd	s0,160(sp)
    80051078:	ed26                	sd	s1,152(sp)
    8005107a:	e54e                	sd	s3,136(sp)
    8005107c:	fcd6                	sd	s5,120(sp)
    8005107e:	f8da                	sd	s6,112(sp)
    80051080:	f4de                	sd	s7,104(sp)
    80051082:	f0e2                	sd	s8,96(sp)
    80051084:	ece6                	sd	s9,88(sp)
    80051086:	e8ea                	sd	s10,80(sp)
    80051088:	e4ee                	sd	s11,72(sp)
    8005108a:	8a32                	mv	s4,a2
quickjs-nuttx/libunicode.c:1070
    script_idx = unicode_find_name(unicode_script_name_table, script_name);
    8005108c:	977fe0ef          	jal	ra,8004fa02 <unicode_find_name>
quickjs-nuttx/libunicode.c:1071
    if (script_idx < 0)
    80051090:	1e054463          	bltz	a0,80051278 <unicode_script+0x214>
quickjs-nuttx/libunicode.c:1074
    script_idx += UNICODE_SCRIPT_Unknown + 1;
    80051094:	0015099b          	addiw	s3,a0,1
quickjs-nuttx/libunicode.c:1076
    is_common = (script_idx == UNICODE_SCRIPT_Common ||
    80051098:	47e5                	li	a5,25
    8005109a:	4a85                	li	s5,1
    8005109c:	00f98663          	beq	s3,a5,800510a8 <unicode_script+0x44>
quickjs-nuttx/libunicode.c:1076 (discriminator 2)
    800510a0:	fc898a93          	addi	s5,s3,-56
    800510a4:	001aba93          	seqz	s5,s5
quickjs-nuttx/libunicode.c:1078 (discriminator 6)
    if (is_ext) {
    800510a8:	84ca                	mv	s1,s2
    800510aa:	020a0163          	beqz	s4,800510cc <unicode_script+0x68>
quickjs-nuttx/libunicode.c:1080
        cr_init(cr1, cr->mem_opaque, cr->realloc_func);
    800510ae:	01893603          	ld	a2,24(s2)
    800510b2:	01093583          	ld	a1,16(s2)
    800510b6:	850a                	mv	a0,sp
quickjs-nuttx/libunicode.c:1079
        cr1 = &cr1_s;
    800510b8:	848a                	mv	s1,sp
quickjs-nuttx/libunicode.c:1080
        cr_init(cr1, cr->mem_opaque, cr->realloc_func);
    800510ba:	cccff0ef          	jal	ra,80050586 <cr_init>
quickjs-nuttx/libunicode.c:1081
        cr_init(cr2, cr->mem_opaque, cr->realloc_func);
    800510be:	01893603          	ld	a2,24(s2)
    800510c2:	01093583          	ld	a1,16(s2)
    800510c6:	1008                	addi	a0,sp,32
    800510c8:	cbeff0ef          	jal	ra,80050586 <cr_init>
quickjs-nuttx/libunicode.c:1102
            n += 96 + (1 << 12);
    800510cc:	6b85                	lui	s7,0x1
quickjs-nuttx/libunicode.c:1088
    c = 0;
    800510ce:	4581                	li	a1,0
quickjs-nuttx/libunicode.c:1086
    p = unicode_script_table;
    800510d0:	0002db17          	auipc	s6,0x2d
    800510d4:	f98b0b13          	addi	s6,s6,-104 # 8007e068 <unicode_script_table>
quickjs-nuttx/libunicode.c:1093
        if (n < 96) {
    800510d8:	05f00c13          	li	s8,95
quickjs-nuttx/libunicode.c:1094
        } else if (n < 112) {
    800510dc:	06f00d13          	li	s10,111
quickjs-nuttx/libunicode.c:1102
            n += 96 + (1 << 12);
    800510e0:	060b8b9b          	addiw	s7,s7,96
quickjs-nuttx/libunicode.c:1109
        if (v == script_idx) {
    800510e4:	00098c9b          	sext.w	s9,s3
quickjs-nuttx/libunicode.c:1089
    while (p < p_end) {
    800510e8:	0002ed97          	auipc	s11,0x2e
    800510ec:	a20d8d93          	addi	s11,s11,-1504 # 8007eb08 <unicode_script_table+0xaa0>
quickjs-nuttx/libunicode.c:1090
        b = *p++;
    800510f0:	000b4783          	lbu	a5,0(s6)
quickjs-nuttx/libunicode.c:1091
        type = b >> 7;
    800510f4:	07f7f713          	andi	a4,a5,127
    800510f8:	0077d693          	srli	a3,a5,0x7
quickjs-nuttx/libunicode.c:1092
        n = b & 0x7f;
    800510fc:	87ba                	mv	a5,a4
quickjs-nuttx/libunicode.c:1093
        if (n < 96) {
    800510fe:	08ec6f63          	bltu	s8,a4,8005119c <unicode_script+0x138>
quickjs-nuttx/libunicode.c:1090
        b = *p++;
    80051102:	0b05                	addi	s6,s6,1
quickjs-nuttx/libunicode.c:1104
        if (type == 0)
    80051104:	c681                	beqz	a3,8005110c <unicode_script+0xa8>
quickjs-nuttx/libunicode.c:1107
            v = *p++;
    80051106:	000b4683          	lbu	a3,0(s6)
    8005110a:	0b05                	addi	s6,s6,1
quickjs-nuttx/libunicode.c:1108
        c1 = c + n + 1;
    8005110c:	2785                	addiw	a5,a5,1
    8005110e:	00b7843b          	addw	s0,a5,a1
quickjs-nuttx/libunicode.c:1109
        if (v == script_idx) {
    80051112:	0cdc8763          	beq	s9,a3,800511e0 <unicode_script+0x17c>
quickjs-nuttx/libunicode.c:1089
    while (p < p_end) {
    80051116:	09bb6163          	bltu	s6,s11,80051198 <unicode_script+0x134>
quickjs-nuttx/libunicode.c:1116
    if (is_ext) {
    8005111a:	120a0663          	beqz	s4,80051246 <unicode_script+0x1e2>
quickjs-nuttx/libunicode.c:1133
                n += 128 + (1 << 14);
    8005111e:	6b11                	lui	s6,0x4
quickjs-nuttx/libunicode.c:1120
        c = 0;
    80051120:	4581                	li	a1,0
quickjs-nuttx/libunicode.c:1118
        p = unicode_script_ext_table;
    80051122:	0002c797          	auipc	a5,0x2c
    80051126:	2be78793          	addi	a5,a5,702 # 8007d3e0 <unicode_script_ext_table>
quickjs-nuttx/libunicode.c:1123
            if (b < 128) {
    8005112a:	07f00b93          	li	s7,127
quickjs-nuttx/libunicode.c:1125
            } else if (b < 128 + 64) {
    8005112e:	0bf00c13          	li	s8,191
quickjs-nuttx/libunicode.c:1133
                n += 128 + (1 << 14);
    80051132:	080b0b1b          	addiw	s6,s6,128
quickjs-nuttx/libunicode.c:1121
        while (p < p_end) {
    80051136:	0002cc97          	auipc	s9,0x2c
    8005113a:	5e6c8c93          	addi	s9,s9,1510 # 8007d71c <unicode_script_ext_table+0x33c>
quickjs-nuttx/libunicode.c:1122
            b = *p++;
    8005113e:	0007c603          	lbu	a2,0(a5)
    80051142:	00178d93          	addi	s11,a5,1
quickjs-nuttx/libunicode.c:1123
            if (b < 128) {
    80051146:	02cbf263          	bgeu	s7,a2,8005116a <unicode_script+0x106>
quickjs-nuttx/libunicode.c:1127
                n |= *p++;
    8005114a:	0017c683          	lbu	a3,1(a5)
quickjs-nuttx/libunicode.c:1132
                n |= *p++;
    8005114e:	0027c503          	lbu	a0,2(a5)
quickjs-nuttx/libunicode.c:1125
            } else if (b < 128 + 64) {
    80051152:	0acc6163          	bltu	s8,a2,800511f4 <unicode_script+0x190>
quickjs-nuttx/libunicode.c:1126
                n = (b - 128) << 8;
    80051156:	f806071b          	addiw	a4,a2,-128
    8005115a:	0087171b          	slliw	a4,a4,0x8
quickjs-nuttx/libunicode.c:1127
                n |= *p++;
    8005115e:	00e6e633          	or	a2,a3,a4
    80051162:	00278d93          	addi	s11,a5,2
quickjs-nuttx/libunicode.c:1128
                n += 128;
    80051166:	0806061b          	addiw	a2,a2,128
quickjs-nuttx/libunicode.c:1135
            c1 = c + n + 1;
    8005116a:	2605                	addiw	a2,a2,1
quickjs-nuttx/libunicode.c:1136
            v_len = *p++;
    8005116c:	000dc403          	lbu	s0,0(s11)
quickjs-nuttx/libunicode.c:1135
            c1 = c + n + 1;
    80051170:	00b60d3b          	addw	s10,a2,a1
quickjs-nuttx/libunicode.c:1137
            if (is_common) {
    80051174:	080a9d63          	bnez	s5,8005120e <unicode_script+0x1aa>
    80051178:	87ee                	mv	a5,s11
    8005117a:	01b40733          	add	a4,s0,s11
quickjs-nuttx/libunicode.c:1143 (discriminator 1)
                for(i = 0; i < v_len; i++) {
    8005117e:	08e78963          	beq	a5,a4,80051210 <unicode_script+0x1ac>
quickjs-nuttx/libunicode.c:1144
                    if (p[i] == script_idx) {
    80051182:	0017c683          	lbu	a3,1(a5)
    80051186:	0785                	addi	a5,a5,1
    80051188:	ff369be3          	bne	a3,s3,8005117e <unicode_script+0x11a>
quickjs-nuttx/libunicode.c:1145
                        if (cr_add_interval(cr2, c, c1))
    8005118c:	866a                	mv	a2,s10
    8005118e:	1008                	addi	a0,sp,32
    80051190:	c64ff0ef          	jal	ra,800505f4 <cr_add_interval>
    80051194:	cd35                	beqz	a0,80051210 <unicode_script+0x1ac>
    80051196:	a891                	j	800511ea <unicode_script+0x186>
    80051198:	85a2                	mv	a1,s0
    8005119a:	bf99                	j	800510f0 <unicode_script+0x8c>
quickjs-nuttx/libunicode.c:1096
            n |= *p++;
    8005119c:	001b4603          	lbu	a2,1(s6) # 4001 <asinh-0x7fffbfff>
quickjs-nuttx/libunicode.c:1094
        } else if (n < 112) {
    800511a0:	00ed6b63          	bltu	s10,a4,800511b6 <unicode_script+0x152>
quickjs-nuttx/libunicode.c:1095
            n = (n - 96) << 8;
    800511a4:	fa07079b          	addiw	a5,a4,-96
    800511a8:	0087979b          	slliw	a5,a5,0x8
quickjs-nuttx/libunicode.c:1096
            n |= *p++;
    800511ac:	8fd1                	or	a5,a5,a2
    800511ae:	0b09                	addi	s6,s6,2
quickjs-nuttx/libunicode.c:1097
            n += 96;
    800511b0:	0607879b          	addiw	a5,a5,96
    800511b4:	bf81                	j	80051104 <unicode_script+0xa0>
quickjs-nuttx/libunicode.c:1099
            n = (n - 112) << 16;
    800511b6:	f907079b          	addiw	a5,a4,-112
    800511ba:	002b4703          	lbu	a4,2(s6)
    800511be:	0107979b          	slliw	a5,a5,0x10
quickjs-nuttx/libunicode.c:1101
            n |= *p++;
    800511c2:	0b0d                	addi	s6,s6,3
    800511c4:	0722                	slli	a4,a4,0x8
    800511c6:	8f51                	or	a4,a4,a2
    800511c8:	0087161b          	slliw	a2,a4,0x8
    800511cc:	8321                	srli	a4,a4,0x8
    800511ce:	8f51                	or	a4,a4,a2
    800511d0:	0107171b          	slliw	a4,a4,0x10
    800511d4:	0107571b          	srliw	a4,a4,0x10
    800511d8:	8fd9                	or	a5,a5,a4
quickjs-nuttx/libunicode.c:1102
            n += 96 + (1 << 12);
    800511da:	00fb87bb          	addw	a5,s7,a5
    800511de:	b71d                	j	80051104 <unicode_script+0xa0>
quickjs-nuttx/libunicode.c:1110
            if (cr_add_interval(cr1, c, c1))
    800511e0:	8622                	mv	a2,s0
    800511e2:	8526                	mv	a0,s1
    800511e4:	c10ff0ef          	jal	ra,800505f4 <cr_add_interval>
    800511e8:	d51d                	beqz	a0,80051116 <unicode_script+0xb2>
quickjs-nuttx/libunicode.c:1171
    if (is_ext) {
    800511ea:	080a1063          	bnez	s4,8005126a <unicode_script+0x206>
    800511ee:	a001                	j	800511ee <unicode_script+0x18a>
quickjs-nuttx/libunicode.c:1152
            c = c1;
    800511f0:	85ea                	mv	a1,s10
    800511f2:	b7b1                	j	8005113e <unicode_script+0xda>
quickjs-nuttx/libunicode.c:1130
                n = (b - 128 - 64) << 16;
    800511f4:	f406071b          	addiw	a4,a2,-192
    800511f8:	0107171b          	slliw	a4,a4,0x10
quickjs-nuttx/libunicode.c:1131
                n |= *p++ << 8;
    800511fc:	0086961b          	slliw	a2,a3,0x8
    80051200:	8e59                	or	a2,a2,a4
quickjs-nuttx/libunicode.c:1132
                n |= *p++;
    80051202:	8e49                	or	a2,a2,a0
    80051204:	00378d93          	addi	s11,a5,3
quickjs-nuttx/libunicode.c:1133
                n += 128 + (1 << 14);
    80051208:	00cb063b          	addw	a2,s6,a2
    8005120c:	bfb9                	j	8005116a <unicode_script+0x106>
quickjs-nuttx/libunicode.c:1138
                if (v_len != 0) {
    8005120e:	fc3d                	bnez	s0,8005118c <unicode_script+0x128>
quickjs-nuttx/libunicode.c:1151
            p += v_len;
    80051210:	0405                	addi	s0,s0,1
    80051212:	008d87b3          	add	a5,s11,s0
quickjs-nuttx/libunicode.c:1121
        while (p < p_end) {
    80051216:	fd97ede3          	bltu	a5,s9,800511f0 <unicode_script+0x18c>
quickjs-nuttx/libunicode.c:1154
        if (is_common) {
    8005121a:	040a8663          	beqz	s5,80051266 <unicode_script+0x202>
quickjs-nuttx/libunicode.c:1156
            if (cr_invert(cr2))
    8005121e:	1008                	addi	a0,sp,32
    80051220:	8cbff0ef          	jal	ra,80050aea <cr_invert>
    80051224:	f179                	bnez	a0,800511ea <unicode_script+0x186>
quickjs-nuttx/libunicode.c:1158
            if (cr_op(cr, cr1->points, cr1->len, cr2->points, cr2->len,
    80051226:	4785                	li	a5,1
    80051228:	5702                	lw	a4,32(sp)
    8005122a:	76a2                	ld	a3,40(sp)
    8005122c:	4090                	lw	a2,0(s1)
    8005122e:	648c                	ld	a1,8(s1)
    80051230:	854a                	mv	a0,s2
    80051232:	f9aff0ef          	jal	ra,800509cc <cr_op>
    80051236:	f955                	bnez	a0,800511ea <unicode_script+0x186>
quickjs-nuttx/libunicode.c:1166
        cr_free(cr1);
    80051238:	8526                	mv	a0,s1
    8005123a:	b64ff0ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libunicode.c:1167
        cr_free(cr2);
    8005123e:	1008                	addi	a0,sp,32
    80051240:	b5eff0ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libunicode.c:1169
    return 0;
    80051244:	4a01                	li	s4,0
quickjs-nuttx/libunicode.c:1176
}
    80051246:	70aa                	ld	ra,168(sp)
    80051248:	740a                	ld	s0,160(sp)
    8005124a:	64ea                	ld	s1,152(sp)
    8005124c:	694a                	ld	s2,144(sp)
    8005124e:	69aa                	ld	s3,136(sp)
    80051250:	7ae6                	ld	s5,120(sp)
    80051252:	7b46                	ld	s6,112(sp)
    80051254:	7ba6                	ld	s7,104(sp)
    80051256:	7c06                	ld	s8,96(sp)
    80051258:	6ce6                	ld	s9,88(sp)
    8005125a:	6d46                	ld	s10,80(sp)
    8005125c:	6da6                	ld	s11,72(sp)
    8005125e:	8552                	mv	a0,s4
    80051260:	6a0a                	ld	s4,128(sp)
    80051262:	614d                	addi	sp,sp,176
    80051264:	8082                	ret
quickjs-nuttx/libunicode.c:1162
            if (cr_op(cr, cr1->points, cr1->len, cr2->points, cr2->len,
    80051266:	4781                	li	a5,0
    80051268:	b7c1                	j	80051228 <unicode_script+0x1c4>
quickjs-nuttx/libunicode.c:1172
        cr_free(cr1);
    8005126a:	8526                	mv	a0,s1
    8005126c:	b32ff0ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libunicode.c:1173
        cr_free(cr2);
    80051270:	1008                	addi	a0,sp,32
    80051272:	b2cff0ef          	jal	ra,8005059e <cr_free>
    80051276:	bf95                	j	800511ea <unicode_script+0x186>
quickjs-nuttx/libunicode.c:1072
        return -2;
    80051278:	5a79                	li	s4,-2
    8005127a:	b7f1                	j	80051246 <unicode_script+0x1e2>

000000008005127c <cr_regexp_canonicalize>:
cr_regexp_canonicalize():
quickjs-nuttx/libunicode.c:1389
{
    8005127c:	7151                	addi	sp,sp,-240
    8005127e:	f586                	sd	ra,232(sp)
    80051280:	f1a2                	sd	s0,224(sp)
    80051282:	e1d2                	sd	s4,192(sp)
    80051284:	eda6                	sd	s1,216(sp)
    80051286:	e9ca                	sd	s2,208(sp)
    80051288:	e5ce                	sd	s3,200(sp)
    8005128a:	fd56                	sd	s5,184(sp)
    8005128c:	f95a                	sd	s6,176(sp)
    8005128e:	f55e                	sd	s7,168(sp)
    80051290:	f162                	sd	s8,160(sp)
    80051292:	ed66                	sd	s9,152(sp)
    80051294:	e96a                	sd	s10,144(sp)
    80051296:	e56e                	sd	s11,136(sp)
quickjs-nuttx/libunicode.c:1393
    cr_init(&cr_mask, cr->mem_opaque, cr->realloc_func);
    80051298:	6d10                	ld	a2,24(a0)
quickjs-nuttx/libunicode.c:1389
{
    8005129a:	8a2e                	mv	s4,a1
quickjs-nuttx/libunicode.c:1393
    cr_init(&cr_mask, cr->mem_opaque, cr->realloc_func);
    8005129c:	690c                	ld	a1,16(a0)
quickjs-nuttx/libunicode.c:1389
{
    8005129e:	842a                	mv	s0,a0
quickjs-nuttx/libunicode.c:1393
    cr_init(&cr_mask, cr->mem_opaque, cr->realloc_func);
    800512a0:	1008                	addi	a0,sp,32
    800512a2:	ae4ff0ef          	jal	ra,80050586 <cr_init>
quickjs-nuttx/libunicode.c:1394
    cr_init(&cr_inter, cr->mem_opaque, cr->realloc_func);
    800512a6:	6c10                	ld	a2,24(s0)
    800512a8:	680c                	ld	a1,16(s0)
    800512aa:	850a                	mv	a0,sp
    800512ac:	adaff0ef          	jal	ra,80050586 <cr_init>
quickjs-nuttx/libunicode.c:1395
    cr_init(&cr_result, cr->mem_opaque, cr->realloc_func);
    800512b0:	6c10                	ld	a2,24(s0)
    800512b2:	680c                	ld	a1,16(s0)
    800512b4:	0088                	addi	a0,sp,64
    800512b6:	ad0ff0ef          	jal	ra,80050586 <cr_init>
quickjs-nuttx/libunicode.c:1396
    cr_init(&cr_sub, cr->mem_opaque, cr->realloc_func);
    800512ba:	680c                	ld	a1,16(s0)
    800512bc:	6c10                	ld	a2,24(s0)
    800512be:	1088                	addi	a0,sp,96
    800512c0:	ac6ff0ef          	jal	ra,80050586 <cr_init>
quickjs-nuttx/libunicode.c:1398
    if (unicode_case1(&cr_mask, is_unicode ? CASE_F : CASE_U))
    800512c4:	4585                	li	a1,1
    800512c6:	000a0363          	beqz	s4,800512cc <cr_regexp_canonicalize+0x50>
    800512ca:	4591                	li	a1,4
quickjs-nuttx/libunicode.c:1398 (discriminator 4)
    800512cc:	1008                	addi	a0,sp,32
    800512ce:	b7cff0ef          	jal	ra,8005064a <unicode_case1>
    800512d2:	18051863          	bnez	a0,80051462 <cr_regexp_canonicalize+0x1e6>
quickjs-nuttx/libunicode.c:1400
    if (cr_op(&cr_inter, cr_mask.points, cr_mask.len, cr->points, cr->len, CR_OP_INTER))
    800512d6:	4018                	lw	a4,0(s0)
    800512d8:	6414                	ld	a3,8(s0)
    800512da:	5602                	lw	a2,32(sp)
    800512dc:	75a2                	ld	a1,40(sp)
    800512de:	4785                	li	a5,1
    800512e0:	850a                	mv	a0,sp
    800512e2:	eeaff0ef          	jal	ra,800509cc <cr_op>
    800512e6:	16051e63          	bnez	a0,80051462 <cr_regexp_canonicalize+0x1e6>
quickjs-nuttx/libunicode.c:1403
    if (cr_invert(&cr_mask))
    800512ea:	1008                	addi	a0,sp,32
    800512ec:	ffeff0ef          	jal	ra,80050aea <cr_invert>
    800512f0:	16051963          	bnez	a0,80051462 <cr_regexp_canonicalize+0x1e6>
quickjs-nuttx/libunicode.c:1405
    if (cr_op(&cr_sub, cr_mask.points, cr_mask.len, cr->points, cr->len, CR_OP_INTER))
    800512f4:	4018                	lw	a4,0(s0)
    800512f6:	6414                	ld	a3,8(s0)
    800512f8:	5602                	lw	a2,32(sp)
    800512fa:	75a2                	ld	a1,40(sp)
    800512fc:	4785                	li	a5,1
    800512fe:	1088                	addi	a0,sp,96
    80051300:	eccff0ef          	jal	ra,800509cc <cr_op>
    80051304:	14051f63          	bnez	a0,80051462 <cr_regexp_canonicalize+0x1e6>
quickjs-nuttx/libunicode.c:1415
    v = case_conv_table1[idx];
    80051308:	0020ad37          	lui	s10,0x20a
quickjs-nuttx/libunicode.c:1413
    d_end = -1;
    8005130c:	54fd                	li	s1,-1
quickjs-nuttx/libunicode.c:1412
    d_start = -1;
    8005130e:	5cfd                	li	s9,-1
quickjs-nuttx/libunicode.c:1414
    idx = 0;
    80051310:	4b81                	li	s7,0
quickjs-nuttx/libunicode.c:1418
    for(i = 0; i < cr_inter.len; i += 2) {
    80051312:	4a81                	li	s5,0
quickjs-nuttx/libunicode.c:1417
    len = (v >> (32 - 17 - 7)) & 0x7f;
    80051314:	49e9                	li	s3,26
quickjs-nuttx/libunicode.c:1416
    code = v >> (32 - 17);
    80051316:	04100b13          	li	s6,65
quickjs-nuttx/libunicode.c:1415
    v = case_conv_table1[idx];
    8005131a:	a30d0d13          	addi	s10,s10,-1488 # 209a30 <asinh-0x7fdf65d0>
quickjs-nuttx/libunicode.c:1418 (discriminator 1)
    for(i = 0; i < cr_inter.len; i += 2) {
    8005131e:	4782                	lw	a5,0(sp)
    80051320:	08fae163          	bltu	s5,a5,800513a2 <cr_regexp_canonicalize+0x126>
quickjs-nuttx/libunicode.c:1446
    if (d_start != -1) {
    80051324:	57fd                	li	a5,-1
    80051326:	12fc9763          	bne	s9,a5,80051454 <cr_regexp_canonicalize+0x1d8>
cr_sort_and_remove_overlap():
quickjs-nuttx/libunicode.c:1355
    rqsort(cr->points, cr->len / 2, sizeof(cr->points[0]) * 2, point_cmp, NULL);
    8005132a:	4586                	lw	a1,64(sp)
    8005132c:	4789                	li	a5,2
    8005132e:	6526                	ld	a0,72(sp)
    80051330:	02f5c5bb          	divw	a1,a1,a5
    80051334:	4621                	li	a2,8
    80051336:	4701                	li	a4,0
    80051338:	ffffe697          	auipc	a3,0xffffe
    8005133c:	6b268693          	addi	a3,a3,1714 # 8004f9ea <point_cmp>
    80051340:	211000ef          	jal	ra,80051d50 <rqsort>
quickjs-nuttx/libunicode.c:1356
    j = 0;
    80051344:	4601                	li	a2,0
quickjs-nuttx/libunicode.c:1357
    for(i = 0; i < cr->len; ) {
    80051346:	4781                	li	a5,0
    80051348:	4506                	lw	a0,64(sp)
quickjs-nuttx/libunicode.c:1358
        start = cr->points[i];
    8005134a:	65a6                	ld	a1,72(sp)
quickjs-nuttx/libunicode.c:1357
    for(i = 0; i < cr->len; ) {
    8005134c:	12a7e963          	bltu	a5,a0,8005147e <cr_regexp_canonicalize+0x202>
cr_regexp_canonicalize():
quickjs-nuttx/libunicode.c:1456
    if (cr_op(cr, cr_result.points, cr_result.len, cr_sub.points, cr_sub.len, CR_OP_UNION))
    80051350:	5706                	lw	a4,96(sp)
    80051352:	76a6                	ld	a3,104(sp)
cr_sort_and_remove_overlap():
quickjs-nuttx/libunicode.c:1383
    cr->len = j;
    80051354:	2601                	sext.w	a2,a2
cr_regexp_canonicalize():
quickjs-nuttx/libunicode.c:1455
    cr->len = 0;
    80051356:	00042023          	sw	zero,0(s0)
quickjs-nuttx/libunicode.c:1456
    if (cr_op(cr, cr_result.points, cr_result.len, cr_sub.points, cr_sub.len, CR_OP_UNION))
    8005135a:	8522                	mv	a0,s0
    8005135c:	4781                	li	a5,0
cr_sort_and_remove_overlap():
quickjs-nuttx/libunicode.c:1383
    cr->len = j;
    8005135e:	c0b2                	sw	a2,64(sp)
cr_regexp_canonicalize():
quickjs-nuttx/libunicode.c:1456
    if (cr_op(cr, cr_result.points, cr_result.len, cr_sub.points, cr_sub.len, CR_OP_UNION))
    80051360:	e6cff0ef          	jal	ra,800509cc <cr_op>
    80051364:	842a                	mv	s0,a0
    80051366:	0e051e63          	bnez	a0,80051462 <cr_regexp_canonicalize+0x1e6>
quickjs-nuttx/libunicode.c:1459
    cr_free(&cr_inter);
    8005136a:	850a                	mv	a0,sp
    8005136c:	a32ff0ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libunicode.c:1460
    cr_free(&cr_mask);
    80051370:	1008                	addi	a0,sp,32
    80051372:	a2cff0ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libunicode.c:1461
    cr_free(&cr_result);
    80051376:	0088                	addi	a0,sp,64
    80051378:	a26ff0ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libunicode.c:1462
    cr_free(&cr_sub);
    8005137c:	1088                	addi	a0,sp,96
    8005137e:	a20ff0ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libunicode.c:1470
}
    80051382:	70ae                	ld	ra,232(sp)
    80051384:	8522                	mv	a0,s0
    80051386:	740e                	ld	s0,224(sp)
    80051388:	64ee                	ld	s1,216(sp)
    8005138a:	694e                	ld	s2,208(sp)
    8005138c:	69ae                	ld	s3,200(sp)
    8005138e:	6a0e                	ld	s4,192(sp)
    80051390:	7aea                	ld	s5,184(sp)
    80051392:	7b4a                	ld	s6,176(sp)
    80051394:	7baa                	ld	s7,168(sp)
    80051396:	7c0a                	ld	s8,160(sp)
    80051398:	6cea                	ld	s9,152(sp)
    8005139a:	6d4a                	ld	s10,144(sp)
    8005139c:	6daa                	ld	s11,136(sp)
    8005139e:	616d                	addi	sp,sp,240
    800513a0:	8082                	ret
quickjs-nuttx/libunicode.c:1419
        start = cr_inter.points[i];
    800513a2:	67a2                	ld	a5,8(sp)
    800513a4:	020a9713          	slli	a4,s5,0x20
    800513a8:	01e75693          	srli	a3,a4,0x1e
    800513ac:	96be                	add	a3,a3,a5
    800513ae:	0006ad83          	lw	s11,0(a3)
quickjs-nuttx/libunicode.c:1420
        end = cr_inter.points[i + 1];
    800513b2:	001a869b          	addiw	a3,s5,1
    800513b6:	02069713          	slli	a4,a3,0x20
    800513ba:	01e75693          	srli	a3,a4,0x1e
    800513be:	97b6                	add	a5,a5,a3
    800513c0:	0007ac03          	lw	s8,0(a5)
quickjs-nuttx/libunicode.c:1422 (discriminator 1)
        for(c = start; c < end; c++) {
    800513c4:	098df663          	bgeu	s11,s8,80051450 <cr_regexp_canonicalize+0x1d4>
    800513c8:	001b879b          	addiw	a5,s7,1
    800513cc:	02079713          	slli	a4,a5,0x20
    800513d0:	01e75793          	srli	a5,a4,0x1e
    800513d4:	00024717          	auipc	a4,0x24
    800513d8:	59470713          	addi	a4,a4,1428 # 80075968 <case_conv_table1>
    800513dc:	97ba                	add	a5,a5,a4
    800513de:	a811                	j	800513f2 <cr_regexp_canonicalize+0x176>
quickjs-nuttx/libunicode.c:1428 (discriminator 2)
                v = case_conv_table1[idx];
    800513e0:	0007ad03          	lw	s10,0(a5)
quickjs-nuttx/libunicode.c:1429 (discriminator 2)
                code = v >> (32 - 17);
    800513e4:	0791                	addi	a5,a5,4
quickjs-nuttx/libunicode.c:1430 (discriminator 2)
                len = (v >> (32 - 17 - 7)) & 0x7f;
    800513e6:	008d599b          	srliw	s3,s10,0x8
quickjs-nuttx/libunicode.c:1429 (discriminator 2)
                code = v >> (32 - 17);
    800513ea:	00fd5b1b          	srliw	s6,s10,0xf
quickjs-nuttx/libunicode.c:1430 (discriminator 2)
                len = (v >> (32 - 17 - 7)) & 0x7f;
    800513ee:	07f9f993          	andi	s3,s3,127
quickjs-nuttx/libunicode.c:1424
                if (c >= code && c < code + len)
    800513f2:	016de663          	bltu	s11,s6,800513fe <cr_regexp_canonicalize+0x182>
quickjs-nuttx/libunicode.c:1424 (discriminator 1)
    800513f6:	013b06b3          	add	a3,s6,s3
    800513fa:	02dde063          	bltu	s11,a3,8005141a <cr_regexp_canonicalize+0x19e>
quickjs-nuttx/libunicode.c:1426
                idx++;
    800513fe:	2b85                	addiw	s7,s7,1
quickjs-nuttx/libunicode.c:1427
                assert(idx < countof(case_conv_table1));
    80051400:	17100713          	li	a4,369
    80051404:	fd777ee3          	bgeu	a4,s7,800513e0 <cr_regexp_canonicalize+0x164>
quickjs-nuttx/libunicode.c:1427 (discriminator 1)
    80051408:	4601                	li	a2,0
    8005140a:	59300593          	li	a1,1427
    8005140e:	00024517          	auipc	a0,0x24
    80051412:	46250513          	addi	a0,a0,1122 # 80075870 <reopcode_info+0xe0>
    80051416:	5460f0ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libunicode.c:1432
            d = lre_case_folding_entry(c, idx, v, is_unicode);
    8005141a:	86d2                	mv	a3,s4
    8005141c:	866a                	mv	a2,s10
    8005141e:	85de                	mv	a1,s7
    80051420:	856e                	mv	a0,s11
    80051422:	febfe0ef          	jal	ra,8005040c <lre_case_folding_entry>
quickjs-nuttx/libunicode.c:1434
            if (d_start == -1) {
    80051426:	57fd                	li	a5,-1
quickjs-nuttx/libunicode.c:1432
            d = lre_case_folding_entry(c, idx, v, is_unicode);
    80051428:	0005091b          	sext.w	s2,a0
quickjs-nuttx/libunicode.c:1434
            if (d_start == -1) {
    8005142c:	00fc9563          	bne	s9,a5,80051436 <cr_regexp_canonicalize+0x1ba>
quickjs-nuttx/libunicode.c:1442
                d_end = d + 1;
    80051430:	0019049b          	addiw	s1,s2,1
    80051434:	a029                	j	8005143e <cr_regexp_canonicalize+0x1c2>
quickjs-nuttx/libunicode.c:1437
            } else if (d_end == d) {
    80051436:	01249763          	bne	s1,s2,80051444 <cr_regexp_canonicalize+0x1c8>
quickjs-nuttx/libunicode.c:1438
                d_end++;
    8005143a:	2485                	addiw	s1,s1,1
    8005143c:	8966                	mv	s2,s9
quickjs-nuttx/libunicode.c:1422 (discriminator 2)
        for(c = start; c < end; c++) {
    8005143e:	2d85                	addiw	s11,s11,1
    80051440:	8cca                	mv	s9,s2
    80051442:	b749                	j	800513c4 <cr_regexp_canonicalize+0x148>
quickjs-nuttx/libunicode.c:1440
                cr_add_interval(&cr_result, d_start, d_end);
    80051444:	8626                	mv	a2,s1
    80051446:	85e6                	mv	a1,s9
    80051448:	0088                	addi	a0,sp,64
    8005144a:	9aaff0ef          	jal	ra,800505f4 <cr_add_interval>
    8005144e:	b7cd                	j	80051430 <cr_regexp_canonicalize+0x1b4>
quickjs-nuttx/libunicode.c:1418 (discriminator 2)
    for(i = 0; i < cr_inter.len; i += 2) {
    80051450:	2a89                	addiw	s5,s5,2
    80051452:	b5f1                	j	8005131e <cr_regexp_canonicalize+0xa2>
quickjs-nuttx/libunicode.c:1447
        if (cr_add_interval(&cr_result, d_start, d_end))
    80051454:	8626                	mv	a2,s1
    80051456:	85e6                	mv	a1,s9
    80051458:	0088                	addi	a0,sp,64
    8005145a:	99aff0ef          	jal	ra,800505f4 <cr_add_interval>
    8005145e:	ec0506e3          	beqz	a0,8005132a <cr_regexp_canonicalize+0xae>
quickjs-nuttx/libunicode.c:1465
    cr_free(&cr_inter);
    80051462:	850a                	mv	a0,sp
    80051464:	93aff0ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libunicode.c:1466
    cr_free(&cr_mask);
    80051468:	1008                	addi	a0,sp,32
    8005146a:	934ff0ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libunicode.c:1467
    cr_free(&cr_result);
    8005146e:	0088                	addi	a0,sp,64
    80051470:	92eff0ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libunicode.c:1468
    cr_free(&cr_sub);
    80051474:	1088                	addi	a0,sp,96
    80051476:	928ff0ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libunicode.c:1469
    return -1;
    8005147a:	547d                	li	s0,-1
    8005147c:	b719                	j	80051382 <cr_regexp_canonicalize+0x106>
cr_sort_and_remove_overlap():
quickjs-nuttx/libunicode.c:1358
        start = cr->points[i];
    8005147e:	02079693          	slli	a3,a5,0x20
    80051482:	01e6d713          	srli	a4,a3,0x1e
    80051486:	972e                	add	a4,a4,a1
    80051488:	00072883          	lw	a7,0(a4)
quickjs-nuttx/libunicode.c:1359
        end = cr->points[i + 1];
    8005148c:	0017871b          	addiw	a4,a5,1
    80051490:	02071693          	slli	a3,a4,0x20
    80051494:	01e6d713          	srli	a4,a3,0x1e
    80051498:	972e                	add	a4,a4,a1
    8005149a:	4318                	lw	a4,0(a4)
quickjs-nuttx/libunicode.c:1360
        i += 2;
    8005149c:	2789                	addiw	a5,a5,2
quickjs-nuttx/libunicode.c:1361
        while (i < cr->len) {
    8005149e:	02a7e463          	bltu	a5,a0,800514c6 <cr_regexp_canonicalize+0x24a>
quickjs-nuttx/libunicode.c:1379
        cr->points[j] = start;
    800514a2:	02061513          	slli	a0,a2,0x20
    800514a6:	01e55693          	srli	a3,a0,0x1e
    800514aa:	95b6                	add	a1,a1,a3
    800514ac:	0115a023          	sw	a7,0(a1)
quickjs-nuttx/libunicode.c:1380
        cr->points[j + 1] = end;
    800514b0:	0016069b          	addiw	a3,a2,1
    800514b4:	02069513          	slli	a0,a3,0x20
    800514b8:	66a6                	ld	a3,72(sp)
    800514ba:	01e55593          	srli	a1,a0,0x1e
quickjs-nuttx/libunicode.c:1381
        j += 2;
    800514be:	2609                	addiw	a2,a2,2
quickjs-nuttx/libunicode.c:1380
        cr->points[j + 1] = end;
    800514c0:	96ae                	add	a3,a3,a1
    800514c2:	c298                	sw	a4,0(a3)
quickjs-nuttx/libunicode.c:1381
        j += 2;
    800514c4:	b551                	j	80051348 <cr_regexp_canonicalize+0xcc>
quickjs-nuttx/libunicode.c:1363
            end1 = cr->points[i + 1];
    800514c6:	0017869b          	addiw	a3,a5,1
    800514ca:	02069493          	slli	s1,a3,0x20
    800514ce:	01e4d693          	srli	a3,s1,0x1e
    800514d2:	96ae                	add	a3,a3,a1
quickjs-nuttx/libunicode.c:1362
            start1 = cr->points[i];
    800514d4:	02079493          	slli	s1,a5,0x20
quickjs-nuttx/libunicode.c:1363
            end1 = cr->points[i + 1];
    800514d8:	0006a803          	lw	a6,0(a3)
quickjs-nuttx/libunicode.c:1362
            start1 = cr->points[i];
    800514dc:	01e4d693          	srli	a3,s1,0x1e
    800514e0:	96ae                	add	a3,a3,a1
quickjs-nuttx/libunicode.c:1364
            if (start1 > end) {
    800514e2:	4294                	lw	a3,0(a3)
    800514e4:	fad76fe3          	bltu	a4,a3,800514a2 <cr_regexp_canonicalize+0x226>
quickjs-nuttx/libunicode.c:1371
                i += 2;
    800514e8:	2789                	addiw	a5,a5,2
    800514ea:	86ba                	mv	a3,a4
    800514ec:	01077363          	bgeu	a4,a6,800514f2 <cr_regexp_canonicalize+0x276>
    800514f0:	86c2                	mv	a3,a6
    800514f2:	0006871b          	sext.w	a4,a3
    800514f6:	b765                	j	8005149e <cr_regexp_canonicalize+0x222>

00000000800514f8 <unicode_general_category>:
unicode_general_category():
quickjs-nuttx/libunicode.c:1574
};

/* 'cr' must be initialized and empty. Return 0 if OK, -1 if error, -2
   if not found */
int unicode_general_category(CharRange *cr, const char *gc_name)
{
    800514f8:	1141                	addi	sp,sp,-16
    800514fa:	e022                	sd	s0,0(sp)
    800514fc:	842a                	mv	s0,a0
quickjs-nuttx/libunicode.c:1578
    int gc_idx;
    uint32_t gc_mask;
    
    gc_idx = unicode_find_name(unicode_gc_name_table, gc_name);
    800514fe:	00029517          	auipc	a0,0x29
    80051502:	c0250513          	addi	a0,a0,-1022 # 8007a100 <unicode_gc_name_table>
quickjs-nuttx/libunicode.c:1574
{
    80051506:	e406                	sd	ra,8(sp)
quickjs-nuttx/libunicode.c:1578
    gc_idx = unicode_find_name(unicode_gc_name_table, gc_name);
    80051508:	cfafe0ef          	jal	ra,8004fa02 <unicode_find_name>
quickjs-nuttx/libunicode.c:1579
    if (gc_idx < 0)
    8005150c:	02054963          	bltz	a0,8005153e <unicode_general_category+0x46>
quickjs-nuttx/libunicode.c:1581
        return -2;
    if (gc_idx <= UNICODE_GC_Co) {
    80051510:	47f5                	li	a5,29
    80051512:	00a7cc63          	blt	a5,a0,8005152a <unicode_general_category+0x32>
quickjs-nuttx/libunicode.c:1582
        gc_mask = (uint64_t)1 << gc_idx;
    80051516:	4585                	li	a1,1
    80051518:	00a595b3          	sll	a1,a1,a0
    8005151c:	2581                	sext.w	a1,a1
quickjs-nuttx/libunicode.c:1586
    } else {
        gc_mask = unicode_gc_mask_table[gc_idx - UNICODE_GC_LC];
    }
    return unicode_general_category1(cr, gc_mask);
    8005151e:	8522                	mv	a0,s0
quickjs-nuttx/libunicode.c:1587
}
    80051520:	6402                	ld	s0,0(sp)
    80051522:	60a2                	ld	ra,8(sp)
    80051524:	0141                	addi	sp,sp,16
quickjs-nuttx/libunicode.c:1586
    return unicode_general_category1(cr, gc_mask);
    80051526:	a50ff06f          	j	80050776 <unicode_general_category1>
quickjs-nuttx/libunicode.c:1584
        gc_mask = unicode_gc_mask_table[gc_idx - UNICODE_GC_LC];
    8005152a:	fe25079b          	addiw	a5,a0,-30
    8005152e:	078a                	slli	a5,a5,0x2
    80051530:	00029517          	auipc	a0,0x29
    80051534:	bb050513          	addi	a0,a0,-1104 # 8007a0e0 <unicode_gc_mask_table>
    80051538:	97aa                	add	a5,a5,a0
    8005153a:	438c                	lw	a1,0(a5)
    8005153c:	b7cd                	j	8005151e <unicode_general_category+0x26>
quickjs-nuttx/libunicode.c:1587
}
    8005153e:	60a2                	ld	ra,8(sp)
    80051540:	6402                	ld	s0,0(sp)
    80051542:	5579                	li	a0,-2
    80051544:	0141                	addi	sp,sp,16
    80051546:	8082                	ret

0000000080051548 <unicode_prop>:
unicode_prop():
quickjs-nuttx/libunicode.c:1593


/* 'cr' must be initialized and empty. Return 0 if OK, -1 if error, -2
   if not found */
int unicode_prop(CharRange *cr, const char *prop_name)
{
    80051548:	7159                	addi	sp,sp,-112
    8005154a:	f0a2                	sd	s0,96(sp)
    8005154c:	842a                	mv	s0,a0
quickjs-nuttx/libunicode.c:1596
    int prop_idx, ret;
    
    prop_idx = unicode_find_name(unicode_prop_name_table, prop_name);
    8005154e:	0002c517          	auipc	a0,0x2c
    80051552:	8ea50513          	addi	a0,a0,-1814 # 8007ce38 <unicode_prop_name_table>
quickjs-nuttx/libunicode.c:1593
{
    80051556:	f486                	sd	ra,104(sp)
quickjs-nuttx/libunicode.c:1596
    prop_idx = unicode_find_name(unicode_prop_name_table, prop_name);
    80051558:	caafe0ef          	jal	ra,8004fa02 <unicode_find_name>
quickjs-nuttx/libunicode.c:1597
    if (prop_idx < 0)
    8005155c:	1c054d63          	bltz	a0,80051736 <unicode_prop+0x1ee>
quickjs-nuttx/libunicode.c:1599
        return -2;
    prop_idx += UNICODE_PROP_ASCII_Hex_Digit;
    80051560:	0105059b          	addiw	a1,a0,16
quickjs-nuttx/libunicode.c:1602

    ret = 0;
    switch(prop_idx) {
    80051564:	fde5051b          	addiw	a0,a0,-34
    80051568:	0005071b          	sext.w	a4,a0
    8005156c:	47c9                	li	a5,18
    8005156e:	1ae7ea63          	bltu	a5,a4,80051722 <unicode_prop+0x1da>
    80051572:	02051793          	slli	a5,a0,0x20
    80051576:	01e7d513          	srli	a0,a5,0x1e
    8005157a:	00024717          	auipc	a4,0x24
    8005157e:	32670713          	addi	a4,a4,806 # 800758a0 <reopcode_info+0x110>
    80051582:	953a                	add	a0,a0,a4
    80051584:	411c                	lw	a5,0(a0)
    80051586:	97ba                	add	a5,a5,a4
    80051588:	8782                	jr	a5
quickjs-nuttx/libunicode.c:1604
    case UNICODE_PROP_ASCII:
        if (cr_add_interval(cr, 0x00, 0x7f + 1))
    8005158a:	08000613          	li	a2,128
quickjs-nuttx/libunicode.c:1608
            return -1;
        break;
    case UNICODE_PROP_Any:
        if (cr_add_interval(cr, 0x00000, 0x10ffff + 1))
    8005158e:	4581                	li	a1,0
    80051590:	8522                	mv	a0,s0
    80051592:	862ff0ef          	jal	ra,800505f4 <cr_add_interval>
    80051596:	00a03533          	snez	a0,a0
    8005159a:	40a00533          	neg	a0,a0
quickjs-nuttx/libunicode.c:1786
            return -2;
        ret = unicode_prop1(cr, prop_idx);
        break;
    }
    return ret;
}
    8005159e:	70a6                	ld	ra,104(sp)
    800515a0:	7406                	ld	s0,96(sp)
    800515a2:	6165                	addi	sp,sp,112
    800515a4:	8082                	ret
quickjs-nuttx/libunicode.c:1608
        if (cr_add_interval(cr, 0x00000, 0x10ffff + 1))
    800515a6:	00110637          	lui	a2,0x110
    800515aa:	b7d5                	j	8005158e <unicode_prop+0x46>
quickjs-nuttx/libunicode.c:1612
        ret = unicode_prop_ops(cr,
    800515ac:	8522                	mv	a0,s0
quickjs-nuttx/libunicode.c:1786
}
    800515ae:	7406                	ld	s0,96(sp)
    800515b0:	70a6                	ld	ra,104(sp)
quickjs-nuttx/libunicode.c:1612
        ret = unicode_prop_ops(cr,
    800515b2:	471d                	li	a4,7
    800515b4:	4699                	li	a3,6
    800515b6:	4605                	li	a2,1
    800515b8:	4581                	li	a1,0
quickjs-nuttx/libunicode.c:1786
}
    800515ba:	6165                	addi	sp,sp,112
quickjs-nuttx/libunicode.c:1612
        ret = unicode_prop_ops(cr,
    800515bc:	d88ff06f          	j	80050b44 <unicode_prop_ops>
quickjs-nuttx/libunicode.c:1618
        ret = unicode_prop_ops(cr,
    800515c0:	481d                	li	a6,7
    800515c2:	478d                	li	a5,3
    800515c4:	4705                	li	a4,1
    800515c6:	4685                	li	a3,1
    800515c8:	6605                	lui	a2,0x1
quickjs-nuttx/libunicode.c:1625
        ret = unicode_prop_ops(cr,
    800515ca:	4581                	li	a1,0
    800515cc:	8522                	mv	a0,s0
quickjs-nuttx/libunicode.c:1786
}
    800515ce:	7406                	ld	s0,96(sp)
    800515d0:	70a6                	ld	ra,104(sp)
    800515d2:	6165                	addi	sp,sp,112
quickjs-nuttx/libunicode.c:1625
        ret = unicode_prop_ops(cr,
    800515d4:	d70ff06f          	j	80050b44 <unicode_prop_ops>
    800515d8:	481d                	li	a6,7
    800515da:	478d                	li	a5,3
    800515dc:	470d                	li	a4,3
    800515de:	4685                	li	a3,1
    800515e0:	4611                	li	a2,4
    800515e2:	b7e5                	j	800515ca <unicode_prop+0x82>
quickjs-nuttx/libunicode.c:1632
        ret = unicode_prop_ops(cr,
    800515e4:	481d                	li	a6,7
    800515e6:	478d                	li	a5,3
    800515e8:	4711                	li	a4,4
    800515ea:	4685                	li	a3,1
    800515ec:	4609                	li	a2,2
    800515ee:	bff1                	j	800515ca <unicode_prop+0x82>
quickjs-nuttx/libunicode.c:1639
        ret = unicode_prop_ops(cr,
    800515f0:	479d                	li	a5,7
    800515f2:	e43e                	sd	a5,8(sp)
    800515f4:	478d                	li	a5,3
    800515f6:	e03e                	sd	a5,0(sp)
    800515f8:	488d                	li	a7,3
    800515fa:	4805                	li	a6,1
    800515fc:	4711                	li	a4,4
    800515fe:	4685                	li	a3,1
    80051600:	4639                	li	a2,14
    80051602:	4581                	li	a1,0
    80051604:	8522                	mv	a0,s0
    80051606:	d3eff0ef          	jal	ra,80050b44 <unicode_prop_ops>
quickjs-nuttx/libunicode.c:1646
        break;
    8005160a:	bf51                	j	8005159e <unicode_prop+0x56>
quickjs-nuttx/libunicode.c:1648
        ret = unicode_prop_ops(cr,
    8005160c:	479d                	li	a5,7
    8005160e:	4709                	li	a4,2
    80051610:	f03e                	sd	a5,32(sp)
    80051612:	e83a                	sd	a4,16(sp)
    80051614:	478d                	li	a5,3
    80051616:	4705                	li	a4,1
    80051618:	e43a                	sd	a4,8(sp)
    8005161a:	ec3e                	sd	a5,24(sp)
    8005161c:	e03e                	sd	a5,0(sp)
    8005161e:	488d                	li	a7,3
    80051620:	4805                	li	a6,1
    80051622:	4711                	li	a4,4
    80051624:	4685                	li	a3,1
    80051626:	43e00613          	li	a2,1086
    8005162a:	4581                	li	a1,0
    8005162c:	8522                	mv	a0,s0
    8005162e:	d16ff0ef          	jal	ra,80050b44 <unicode_prop_ops>
quickjs-nuttx/libunicode.c:1657
        break;
    80051632:	b7b5                	j	8005159e <unicode_prop+0x56>
quickjs-nuttx/libunicode.c:1659
        ret = unicode_prop_ops(cr,
    80051634:	8522                	mv	a0,s0
quickjs-nuttx/libunicode.c:1786
}
    80051636:	7406                	ld	s0,96(sp)
    80051638:	70a6                	ld	ra,104(sp)
quickjs-nuttx/libunicode.c:1659
        ret = unicode_prop_ops(cr,
    8005163a:	3f000637          	lui	a2,0x3f000
    8005163e:	489d                	li	a7,7
    80051640:	4819                	li	a6,6
    80051642:	478d                	li	a5,3
    80051644:	4715                	li	a4,5
    80051646:	4685                	li	a3,1
    80051648:	14160613          	addi	a2,a2,321 # 3f000141 <asinh-0x40fffebf>
    8005164c:	4581                	li	a1,0
quickjs-nuttx/libunicode.c:1786
}
    8005164e:	6165                	addi	sp,sp,112
quickjs-nuttx/libunicode.c:1659
        ret = unicode_prop_ops(cr,
    80051650:	cf4ff06f          	j	80050b44 <unicode_prop_ops>
quickjs-nuttx/libunicode.c:1667
        ret = unicode_prop_ops(cr,
    80051654:	481d                	li	a6,7
    80051656:	478d                	li	a5,3
    80051658:	4715                	li	a4,5
    8005165a:	4685                	li	a3,1
    8005165c:	14000613          	li	a2,320
    80051660:	b7ad                	j	800515ca <unicode_prop+0x82>
quickjs-nuttx/libunicode.c:1674
        ret = unicode_prop_ops(cr,
    80051662:	479d                	li	a5,7
    80051664:	e0be                	sd	a5,64(sp)
    80051666:	4791                	li	a5,4
    80051668:	fc3e                	sd	a5,56(sp)
    8005166a:	4799                	li	a5,6
    8005166c:	470d                	li	a4,3
    8005166e:	f83e                	sd	a5,48(sp)
    80051670:	47ad                	li	a5,11
    80051672:	f43a                	sd	a4,40(sp)
    80051674:	f03e                	sd	a5,32(sp)
    80051676:	e83a                	sd	a4,16(sp)
    80051678:	4785                	li	a5,1
    8005167a:	4779                	li	a4,30
    8005167c:	ec3e                	sd	a5,24(sp)
    8005167e:	e43a                	sd	a4,8(sp)
    80051680:	e03e                	sd	a5,0(sp)
    80051682:	48f5                	li	a7,29
    80051684:	4805                	li	a6,1
    80051686:	478d                	li	a5,3
    80051688:	471d                	li	a4,7
    8005168a:	4685                	li	a3,1
    8005168c:	43e00613          	li	a2,1086
    80051690:	4581                	li	a1,0
    80051692:	8522                	mv	a0,s0
    80051694:	cb0ff0ef          	jal	ra,80050b44 <unicode_prop_ops>
quickjs-nuttx/libunicode.c:1686
        break;
    80051698:	b719                	j	8005159e <unicode_prop+0x56>
quickjs-nuttx/libunicode.c:1688
        ret = unicode_prop_ops(cr,
    8005169a:	479d                	li	a5,7
    8005169c:	ecbe                	sd	a5,88(sp)
    8005169e:	4791                	li	a5,4
    800516a0:	e8be                	sd	a5,80(sp)
    800516a2:	4731                	li	a4,12
    800516a4:	4799                	li	a5,6
    800516a6:	46f9                	li	a3,30
    800516a8:	e4be                	sd	a5,72(sp)
    800516aa:	fc3a                	sd	a4,56(sp)
    800516ac:	478d                	li	a5,3
    800516ae:	4705                	li	a4,1
    800516b0:	f036                	sd	a3,32(sp)
    800516b2:	6641                	lui	a2,0x10
    800516b4:	46f5                	li	a3,29
    800516b6:	f83a                	sd	a4,48(sp)
    800516b8:	ec3a                	sd	a4,24(sp)
    800516ba:	e836                	sd	a3,16(sp)
    800516bc:	e43a                	sd	a4,8(sp)
    800516be:	e0be                	sd	a5,64(sp)
    800516c0:	f43e                	sd	a5,40(sp)
    800516c2:	e03e                	sd	a5,0(sp)
    800516c4:	48a1                	li	a7,8
    800516c6:	4805                	li	a6,1
    800516c8:	471d                	li	a4,7
    800516ca:	4685                	li	a3,1
    800516cc:	6fe60613          	addi	a2,a2,1790 # 106fe <asinh-0x7ffef902>
    800516d0:	4581                	li	a1,0
    800516d2:	8522                	mv	a0,s0
    800516d4:	c70ff0ef          	jal	ra,80050b44 <unicode_prop_ops>
quickjs-nuttx/libunicode.c:1703
        break;
    800516d8:	b5d9                	j	8005159e <unicode_prop+0x56>
quickjs-nuttx/libunicode.c:1705
        ret = unicode_case1(cr, CASE_U);
    800516da:	4585                	li	a1,1
quickjs-nuttx/libunicode.c:1711
        ret = unicode_case1(cr, CASE_U | CASE_L | CASE_F);
    800516dc:	8522                	mv	a0,s0
quickjs-nuttx/libunicode.c:1786
}
    800516de:	7406                	ld	s0,96(sp)
    800516e0:	70a6                	ld	ra,104(sp)
    800516e2:	6165                	addi	sp,sp,112
quickjs-nuttx/libunicode.c:1711
        ret = unicode_case1(cr, CASE_U | CASE_L | CASE_F);
    800516e4:	f67fe06f          	j	8005064a <unicode_case1>
quickjs-nuttx/libunicode.c:1708
        ret = unicode_case1(cr, CASE_L);
    800516e8:	4589                	li	a1,2
    800516ea:	bfcd                	j	800516dc <unicode_prop+0x194>
quickjs-nuttx/libunicode.c:1711
        ret = unicode_case1(cr, CASE_U | CASE_L | CASE_F);
    800516ec:	459d                	li	a1,7
    800516ee:	b7fd                	j	800516dc <unicode_prop+0x194>
quickjs-nuttx/libunicode.c:1714
        ret = unicode_prop_ops(cr,
    800516f0:	481d                	li	a6,7
    800516f2:	4795                	li	a5,5
    800516f4:	4735                	li	a4,13
    800516f6:	4685                	li	a3,1
    800516f8:	4605                	li	a2,1
quickjs-nuttx/libunicode.c:1728
        ret = unicode_prop_ops(cr,
    800516fa:	4589                	li	a1,2
    800516fc:	bdc1                	j	800515cc <unicode_prop+0x84>
quickjs-nuttx/libunicode.c:1721
        ret = unicode_prop_ops(cr,
    800516fe:	481d                	li	a6,7
    80051700:	4795                	li	a5,5
    80051702:	4739                	li	a4,14
quickjs-nuttx/libunicode.c:1728
        ret = unicode_prop_ops(cr,
    80051704:	4685                	li	a3,1
    80051706:	4611                	li	a2,4
    80051708:	bfcd                	j	800516fa <unicode_prop+0x1b2>
    8005170a:	481d                	li	a6,7
    8005170c:	4795                	li	a5,5
    8005170e:	473d                	li	a4,15
    80051710:	bfd5                	j	80051704 <unicode_prop+0x1bc>
quickjs-nuttx/libunicode.c:1772
        ret = unicode_prop_ops(cr,
    80051712:	481d                	li	a6,7
    80051714:	4795                	li	a5,5
    80051716:	4729                	li	a4,10
    80051718:	4685                	li	a3,1
    8005171a:	03000613          	li	a2,48
    8005171e:	4585                	li	a1,1
    80051720:	b575                	j	800515cc <unicode_prop+0x84>
quickjs-nuttx/libunicode.c:1780
        if (prop_idx >= countof(unicode_prop_table))
    80051722:	03100793          	li	a5,49
    80051726:	00b7e863          	bltu	a5,a1,80051736 <unicode_prop+0x1ee>
quickjs-nuttx/libunicode.c:1782
        ret = unicode_prop1(cr, prop_idx);
    8005172a:	8522                	mv	a0,s0
quickjs-nuttx/libunicode.c:1786
}
    8005172c:	7406                	ld	s0,96(sp)
    8005172e:	70a6                	ld	ra,104(sp)
    80051730:	6165                	addi	sp,sp,112
quickjs-nuttx/libunicode.c:1782
        ret = unicode_prop1(cr, prop_idx);
    80051732:	950ff06f          	j	80050882 <unicode_prop1>
quickjs-nuttx/libunicode.c:1598
        return -2;
    80051736:	5579                	li	a0,-2
    80051738:	b59d                	j	8005159e <unicode_prop+0x56>

000000008005173a <exchange_bytes>:
exchange_bytes():
quickjs-nuttx/cutils.c:339

static void exchange_bytes(void *a, void *b, size_t size) {
    uint8_t *ap = (uint8_t *)a;
    uint8_t *bp = (uint8_t *)b;

    while (size-- != 0) {
    8005173a:	962e                	add	a2,a2,a1
    8005173c:	00c59363          	bne	a1,a2,80051742 <exchange_bytes+0x8>
quickjs-nuttx/cutils.c:344
        uint8_t t = *ap;
        *ap++ = *bp;
        *bp++ = t;
    }
}
    80051740:	8082                	ret
quickjs-nuttx/cutils.c:341
        *ap++ = *bp;
    80051742:	0005c703          	lbu	a4,0(a1)
quickjs-nuttx/cutils.c:340
        uint8_t t = *ap;
    80051746:	00054783          	lbu	a5,0(a0)
quickjs-nuttx/cutils.c:342
        *bp++ = t;
    8005174a:	0585                	addi	a1,a1,1
quickjs-nuttx/cutils.c:341
        *ap++ = *bp;
    8005174c:	0505                	addi	a0,a0,1
    8005174e:	fee50fa3          	sb	a4,-1(a0)
quickjs-nuttx/cutils.c:342
        *bp++ = t;
    80051752:	fef58fa3          	sb	a5,-1(a1)
    80051756:	b7dd                	j	8005173c <exchange_bytes+0x2>

0000000080051758 <exchange_one_byte>:
exchange_one_byte():
quickjs-nuttx/cutils.c:350

static void exchange_one_byte(void *a, void *b, size_t size) {
    uint8_t *ap = (uint8_t *)a;
    uint8_t *bp = (uint8_t *)b;
    uint8_t t = *ap;
    *ap = *bp;
    80051758:	0005c703          	lbu	a4,0(a1)
quickjs-nuttx/cutils.c:349
    uint8_t t = *ap;
    8005175c:	00054783          	lbu	a5,0(a0)
quickjs-nuttx/cutils.c:350
    *ap = *bp;
    80051760:	00e50023          	sb	a4,0(a0)
quickjs-nuttx/cutils.c:351
    *bp = t;
    80051764:	00f58023          	sb	a5,0(a1)
quickjs-nuttx/cutils.c:352
}
    80051768:	8082                	ret

000000008005176a <exchange_int16s>:
exchange_int16s():
quickjs-nuttx/cutils.c:358

static void exchange_int16s(void *a, void *b, size_t size) {
    uint16_t *ap = (uint16_t *)a;
    uint16_t *bp = (uint16_t *)b;

    for (size /= sizeof(uint16_t); size-- != 0;) {
    8005176a:	9a79                	andi	a2,a2,-2
    8005176c:	962e                	add	a2,a2,a1
quickjs-nuttx/cutils.c:358 (discriminator 1)
    8005176e:	00c59363          	bne	a1,a2,80051774 <exchange_int16s+0xa>
quickjs-nuttx/cutils.c:363
        uint16_t t = *ap;
        *ap++ = *bp;
        *bp++ = t;
    }
}
    80051772:	8082                	ret
quickjs-nuttx/cutils.c:360
        *ap++ = *bp;
    80051774:	0005d703          	lhu	a4,0(a1)
quickjs-nuttx/cutils.c:359
        uint16_t t = *ap;
    80051778:	00055783          	lhu	a5,0(a0)
quickjs-nuttx/cutils.c:361
        *bp++ = t;
    8005177c:	0589                	addi	a1,a1,2
quickjs-nuttx/cutils.c:360
        *ap++ = *bp;
    8005177e:	0509                	addi	a0,a0,2
    80051780:	fee51f23          	sh	a4,-2(a0)
quickjs-nuttx/cutils.c:361
        *bp++ = t;
    80051784:	fef59f23          	sh	a5,-2(a1)
    80051788:	b7dd                	j	8005176e <exchange_int16s+0x4>

000000008005178a <exchange_one_int16>:
exchange_one_int16():
quickjs-nuttx/cutils.c:369

static void exchange_one_int16(void *a, void *b, size_t size) {
    uint16_t *ap = (uint16_t *)a;
    uint16_t *bp = (uint16_t *)b;
    uint16_t t = *ap;
    *ap = *bp;
    8005178a:	0005d703          	lhu	a4,0(a1)
quickjs-nuttx/cutils.c:368
    uint16_t t = *ap;
    8005178e:	00055783          	lhu	a5,0(a0)
quickjs-nuttx/cutils.c:369
    *ap = *bp;
    80051792:	00e51023          	sh	a4,0(a0)
quickjs-nuttx/cutils.c:370
    *bp = t;
    80051796:	00f59023          	sh	a5,0(a1)
quickjs-nuttx/cutils.c:371
}
    8005179a:	8082                	ret

000000008005179c <exchange_int32s>:
exchange_int32s():
quickjs-nuttx/cutils.c:377

static void exchange_int32s(void *a, void *b, size_t size) {
    uint32_t *ap = (uint32_t *)a;
    uint32_t *bp = (uint32_t *)b;

    for (size /= sizeof(uint32_t); size-- != 0;) {
    8005179c:	9a71                	andi	a2,a2,-4
    8005179e:	962e                	add	a2,a2,a1
quickjs-nuttx/cutils.c:377 (discriminator 1)
    800517a0:	00c59363          	bne	a1,a2,800517a6 <exchange_int32s+0xa>
quickjs-nuttx/cutils.c:382
        uint32_t t = *ap;
        *ap++ = *bp;
        *bp++ = t;
    }
}
    800517a4:	8082                	ret
quickjs-nuttx/cutils.c:379
        *ap++ = *bp;
    800517a6:	4198                	lw	a4,0(a1)
quickjs-nuttx/cutils.c:378
        uint32_t t = *ap;
    800517a8:	411c                	lw	a5,0(a0)
quickjs-nuttx/cutils.c:380
        *bp++ = t;
    800517aa:	0591                	addi	a1,a1,4
quickjs-nuttx/cutils.c:379
        *ap++ = *bp;
    800517ac:	0511                	addi	a0,a0,4
    800517ae:	fee52e23          	sw	a4,-4(a0)
quickjs-nuttx/cutils.c:380
        *bp++ = t;
    800517b2:	fef5ae23          	sw	a5,-4(a1)
    800517b6:	b7ed                	j	800517a0 <exchange_int32s+0x4>

00000000800517b8 <exchange_one_int32>:
exchange_one_int32():
quickjs-nuttx/cutils.c:388

static void exchange_one_int32(void *a, void *b, size_t size) {
    uint32_t *ap = (uint32_t *)a;
    uint32_t *bp = (uint32_t *)b;
    uint32_t t = *ap;
    *ap = *bp;
    800517b8:	4198                	lw	a4,0(a1)
quickjs-nuttx/cutils.c:387
    uint32_t t = *ap;
    800517ba:	411c                	lw	a5,0(a0)
quickjs-nuttx/cutils.c:388
    *ap = *bp;
    800517bc:	c118                	sw	a4,0(a0)
quickjs-nuttx/cutils.c:389
    *bp = t;
    800517be:	c19c                	sw	a5,0(a1)
quickjs-nuttx/cutils.c:390
}
    800517c0:	8082                	ret

00000000800517c2 <exchange_int64s>:
exchange_int64s():
quickjs-nuttx/cutils.c:396

static void exchange_int64s(void *a, void *b, size_t size) {
    uint64_t *ap = (uint64_t *)a;
    uint64_t *bp = (uint64_t *)b;

    for (size /= sizeof(uint64_t); size-- != 0;) {
    800517c2:	9a61                	andi	a2,a2,-8
    800517c4:	962e                	add	a2,a2,a1
quickjs-nuttx/cutils.c:396 (discriminator 1)
    800517c6:	00c59363          	bne	a1,a2,800517cc <exchange_int64s+0xa>
quickjs-nuttx/cutils.c:401
        uint64_t t = *ap;
        *ap++ = *bp;
        *bp++ = t;
    }
}
    800517ca:	8082                	ret
quickjs-nuttx/cutils.c:398
        *ap++ = *bp;
    800517cc:	6198                	ld	a4,0(a1)
quickjs-nuttx/cutils.c:397
        uint64_t t = *ap;
    800517ce:	611c                	ld	a5,0(a0)
quickjs-nuttx/cutils.c:399
        *bp++ = t;
    800517d0:	05a1                	addi	a1,a1,8
quickjs-nuttx/cutils.c:398
        *ap++ = *bp;
    800517d2:	0521                	addi	a0,a0,8
    800517d4:	fee53c23          	sd	a4,-8(a0)
quickjs-nuttx/cutils.c:399
        *bp++ = t;
    800517d8:	fef5bc23          	sd	a5,-8(a1)
    800517dc:	b7ed                	j	800517c6 <exchange_int64s+0x4>

00000000800517de <exchange_one_int64>:
exchange_one_int64():
quickjs-nuttx/cutils.c:407

static void exchange_one_int64(void *a, void *b, size_t size) {
    uint64_t *ap = (uint64_t *)a;
    uint64_t *bp = (uint64_t *)b;
    uint64_t t = *ap;
    *ap = *bp;
    800517de:	6198                	ld	a4,0(a1)
quickjs-nuttx/cutils.c:406
    uint64_t t = *ap;
    800517e0:	611c                	ld	a5,0(a0)
quickjs-nuttx/cutils.c:407
    *ap = *bp;
    800517e2:	e118                	sd	a4,0(a0)
quickjs-nuttx/cutils.c:408
    *bp = t;
    800517e4:	e19c                	sd	a5,0(a1)
quickjs-nuttx/cutils.c:409
}
    800517e6:	8082                	ret

00000000800517e8 <exchange_int128s>:
exchange_int128s():
quickjs-nuttx/cutils.c:415

static void exchange_int128s(void *a, void *b, size_t size) {
    uint64_t *ap = (uint64_t *)a;
    uint64_t *bp = (uint64_t *)b;

    for (size /= sizeof(uint64_t) * 2; size-- != 0; ap += 2, bp += 2) {
    800517e8:	9a41                	andi	a2,a2,-16
    800517ea:	962a                	add	a2,a2,a0
quickjs-nuttx/cutils.c:415 (discriminator 1)
    800517ec:	00c51363          	bne	a0,a2,800517f2 <exchange_int128s+0xa>
quickjs-nuttx/cutils.c:423
        ap[0] = bp[0];
        ap[1] = bp[1];
        bp[0] = t;
        bp[1] = u;
    }
}
    800517f0:	8082                	ret
quickjs-nuttx/cutils.c:418 (discriminator 3)
        ap[0] = bp[0];
    800517f2:	6194                	ld	a3,0(a1)
quickjs-nuttx/cutils.c:416 (discriminator 3)
        uint64_t t = ap[0];
    800517f4:	6118                	ld	a4,0(a0)
quickjs-nuttx/cutils.c:417 (discriminator 3)
        uint64_t u = ap[1];
    800517f6:	651c                	ld	a5,8(a0)
quickjs-nuttx/cutils.c:418 (discriminator 3)
        ap[0] = bp[0];
    800517f8:	e114                	sd	a3,0(a0)
quickjs-nuttx/cutils.c:419 (discriminator 3)
        ap[1] = bp[1];
    800517fa:	6594                	ld	a3,8(a1)
quickjs-nuttx/cutils.c:415 (discriminator 3)
    for (size /= sizeof(uint64_t) * 2; size-- != 0; ap += 2, bp += 2) {
    800517fc:	0541                	addi	a0,a0,16
    800517fe:	05c1                	addi	a1,a1,16
quickjs-nuttx/cutils.c:419 (discriminator 3)
        ap[1] = bp[1];
    80051800:	fed53c23          	sd	a3,-8(a0)
quickjs-nuttx/cutils.c:420 (discriminator 3)
        bp[0] = t;
    80051804:	fee5b823          	sd	a4,-16(a1)
quickjs-nuttx/cutils.c:421 (discriminator 3)
        bp[1] = u;
    80051808:	fef5bc23          	sd	a5,-8(a1)
quickjs-nuttx/cutils.c:415 (discriminator 3)
    for (size /= sizeof(uint64_t) * 2; size-- != 0; ap += 2, bp += 2) {
    8005180c:	b7c5                	j	800517ec <exchange_int128s+0x4>

000000008005180e <exchange_one_int128>:
exchange_one_int128():
quickjs-nuttx/cutils.c:430
static void exchange_one_int128(void *a, void *b, size_t size) {
    uint64_t *ap = (uint64_t *)a;
    uint64_t *bp = (uint64_t *)b;
    uint64_t t = ap[0];
    uint64_t u = ap[1];
    ap[0] = bp[0];
    8005180e:	6194                	ld	a3,0(a1)
quickjs-nuttx/cutils.c:428
    uint64_t t = ap[0];
    80051810:	6118                	ld	a4,0(a0)
quickjs-nuttx/cutils.c:429
    uint64_t u = ap[1];
    80051812:	651c                	ld	a5,8(a0)
quickjs-nuttx/cutils.c:430
    ap[0] = bp[0];
    80051814:	e114                	sd	a3,0(a0)
quickjs-nuttx/cutils.c:431
    ap[1] = bp[1];
    80051816:	6594                	ld	a3,8(a1)
    80051818:	e514                	sd	a3,8(a0)
quickjs-nuttx/cutils.c:432
    bp[0] = t;
    8005181a:	e198                	sd	a4,0(a1)
quickjs-nuttx/cutils.c:433
    bp[1] = u;
    8005181c:	e59c                	sd	a5,8(a1)
quickjs-nuttx/cutils.c:434
}
    8005181e:	8082                	ret

0000000080051820 <exchange_func>:
exchange_func():
quickjs-nuttx/cutils.c:437

static inline exchange_f exchange_func(const void *base, size_t size) {
    switch (((uintptr_t)base | (uintptr_t)size) & 15) {
    80051820:	8d4d                	or	a0,a0,a1
    80051822:	893d                	andi	a0,a0,15
    80051824:	47b9                	li	a5,14
    80051826:	06a7eb63          	bltu	a5,a0,8005189c <exchange_func+0x7c>
    8005182a:	0002d717          	auipc	a4,0x2d
    8005182e:	2de70713          	addi	a4,a4,734 # 8007eb08 <unicode_script_table+0xaa0>
    80051832:	050a                	slli	a0,a0,0x2
    80051834:	953a                	add	a0,a0,a4
    80051836:	411c                	lw	a5,0(a0)
    80051838:	97ba                	add	a5,a5,a4
    8005183a:	8782                	jr	a5
quickjs-nuttx/cutils.c:439
    case 0:
        if (size == sizeof(uint64_t) * 2)
    8005183c:	47c1                	li	a5,16
quickjs-nuttx/cutils.c:440
            return exchange_one_int128;
    8005183e:	00000517          	auipc	a0,0x0
    80051842:	fd050513          	addi	a0,a0,-48 # 8005180e <exchange_one_int128>
quickjs-nuttx/cutils.c:439
        if (size == sizeof(uint64_t) * 2)
    80051846:	06f58663          	beq	a1,a5,800518b2 <exchange_func+0x92>
quickjs-nuttx/cutils.c:442
        else
            return exchange_int128s;
    8005184a:	00000517          	auipc	a0,0x0
    8005184e:	f9e50513          	addi	a0,a0,-98 # 800517e8 <exchange_int128s>
    80051852:	8082                	ret
quickjs-nuttx/cutils.c:444
    case 8:
        if (size == sizeof(uint64_t))
    80051854:	47a1                	li	a5,8
quickjs-nuttx/cutils.c:445
            return exchange_one_int64;
    80051856:	00000517          	auipc	a0,0x0
    8005185a:	f8850513          	addi	a0,a0,-120 # 800517de <exchange_one_int64>
quickjs-nuttx/cutils.c:444
        if (size == sizeof(uint64_t))
    8005185e:	04f58a63          	beq	a1,a5,800518b2 <exchange_func+0x92>
quickjs-nuttx/cutils.c:447
        else
            return exchange_int64s;
    80051862:	00000517          	auipc	a0,0x0
    80051866:	f6050513          	addi	a0,a0,-160 # 800517c2 <exchange_int64s>
    8005186a:	8082                	ret
quickjs-nuttx/cutils.c:450
    case 4:
    case 12:
        if (size == sizeof(uint32_t))
    8005186c:	4791                	li	a5,4
quickjs-nuttx/cutils.c:451
            return exchange_one_int32;
    8005186e:	00000517          	auipc	a0,0x0
    80051872:	f4a50513          	addi	a0,a0,-182 # 800517b8 <exchange_one_int32>
quickjs-nuttx/cutils.c:450
        if (size == sizeof(uint32_t))
    80051876:	02f58e63          	beq	a1,a5,800518b2 <exchange_func+0x92>
quickjs-nuttx/cutils.c:453
        else
            return exchange_int32s;
    8005187a:	00000517          	auipc	a0,0x0
    8005187e:	f2250513          	addi	a0,a0,-222 # 8005179c <exchange_int32s>
    80051882:	8082                	ret
quickjs-nuttx/cutils.c:458
    case 2:
    case 6:
    case 10:
    case 14:
        if (size == sizeof(uint16_t))
    80051884:	4789                	li	a5,2
quickjs-nuttx/cutils.c:459
            return exchange_one_int16;
    80051886:	00000517          	auipc	a0,0x0
    8005188a:	f0450513          	addi	a0,a0,-252 # 8005178a <exchange_one_int16>
quickjs-nuttx/cutils.c:458
        if (size == sizeof(uint16_t))
    8005188e:	02f58263          	beq	a1,a5,800518b2 <exchange_func+0x92>
quickjs-nuttx/cutils.c:461
        else
            return exchange_int16s;
    80051892:	00000517          	auipc	a0,0x0
    80051896:	ed850513          	addi	a0,a0,-296 # 8005176a <exchange_int16s>
    8005189a:	8082                	ret
quickjs-nuttx/cutils.c:463
    default:
        if (size == 1)
    8005189c:	4785                	li	a5,1
quickjs-nuttx/cutils.c:464
            return exchange_one_byte;
    8005189e:	00000517          	auipc	a0,0x0
    800518a2:	eba50513          	addi	a0,a0,-326 # 80051758 <exchange_one_byte>
quickjs-nuttx/cutils.c:463
        if (size == 1)
    800518a6:	00f58663          	beq	a1,a5,800518b2 <exchange_func+0x92>
quickjs-nuttx/cutils.c:466
        else
            return exchange_bytes;
    800518aa:	00000517          	auipc	a0,0x0
    800518ae:	e9050513          	addi	a0,a0,-368 # 8005173a <exchange_bytes>
quickjs-nuttx/cutils.c:468
    }
}
    800518b2:	8082                	ret

00000000800518b4 <dbuf_default_realloc>:
dbuf_default_realloc():
quickjs-nuttx/cutils.c:85
{
    800518b4:	852e                	mv	a0,a1
quickjs-nuttx/cutils.c:86
    return realloc(ptr, size);
    800518b6:	85b2                	mv	a1,a2
    800518b8:	45e0e06f          	j	8005fd16 <realloc>

00000000800518bc <pstrcpy>:
pstrcpy():
quickjs-nuttx/cutils.c:37
    if (buf_size <= 0)
    800518bc:	02b05063          	blez	a1,800518dc <pstrcpy+0x20>
quickjs-nuttx/cutils.c:42
        if (c == 0 || q >= buf + buf_size - 1)
    800518c0:	15fd                	addi	a1,a1,-1
    800518c2:	95aa                	add	a1,a1,a0
quickjs-nuttx/cutils.c:41
        c = *str++;
    800518c4:	00064783          	lbu	a5,0(a2)
    800518c8:	0605                	addi	a2,a2,1
quickjs-nuttx/cutils.c:42
        if (c == 0 || q >= buf + buf_size - 1)
    800518ca:	c799                	beqz	a5,800518d8 <pstrcpy+0x1c>
    800518cc:	00b57663          	bgeu	a0,a1,800518d8 <pstrcpy+0x1c>
quickjs-nuttx/cutils.c:44
        *q++ = c;
    800518d0:	0505                	addi	a0,a0,1
    800518d2:	fef50fa3          	sb	a5,-1(a0)
quickjs-nuttx/cutils.c:41
        c = *str++;
    800518d6:	b7fd                	j	800518c4 <pstrcpy+0x8>
quickjs-nuttx/cutils.c:46
    *q = '\0';
    800518d8:	00050023          	sb	zero,0(a0)
quickjs-nuttx/cutils.c:47
}
    800518dc:	8082                	ret

00000000800518de <pstrcat>:
pstrcat():
quickjs-nuttx/cutils.c:51
{
    800518de:	7179                	addi	sp,sp,-48
    800518e0:	f022                	sd	s0,32(sp)
    800518e2:	ec26                	sd	s1,24(sp)
    800518e4:	e432                	sd	a2,8(sp)
    800518e6:	f406                	sd	ra,40(sp)
    800518e8:	842a                	mv	s0,a0
    800518ea:	84ae                	mv	s1,a1
quickjs-nuttx/cutils.c:53
    len = strlen(buf);
    800518ec:	496120ef          	jal	ra,80063d82 <strlen>
    800518f0:	2501                	sext.w	a0,a0
quickjs-nuttx/cutils.c:54
    if (len < buf_size)
    800518f2:	6622                	ld	a2,8(sp)
    800518f4:	00955763          	bge	a0,s1,80051902 <pstrcat+0x24>
quickjs-nuttx/cutils.c:55
        pstrcpy(buf + len, buf_size - len, s);
    800518f8:	40a485bb          	subw	a1,s1,a0
    800518fc:	9522                	add	a0,a0,s0
    800518fe:	fbfff0ef          	jal	ra,800518bc <pstrcpy>
quickjs-nuttx/cutils.c:57
}
    80051902:	70a2                	ld	ra,40(sp)
    80051904:	8522                	mv	a0,s0
    80051906:	7402                	ld	s0,32(sp)
    80051908:	64e2                	ld	s1,24(sp)
    8005190a:	6145                	addi	sp,sp,48
    8005190c:	8082                	ret

000000008005190e <strstart>:
strstart():
quickjs-nuttx/cutils.c:60
{
    8005190e:	87aa                	mv	a5,a0
quickjs-nuttx/cutils.c:64
    while (*q != '\0') {
    80051910:	0005c703          	lbu	a4,0(a1)
    80051914:	e709                	bnez	a4,8005191e <strstart+0x10>
quickjs-nuttx/cutils.c:72
    return 1;
    80051916:	4505                	li	a0,1
quickjs-nuttx/cutils.c:70
    if (ptr)
    80051918:	ca19                	beqz	a2,8005192e <strstart+0x20>
quickjs-nuttx/cutils.c:71
        *ptr = p;
    8005191a:	e21c                	sd	a5,0(a2)
    8005191c:	8082                	ret
quickjs-nuttx/cutils.c:65
        if (*p != *q)
    8005191e:	0007c683          	lbu	a3,0(a5)
    80051922:	00e69563          	bne	a3,a4,8005192c <strstart+0x1e>
quickjs-nuttx/cutils.c:67
        p++;
    80051926:	0785                	addi	a5,a5,1
quickjs-nuttx/cutils.c:68
        q++;
    80051928:	0585                	addi	a1,a1,1
    8005192a:	b7dd                	j	80051910 <strstart+0x2>
quickjs-nuttx/cutils.c:66
            return 0;
    8005192c:	4501                	li	a0,0
quickjs-nuttx/cutils.c:73
}
    8005192e:	8082                	ret

0000000080051930 <has_suffix>:
has_suffix():
quickjs-nuttx/cutils.c:76
{
    80051930:	1101                	addi	sp,sp,-32
    80051932:	e822                	sd	s0,16(sp)
    80051934:	e426                	sd	s1,8(sp)
    80051936:	e04a                	sd	s2,0(sp)
    80051938:	ec06                	sd	ra,24(sp)
    8005193a:	84ae                	mv	s1,a1
    8005193c:	892a                	mv	s2,a0
quickjs-nuttx/cutils.c:77
    size_t len = strlen(str);
    8005193e:	444120ef          	jal	ra,80063d82 <strlen>
    80051942:	842a                	mv	s0,a0
quickjs-nuttx/cutils.c:78
    size_t slen = strlen(suffix);
    80051944:	8526                	mv	a0,s1
    80051946:	43c120ef          	jal	ra,80063d82 <strlen>
quickjs-nuttx/cutils.c:79
    return (len >= slen && !memcmp(str + len - slen, suffix, slen));
    8005194a:	02a46163          	bltu	s0,a0,8005196c <has_suffix+0x3c>
quickjs-nuttx/cutils.c:79 (discriminator 1)
    8005194e:	8c09                	sub	s0,s0,a0
    80051950:	862a                	mv	a2,a0
    80051952:	85a6                	mv	a1,s1
    80051954:	00890533          	add	a0,s2,s0
    80051958:	27c120ef          	jal	ra,80063bd4 <memcmp>
    8005195c:	00153513          	seqz	a0,a0
quickjs-nuttx/cutils.c:80 (discriminator 6)
}
    80051960:	60e2                	ld	ra,24(sp)
    80051962:	6442                	ld	s0,16(sp)
    80051964:	64a2                	ld	s1,8(sp)
    80051966:	6902                	ld	s2,0(sp)
    80051968:	6105                	addi	sp,sp,32
    8005196a:	8082                	ret
quickjs-nuttx/cutils.c:79
    return (len >= slen && !memcmp(str + len - slen, suffix, slen));
    8005196c:	4501                	li	a0,0
    8005196e:	bfcd                	j	80051960 <has_suffix+0x30>

0000000080051970 <dbuf_init2>:
dbuf_init2():
quickjs-nuttx/cutils.c:90
{
    80051970:	1101                	addi	sp,sp,-32
    80051972:	e822                	sd	s0,16(sp)
    80051974:	e04a                	sd	s2,0(sp)
    80051976:	8432                	mv	s0,a2
    80051978:	892e                	mv	s2,a1
quickjs-nuttx/cutils.c:91
    memset(s, 0, sizeof(*s));
    8005197a:	03000613          	li	a2,48
    8005197e:	4581                	li	a1,0
quickjs-nuttx/cutils.c:90
{
    80051980:	e426                	sd	s1,8(sp)
    80051982:	ec06                	sd	ra,24(sp)
    80051984:	84aa                	mv	s1,a0
quickjs-nuttx/cutils.c:91
    memset(s, 0, sizeof(*s));
    80051986:	2bc120ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/cutils.c:92
    if (!realloc_func)
    8005198a:	e409                	bnez	s0,80051994 <dbuf_init2+0x24>
quickjs-nuttx/cutils.c:93
        realloc_func = dbuf_default_realloc;
    8005198c:	00000417          	auipc	s0,0x0
    80051990:	f2840413          	addi	s0,s0,-216 # 800518b4 <dbuf_default_realloc>
quickjs-nuttx/cutils.c:95
    s->realloc_func = realloc_func;
    80051994:	f080                	sd	s0,32(s1)
quickjs-nuttx/cutils.c:96
}
    80051996:	60e2                	ld	ra,24(sp)
    80051998:	6442                	ld	s0,16(sp)
quickjs-nuttx/cutils.c:94
    s->opaque = opaque;
    8005199a:	0324b423          	sd	s2,40(s1)
quickjs-nuttx/cutils.c:96
}
    8005199e:	64a2                	ld	s1,8(sp)
    800519a0:	6902                	ld	s2,0(sp)
    800519a2:	6105                	addi	sp,sp,32
    800519a4:	8082                	ret

00000000800519a6 <dbuf_init>:
dbuf_init():
quickjs-nuttx/cutils.c:100
    dbuf_init2(s, NULL, NULL);
    800519a6:	4601                	li	a2,0
    800519a8:	4581                	li	a1,0
    800519aa:	fc7ff06f          	j	80051970 <dbuf_init2>

00000000800519ae <dbuf_realloc>:
dbuf_realloc():
quickjs-nuttx/cutils.c:105
{
    800519ae:	1101                	addi	sp,sp,-32
    800519b0:	e04a                	sd	s2,0(sp)
    800519b2:	ec06                	sd	ra,24(sp)
    800519b4:	e822                	sd	s0,16(sp)
    800519b6:	e426                	sd	s1,8(sp)
quickjs-nuttx/cutils.c:108
    if (new_size > s->allocated_size) {
    800519b8:	6904                	ld	s1,16(a0)
quickjs-nuttx/cutils.c:122
    return 0;
    800519ba:	4901                	li	s2,0
quickjs-nuttx/cutils.c:108
    if (new_size > s->allocated_size) {
    800519bc:	02b4fa63          	bgeu	s1,a1,800519f0 <dbuf_realloc+0x42>
quickjs-nuttx/cutils.c:109
        if (s->error)
    800519c0:	01852903          	lw	s2,24(a0)
    800519c4:	842a                	mv	s0,a0
    800519c6:	02091163          	bnez	s2,800519e8 <dbuf_realloc+0x3a>
quickjs-nuttx/cutils.c:111
        size = s->allocated_size * 3 / 2;
    800519ca:	460d                	li	a2,3
    800519cc:	02c484b3          	mul	s1,s1,a2
    800519d0:	8085                	srli	s1,s1,0x1
    800519d2:	00b4f363          	bgeu	s1,a1,800519d8 <dbuf_realloc+0x2a>
    800519d6:	84ae                	mv	s1,a1
quickjs-nuttx/cutils.c:114
        new_buf = s->realloc_func(s->opaque, s->buf, new_size);
    800519d8:	701c                	ld	a5,32(s0)
    800519da:	600c                	ld	a1,0(s0)
    800519dc:	7408                	ld	a0,40(s0)
    800519de:	8626                	mv	a2,s1
    800519e0:	9782                	jalr	a5
quickjs-nuttx/cutils.c:115
        if (!new_buf) {
    800519e2:	e509                	bnez	a0,800519ec <dbuf_realloc+0x3e>
quickjs-nuttx/cutils.c:116
            s->error = TRUE;
    800519e4:	4785                	li	a5,1
    800519e6:	cc1c                	sw	a5,24(s0)
quickjs-nuttx/cutils.c:110
            return -1;
    800519e8:	597d                	li	s2,-1
    800519ea:	a019                	j	800519f0 <dbuf_realloc+0x42>
quickjs-nuttx/cutils.c:119
        s->buf = new_buf;
    800519ec:	e008                	sd	a0,0(s0)
quickjs-nuttx/cutils.c:120
        s->allocated_size = new_size;
    800519ee:	e804                	sd	s1,16(s0)
quickjs-nuttx/cutils.c:123
}
    800519f0:	60e2                	ld	ra,24(sp)
    800519f2:	6442                	ld	s0,16(sp)
    800519f4:	64a2                	ld	s1,8(sp)
    800519f6:	854a                	mv	a0,s2
    800519f8:	6902                	ld	s2,0(sp)
    800519fa:	6105                	addi	sp,sp,32
    800519fc:	8082                	ret

00000000800519fe <dbuf_write>:
dbuf_write():
quickjs-nuttx/cutils.c:126
{
    800519fe:	7139                	addi	sp,sp,-64
    80051a00:	e852                	sd	s4,16(sp)
quickjs-nuttx/cutils.c:128
    end = offset + len;
    80051a02:	00d58a33          	add	s4,a1,a3
quickjs-nuttx/cutils.c:126
{
    80051a06:	f04a                	sd	s2,32(sp)
    80051a08:	892e                	mv	s2,a1
quickjs-nuttx/cutils.c:129
    if (dbuf_realloc(s, end))
    80051a0a:	85d2                	mv	a1,s4
quickjs-nuttx/cutils.c:126
{
    80051a0c:	f822                	sd	s0,48(sp)
    80051a0e:	f426                	sd	s1,40(sp)
    80051a10:	ec4e                	sd	s3,24(sp)
    80051a12:	e456                	sd	s5,8(sp)
    80051a14:	fc06                	sd	ra,56(sp)
    80051a16:	84aa                	mv	s1,a0
    80051a18:	8ab2                	mv	s5,a2
    80051a1a:	89b6                	mv	s3,a3
quickjs-nuttx/cutils.c:129
    if (dbuf_realloc(s, end))
    80051a1c:	f93ff0ef          	jal	ra,800519ae <dbuf_realloc>
quickjs-nuttx/cutils.c:130
        return -1;
    80051a20:	547d                	li	s0,-1
quickjs-nuttx/cutils.c:129
    if (dbuf_realloc(s, end))
    80051a22:	ed09                	bnez	a0,80051a3c <dbuf_write+0x3e>
    80051a24:	842a                	mv	s0,a0
quickjs-nuttx/cutils.c:131
    memcpy(s->buf + offset, data, len);
    80051a26:	6088                	ld	a0,0(s1)
    80051a28:	864e                	mv	a2,s3
    80051a2a:	85d6                	mv	a1,s5
    80051a2c:	954a                	add	a0,a0,s2
    80051a2e:	37e120ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/cutils.c:132
    if (end > s->size)
    80051a32:	649c                	ld	a5,8(s1)
    80051a34:	0147f463          	bgeu	a5,s4,80051a3c <dbuf_write+0x3e>
quickjs-nuttx/cutils.c:133
        s->size = end;
    80051a38:	0144b423          	sd	s4,8(s1)
quickjs-nuttx/cutils.c:135
}
    80051a3c:	70e2                	ld	ra,56(sp)
    80051a3e:	8522                	mv	a0,s0
    80051a40:	7442                	ld	s0,48(sp)
    80051a42:	74a2                	ld	s1,40(sp)
    80051a44:	7902                	ld	s2,32(sp)
    80051a46:	69e2                	ld	s3,24(sp)
    80051a48:	6a42                	ld	s4,16(sp)
    80051a4a:	6aa2                	ld	s5,8(sp)
    80051a4c:	6121                	addi	sp,sp,64
    80051a4e:	8082                	ret

0000000080051a50 <dbuf_put>:
dbuf_put():
quickjs-nuttx/cutils.c:138
{
    80051a50:	1101                	addi	sp,sp,-32
    80051a52:	e822                	sd	s0,16(sp)
    80051a54:	e426                	sd	s1,8(sp)
    80051a56:	e04a                	sd	s2,0(sp)
    80051a58:	ec06                	sd	ra,24(sp)
quickjs-nuttx/cutils.c:139
    if (unlikely((s->size + len) > s->allocated_size)) {
    80051a5a:	651c                	ld	a5,8(a0)
quickjs-nuttx/cutils.c:138
{
    80051a5c:	892e                	mv	s2,a1
    80051a5e:	842a                	mv	s0,a0
quickjs-nuttx/cutils.c:139
    if (unlikely((s->size + len) > s->allocated_size)) {
    80051a60:	00f605b3          	add	a1,a2,a5
    80051a64:	691c                	ld	a5,16(a0)
quickjs-nuttx/cutils.c:138
{
    80051a66:	84b2                	mv	s1,a2
quickjs-nuttx/cutils.c:139
    if (unlikely((s->size + len) > s->allocated_size)) {
    80051a68:	02b7e363          	bltu	a5,a1,80051a8e <dbuf_put+0x3e>
quickjs-nuttx/cutils.c:143
    memcpy(s->buf + s->size, data, len);
    80051a6c:	6008                	ld	a0,0(s0)
    80051a6e:	641c                	ld	a5,8(s0)
    80051a70:	8626                	mv	a2,s1
    80051a72:	85ca                	mv	a1,s2
    80051a74:	953e                	add	a0,a0,a5
    80051a76:	336120ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/cutils.c:144
    s->size += len;
    80051a7a:	6410                	ld	a2,8(s0)
quickjs-nuttx/cutils.c:145
    return 0;
    80051a7c:	4501                	li	a0,0
quickjs-nuttx/cutils.c:144
    s->size += len;
    80051a7e:	9626                	add	a2,a2,s1
    80051a80:	e410                	sd	a2,8(s0)
quickjs-nuttx/cutils.c:146
}
    80051a82:	60e2                	ld	ra,24(sp)
    80051a84:	6442                	ld	s0,16(sp)
    80051a86:	64a2                	ld	s1,8(sp)
    80051a88:	6902                	ld	s2,0(sp)
    80051a8a:	6105                	addi	sp,sp,32
    80051a8c:	8082                	ret
quickjs-nuttx/cutils.c:140
        if (dbuf_realloc(s, s->size + len))
    80051a8e:	f21ff0ef          	jal	ra,800519ae <dbuf_realloc>
    80051a92:	dd69                	beqz	a0,80051a6c <dbuf_put+0x1c>
quickjs-nuttx/cutils.c:141
            return -1;
    80051a94:	557d                	li	a0,-1
    80051a96:	b7f5                	j	80051a82 <dbuf_put+0x32>

0000000080051a98 <dbuf_put_self>:
dbuf_put_self():
quickjs-nuttx/cutils.c:149
{
    80051a98:	1101                	addi	sp,sp,-32
    80051a9a:	e822                	sd	s0,16(sp)
    80051a9c:	e426                	sd	s1,8(sp)
    80051a9e:	e04a                	sd	s2,0(sp)
    80051aa0:	ec06                	sd	ra,24(sp)
quickjs-nuttx/cutils.c:150
    if (unlikely((s->size + len) > s->allocated_size)) {
    80051aa2:	651c                	ld	a5,8(a0)
quickjs-nuttx/cutils.c:149
{
    80051aa4:	892e                	mv	s2,a1
    80051aa6:	842a                	mv	s0,a0
quickjs-nuttx/cutils.c:150
    if (unlikely((s->size + len) > s->allocated_size)) {
    80051aa8:	00f605b3          	add	a1,a2,a5
    80051aac:	691c                	ld	a5,16(a0)
quickjs-nuttx/cutils.c:149
{
    80051aae:	84b2                	mv	s1,a2
quickjs-nuttx/cutils.c:150
    if (unlikely((s->size + len) > s->allocated_size)) {
    80051ab0:	02b7e463          	bltu	a5,a1,80051ad8 <dbuf_put_self+0x40>
quickjs-nuttx/cutils.c:154
    memcpy(s->buf + s->size, s->buf + offset, len);
    80051ab4:	601c                	ld	a5,0(s0)
    80051ab6:	6408                	ld	a0,8(s0)
    80051ab8:	8626                	mv	a2,s1
    80051aba:	012785b3          	add	a1,a5,s2
    80051abe:	953e                	add	a0,a0,a5
    80051ac0:	2ec120ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/cutils.c:155
    s->size += len;
    80051ac4:	6410                	ld	a2,8(s0)
quickjs-nuttx/cutils.c:156
    return 0;
    80051ac6:	4501                	li	a0,0
quickjs-nuttx/cutils.c:155
    s->size += len;
    80051ac8:	9626                	add	a2,a2,s1
    80051aca:	e410                	sd	a2,8(s0)
quickjs-nuttx/cutils.c:157
}
    80051acc:	60e2                	ld	ra,24(sp)
    80051ace:	6442                	ld	s0,16(sp)
    80051ad0:	64a2                	ld	s1,8(sp)
    80051ad2:	6902                	ld	s2,0(sp)
    80051ad4:	6105                	addi	sp,sp,32
    80051ad6:	8082                	ret
quickjs-nuttx/cutils.c:151
        if (dbuf_realloc(s, s->size + len))
    80051ad8:	ed7ff0ef          	jal	ra,800519ae <dbuf_realloc>
    80051adc:	dd61                	beqz	a0,80051ab4 <dbuf_put_self+0x1c>
quickjs-nuttx/cutils.c:152
            return -1;
    80051ade:	557d                	li	a0,-1
    80051ae0:	b7f5                	j	80051acc <dbuf_put_self+0x34>

0000000080051ae2 <dbuf_putc>:
dbuf_putc():
quickjs-nuttx/cutils.c:160
{
    80051ae2:	1101                	addi	sp,sp,-32
    80051ae4:	00b107a3          	sb	a1,15(sp)
quickjs-nuttx/cutils.c:161
    return dbuf_put(s, &c, 1);
    80051ae8:	4605                	li	a2,1
    80051aea:	00f10593          	addi	a1,sp,15
quickjs-nuttx/cutils.c:160
{
    80051aee:	ec06                	sd	ra,24(sp)
quickjs-nuttx/cutils.c:161
    return dbuf_put(s, &c, 1);
    80051af0:	f61ff0ef          	jal	ra,80051a50 <dbuf_put>
quickjs-nuttx/cutils.c:162
}
    80051af4:	60e2                	ld	ra,24(sp)
    80051af6:	6105                	addi	sp,sp,32
    80051af8:	8082                	ret

0000000080051afa <dbuf_putstr>:
dbuf_putstr():
quickjs-nuttx/cutils.c:165
{
    80051afa:	1101                	addi	sp,sp,-32
    80051afc:	e822                	sd	s0,16(sp)
    80051afe:	842a                	mv	s0,a0
quickjs-nuttx/cutils.c:166
    return dbuf_put(s, (const uint8_t *)str, strlen(str));
    80051b00:	852e                	mv	a0,a1
quickjs-nuttx/cutils.c:165
{
    80051b02:	ec06                	sd	ra,24(sp)
quickjs-nuttx/cutils.c:166
    return dbuf_put(s, (const uint8_t *)str, strlen(str));
    80051b04:	e42e                	sd	a1,8(sp)
    80051b06:	27c120ef          	jal	ra,80063d82 <strlen>
    80051b0a:	862a                	mv	a2,a0
    80051b0c:	8522                	mv	a0,s0
quickjs-nuttx/cutils.c:167
}
    80051b0e:	6442                	ld	s0,16(sp)
quickjs-nuttx/cutils.c:166
    return dbuf_put(s, (const uint8_t *)str, strlen(str));
    80051b10:	65a2                	ld	a1,8(sp)
quickjs-nuttx/cutils.c:167
}
    80051b12:	60e2                	ld	ra,24(sp)
    80051b14:	6105                	addi	sp,sp,32
quickjs-nuttx/cutils.c:166
    return dbuf_put(s, (const uint8_t *)str, strlen(str));
    80051b16:	f3bff06f          	j	80051a50 <dbuf_put>

0000000080051b1a <dbuf_printf>:
dbuf_printf():
quickjs-nuttx/cutils.c:171
{
    80051b1a:	7151                	addi	sp,sp,-240
    80051b1c:	edbe                	sd	a5,216(sp)
quickjs-nuttx/cutils.c:176
    va_start(ap, fmt);
    80051b1e:	019c                	addi	a5,sp,192
quickjs-nuttx/cutils.c:171
{
    80051b20:	f922                	sd	s0,176(sp)
    80051b22:	ed4e                	sd	s3,152(sp)
    80051b24:	e1b2                	sd	a2,192(sp)
    80051b26:	e5b6                	sd	a3,200(sp)
quickjs-nuttx/cutils.c:177
    len = vsnprintf(buf, sizeof(buf), fmt, ap);
    80051b28:	862e                	mv	a2,a1
    80051b2a:	86be                	mv	a3,a5
quickjs-nuttx/cutils.c:171
{
    80051b2c:	842a                	mv	s0,a0
    80051b2e:	89ae                	mv	s3,a1
quickjs-nuttx/cutils.c:177
    len = vsnprintf(buf, sizeof(buf), fmt, ap);
    80051b30:	0808                	addi	a0,sp,16
    80051b32:	08000593          	li	a1,128
quickjs-nuttx/cutils.c:171
{
    80051b36:	f14a                	sd	s2,160(sp)
    80051b38:	e9ba                	sd	a4,208(sp)
quickjs-nuttx/cutils.c:176
    va_start(ap, fmt);
    80051b3a:	e43e                	sd	a5,8(sp)
quickjs-nuttx/cutils.c:171
{
    80051b3c:	fd06                	sd	ra,184(sp)
    80051b3e:	f526                	sd	s1,168(sp)
    80051b40:	f1c2                	sd	a6,224(sp)
    80051b42:	f5c6                	sd	a7,232(sp)
quickjs-nuttx/cutils.c:177
    len = vsnprintf(buf, sizeof(buf), fmt, ap);
    80051b44:	7380f0ef          	jal	ra,8006127c <vsnprintf>
quickjs-nuttx/cutils.c:179
    if (len < sizeof(buf)) {
    80051b48:	0005071b          	sext.w	a4,a0
    80051b4c:	07f00793          	li	a5,127
quickjs-nuttx/cutils.c:177
    len = vsnprintf(buf, sizeof(buf), fmt, ap);
    80051b50:	892a                	mv	s2,a0
quickjs-nuttx/cutils.c:179
    if (len < sizeof(buf)) {
    80051b52:	02e7e063          	bltu	a5,a4,80051b72 <dbuf_printf+0x58>
quickjs-nuttx/cutils.c:181
        return dbuf_put(s, (uint8_t *)buf, len);
    80051b56:	862a                	mv	a2,a0
    80051b58:	080c                	addi	a1,sp,16
    80051b5a:	8522                	mv	a0,s0
    80051b5c:	ef5ff0ef          	jal	ra,80051a50 <dbuf_put>
    80051b60:	84aa                	mv	s1,a0
quickjs-nuttx/cutils.c:192
}
    80051b62:	70ea                	ld	ra,184(sp)
    80051b64:	744a                	ld	s0,176(sp)
    80051b66:	790a                	ld	s2,160(sp)
    80051b68:	69ea                	ld	s3,152(sp)
    80051b6a:	8526                	mv	a0,s1
    80051b6c:	74aa                	ld	s1,168(sp)
    80051b6e:	616d                	addi	sp,sp,240
    80051b70:	8082                	ret
quickjs-nuttx/cutils.c:183
        if (dbuf_realloc(s, s->size + len + 1))
    80051b72:	640c                	ld	a1,8(s0)
    80051b74:	0585                	addi	a1,a1,1
    80051b76:	95aa                	add	a1,a1,a0
    80051b78:	8522                	mv	a0,s0
    80051b7a:	e35ff0ef          	jal	ra,800519ae <dbuf_realloc>
    80051b7e:	84aa                	mv	s1,a0
    80051b80:	e10d                	bnez	a0,80051ba2 <dbuf_printf+0x88>
quickjs-nuttx/cutils.c:185
        va_start(ap, fmt);
    80051b82:	019c                	addi	a5,sp,192
quickjs-nuttx/cutils.c:186
        vsnprintf((char *)(s->buf + s->size), s->allocated_size - s->size,
    80051b84:	680c                	ld	a1,16(s0)
    80051b86:	6008                	ld	a0,0(s0)
quickjs-nuttx/cutils.c:185
        va_start(ap, fmt);
    80051b88:	e43e                	sd	a5,8(sp)
quickjs-nuttx/cutils.c:186
        vsnprintf((char *)(s->buf + s->size), s->allocated_size - s->size,
    80051b8a:	641c                	ld	a5,8(s0)
    80051b8c:	0194                	addi	a3,sp,192
    80051b8e:	864e                	mv	a2,s3
    80051b90:	8d9d                	sub	a1,a1,a5
    80051b92:	953e                	add	a0,a0,a5
    80051b94:	6e80f0ef          	jal	ra,8006127c <vsnprintf>
quickjs-nuttx/cutils.c:189
        s->size += len;
    80051b98:	6408                	ld	a0,8(s0)
    80051b9a:	992a                	add	s2,s2,a0
    80051b9c:	01243423          	sd	s2,8(s0)
quickjs-nuttx/cutils.c:191
    return 0;
    80051ba0:	b7c9                	j	80051b62 <dbuf_printf+0x48>
quickjs-nuttx/cutils.c:184
            return -1;
    80051ba2:	54fd                	li	s1,-1
    80051ba4:	bf7d                	j	80051b62 <dbuf_printf+0x48>

0000000080051ba6 <dbuf_free>:
dbuf_free():
quickjs-nuttx/cutils.c:195
{
    80051ba6:	1141                	addi	sp,sp,-16
    80051ba8:	e022                	sd	s0,0(sp)
    80051baa:	e406                	sd	ra,8(sp)
quickjs-nuttx/cutils.c:198
    if (s->buf) {
    80051bac:	610c                	ld	a1,0(a0)
quickjs-nuttx/cutils.c:195
{
    80051bae:	842a                	mv	s0,a0
quickjs-nuttx/cutils.c:198
    if (s->buf) {
    80051bb0:	c589                	beqz	a1,80051bba <dbuf_free+0x14>
quickjs-nuttx/cutils.c:199
        s->realloc_func(s->opaque, s->buf, 0);
    80051bb2:	711c                	ld	a5,32(a0)
    80051bb4:	7508                	ld	a0,40(a0)
    80051bb6:	4601                	li	a2,0
    80051bb8:	9782                	jalr	a5
quickjs-nuttx/cutils.c:201
    memset(s, 0, sizeof(*s));
    80051bba:	8522                	mv	a0,s0
quickjs-nuttx/cutils.c:202
}
    80051bbc:	6402                	ld	s0,0(sp)
    80051bbe:	60a2                	ld	ra,8(sp)
quickjs-nuttx/cutils.c:201
    memset(s, 0, sizeof(*s));
    80051bc0:	03000613          	li	a2,48
    80051bc4:	4581                	li	a1,0
quickjs-nuttx/cutils.c:202
}
    80051bc6:	0141                	addi	sp,sp,16
quickjs-nuttx/cutils.c:201
    memset(s, 0, sizeof(*s));
    80051bc8:	07a1206f          	j	80063c42 <memset>

0000000080051bcc <unicode_to_utf8>:
unicode_to_utf8():
quickjs-nuttx/cutils.c:210
    if (c < 0x80) {
    80051bcc:	07f00713          	li	a4,127
quickjs-nuttx/cutils.c:207
{
    80051bd0:	87aa                	mv	a5,a0
quickjs-nuttx/cutils.c:210
    if (c < 0x80) {
    80051bd2:	00b76763          	bltu	a4,a1,80051be0 <unicode_to_utf8+0x14>
quickjs-nuttx/cutils.c:211
        *q++ = c;
    80051bd6:	0505                	addi	a0,a0,1
    80051bd8:	00b78023          	sb	a1,0(a5)
quickjs-nuttx/cutils.c:238
    return q - buf;
    80051bdc:	9d1d                	subw	a0,a0,a5
quickjs-nuttx/cutils.c:239
}
    80051bde:	8082                	ret
quickjs-nuttx/cutils.c:213
        if (c < 0x800) {
    80051be0:	7ff00713          	li	a4,2047
    80051be4:	02b76363          	bltu	a4,a1,80051c0a <unicode_to_utf8+0x3e>
quickjs-nuttx/cutils.c:214
            *q++ = (c >> 6) | 0xc0;
    80051be8:	0065d71b          	srliw	a4,a1,0x6
    80051bec:	fc076713          	ori	a4,a4,-64
    80051bf0:	00150693          	addi	a3,a0,1
    80051bf4:	00e50023          	sb	a4,0(a0)
quickjs-nuttx/cutils.c:236
        *q++ = (c & 0x3f) | 0x80;
    80051bf8:	03f5f593          	andi	a1,a1,63
    80051bfc:	f805e593          	ori	a1,a1,-128
    80051c00:	00168513          	addi	a0,a3,1
    80051c04:	00b68023          	sb	a1,0(a3)
    80051c08:	bfd1                	j	80051bdc <unicode_to_utf8+0x10>
quickjs-nuttx/cutils.c:216
            if (c < 0x10000) {
    80051c0a:	6741                	lui	a4,0x10
    80051c0c:	02e5f563          	bgeu	a1,a4,80051c36 <unicode_to_utf8+0x6a>
quickjs-nuttx/cutils.c:217
                *q++ = (c >> 12) | 0xe0;
    80051c10:	00c5d71b          	srliw	a4,a1,0xc
    80051c14:	fe076713          	ori	a4,a4,-32
    80051c18:	00150613          	addi	a2,a0,1
    80051c1c:	00e50023          	sb	a4,0(a0)
quickjs-nuttx/cutils.c:234
            *q++ = ((c >> 6) & 0x3f) | 0x80;
    80051c20:	0065d71b          	srliw	a4,a1,0x6
    80051c24:	03f77713          	andi	a4,a4,63
    80051c28:	f8076713          	ori	a4,a4,-128
    80051c2c:	00160693          	addi	a3,a2,1
    80051c30:	00e60023          	sb	a4,0(a2)
    80051c34:	b7d1                	j	80051bf8 <unicode_to_utf8+0x2c>
quickjs-nuttx/cutils.c:219
                if (c < 0x00200000) {
    80051c36:	00200737          	lui	a4,0x200
    80051c3a:	02e5f563          	bgeu	a1,a4,80051c64 <unicode_to_utf8+0x98>
quickjs-nuttx/cutils.c:220
                    *q++ = (c >> 18) | 0xf0;
    80051c3e:	0125d71b          	srliw	a4,a1,0x12
    80051c42:	ff076713          	ori	a4,a4,-16
    80051c46:	00150693          	addi	a3,a0,1
    80051c4a:	00e50023          	sb	a4,0(a0)
quickjs-nuttx/cutils.c:232
                *q++ = ((c >> 12) & 0x3f) | 0x80;
    80051c4e:	00c5d71b          	srliw	a4,a1,0xc
    80051c52:	03f77713          	andi	a4,a4,63
    80051c56:	f8076713          	ori	a4,a4,-128
    80051c5a:	00168613          	addi	a2,a3,1
    80051c5e:	00e68023          	sb	a4,0(a3)
    80051c62:	bf7d                	j	80051c20 <unicode_to_utf8+0x54>
quickjs-nuttx/cutils.c:222
                    if (c < 0x04000000) {
    80051c64:	04000737          	lui	a4,0x4000
    80051c68:	02e5f563          	bgeu	a1,a4,80051c92 <unicode_to_utf8+0xc6>
quickjs-nuttx/cutils.c:223
                        *q++ = (c >> 24) | 0xf8;
    80051c6c:	0185d71b          	srliw	a4,a1,0x18
    80051c70:	ff876713          	ori	a4,a4,-8
    80051c74:	00150613          	addi	a2,a0,1
    80051c78:	00e50023          	sb	a4,0(a0)
quickjs-nuttx/cutils.c:230
                    *q++ = ((c >> 18) & 0x3f) | 0x80;
    80051c7c:	0125d71b          	srliw	a4,a1,0x12
    80051c80:	03f77713          	andi	a4,a4,63
    80051c84:	f8076713          	ori	a4,a4,-128
    80051c88:	00160693          	addi	a3,a2,1
    80051c8c:	00e60023          	sb	a4,0(a2)
    80051c90:	bf7d                	j	80051c4e <unicode_to_utf8+0x82>
quickjs-nuttx/cutils.c:228
                        return 0;
    80051c92:	4501                	li	a0,0
quickjs-nuttx/cutils.c:224
                    } else if (c < 0x80000000) {
    80051c94:	f405c5e3          	bltz	a1,80051bde <unicode_to_utf8+0x12>
quickjs-nuttx/cutils.c:225
                        *q++ = (c >> 30) | 0xfc;
    80051c98:	01e5d71b          	srliw	a4,a1,0x1e
    80051c9c:	ffc76713          	ori	a4,a4,-4
    80051ca0:	00e78023          	sb	a4,0(a5)
quickjs-nuttx/cutils.c:226
                        *q++ = ((c >> 24) & 0x3f) | 0x80;
    80051ca4:	0185d71b          	srliw	a4,a1,0x18
    80051ca8:	03f77713          	andi	a4,a4,63
    80051cac:	f8076713          	ori	a4,a4,-128
    80051cb0:	00278613          	addi	a2,a5,2
    80051cb4:	00e780a3          	sb	a4,1(a5)
    80051cb8:	b7d1                	j	80051c7c <unicode_to_utf8+0xb0>

0000000080051cba <unicode_from_utf8>:
unicode_from_utf8():
quickjs-nuttx/cutils.c:255
    c = *p++;
    80051cba:	00054683          	lbu	a3,0(a0)
quickjs-nuttx/cutils.c:256
    if (c < 0x80) {
    80051cbe:	07f00793          	li	a5,127
quickjs-nuttx/cutils.c:255
    c = *p++;
    80051cc2:	00150713          	addi	a4,a0,1
    80051cc6:	0006851b          	sext.w	a0,a3
quickjs-nuttx/cutils.c:256
    if (c < 0x80) {
    80051cca:	00d7c463          	blt	a5,a3,80051cd2 <unicode_from_utf8+0x18>
quickjs-nuttx/cutils.c:302
    *pp = p;
    80051cce:	e218                	sd	a4,0(a2)
quickjs-nuttx/cutils.c:303
    return c;
    80051cd0:	8082                	ret
quickjs-nuttx/cutils.c:260
    switch(c) {
    80051cd2:	0406879b          	addiw	a5,a3,64
    80051cd6:	0ff7f793          	zext.b	a5,a5
    80051cda:	03d00813          	li	a6,61
quickjs-nuttx/cutils.c:288
        return -1;
    80051cde:	557d                	li	a0,-1
    80051ce0:	04f86863          	bltu	a6,a5,80051d30 <unicode_from_utf8+0x76>
    80051ce4:	0002d517          	auipc	a0,0x2d
    80051ce8:	e6450513          	addi	a0,a0,-412 # 8007eb48 <CSWTCH.71>
    80051cec:	97aa                	add	a5,a5,a0
    80051cee:	00078803          	lb	a6,0(a5)
quickjs-nuttx/cutils.c:291
    if (l > (max_len - 1))
    80051cf2:	35fd                	addiw	a1,a1,-1
quickjs-nuttx/cutils.c:288
        return -1;
    80051cf4:	557d                	li	a0,-1
quickjs-nuttx/cutils.c:291
    if (l > (max_len - 1))
    80051cf6:	0305cd63          	blt	a1,a6,80051d30 <unicode_from_utf8+0x76>
quickjs-nuttx/cutils.c:293
    c &= utf8_first_code_mask[l - 1];
    80051cfa:	fff8079b          	addiw	a5,a6,-1
    80051cfe:	00042597          	auipc	a1,0x42
    80051d02:	53258593          	addi	a1,a1,1330 # 80094230 <utf8_first_code_mask>
    80051d06:	95be                	add	a1,a1,a5
    80051d08:	0005c503          	lbu	a0,0(a1)
quickjs-nuttx/cutils.c:296
        if (b < 0x80 || b >= 0xc0)
    80051d0c:	03f00893          	li	a7,63
quickjs-nuttx/cutils.c:294
    for(i = 0; i < l; i++) {
    80051d10:	4581                	li	a1,0
quickjs-nuttx/cutils.c:293
    c &= utf8_first_code_mask[l - 1];
    80051d12:	8d75                	and	a0,a0,a3
quickjs-nuttx/cutils.c:294 (discriminator 1)
    for(i = 0; i < l; i++) {
    80051d14:	0105cf63          	blt	a1,a6,80051d32 <unicode_from_utf8+0x78>
quickjs-nuttx/cutils.c:300
    if (c < utf8_min_code[l - 1])
    80051d18:	0002d697          	auipc	a3,0x2d
    80051d1c:	e7068693          	addi	a3,a3,-400 # 8007eb88 <utf8_min_code>
    80051d20:	078a                	slli	a5,a5,0x2
    80051d22:	97b6                	add	a5,a5,a3
    80051d24:	4394                	lw	a3,0(a5)
    80051d26:	0005079b          	sext.w	a5,a0
    80051d2a:	fad7f2e3          	bgeu	a5,a3,80051cce <unicode_from_utf8+0x14>
quickjs-nuttx/cutils.c:288
        return -1;
    80051d2e:	557d                	li	a0,-1
quickjs-nuttx/cutils.c:304
}
    80051d30:	8082                	ret
quickjs-nuttx/cutils.c:295
        b = *p++;
    80051d32:	00074683          	lbu	a3,0(a4) # 4000000 <asinh-0x7c000000>
    80051d36:	0705                	addi	a4,a4,1
quickjs-nuttx/cutils.c:296
        if (b < 0x80 || b >= 0xc0)
    80051d38:	f806831b          	addiw	t1,a3,-128
    80051d3c:	fe68e9e3          	bltu	a7,t1,80051d2e <unicode_from_utf8+0x74>
quickjs-nuttx/cutils.c:298 (discriminator 2)
        c = (c << 6) | (b & 0x3f);
    80051d40:	0065151b          	slliw	a0,a0,0x6
    80051d44:	03f6f693          	andi	a3,a3,63
    80051d48:	8d55                	or	a0,a0,a3
    80051d4a:	2501                	sext.w	a0,a0
quickjs-nuttx/cutils.c:294 (discriminator 2)
    for(i = 0; i < l; i++) {
    80051d4c:	2585                	addiw	a1,a1,1
    80051d4e:	b7d9                	j	80051d14 <unicode_from_utf8+0x5a>

0000000080051d50 <rqsort>:
rqsort():
quickjs-nuttx/cutils.c:521
    size_t m4, i, lt, gt, span, span2;
    int c, depth;
    exchange_f swap = exchange_func(base, size);
    exchange_f swap_block = exchange_func(base, size | 128);

    if (nmemb < 2 || size <= 0)
    80051d50:	4785                	li	a5,1
    80051d52:	30b7f463          	bgeu	a5,a1,8005205a <rqsort+0x30a>
quickjs-nuttx/cutils.c:513 (discriminator 1)
{
    80051d56:	aa010113          	addi	sp,sp,-1376
    80051d5a:	54813823          	sd	s0,1360(sp)
    80051d5e:	54113c23          	sd	ra,1368(sp)
    80051d62:	54913423          	sd	s1,1352(sp)
    80051d66:	55213023          	sd	s2,1344(sp)
    80051d6a:	53313c23          	sd	s3,1336(sp)
    80051d6e:	53413823          	sd	s4,1328(sp)
    80051d72:	53513423          	sd	s5,1320(sp)
    80051d76:	53613023          	sd	s6,1312(sp)
    80051d7a:	51713c23          	sd	s7,1304(sp)
    80051d7e:	51813823          	sd	s8,1296(sp)
    80051d82:	51913423          	sd	s9,1288(sp)
    80051d86:	51a13023          	sd	s10,1280(sp)
    80051d8a:	4fb13c23          	sd	s11,1272(sp)
    80051d8e:	8432                	mv	s0,a2
quickjs-nuttx/cutils.c:521 (discriminator 1)
    if (nmemb < 2 || size <= 0)
    80051d90:	c649                	beqz	a2,80051e1a <rqsort+0xca>
    80051d92:	84ae                	mv	s1,a1
quickjs-nuttx/cutils.c:518
    exchange_f swap = exchange_func(base, size);
    80051d94:	85b2                	mv	a1,a2
    80051d96:	892a                	mv	s2,a0
    80051d98:	8a36                	mv	s4,a3
    80051d9a:	8aba                	mv	s5,a4
    80051d9c:	a85ff0ef          	jal	ra,80051820 <exchange_func>
    80051da0:	8caa                	mv	s9,a0
quickjs-nuttx/cutils.c:519
    exchange_f swap_block = exchange_func(base, size | 128);
    80051da2:	08046593          	ori	a1,s0,128
    80051da6:	854a                	mv	a0,s2
    80051da8:	a79ff0ef          	jal	ra,80051820 <exchange_func>
quickjs-nuttx/cutils.c:561
                        plt += size;
                    }
                    i++;
                    pi += size;
                }
                while (pi < (pj -= size) && (c = cmp(ptr, pj, opaque)) <= 0) {
    80051dac:	408007b3          	neg	a5,s0
quickjs-nuttx/cutils.c:519
    exchange_f swap_block = exchange_func(base, size | 128);
    80051db0:	f82a                	sd	a0,48(sp)
quickjs-nuttx/cutils.c:524
    sp->base = (uint8_t *)base;
    80051db2:	e0ca                	sd	s2,64(sp)
quickjs-nuttx/cutils.c:525
    sp->count = nmemb;
    80051db4:	e4a6                	sd	s1,72(sp)
quickjs-nuttx/cutils.c:526
    sp->depth = 0;
    80051db6:	c882                	sw	zero,80(sp)
quickjs-nuttx/cutils.c:527
    sp++;
    80051db8:	05810993          	addi	s3,sp,88
quickjs-nuttx/cutils.c:561
                while (pi < (pj -= size) && (c = cmp(ptr, pj, opaque)) <= 0) {
    80051dbc:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/cutils.c:533
        depth = sp->depth;
    80051dbe:	ff89a783          	lw	a5,-8(s3)
quickjs-nuttx/cutils.c:531
        ptr = sp->base;
    80051dc2:	fe89b903          	ld	s2,-24(s3)
quickjs-nuttx/cutils.c:532
        nmemb = sp->count;
    80051dc6:	ff09b483          	ld	s1,-16(s3)
quickjs-nuttx/cutils.c:533
        depth = sp->depth;
    80051dca:	e83e                	sd	a5,16(sp)
quickjs-nuttx/cutils.c:530
        sp--;
    80051dcc:	19a1                	addi	s3,s3,-24
quickjs-nuttx/cutils.c:535
        while (nmemb > 6) {
    80051dce:	4799                	li	a5,6
    80051dd0:	0297fb63          	bgeu	a5,s1,80051e06 <rqsort+0xb6>
quickjs-nuttx/cutils.c:536
            if (++depth > 50) {
    80051dd4:	67c2                	ld	a5,16(sp)
    80051dd6:	03200713          	li	a4,50
    80051dda:	02848c33          	mul	s8,s1,s0
    80051dde:	2785                	addiw	a5,a5,1
    80051de0:	d23e                	sw	a5,36(sp)
    80051de2:	e83e                	sd	a5,16(sp)
    80051de4:	10f75963          	bge	a4,a5,80051ef6 <rqsort+0x1a6>
heapsortx():
quickjs-nuttx/cutils.c:474
    exchange_f swap = exchange_func(base, size);
    80051de8:	85a2                	mv	a1,s0
    80051dea:	854a                	mv	a0,s2
quickjs-nuttx/cutils.c:477
        i = (nmemb / 2) * size;
    80051dec:	8085                	srli	s1,s1,0x1
quickjs-nuttx/cutils.c:474
    exchange_f swap = exchange_func(base, size);
    80051dee:	a33ff0ef          	jal	ra,80051820 <exchange_func>
quickjs-nuttx/cutils.c:477
        i = (nmemb / 2) * size;
    80051df2:	02848b33          	mul	s6,s1,s0
quickjs-nuttx/cutils.c:474
    exchange_f swap = exchange_func(base, size);
    80051df6:	8baa                	mv	s7,a0
quickjs-nuttx/cutils.c:480
        while (i > 0) {
    80051df8:	408c04b3          	sub	s1,s8,s0
    80051dfc:	040b1c63          	bnez	s6,80051e54 <rqsort+0x104>
quickjs-nuttx/cutils.c:490
        for (i = n - size; i > 0; i -= size) {
    80051e00:	40848b33          	sub	s6,s1,s0
    80051e04:	ecd1                	bnez	s1,80051ea0 <rqsort+0x150>
rqsort():
quickjs-nuttx/cutils.c:624
                sp++;
                nmemb = lt;
            }
        }
        /* Use insertion sort for small fragments */
        for (pi = ptr + size, top = ptr + nmemb * size; pi < top; pi += size) {
    80051e06:	00890bb3          	add	s7,s2,s0
    80051e0a:	028484b3          	mul	s1,s1,s0
    80051e0e:	94ca                	add	s1,s1,s2
quickjs-nuttx/cutils.c:624 (discriminator 1)
    80051e10:	1c9be563          	bltu	s7,s1,80051fda <rqsort+0x28a>
quickjs-nuttx/cutils.c:529
    while (sp > stack) {
    80051e14:	009c                	addi	a5,sp,64
    80051e16:	fb37e4e3          	bltu	a5,s3,80051dbe <rqsort+0x6e>
quickjs-nuttx/cutils.c:629
            for (pj = pi; pj > ptr && cmp(pj - size, pj, opaque) > 0; pj -= size)
                swap(pj, pj - size, size);
        }
    }
}
    80051e1a:	55813083          	ld	ra,1368(sp)
    80051e1e:	55013403          	ld	s0,1360(sp)
    80051e22:	54813483          	ld	s1,1352(sp)
    80051e26:	54013903          	ld	s2,1344(sp)
    80051e2a:	53813983          	ld	s3,1336(sp)
    80051e2e:	53013a03          	ld	s4,1328(sp)
    80051e32:	52813a83          	ld	s5,1320(sp)
    80051e36:	52013b03          	ld	s6,1312(sp)
    80051e3a:	51813b83          	ld	s7,1304(sp)
    80051e3e:	51013c03          	ld	s8,1296(sp)
    80051e42:	50813c83          	ld	s9,1288(sp)
    80051e46:	50013d03          	ld	s10,1280(sp)
    80051e4a:	4f813d83          	ld	s11,1272(sp)
    80051e4e:	56010113          	addi	sp,sp,1376
    80051e52:	8082                	ret
heapsortx():
quickjs-nuttx/cutils.c:481
            i -= size;
    80051e54:	408b0b33          	sub	s6,s6,s0
quickjs-nuttx/cutils.c:482
            for (r = i; (c = r * 2 + size) < n; r = c) {
    80051e58:	8dda                	mv	s11,s6
    80051e5a:	001d9d13          	slli	s10,s11,0x1
    80051e5e:	9d22                	add	s10,s10,s0
    80051e60:	f98d7ee3          	bgeu	s10,s8,80051dfc <rqsort+0xac>
quickjs-nuttx/cutils.c:483
                if (c < n - size && cmp(basep + c, basep + c + size, opaque) <= 0)
    80051e64:	009d7f63          	bgeu	s10,s1,80051e82 <rqsort+0x132>
    80051e68:	01a407b3          	add	a5,s0,s10
    80051e6c:	8656                	mv	a2,s5
    80051e6e:	00f905b3          	add	a1,s2,a5
    80051e72:	e43e                	sd	a5,8(sp)
    80051e74:	01a90533          	add	a0,s2,s10
    80051e78:	9a02                	jalr	s4
    80051e7a:	00a04463          	bgtz	a0,80051e82 <rqsort+0x132>
quickjs-nuttx/cutils.c:484
                    c += size;
    80051e7e:	67a2                	ld	a5,8(sp)
    80051e80:	8d3e                	mv	s10,a5
quickjs-nuttx/cutils.c:485
                if (cmp(basep + r, basep + c, opaque) > 0)
    80051e82:	9dca                	add	s11,s11,s2
    80051e84:	01a905b3          	add	a1,s2,s10
    80051e88:	8656                	mv	a2,s5
    80051e8a:	e42e                	sd	a1,8(sp)
    80051e8c:	856e                	mv	a0,s11
    80051e8e:	9a02                	jalr	s4
    80051e90:	f6a046e3          	bgtz	a0,80051dfc <rqsort+0xac>
quickjs-nuttx/cutils.c:487
                swap(basep + r, basep + c, size);
    80051e94:	65a2                	ld	a1,8(sp)
    80051e96:	856e                	mv	a0,s11
    80051e98:	8622                	mv	a2,s0
    80051e9a:	9b82                	jalr	s7
quickjs-nuttx/cutils.c:482
            for (r = i; (c = r * 2 + size) < n; r = c) {
    80051e9c:	8dea                	mv	s11,s10
    80051e9e:	bf75                	j	80051e5a <rqsort+0x10a>
quickjs-nuttx/cutils.c:491
            swap(basep, basep + i, size);
    80051ea0:	8622                	mv	a2,s0
    80051ea2:	009905b3          	add	a1,s2,s1
    80051ea6:	854a                	mv	a0,s2
    80051ea8:	9b82                	jalr	s7
quickjs-nuttx/cutils.c:493
            for (r = 0; (c = r * 2 + size) < i; r = c) {
    80051eaa:	4d01                	li	s10,0
    80051eac:	001d1c13          	slli	s8,s10,0x1
    80051eb0:	9c22                	add	s8,s8,s0
    80051eb2:	029c7963          	bgeu	s8,s1,80051ee4 <rqsort+0x194>
quickjs-nuttx/cutils.c:494
                if (c < i - size && cmp(basep + c, basep + c + size, opaque) <= 0)
    80051eb6:	016c7d63          	bgeu	s8,s6,80051ed0 <rqsort+0x180>
    80051eba:	01840db3          	add	s11,s0,s8
    80051ebe:	8656                	mv	a2,s5
    80051ec0:	01b905b3          	add	a1,s2,s11
    80051ec4:	01890533          	add	a0,s2,s8
    80051ec8:	9a02                	jalr	s4
    80051eca:	00a04363          	bgtz	a0,80051ed0 <rqsort+0x180>
quickjs-nuttx/cutils.c:495
                    c += size;
    80051ece:	8c6e                	mv	s8,s11
quickjs-nuttx/cutils.c:496
                if (cmp(basep + r, basep + c, opaque) > 0)
    80051ed0:	018905b3          	add	a1,s2,s8
    80051ed4:	9d4a                	add	s10,s10,s2
    80051ed6:	e42e                	sd	a1,8(sp)
    80051ed8:	8656                	mv	a2,s5
    80051eda:	856a                	mv	a0,s10
    80051edc:	9a02                	jalr	s4
    80051ede:	65a2                	ld	a1,8(sp)
    80051ee0:	00a05663          	blez	a0,80051eec <rqsort+0x19c>
quickjs-nuttx/cutils.c:490
        for (i = n - size; i > 0; i -= size) {
    80051ee4:	8c81                	sub	s1,s1,s0
    80051ee6:	408b0b33          	sub	s6,s6,s0
    80051eea:	bf29                	j	80051e04 <rqsort+0xb4>
quickjs-nuttx/cutils.c:498
                swap(basep + r, basep + c, size);
    80051eec:	856a                	mv	a0,s10
    80051eee:	8622                	mv	a2,s0
    80051ef0:	9b82                	jalr	s7
quickjs-nuttx/cutils.c:493
            for (r = 0; (c = r * 2 + size) < i; r = c) {
    80051ef2:	8d62                	mv	s10,s8
    80051ef4:	bf65                	j	80051eac <rqsort+0x15c>
rqsort():
quickjs-nuttx/cutils.c:544
            m4 = (nmemb >> 2) * size;
    80051ef6:	0024db13          	srli	s6,s1,0x2
    80051efa:	028b0b33          	mul	s6,s6,s0
med3():
quickjs-nuttx/cutils.c:506
    return cmp(a, b, opaque) < 0 ?
    80051efe:	8656                	mv	a2,s5
rqsort():
quickjs-nuttx/cutils.c:545
            m = med3(ptr + m4, ptr + 2 * m4, ptr + 3 * m4, cmp, opaque);
    80051f00:	01690bb3          	add	s7,s2,s6
    80051f04:	016b8d33          	add	s10,s7,s6
med3():
quickjs-nuttx/cutils.c:506
    return cmp(a, b, opaque) < 0 ?
    80051f08:	85ea                	mv	a1,s10
    80051f0a:	855e                	mv	a0,s7
    80051f0c:	9a02                	jalr	s4
rqsort():
quickjs-nuttx/cutils.c:545
            m = med3(ptr + m4, ptr + 2 * m4, ptr + 3 * m4, cmp, opaque);
    80051f0e:	9b6a                	add	s6,s6,s10
med3():
quickjs-nuttx/cutils.c:507
        (cmp(b, c, opaque) < 0 ? b : (cmp(a, c, opaque) < 0 ? c : a )) :
    80051f10:	8656                	mv	a2,s5
    80051f12:	85da                	mv	a1,s6
    80051f14:	06055663          	bgez	a0,80051f80 <rqsort+0x230>
    80051f18:	856a                	mv	a0,s10
    80051f1a:	9a02                	jalr	s4
    80051f1c:	00054a63          	bltz	a0,80051f30 <rqsort+0x1e0>
    80051f20:	8656                	mv	a2,s5
    80051f22:	85da                	mv	a1,s6
    80051f24:	855e                	mv	a0,s7
    80051f26:	9a02                	jalr	s4
    80051f28:	8d5a                	mv	s10,s6
    80051f2a:	00054363          	bltz	a0,80051f30 <rqsort+0x1e0>
    80051f2e:	8d5e                	mv	s10,s7
rqsort():
quickjs-nuttx/cutils.c:546
            swap(ptr, m, size);  /* move the pivot to the start or the array */
    80051f30:	85ea                	mv	a1,s10
    80051f32:	8622                	mv	a2,s0
    80051f34:	854a                	mv	a0,s2
    80051f36:	9c82                	jalr	s9
quickjs-nuttx/cutils.c:550
            pj = pgt = top = ptr + nmemb * size;
    80051f38:	4789                	li	a5,2
    80051f3a:	9c4a                	add	s8,s8,s2
quickjs-nuttx/cutils.c:548
            pi = plt = ptr + size;
    80051f3c:	00890b33          	add	s6,s2,s0
quickjs-nuttx/cutils.c:550
            pj = pgt = top = ptr + nmemb * size;
    80051f40:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/cutils.c:547
            i = lt = 1;
    80051f42:	4785                	li	a5,1
    80051f44:	8dda                	mv	s11,s6
quickjs-nuttx/cutils.c:550
            pj = pgt = top = ptr + nmemb * size;
    80051f46:	8be2                	mv	s7,s8
    80051f48:	8d62                	mv	s10,s8
quickjs-nuttx/cutils.c:547
            i = lt = 1;
    80051f4a:	e43e                	sd	a5,8(sp)
    80051f4c:	67e2                	ld	a5,24(sp)
    80051f4e:	17fd                	addi	a5,a5,-1
    80051f50:	f43e                	sd	a5,40(sp)
quickjs-nuttx/cutils.c:552
                while (pi < pj && (c = cmp(ptr, pi, opaque)) >= 0) {
    80051f52:	01adf863          	bgeu	s11,s10,80051f62 <rqsort+0x212>
quickjs-nuttx/cutils.c:552 (discriminator 1)
    80051f56:	8656                	mv	a2,s5
    80051f58:	85ee                	mv	a1,s11
    80051f5a:	854a                	mv	a0,s2
    80051f5c:	9a02                	jalr	s4
    80051f5e:	02055e63          	bgez	a0,80051f9a <rqsort+0x24a>
quickjs-nuttx/cutils.c:561
                while (pi < (pj -= size) && (c = cmp(ptr, pj, opaque)) <= 0) {
    80051f62:	77e2                	ld	a5,56(sp)
    80051f64:	9d3e                	add	s10,s10,a5
    80051f66:	09adfd63          	bgeu	s11,s10,80052000 <rqsort+0x2b0>
quickjs-nuttx/cutils.c:561 (discriminator 1)
    80051f6a:	8656                	mv	a2,s5
    80051f6c:	85ea                	mv	a1,s10
    80051f6e:	854a                	mv	a0,s2
    80051f70:	9a02                	jalr	s4
    80051f72:	04a05263          	blez	a0,80051fb6 <rqsort+0x266>
quickjs-nuttx/cutils.c:570
                swap(pi, pj, size);
    80051f76:	8622                	mv	a2,s0
    80051f78:	85ea                	mv	a1,s10
    80051f7a:	856e                	mv	a0,s11
    80051f7c:	9c82                	jalr	s9
quickjs-nuttx/cutils.c:552
                while (pi < pj && (c = cmp(ptr, pi, opaque)) >= 0) {
    80051f7e:	a03d                	j	80051fac <rqsort+0x25c>
med3():
quickjs-nuttx/cutils.c:508
        (cmp(b, c, opaque) > 0 ? b : (cmp(a, c, opaque) < 0 ? a : c ));
    80051f80:	856a                	mv	a0,s10
    80051f82:	9a02                	jalr	s4
    80051f84:	faa046e3          	bgtz	a0,80051f30 <rqsort+0x1e0>
    80051f88:	8656                	mv	a2,s5
    80051f8a:	85da                	mv	a1,s6
    80051f8c:	855e                	mv	a0,s7
    80051f8e:	9a02                	jalr	s4
    80051f90:	8d5e                	mv	s10,s7
    80051f92:	f8054fe3          	bltz	a0,80051f30 <rqsort+0x1e0>
    80051f96:	8d5a                	mv	s10,s6
    80051f98:	bf61                	j	80051f30 <rqsort+0x1e0>
rqsort():
quickjs-nuttx/cutils.c:553
                    if (c == 0) {
    80051f9a:	e909                	bnez	a0,80051fac <rqsort+0x25c>
quickjs-nuttx/cutils.c:554
                        swap(plt, pi, size);
    80051f9c:	855a                	mv	a0,s6
    80051f9e:	8622                	mv	a2,s0
    80051fa0:	85ee                	mv	a1,s11
    80051fa2:	9c82                	jalr	s9
quickjs-nuttx/cutils.c:555
                        lt++;
    80051fa4:	67a2                	ld	a5,8(sp)
quickjs-nuttx/cutils.c:556
                        plt += size;
    80051fa6:	9b22                	add	s6,s6,s0
quickjs-nuttx/cutils.c:555
                        lt++;
    80051fa8:	0785                	addi	a5,a5,1
    80051faa:	e43e                	sd	a5,8(sp)
quickjs-nuttx/cutils.c:559
                    pi += size;
    80051fac:	67e2                	ld	a5,24(sp)
    80051fae:	9da2                	add	s11,s11,s0
    80051fb0:	0785                	addi	a5,a5,1
    80051fb2:	ec3e                	sd	a5,24(sp)
    80051fb4:	bf61                	j	80051f4c <rqsort+0x1fc>
quickjs-nuttx/cutils.c:562
                    if (c == 0) {
    80051fb6:	f555                	bnez	a0,80051f62 <rqsort+0x212>
quickjs-nuttx/cutils.c:564
                        pgt -= size;
    80051fb8:	77e2                	ld	a5,56(sp)
quickjs-nuttx/cutils.c:565
                        swap(pgt, pj, size);
    80051fba:	8622                	mv	a2,s0
    80051fbc:	85ea                	mv	a1,s10
quickjs-nuttx/cutils.c:564
                        pgt -= size;
    80051fbe:	9bbe                	add	s7,s7,a5
quickjs-nuttx/cutils.c:565
                        swap(pgt, pj, size);
    80051fc0:	855e                	mv	a0,s7
quickjs-nuttx/cutils.c:563
                        gt--;
    80051fc2:	14fd                	addi	s1,s1,-1
quickjs-nuttx/cutils.c:565
                        swap(pgt, pj, size);
    80051fc4:	9c82                	jalr	s9
    80051fc6:	bf71                	j	80051f62 <rqsort+0x212>
quickjs-nuttx/cutils.c:611
                sp->depth = depth;
    80051fc8:	5792                	lw	a5,36(sp)
quickjs-nuttx/cutils.c:609
                sp->base = ptr;
    80051fca:	ff29b423          	sd	s2,-24(s3)
quickjs-nuttx/cutils.c:610
                sp->count = lt;
    80051fce:	ffa9b823          	sd	s10,-16(s3)
quickjs-nuttx/cutils.c:611
                sp->depth = depth;
    80051fd2:	fef9ac23          	sw	a5,-8(s3)
quickjs-nuttx/cutils.c:618
                sp->depth = depth;
    80051fd6:	895a                	mv	s2,s6
    80051fd8:	bbdd                	j	80051dce <rqsort+0x7e>
    80051fda:	8b5e                	mv	s6,s7
    80051fdc:	a831                	j	80051ff8 <rqsort+0x2a8>
quickjs-nuttx/cutils.c:625 (discriminator 3)
            for (pj = pi; pj > ptr && cmp(pj - size, pj, opaque) > 0; pj -= size)
    80051fde:	408b0c33          	sub	s8,s6,s0
    80051fe2:	8656                	mv	a2,s5
    80051fe4:	85da                	mv	a1,s6
    80051fe6:	8562                	mv	a0,s8
    80051fe8:	9a02                	jalr	s4
    80051fea:	00a05963          	blez	a0,80051ffc <rqsort+0x2ac>
quickjs-nuttx/cutils.c:626 (discriminator 4)
                swap(pj, pj - size, size);
    80051fee:	855a                	mv	a0,s6
    80051ff0:	8622                	mv	a2,s0
    80051ff2:	85e2                	mv	a1,s8
    80051ff4:	9c82                	jalr	s9
quickjs-nuttx/cutils.c:625 (discriminator 4)
            for (pj = pi; pj > ptr && cmp(pj - size, pj, opaque) > 0; pj -= size)
    80051ff6:	8b62                	mv	s6,s8
quickjs-nuttx/cutils.c:625 (discriminator 1)
    80051ff8:	ff6963e3          	bltu	s2,s6,80051fde <rqsort+0x28e>
quickjs-nuttx/cutils.c:624
        for (pi = ptr + size, top = ptr + nmemb * size; pi < top; pi += size) {
    80051ffc:	9ba2                	add	s7,s7,s0
    80051ffe:	bd09                	j	80051e10 <rqsort+0xc0>
quickjs-nuttx/cutils.c:586
            lt = i - lt;
