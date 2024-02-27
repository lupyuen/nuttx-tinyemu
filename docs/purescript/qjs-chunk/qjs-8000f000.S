    8000e000:	b441                	j	8000da80 <JS_ComputeMemoryUsage+0xf4>

000000008000e002 <JS_DumpMemoryUsage>:
JS_DumpMemoryUsage():
quickjs-nuttx/quickjs.c:6230
{
    8000e002:	7125                	addi	sp,sp,-416
    8000e004:	eb22                	sd	s0,400(sp)
    8000e006:	e726                	sd	s1,392(sp)
    8000e008:	e34a                	sd	s2,384(sp)
    8000e00a:	ef06                	sd	ra,408(sp)
    8000e00c:	fece                	sd	s3,376(sp)
    8000e00e:	fad2                	sd	s4,368(sp)
    8000e010:	f6d6                	sd	s5,360(sp)
    8000e012:	f2da                	sd	s6,352(sp)
    8000e014:	eede                	sd	s7,344(sp)
    8000e016:	eae2                	sd	s8,336(sp)
    8000e018:	e6e6                	sd	s9,328(sp)
quickjs-nuttx/quickjs.c:6231
    fprintf(fp, "QuickJS memory usage -- "
    8000e01a:	6594                	ld	a3,8(a1)
quickjs-nuttx/quickjs.c:6230
{
    8000e01c:	8932                	mv	s2,a2
    8000e01e:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:6231
    fprintf(fp, "QuickJS memory usage -- "
    8000e020:	04000613          	li	a2,64
    8000e024:	0005c597          	auipc	a1,0x5c
    8000e028:	82458593          	addi	a1,a1,-2012 # 80069848 <qjsc_repl+0x4298>
quickjs-nuttx/quickjs.c:6230
{
    8000e02c:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:6231
    fprintf(fp, "QuickJS memory usage -- "
    8000e02e:	223540ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6238
    if (rt) {
    8000e032:	12090f63          	beqz	s2,8000e170 <JS_DumpMemoryUsage+0x16e>
quickjs-nuttx/quickjs.c:6252
            void *p = js_malloc_rt(rt, size);
    8000e036:	5b7d                	li	s6,-1
    8000e038:	00067a17          	auipc	s4,0x67
    8000e03c:	d28a0a13          	addi	s4,s4,-728 # 80074d60 <object_types.3>
    8000e040:	00067c17          	auipc	s8,0x67
    8000e044:	d70c0c13          	addi	s8,s8,-656 # 80074db0 <opcode_info>
quickjs-nuttx/quickjs.c:6249
        int i, usage_size_ok = 0;
    8000e048:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:6252
            void *p = js_malloc_rt(rt, size);
    8000e04a:	020b5b13          	srli	s6,s6,0x20
quickjs-nuttx/quickjs.c:6257
                    fprintf(fp, "  %3u + %-2u  %s\n",
    8000e04e:	0005cc97          	auipc	s9,0x5c
    8000e052:	84ac8c93          	addi	s9,s9,-1974 # 80069898 <qjsc_repl+0x42e8>
quickjs-nuttx/quickjs.c:6251
            unsigned int size = object_types[i].size;
    8000e056:	008a3983          	ld	s3,8(s4)
quickjs-nuttx/quickjs.c:6252
            void *p = js_malloc_rt(rt, size);
    8000e05a:	854a                	mv	a0,s2
    8000e05c:	0169f5b3          	and	a1,s3,s6
    8000e060:	93dfc0ef          	jal	ra,8000a99c <js_malloc_rt>
    8000e064:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:6253
            if (p) {
    8000e066:	c905                	beqz	a0,8000e096 <JS_DumpMemoryUsage+0x94>
quickjs-nuttx/quickjs.c:6254
                unsigned int size1 = js_malloc_usable_size_rt(rt, p);
    8000e068:	85aa                	mv	a1,a0
    8000e06a:	854a                	mv	a0,s2
    8000e06c:	b39fc0ef          	jal	ra,8000aba4 <js_malloc_usable_size_rt>
quickjs-nuttx/quickjs.c:6251
            unsigned int size = object_types[i].size;
    8000e070:	2981                	sext.w	s3,s3
quickjs-nuttx/quickjs.c:6254
                unsigned int size1 = js_malloc_usable_size_rt(rt, p);
    8000e072:	0005069b          	sext.w	a3,a0
quickjs-nuttx/quickjs.c:6255
                if (size1 >= size) {
    8000e076:	0136ec63          	bltu	a3,s3,8000e08e <JS_DumpMemoryUsage+0x8c>
quickjs-nuttx/quickjs.c:6257
                    fprintf(fp, "  %3u + %-2u  %s\n",
    8000e07a:	000a3703          	ld	a4,0(s4)
    8000e07e:	413686bb          	subw	a3,a3,s3
    8000e082:	864e                	mv	a2,s3
    8000e084:	85e6                	mv	a1,s9
    8000e086:	8526                	mv	a0,s1
    8000e088:	1c9540ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6256
                    usage_size_ok = 1;
    8000e08c:	4b85                	li	s7,1
quickjs-nuttx/quickjs.c:6260
                js_free_rt(rt, p);
    8000e08e:	85d6                	mv	a1,s5
    8000e090:	854a                	mv	a0,s2
    8000e092:	94ffc0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:6250 (discriminator 2)
        for(i = 0; i < countof(object_types); i++) {
    8000e096:	0a41                	addi	s4,s4,16
    8000e098:	fb4c1fe3          	bne	s8,s4,8000e056 <JS_DumpMemoryUsage+0x54>
quickjs-nuttx/quickjs.c:6263
        if (!usage_size_ok) {
    8000e09c:	000b9963          	bnez	s7,8000e0ae <JS_DumpMemoryUsage+0xac>
quickjs-nuttx/quickjs.c:6264
            fprintf(fp, "  malloc_usable_size unavailable\n");
    8000e0a0:	85a6                	mv	a1,s1
    8000e0a2:	0005c517          	auipc	a0,0x5c
    8000e0a6:	80e50513          	addi	a0,a0,-2034 # 800698b0 <qjsc_repl+0x4300>
    8000e0aa:	179540ef          	jal	ra,80062a22 <fputs>
quickjs-nuttx/quickjs.c:6267
            int obj_classes[JS_CLASS_INIT_COUNT + 1] = { 0 };
    8000e0ae:	0ec00613          	li	a2,236
    8000e0b2:	4581                	li	a1,0
    8000e0b4:	0888                	addi	a0,sp,80
    8000e0b6:	38d550ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:6270
            list_for_each(el, &rt->gc_obj_list) {
    8000e0ba:	09093703          	ld	a4,144(s2)
    8000e0be:	08890613          	addi	a2,s2,136
min_uint32():
quickjs-nuttx/cutils.h:95
    if (a < b)
    8000e0c2:	03900593          	li	a1,57
JS_DumpMemoryUsage():
quickjs-nuttx/quickjs.c:6270 (discriminator 1)
    8000e0c6:	32c71463          	bne	a4,a2,8000e3ee <JS_DumpMemoryUsage+0x3ec>
quickjs-nuttx/quickjs.c:6278
            fprintf(fp, "\n" "JSObject classes\n");
    8000e0ca:	85a6                	mv	a1,s1
    8000e0cc:	0005c517          	auipc	a0,0x5c
    8000e0d0:	80c50513          	addi	a0,a0,-2036 # 800698d8 <qjsc_repl+0x4328>
    8000e0d4:	14f540ef          	jal	ra,80062a22 <fputs>
quickjs-nuttx/quickjs.c:6279
            if (obj_classes[0])
    8000e0d8:	4646                	lw	a2,80(sp)
    8000e0da:	ce09                	beqz	a2,8000e0f4 <JS_DumpMemoryUsage+0xf2>
quickjs-nuttx/quickjs.c:6280
                fprintf(fp, "  %5d  %2.0d %s\n", obj_classes[0], 0, "none");
    8000e0dc:	0005c717          	auipc	a4,0x5c
    8000e0e0:	81470713          	addi	a4,a4,-2028 # 800698f0 <qjsc_repl+0x4340>
    8000e0e4:	4681                	li	a3,0
    8000e0e6:	0005c597          	auipc	a1,0x5c
    8000e0ea:	81258593          	addi	a1,a1,-2030 # 800698f8 <qjsc_repl+0x4348>
    8000e0ee:	8526                	mv	a0,s1
    8000e0f0:	161540ef          	jal	ra,80062a50 <fprintf>
    8000e0f4:	05010993          	addi	s3,sp,80
min_uint32():
quickjs-nuttx/cutils.h:98
        return b;
    8000e0f8:	4a05                	li	s4,1
JS_DumpMemoryUsage():
quickjs-nuttx/quickjs.c:6284
                    fprintf(fp, "  %5d  %2.0d %s\n", obj_classes[class_id], class_id,
    8000e0fa:	02800b93          	li	s7,40
    8000e0fe:	0005bc17          	auipc	s8,0x5b
    8000e102:	7fac0c13          	addi	s8,s8,2042 # 800698f8 <qjsc_repl+0x4348>
quickjs-nuttx/quickjs.c:6281
            for (class_id = 1; class_id < JS_CLASS_INIT_COUNT; class_id++) {
    8000e106:	03a00b13          	li	s6,58
quickjs-nuttx/quickjs.c:6282
                if (obj_classes[class_id] && class_id < rt->class_count) {
    8000e10a:	0049aa83          	lw	s5,4(s3)
    8000e10e:	000a069b          	sext.w	a3,s4
    8000e112:	020a8863          	beqz	s5,8000e142 <JS_DumpMemoryUsage+0x140>
quickjs-nuttx/quickjs.c:6282 (discriminator 1)
    8000e116:	06c92783          	lw	a5,108(s2)
    8000e11a:	02f6d463          	bge	a3,a5,8000e142 <JS_DumpMemoryUsage+0x140>
quickjs-nuttx/quickjs.c:6284
                    fprintf(fp, "  %5d  %2.0d %s\n", obj_classes[class_id], class_id,
    8000e11e:	037a0733          	mul	a4,s4,s7
    8000e122:	07093783          	ld	a5,112(s2)
    8000e126:	080c                	addi	a1,sp,16
    8000e128:	854a                	mv	a0,s2
    8000e12a:	e436                	sd	a3,8(sp)
    8000e12c:	97ba                	add	a5,a5,a4
    8000e12e:	43d0                	lw	a2,4(a5)
    8000e130:	9b0fc0ef          	jal	ra,8000a2e0 <JS_AtomGetStrRT.constprop.0>
    8000e134:	66a2                	ld	a3,8(sp)
    8000e136:	872a                	mv	a4,a0
    8000e138:	8656                	mv	a2,s5
    8000e13a:	85e2                	mv	a1,s8
    8000e13c:	8526                	mv	a0,s1
    8000e13e:	113540ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6281 (discriminator 2)
            for (class_id = 1; class_id < JS_CLASS_INIT_COUNT; class_id++) {
    8000e142:	0a05                	addi	s4,s4,1
    8000e144:	0991                	addi	s3,s3,4
    8000e146:	fd6a12e3          	bne	s4,s6,8000e10a <JS_DumpMemoryUsage+0x108>
quickjs-nuttx/quickjs.c:6288
            if (obj_classes[JS_CLASS_INIT_COUNT])
    8000e14a:	13812603          	lw	a2,312(sp)
    8000e14e:	ce09                	beqz	a2,8000e168 <JS_DumpMemoryUsage+0x166>
quickjs-nuttx/quickjs.c:6289
                fprintf(fp, "  %5d  %2.0d %s\n", obj_classes[JS_CLASS_INIT_COUNT], 0, "other");
    8000e150:	0005b717          	auipc	a4,0x5b
    8000e154:	7c070713          	addi	a4,a4,1984 # 80069910 <qjsc_repl+0x4360>
    8000e158:	4681                	li	a3,0
    8000e15a:	0005b597          	auipc	a1,0x5b
    8000e15e:	79e58593          	addi	a1,a1,1950 # 800698f8 <qjsc_repl+0x4348>
    8000e162:	8526                	mv	a0,s1
    8000e164:	0ed540ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6291
        fprintf(fp, "\n");
    8000e168:	85a6                	mv	a1,s1
    8000e16a:	4529                	li	a0,10
    8000e16c:	007540ef          	jal	ra,80062972 <fputc>
quickjs-nuttx/quickjs.c:6294
    fprintf(fp, "%-20s %8s %8s\n", "NAME", "COUNT", "SIZE");
    8000e170:	0005b697          	auipc	a3,0x5b
    8000e174:	7b068693          	addi	a3,a3,1968 # 80069920 <qjsc_repl+0x4370>
    8000e178:	0005b717          	auipc	a4,0x5b
    8000e17c:	7a070713          	addi	a4,a4,1952 # 80069918 <qjsc_repl+0x4368>
    8000e180:	0005b617          	auipc	a2,0x5b
    8000e184:	7a860613          	addi	a2,a2,1960 # 80069928 <qjsc_repl+0x4378>
    8000e188:	0005b597          	auipc	a1,0x5b
    8000e18c:	7a858593          	addi	a1,a1,1960 # 80069930 <qjsc_repl+0x4380>
    8000e190:	8526                	mv	a0,s1
    8000e192:	0bf540ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6296
    if (s->malloc_count) {
    8000e196:	6c14                	ld	a3,24(s0)
    8000e198:	cea9                	beqz	a3,8000e1f2 <JS_DumpMemoryUsage+0x1f0>
quickjs-nuttx/quickjs.c:6297
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%0.1f per block)\n",
    8000e19a:	6018                	ld	a4,0(s0)
    8000e19c:	d226f7d3          	fcvt.d.l	fa5,a3
    8000e1a0:	0005b617          	auipc	a2,0x5b
    8000e1a4:	7a060613          	addi	a2,a2,1952 # 80069940 <qjsc_repl+0x4390>
quickjs-nuttx/quickjs.c:6299
                (double)s->malloc_size / s->malloc_count);
    8000e1a8:	d2277753          	fcvt.d.l	fa4,a4
quickjs-nuttx/quickjs.c:6297
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%0.1f per block)\n",
    8000e1ac:	0005b597          	auipc	a1,0x5b
    8000e1b0:	7ac58593          	addi	a1,a1,1964 # 80069958 <qjsc_repl+0x43a8>
    8000e1b4:	8526                	mv	a0,s1
    8000e1b6:	1af777d3          	fdiv.d	fa5,fa4,fa5
    8000e1ba:	e20787d3          	fmv.x.d	a5,fa5
    8000e1be:	093540ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6300
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%d overhead, %0.1f average slack)\n",
    8000e1c2:	6818                	ld	a4,16(s0)
quickjs-nuttx/quickjs.c:6302
                MALLOC_OVERHEAD, ((double)(s->malloc_size - s->memory_used_size) /
    8000e1c4:	601c                	ld	a5,0(s0)
quickjs-nuttx/quickjs.c:6300
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%d overhead, %0.1f average slack)\n",
    8000e1c6:	7014                	ld	a3,32(s0)
    8000e1c8:	0005b617          	auipc	a2,0x5b
    8000e1cc:	7b860613          	addi	a2,a2,1976 # 80069980 <qjsc_repl+0x43d0>
quickjs-nuttx/quickjs.c:6302
                MALLOC_OVERHEAD, ((double)(s->malloc_size - s->memory_used_size) /
    8000e1d0:	8f99                	sub	a5,a5,a4
    8000e1d2:	d227f753          	fcvt.d.l	fa4,a5
quickjs-nuttx/quickjs.c:6300
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%d overhead, %0.1f average slack)\n",
    8000e1d6:	d226f7d3          	fcvt.d.l	fa5,a3
    8000e1da:	47a1                	li	a5,8
    8000e1dc:	0005b597          	auipc	a1,0x5b
    8000e1e0:	7b458593          	addi	a1,a1,1972 # 80069990 <qjsc_repl+0x43e0>
    8000e1e4:	1af777d3          	fdiv.d	fa5,fa4,fa5
    8000e1e8:	8526                	mv	a0,s1
    8000e1ea:	e2078853          	fmv.x.d	a6,fa5
    8000e1ee:	063540ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6305
    if (s->atom_count) {
    8000e1f2:	7414                	ld	a3,40(s0)
    8000e1f4:	c68d                	beqz	a3,8000e21e <JS_DumpMemoryUsage+0x21c>
quickjs-nuttx/quickjs.c:6306
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%0.1f per atom)\n",
    8000e1f6:	7818                	ld	a4,48(s0)
    8000e1f8:	d226f7d3          	fcvt.d.l	fa5,a3
    8000e1fc:	0005b617          	auipc	a2,0x5b
    8000e200:	7cc60613          	addi	a2,a2,1996 # 800699c8 <qjsc_repl+0x4418>
quickjs-nuttx/quickjs.c:6308
                (double)s->atom_size / s->atom_count);
    8000e204:	d2277753          	fcvt.d.l	fa4,a4
quickjs-nuttx/quickjs.c:6306
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%0.1f per atom)\n",
    8000e208:	0005b597          	auipc	a1,0x5b
    8000e20c:	7c858593          	addi	a1,a1,1992 # 800699d0 <qjsc_repl+0x4420>
    8000e210:	8526                	mv	a0,s1
    8000e212:	1af777d3          	fdiv.d	fa5,fa4,fa5
    8000e216:	e20787d3          	fmv.x.d	a5,fa5
    8000e21a:	037540ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6310
    if (s->str_count) {
    8000e21e:	7c14                	ld	a3,56(s0)
    8000e220:	c68d                	beqz	a3,8000e24a <JS_DumpMemoryUsage+0x248>
quickjs-nuttx/quickjs.c:6311
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%0.1f per string)\n",
    8000e222:	6038                	ld	a4,64(s0)
    8000e224:	d226f7d3          	fcvt.d.l	fa5,a3
    8000e228:	0005b617          	auipc	a2,0x5b
    8000e22c:	7d060613          	addi	a2,a2,2000 # 800699f8 <qjsc_repl+0x4448>
quickjs-nuttx/quickjs.c:6313
                (double)s->str_size / s->str_count);
    8000e230:	d2277753          	fcvt.d.l	fa4,a4
quickjs-nuttx/quickjs.c:6311
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%0.1f per string)\n",
    8000e234:	0005b597          	auipc	a1,0x5b
    8000e238:	7cc58593          	addi	a1,a1,1996 # 80069a00 <qjsc_repl+0x4450>
    8000e23c:	8526                	mv	a0,s1
    8000e23e:	1af777d3          	fdiv.d	fa5,fa4,fa5
    8000e242:	e20787d3          	fmv.x.d	a5,fa5
    8000e246:	00b540ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6315
    if (s->obj_count) {
    8000e24a:	6434                	ld	a3,72(s0)
    8000e24c:	c2c1                	beqz	a3,8000e2cc <JS_DumpMemoryUsage+0x2ca>
quickjs-nuttx/quickjs.c:6316
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%0.1f per object)\n",
    8000e24e:	6838                	ld	a4,80(s0)
    8000e250:	d226f7d3          	fcvt.d.l	fa5,a3
    8000e254:	0005b617          	auipc	a2,0x5b
    8000e258:	7d460613          	addi	a2,a2,2004 # 80069a28 <qjsc_repl+0x4478>
quickjs-nuttx/quickjs.c:6318
                (double)s->obj_size / s->obj_count);
    8000e25c:	d2277753          	fcvt.d.l	fa4,a4
quickjs-nuttx/quickjs.c:6316
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%0.1f per object)\n",
    8000e260:	0005b597          	auipc	a1,0x5b
    8000e264:	7d058593          	addi	a1,a1,2000 # 80069a30 <qjsc_repl+0x4480>
    8000e268:	8526                	mv	a0,s1
    8000e26a:	1af777d3          	fdiv.d	fa5,fa4,fa5
    8000e26e:	e20787d3          	fmv.x.d	a5,fa5
    8000e272:	7de540ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6319
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%0.1f per object)\n",
    8000e276:	6c34                	ld	a3,88(s0)
    8000e278:	643c                	ld	a5,72(s0)
    8000e27a:	7038                	ld	a4,96(s0)
quickjs-nuttx/quickjs.c:6321
                (double)s->prop_count / s->obj_count);
    8000e27c:	d226f753          	fcvt.d.l	fa4,a3
quickjs-nuttx/quickjs.c:6319
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%0.1f per object)\n",
    8000e280:	d227f7d3          	fcvt.d.l	fa5,a5
    8000e284:	0005b617          	auipc	a2,0x5b
    8000e288:	7d460613          	addi	a2,a2,2004 # 80069a58 <qjsc_repl+0x44a8>
    8000e28c:	0005b597          	auipc	a1,0x5b
    8000e290:	7a458593          	addi	a1,a1,1956 # 80069a30 <qjsc_repl+0x4480>
    8000e294:	1af777d3          	fdiv.d	fa5,fa4,fa5
    8000e298:	8526                	mv	a0,s1
    8000e29a:	e20787d3          	fmv.x.d	a5,fa5
    8000e29e:	7b2540ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6322
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%0.1f per shape)\n",
    8000e2a2:	7434                	ld	a3,104(s0)
    8000e2a4:	7838                	ld	a4,112(s0)
    8000e2a6:	0005b617          	auipc	a2,0x5b
    8000e2aa:	7c260613          	addi	a2,a2,1986 # 80069a68 <qjsc_repl+0x44b8>
    8000e2ae:	d226f7d3          	fcvt.d.l	fa5,a3
quickjs-nuttx/quickjs.c:6324
                (double)s->shape_size / s->shape_count);
    8000e2b2:	d2277753          	fcvt.d.l	fa4,a4
quickjs-nuttx/quickjs.c:6322
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%0.1f per shape)\n",
    8000e2b6:	0005b597          	auipc	a1,0x5b
    8000e2ba:	7c258593          	addi	a1,a1,1986 # 80069a78 <qjsc_repl+0x44c8>
    8000e2be:	8526                	mv	a0,s1
    8000e2c0:	1af777d3          	fdiv.d	fa5,fa4,fa5
    8000e2c4:	e20787d3          	fmv.x.d	a5,fa5
    8000e2c8:	788540ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6326
    if (s->js_func_count) {
    8000e2cc:	7c34                	ld	a3,120(s0)
    8000e2ce:	caa5                	beqz	a3,8000e33e <JS_DumpMemoryUsage+0x33c>
quickjs-nuttx/quickjs.c:6327
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"\n",
    8000e2d0:	6058                	ld	a4,128(s0)
    8000e2d2:	0005b617          	auipc	a2,0x5b
    8000e2d6:	7ce60613          	addi	a2,a2,1998 # 80069aa0 <qjsc_repl+0x44f0>
    8000e2da:	0005b597          	auipc	a1,0x5b
    8000e2de:	7de58593          	addi	a1,a1,2014 # 80069ab8 <qjsc_repl+0x4508>
    8000e2e2:	8526                	mv	a0,s1
    8000e2e4:	76c540ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6329
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%0.1f per function)\n",
    8000e2e8:	7c34                	ld	a3,120(s0)
    8000e2ea:	6458                	ld	a4,136(s0)
    8000e2ec:	0005b617          	auipc	a2,0x5b
    8000e2f0:	7e460613          	addi	a2,a2,2020 # 80069ad0 <qjsc_repl+0x4520>
    8000e2f4:	d226f7d3          	fcvt.d.l	fa5,a3
quickjs-nuttx/quickjs.c:6331
                (double)s->js_func_code_size / s->js_func_count);
    8000e2f8:	d2277753          	fcvt.d.l	fa4,a4
quickjs-nuttx/quickjs.c:6329
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%0.1f per function)\n",
    8000e2fc:	0005b597          	auipc	a1,0x5b
    8000e300:	7e458593          	addi	a1,a1,2020 # 80069ae0 <qjsc_repl+0x4530>
    8000e304:	8526                	mv	a0,s1
    8000e306:	1af777d3          	fdiv.d	fa5,fa4,fa5
    8000e30a:	e20787d3          	fmv.x.d	a5,fa5
    8000e30e:	742540ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6332
        if (s->js_func_pc2line_count) {
    8000e312:	6854                	ld	a3,144(s0)
    8000e314:	c68d                	beqz	a3,8000e33e <JS_DumpMemoryUsage+0x33c>
quickjs-nuttx/quickjs.c:6333
            fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%0.1f per function)\n",
    8000e316:	6c58                	ld	a4,152(s0)
    8000e318:	d226f7d3          	fcvt.d.l	fa5,a3
    8000e31c:	0005b617          	auipc	a2,0x5b
    8000e320:	7ec60613          	addi	a2,a2,2028 # 80069b08 <qjsc_repl+0x4558>
quickjs-nuttx/quickjs.c:6336
                    (double)s->js_func_pc2line_size / s->js_func_pc2line_count);
    8000e324:	d2277753          	fcvt.d.l	fa4,a4
quickjs-nuttx/quickjs.c:6333
            fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%0.1f per function)\n",
    8000e328:	0005b597          	auipc	a1,0x5b
    8000e32c:	7b858593          	addi	a1,a1,1976 # 80069ae0 <qjsc_repl+0x4530>
    8000e330:	8526                	mv	a0,s1
    8000e332:	1af777d3          	fdiv.d	fa5,fa4,fa5
    8000e336:	e20787d3          	fmv.x.d	a5,fa5
    8000e33a:	716540ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6339
    if (s->c_func_count) {
    8000e33e:	7054                	ld	a3,160(s0)
    8000e340:	ce81                	beqz	a3,8000e358 <JS_DumpMemoryUsage+0x356>
quickjs-nuttx/quickjs.c:6340
        fprintf(fp, "%-20s %8"PRId64"\n", "C functions", s->c_func_count);
    8000e342:	0005b617          	auipc	a2,0x5b
    8000e346:	7d660613          	addi	a2,a2,2006 # 80069b18 <qjsc_repl+0x4568>
    8000e34a:	0005b597          	auipc	a1,0x5b
    8000e34e:	7de58593          	addi	a1,a1,2014 # 80069b28 <qjsc_repl+0x4578>
    8000e352:	8526                	mv	a0,s1
    8000e354:	6fc540ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6342
    if (s->array_count) {
    8000e358:	7454                	ld	a3,168(s0)
    8000e35a:	c2a5                	beqz	a3,8000e3ba <JS_DumpMemoryUsage+0x3b8>
quickjs-nuttx/quickjs.c:6343
        fprintf(fp, "%-20s %8"PRId64"\n", "arrays", s->array_count);
    8000e35c:	0005b617          	auipc	a2,0x5b
    8000e360:	7dc60613          	addi	a2,a2,2012 # 80069b38 <qjsc_repl+0x4588>
    8000e364:	0005b597          	auipc	a1,0x5b
    8000e368:	7c458593          	addi	a1,a1,1988 # 80069b28 <qjsc_repl+0x4578>
    8000e36c:	8526                	mv	a0,s1
    8000e36e:	6e2540ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6344
        if (s->fast_array_count) {
    8000e372:	7854                	ld	a3,176(s0)
    8000e374:	c2b9                	beqz	a3,8000e3ba <JS_DumpMemoryUsage+0x3b8>
quickjs-nuttx/quickjs.c:6345
            fprintf(fp, "%-20s %8"PRId64"\n", "  fast arrays", s->fast_array_count);
    8000e376:	0005b617          	auipc	a2,0x5b
    8000e37a:	7ca60613          	addi	a2,a2,1994 # 80069b40 <qjsc_repl+0x4590>
    8000e37e:	0005b597          	auipc	a1,0x5b
    8000e382:	7aa58593          	addi	a1,a1,1962 # 80069b28 <qjsc_repl+0x4578>
    8000e386:	8526                	mv	a0,s1
    8000e388:	6c8540ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6346
            fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%0.1f per fast array)\n",
    8000e38c:	7c54                	ld	a3,184(s0)
    8000e38e:	785c                	ld	a5,176(s0)
    8000e390:	0005b617          	auipc	a2,0x5b
    8000e394:	7c060613          	addi	a2,a2,1984 # 80069b50 <qjsc_repl+0x45a0>
quickjs-nuttx/quickjs.c:6349
                    (double)s->fast_array_elements / s->fast_array_count);
    8000e398:	d226f753          	fcvt.d.l	fa4,a3
quickjs-nuttx/quickjs.c:6346
            fprintf(fp, "%-20s %8"PRId64" %8"PRId64"  (%0.1f per fast array)\n",
    8000e39c:	d227f7d3          	fcvt.d.l	fa5,a5
    8000e3a0:	00469713          	slli	a4,a3,0x4
    8000e3a4:	0005b597          	auipc	a1,0x5b
    8000e3a8:	7bc58593          	addi	a1,a1,1980 # 80069b60 <qjsc_repl+0x45b0>
    8000e3ac:	1af777d3          	fdiv.d	fa5,fa4,fa5
    8000e3b0:	8526                	mv	a0,s1
    8000e3b2:	e20787d3          	fmv.x.d	a5,fa5
    8000e3b6:	69a540ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6352
    if (s->binary_object_count) {
    8000e3ba:	6074                	ld	a3,192(s0)
    8000e3bc:	cea9                	beqz	a3,8000e416 <JS_DumpMemoryUsage+0x414>
quickjs-nuttx/quickjs.c:6353
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"\n",
    8000e3be:	6478                	ld	a4,200(s0)
quickjs-nuttx/quickjs.c:6356
}
    8000e3c0:	645a                	ld	s0,400(sp)
    8000e3c2:	60fa                	ld	ra,408(sp)
    8000e3c4:	691a                	ld	s2,384(sp)
    8000e3c6:	79f6                	ld	s3,376(sp)
    8000e3c8:	7a56                	ld	s4,368(sp)
    8000e3ca:	7ab6                	ld	s5,360(sp)
    8000e3cc:	7b16                	ld	s6,352(sp)
    8000e3ce:	6bf6                	ld	s7,344(sp)
    8000e3d0:	6c56                	ld	s8,336(sp)
    8000e3d2:	6cb6                	ld	s9,328(sp)
quickjs-nuttx/quickjs.c:6353
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"\n",
    8000e3d4:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:6356
}
    8000e3d6:	64ba                	ld	s1,392(sp)
quickjs-nuttx/quickjs.c:6353
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"\n",
    8000e3d8:	0005b617          	auipc	a2,0x5b
    8000e3dc:	7b860613          	addi	a2,a2,1976 # 80069b90 <qjsc_repl+0x45e0>
    8000e3e0:	0005b597          	auipc	a1,0x5b
    8000e3e4:	6d858593          	addi	a1,a1,1752 # 80069ab8 <qjsc_repl+0x4508>
quickjs-nuttx/quickjs.c:6356
}
    8000e3e8:	611d                	addi	sp,sp,416
quickjs-nuttx/quickjs.c:6353
        fprintf(fp, "%-20s %8"PRId64" %8"PRId64"\n",
    8000e3ea:	6665406f          	j	80062a50 <fprintf>
quickjs-nuttx/quickjs.c:6273
                if (gp->gc_obj_type == JS_GC_OBJ_TYPE_JS_OBJECT) {
    8000e3ee:	ffc74783          	lbu	a5,-4(a4)
    8000e3f2:	8bbd                	andi	a5,a5,15
    8000e3f4:	ef99                	bnez	a5,8000e412 <JS_DumpMemoryUsage+0x410>
quickjs-nuttx/quickjs.c:6275
                    obj_classes[min_uint32(p->class_id, JS_CLASS_INIT_COUNT)]++;
    8000e3f6:	ffe75783          	lhu	a5,-2(a4)
min_uint32():
quickjs-nuttx/cutils.h:95
    if (a < b)
    8000e3fa:	00f5f463          	bgeu	a1,a5,8000e402 <JS_DumpMemoryUsage+0x400>
quickjs-nuttx/cutils.h:98
        return b;
    8000e3fe:	03a00793          	li	a5,58
JS_DumpMemoryUsage():
quickjs-nuttx/quickjs.c:6275
    8000e402:	0294                	addi	a3,sp,320
    8000e404:	078a                	slli	a5,a5,0x2
    8000e406:	97b6                	add	a5,a5,a3
    8000e408:	f107a683          	lw	a3,-240(a5)
    8000e40c:	2685                	addiw	a3,a3,1
    8000e40e:	f0d7a823          	sw	a3,-240(a5)
quickjs-nuttx/quickjs.c:6270 (discriminator 2)
            list_for_each(el, &rt->gc_obj_list) {
    8000e412:	6718                	ld	a4,8(a4)
    8000e414:	b94d                	j	8000e0c6 <JS_DumpMemoryUsage+0xc4>
quickjs-nuttx/quickjs.c:6356
}
    8000e416:	60fa                	ld	ra,408(sp)
    8000e418:	645a                	ld	s0,400(sp)
    8000e41a:	64ba                	ld	s1,392(sp)
    8000e41c:	691a                	ld	s2,384(sp)
    8000e41e:	79f6                	ld	s3,376(sp)
    8000e420:	7a56                	ld	s4,368(sp)
    8000e422:	7ab6                	ld	s5,360(sp)
    8000e424:	7b16                	ld	s6,352(sp)
    8000e426:	6bf6                	ld	s7,344(sp)
    8000e428:	6c56                	ld	s8,336(sp)
    8000e42a:	6cb6                	ld	s9,328(sp)
    8000e42c:	611d                	addi	sp,sp,416
    8000e42e:	8082                	ret

000000008000e430 <JS_GetGlobalObject>:
JS_GetGlobalObject():
quickjs-nuttx/quickjs.c:6359
{
    8000e430:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:6360
    return JS_DupValue(ctx, ctx->global_obj);
    8000e432:	1707b583          	ld	a1,368(a5)
    8000e436:	16853503          	ld	a0,360(a0)
quickjs-nuttx/quickjs.c:6359
{
    8000e43a:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:6361
}
    8000e43c:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:6360
    return JS_DupValue(ctx, ctx->global_obj);
    8000e43e:	fddfb06f          	j	8000a41a <JS_DupValue.constprop.0>

000000008000e442 <JS_Throw>:
JS_Throw():
quickjs-nuttx/quickjs.c:6365
{
    8000e442:	7179                	addi	sp,sp,-48
    8000e444:	f406                	sd	ra,40(sp)
    8000e446:	f022                	sd	s0,32(sp)
quickjs-nuttx/quickjs.c:6366
    JSRuntime *rt = ctx->rt;
    8000e448:	6d00                	ld	s0,24(a0)
quickjs-nuttx/quickjs.c:6365
{
    8000e44a:	e02e                	sd	a1,0(sp)
    8000e44c:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:6367
    JS_FreeValue(ctx, rt->current_exception);
    8000e44e:	706c                	ld	a1,224(s0)
    8000e450:	7470                	ld	a2,232(s0)
    8000e452:	b4cfd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:6368
    rt->current_exception = obj;
    8000e456:	6782                	ld	a5,0(sp)
quickjs-nuttx/quickjs.c:6370
}
    8000e458:	4501                	li	a0,0
    8000e45a:	4599                	li	a1,6
quickjs-nuttx/quickjs.c:6368
    rt->current_exception = obj;
    8000e45c:	f07c                	sd	a5,224(s0)
    8000e45e:	67a2                	ld	a5,8(sp)
    8000e460:	f47c                	sd	a5,232(s0)
quickjs-nuttx/quickjs.c:6370
}
    8000e462:	70a2                	ld	ra,40(sp)
    8000e464:	7402                	ld	s0,32(sp)
    8000e466:	6145                	addi	sp,sp,48
    8000e468:	8082                	ret

000000008000e46a <js_promise_finally_thrower>:
js_promise_finally_thrower():
quickjs-nuttx/quickjs.c:48600
{
    8000e46a:	7139                	addi	sp,sp,-64
    8000e46c:	f822                	sd	s0,48(sp)
quickjs-nuttx/quickjs.c:48601
    return JS_Throw(ctx, JS_DupValue(ctx, func_data[0]));
    8000e46e:	00883583          	ld	a1,8(a6)
quickjs-nuttx/quickjs.c:48600
{
    8000e472:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:48601
    return JS_Throw(ctx, JS_DupValue(ctx, func_data[0]));
    8000e474:	00083503          	ld	a0,0(a6)
quickjs-nuttx/quickjs.c:48600
{
    8000e478:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:48601
    return JS_Throw(ctx, JS_DupValue(ctx, func_data[0]));
    8000e47a:	fa1fb0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8000e47e:	862e                	mv	a2,a1
    8000e480:	85aa                	mv	a1,a0
    8000e482:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:48602
}
    8000e484:	7442                	ld	s0,48(sp)
    8000e486:	70e2                	ld	ra,56(sp)
    8000e488:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:48601
    return JS_Throw(ctx, JS_DupValue(ctx, func_data[0]));
    8000e48a:	fb9ff06f          	j	8000e442 <JS_Throw>

000000008000e48e <JS_GetException>:
JS_GetException():
quickjs-nuttx/quickjs.c:6376
    JSRuntime *rt = ctx->rt;
    8000e48e:	6d1c                	ld	a5,24(a0)
quickjs-nuttx/quickjs.c:6378
    rt->current_exception = JS_NULL;
    8000e490:	4709                	li	a4,2
quickjs-nuttx/quickjs.c:6374
{
    8000e492:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:6377
    val = rt->current_exception;
    8000e494:	73e8                	ld	a0,224(a5)
    8000e496:	77ec                	ld	a1,232(a5)
quickjs-nuttx/quickjs.c:6378
    rt->current_exception = JS_NULL;
    8000e498:	0e07b023          	sd	zero,224(a5)
    8000e49c:	f7f8                	sd	a4,232(a5)
quickjs-nuttx/quickjs.c:6380
}
    8000e49e:	6105                	addi	sp,sp,32
    8000e4a0:	8082                	ret

000000008000e4a2 <JS_IsFunction>:
JS_IsFunction():
quickjs-nuttx/quickjs.c:9726
{
    8000e4a2:	1141                	addi	sp,sp,-16
    8000e4a4:	e432                	sd	a2,8(sp)
    8000e4a6:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:9728
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    8000e4a8:	2601                	sext.w	a2,a2
    8000e4aa:	57fd                	li	a5,-1
    8000e4ac:	02f61f63          	bne	a2,a5,8000e4ea <JS_IsFunction+0x48>
quickjs-nuttx/quickjs.c:9731
    switch(p->class_id) {
    8000e4b0:	0065d783          	lhu	a5,6(a1)
    8000e4b4:	46b5                	li	a3,13
    8000e4b6:	872a                	mv	a4,a0
    8000e4b8:	0007861b          	sext.w	a2,a5
    8000e4bc:	4505                	li	a0,1
    8000e4be:	00d78963          	beq	a5,a3,8000e4d0 <JS_IsFunction+0x2e>
    8000e4c2:	03000693          	li	a3,48
    8000e4c6:	00d61763          	bne	a2,a3,8000e4d4 <JS_IsFunction+0x32>
quickjs-nuttx/quickjs.c:9735
        return p->u.proxy_data->is_func;
    8000e4ca:	799c                	ld	a5,48(a1)
    8000e4cc:	0207c503          	lbu	a0,32(a5)
quickjs-nuttx/quickjs.c:9739
}
    8000e4d0:	0141                	addi	sp,sp,16
    8000e4d2:	8082                	ret
quickjs-nuttx/quickjs.c:9737
        return (ctx->rt->class_array[p->class_id].call != NULL);
    8000e4d4:	02800693          	li	a3,40
    8000e4d8:	02d787b3          	mul	a5,a5,a3
    8000e4dc:	6f18                	ld	a4,24(a4)
    8000e4de:	7b38                	ld	a4,112(a4)
    8000e4e0:	97ba                	add	a5,a5,a4
    8000e4e2:	6f88                	ld	a0,24(a5)
    8000e4e4:	00a03533          	snez	a0,a0
    8000e4e8:	b7e5                	j	8000e4d0 <JS_IsFunction+0x2e>
quickjs-nuttx/quickjs.c:9729
        return FALSE;
    8000e4ea:	4501                	li	a0,0
    8000e4ec:	b7d5                	j	8000e4d0 <JS_IsFunction+0x2e>

000000008000e4ee <js_operator_typeof>:
js_operator_typeof():
quickjs-nuttx/quickjs.c:14580
{
    8000e4ee:	1101                	addi	sp,sp,-32
    8000e4f0:	e432                	sd	a2,8(sp)
    8000e4f2:	ec06                	sd	ra,24(sp)
    8000e4f4:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:14584
    tag = JS_VALUE_GET_NORM_TAG(op1);
    8000e4f6:	2601                	sext.w	a2,a2
quickjs-nuttx/quickjs.c:14585
    switch(tag) {
    8000e4f8:	479d                	li	a5,7
    8000e4fa:	04c7e363          	bltu	a5,a2,8000e540 <js_operator_typeof+0x52>
    8000e4fe:	0005b717          	auipc	a4,0x5b
    8000e502:	6a270713          	addi	a4,a4,1698 # 80069ba0 <qjsc_repl+0x45f0>
    8000e506:	060a                	slli	a2,a2,0x2
    8000e508:	963a                	add	a2,a2,a4
    8000e50a:	421c                	lw	a5,0(a2)
    8000e50c:	97ba                	add	a5,a5,a4
    8000e50e:	8782                	jr	a5
    8000e510:	262d                	addiw	a2,a2,11
    8000e512:	0006071b          	sext.w	a4,a2
    8000e516:	47a9                	li	a5,10
    8000e518:	02e7e763          	bltu	a5,a4,8000e546 <js_operator_typeof+0x58>
    8000e51c:	02061793          	slli	a5,a2,0x20
    8000e520:	01e7d613          	srli	a2,a5,0x1e
    8000e524:	0005b717          	auipc	a4,0x5b
    8000e528:	69c70713          	addi	a4,a4,1692 # 80069bc0 <qjsc_repl+0x4610>
    8000e52c:	963a                	add	a2,a2,a4
    8000e52e:	421c                	lw	a5,0(a2)
    8000e530:	97ba                	add	a5,a5,a4
    8000e532:	8782                	jr	a5
quickjs-nuttx/quickjs.c:14587
        atom = JS_ATOM_bigint;
    8000e534:	08d00793          	li	a5,141
quickjs-nuttx/quickjs.c:14634
}
    8000e538:	60e2                	ld	ra,24(sp)
    8000e53a:	853e                	mv	a0,a5
    8000e53c:	6105                	addi	sp,sp,32
    8000e53e:	8082                	ret
quickjs-nuttx/quickjs.c:14585
    switch(tag) {
    8000e540:	57d1                	li	a5,-12
    8000e542:	fcc7e7e3          	bltu	a5,a2,8000e510 <js_operator_typeof+0x22>
quickjs-nuttx/quickjs.c:14630
        atom = JS_ATOM_unknown;
    8000e546:	04d00793          	li	a5,77
    8000e54a:	b7fd                	j	8000e538 <js_operator_typeof+0x4a>
quickjs-nuttx/quickjs.c:14594
        atom = JS_ATOM_bigdecimal;
    8000e54c:	08f00793          	li	a5,143
quickjs-nuttx/quickjs.c:14595
        break;
    8000e550:	b7e5                	j	8000e538 <js_operator_typeof+0x4a>
quickjs-nuttx/quickjs.c:14602
        atom = JS_ATOM_undefined;
    8000e552:	04600793          	li	a5,70
quickjs-nuttx/quickjs.c:14603
        break;
    8000e556:	b7cd                	j	8000e538 <js_operator_typeof+0x4a>
quickjs-nuttx/quickjs.c:14605
        atom = JS_ATOM_boolean;
    8000e558:	04800793          	li	a5,72
quickjs-nuttx/quickjs.c:14606
        break;
    8000e55c:	bff1                	j	8000e538 <js_operator_typeof+0x4a>
quickjs-nuttx/quickjs.c:14608
        atom = JS_ATOM_string;
    8000e55e:	04900793          	li	a5,73
quickjs-nuttx/quickjs.c:14609
        break;
    8000e562:	bfd9                	j	8000e538 <js_operator_typeof+0x4a>
quickjs-nuttx/quickjs.c:14614
            if (unlikely(p->is_HTMLDDA)) 
    8000e564:	6582                	ld	a1,0(sp)
quickjs-nuttx/quickjs.c:14615
                atom = JS_ATOM_undefined;
    8000e566:	04600793          	li	a5,70
quickjs-nuttx/quickjs.c:14614
            if (unlikely(p->is_HTMLDDA)) 
    8000e56a:	00558703          	lb	a4,5(a1)
    8000e56e:	fc0745e3          	bltz	a4,8000e538 <js_operator_typeof+0x4a>
quickjs-nuttx/quickjs.c:14616
            else if (JS_IsFunction(ctx, op1))
    8000e572:	6622                	ld	a2,8(sp)
    8000e574:	f2fff0ef          	jal	ra,8000e4a2 <JS_IsFunction>
quickjs-nuttx/quickjs.c:14617
                atom = JS_ATOM_function;
    8000e578:	47ed                	li	a5,27
quickjs-nuttx/quickjs.c:14616
            else if (JS_IsFunction(ctx, op1))
    8000e57a:	fd5d                	bnez	a0,8000e538 <js_operator_typeof+0x4a>
quickjs-nuttx/quickjs.c:14624
        atom = JS_ATOM_object;
    8000e57c:	04a00793          	li	a5,74
    8000e580:	bf65                	j	8000e538 <js_operator_typeof+0x4a>
quickjs-nuttx/quickjs.c:14627
        atom = JS_ATOM_symbol;
    8000e582:	04b00793          	li	a5,75
quickjs-nuttx/quickjs.c:14628
        break;
    8000e586:	bf4d                	j	8000e538 <js_operator_typeof+0x4a>
quickjs-nuttx/quickjs.c:14591
        atom = JS_ATOM_bigfloat;
    8000e588:	08e00793          	li	a5,142
    8000e58c:	b775                	j	8000e538 <js_operator_typeof+0x4a>
quickjs-nuttx/quickjs.c:14599
        atom = JS_ATOM_number;
    8000e58e:	04700793          	li	a5,71
    8000e592:	b75d                	j	8000e538 <js_operator_typeof+0x4a>

000000008000e594 <JS_IsCFunction>:
JS_IsCFunction():
quickjs-nuttx/quickjs.c:9742
{
    8000e594:	1141                	addi	sp,sp,-16
    8000e596:	e432                	sd	a2,8(sp)
    8000e598:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:9744
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    8000e59a:	2601                	sext.w	a2,a2
    8000e59c:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:9748
        return (p->u.cfunc.c_function.generic == func && p->u.cfunc.magic == magic);
    8000e59e:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:9744
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    8000e5a0:	00f61f63          	bne	a2,a5,8000e5be <JS_IsCFunction+0x2a>
quickjs-nuttx/quickjs.c:9747
    if (p->class_id == JS_CLASS_C_FUNCTION)
    8000e5a4:	0065d603          	lhu	a2,6(a1)
    8000e5a8:	47b1                	li	a5,12
    8000e5aa:	00f61a63          	bne	a2,a5,8000e5be <JS_IsCFunction+0x2a>
quickjs-nuttx/quickjs.c:9748
        return (p->u.cfunc.c_function.generic == func && p->u.cfunc.magic == magic);
    8000e5ae:	7d9c                	ld	a5,56(a1)
    8000e5b0:	00d79763          	bne	a5,a3,8000e5be <JS_IsCFunction+0x2a>
quickjs-nuttx/quickjs.c:9748 (discriminator 1)
    8000e5b4:	04259503          	lh	a0,66(a1)
    8000e5b8:	8d19                	sub	a0,a0,a4
    8000e5ba:	00153513          	seqz	a0,a0
quickjs-nuttx/quickjs.c:9751
}
    8000e5be:	0141                	addi	sp,sp,16
    8000e5c0:	8082                	ret

000000008000e5c2 <JS_IsConstructor>:
JS_IsConstructor():
quickjs-nuttx/quickjs.c:9754
{
    8000e5c2:	1141                	addi	sp,sp,-16
    8000e5c4:	e432                	sd	a2,8(sp)
    8000e5c6:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:9756
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    8000e5c8:	2601                	sext.w	a2,a2
    8000e5ca:	57fd                	li	a5,-1
    8000e5cc:	4501                	li	a0,0
    8000e5ce:	00f61563          	bne	a2,a5,8000e5d8 <JS_IsConstructor+0x16>
quickjs-nuttx/quickjs.c:9759
    return p->is_constructor;
    8000e5d2:	6188                	ld	a0,0(a1)
    8000e5d4:	9131                	srli	a0,a0,0x2c
    8000e5d6:	8905                	andi	a0,a0,1
quickjs-nuttx/quickjs.c:9760
}
    8000e5d8:	0141                	addi	sp,sp,16
    8000e5da:	8082                	ret

000000008000e5dc <JS_SetConstructorBit>:
JS_SetConstructorBit():
quickjs-nuttx/quickjs.c:9763
{
    8000e5dc:	1141                	addi	sp,sp,-16
    8000e5de:	e432                	sd	a2,8(sp)
    8000e5e0:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:9765
    if (JS_VALUE_GET_TAG(func_obj) != JS_TAG_OBJECT)
    8000e5e2:	2601                	sext.w	a2,a2
    8000e5e4:	57fd                	li	a5,-1
    8000e5e6:	4501                	li	a0,0
    8000e5e8:	00f61c63          	bne	a2,a5,8000e600 <JS_SetConstructorBit+0x24>
quickjs-nuttx/quickjs.c:9768
    p->is_constructor = val;
    8000e5ec:	0055c783          	lbu	a5,5(a1)
    8000e5f0:	8a85                	andi	a3,a3,1
    8000e5f2:	0046969b          	slliw	a3,a3,0x4
    8000e5f6:	9bbd                	andi	a5,a5,-17
    8000e5f8:	8edd                	or	a3,a3,a5
    8000e5fa:	00d582a3          	sb	a3,5(a1)
quickjs-nuttx/quickjs.c:9769
    return TRUE;
    8000e5fe:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:9770
}
    8000e600:	0141                	addi	sp,sp,16
    8000e602:	8082                	ret

000000008000e604 <JS_IsError>:
JS_IsError():
quickjs-nuttx/quickjs.c:9773
{
    8000e604:	1141                	addi	sp,sp,-16
    8000e606:	e432                	sd	a2,8(sp)
    8000e608:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:9775
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    8000e60a:	2601                	sext.w	a2,a2
    8000e60c:	57fd                	li	a5,-1
    8000e60e:	4501                	li	a0,0
    8000e610:	00f61763          	bne	a2,a5,8000e61e <JS_IsError+0x1a>
quickjs-nuttx/quickjs.c:9778
    return (p->class_id == JS_CLASS_ERROR);
    8000e614:	0065d503          	lhu	a0,6(a1)
    8000e618:	1575                	addi	a0,a0,-3
    8000e61a:	00153513          	seqz	a0,a0
quickjs-nuttx/quickjs.c:9779
}
    8000e61e:	0141                	addi	sp,sp,16
    8000e620:	8082                	ret

000000008000e622 <JS_IsUncatchableError>:
JS_IsUncatchableError():
quickjs-nuttx/quickjs.c:9783
{
    8000e622:	1141                	addi	sp,sp,-16
    8000e624:	e432                	sd	a2,8(sp)
    8000e626:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:9785
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    8000e628:	2601                	sext.w	a2,a2
    8000e62a:	57fd                	li	a5,-1
    8000e62c:	4501                	li	a0,0
    8000e62e:	00f61b63          	bne	a2,a5,8000e644 <JS_IsUncatchableError+0x22>
quickjs-nuttx/quickjs.c:9788
    return p->class_id == JS_CLASS_ERROR && p->is_uncatchable_error;
    8000e632:	6188                	ld	a0,0(a1)
    8000e634:	57e5                	li	a5,-7
    8000e636:	17b6                	slli	a5,a5,0x2d
    8000e638:	8d7d                	and	a0,a0,a5
    8000e63a:	579d                	li	a5,-25
    8000e63c:	17b6                	slli	a5,a5,0x2d
    8000e63e:	953e                	add	a0,a0,a5
    8000e640:	00153513          	seqz	a0,a0
quickjs-nuttx/quickjs.c:9789
}
    8000e644:	0141                	addi	sp,sp,16
    8000e646:	8082                	ret

000000008000e648 <JS_SetUncatchableError>:
JS_SetUncatchableError():
quickjs-nuttx/quickjs.c:9792
{
    8000e648:	1141                	addi	sp,sp,-16
    8000e64a:	e432                	sd	a2,8(sp)
    8000e64c:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:9794
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    8000e64e:	2601                	sext.w	a2,a2
    8000e650:	57fd                	li	a5,-1
    8000e652:	02f61163          	bne	a2,a5,8000e674 <JS_SetUncatchableError+0x2c>
quickjs-nuttx/quickjs.c:9797
    if (p->class_id == JS_CLASS_ERROR)
    8000e656:	0065d703          	lhu	a4,6(a1)
    8000e65a:	478d                	li	a5,3
    8000e65c:	00f71c63          	bne	a4,a5,8000e674 <JS_SetUncatchableError+0x2c>
quickjs-nuttx/quickjs.c:9798
        p->is_uncatchable_error = flag;
    8000e660:	0055c783          	lbu	a5,5(a1)
    8000e664:	8a85                	andi	a3,a3,1
    8000e666:	0056969b          	slliw	a3,a3,0x5
    8000e66a:	fdf7f793          	andi	a5,a5,-33
    8000e66e:	8edd                	or	a3,a3,a5
    8000e670:	00d582a3          	sb	a3,5(a1)
quickjs-nuttx/quickjs.c:9799
}
    8000e674:	0141                	addi	sp,sp,16
    8000e676:	8082                	ret

000000008000e678 <JS_ResetUncatchableError>:
JS_ResetUncatchableError():
quickjs-nuttx/quickjs.c:9803
    JS_SetUncatchableError(ctx, ctx->rt->current_exception, FALSE);
    8000e678:	6d1c                	ld	a5,24(a0)
    8000e67a:	4681                	li	a3,0
    8000e67c:	73ec                	ld	a1,224(a5)
    8000e67e:	77f0                	ld	a2,232(a5)
    8000e680:	fc9ff06f          	j	8000e648 <JS_SetUncatchableError>

000000008000e684 <JS_SetOpaque>:
JS_SetOpaque():
quickjs-nuttx/quickjs.c:9809
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    8000e684:	2581                	sext.w	a1,a1
    8000e686:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:9807
{
    8000e688:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:9809
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    8000e68a:	00f59363          	bne	a1,a5,8000e690 <JS_SetOpaque+0xc>
quickjs-nuttx/quickjs.c:9811
        p->u.opaque = opaque;
    8000e68e:	f910                	sd	a2,48(a0)
quickjs-nuttx/quickjs.c:9813
}
    8000e690:	0141                	addi	sp,sp,16
    8000e692:	8082                	ret

000000008000e694 <JS_GetOpaque>:
JS_GetOpaque():
quickjs-nuttx/quickjs.c:9817
{
    8000e694:	1141                	addi	sp,sp,-16
    8000e696:	e42e                	sd	a1,8(sp)
    8000e698:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:9819
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    8000e69a:	2581                	sext.w	a1,a1
    8000e69c:	57fd                	li	a5,-1
    8000e69e:	00f59b63          	bne	a1,a5,8000e6b4 <JS_GetOpaque+0x20>
quickjs-nuttx/quickjs.c:9822
    if (p->class_id != class_id)
    8000e6a2:	00655703          	lhu	a4,6(a0)
quickjs-nuttx/quickjs.c:9821
    p = JS_VALUE_GET_OBJ(obj);
    8000e6a6:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:9820
        return NULL;
    8000e6a8:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:9822
    if (p->class_id != class_id)
    8000e6aa:	00c71363          	bne	a4,a2,8000e6b0 <JS_GetOpaque+0x1c>
quickjs-nuttx/quickjs.c:9824
    return p->u.opaque;
    8000e6ae:	7b88                	ld	a0,48(a5)
quickjs-nuttx/quickjs.c:9825
}
    8000e6b0:	0141                	addi	sp,sp,16
    8000e6b2:	8082                	ret
quickjs-nuttx/quickjs.c:9820
        return NULL;
    8000e6b4:	4501                	li	a0,0
    8000e6b6:	bfed                	j	8000e6b0 <JS_GetOpaque+0x1c>

000000008000e6b8 <js_c_function_data_call>:
js_c_function_data_call():
quickjs-nuttx/quickjs.c:5106
{
    8000e6b8:	7159                	addi	sp,sp,-112
    8000e6ba:	f0a2                	sd	s0,96(sp)
    8000e6bc:	eca6                	sd	s1,88(sp)
    8000e6be:	1880                	addi	s0,sp,112
    8000e6c0:	e8ca                	sd	s2,80(sp)
    8000e6c2:	e4ce                	sd	s3,72(sp)
    8000e6c4:	f486                	sd	ra,104(sp)
    8000e6c6:	88b2                	mv	a7,a2
    8000e6c8:	fab43823          	sd	a1,-80(s0)
    8000e6cc:	fac43c23          	sd	a2,-72(s0)
    8000e6d0:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:5107
    JSCFunctionDataRecord *s = JS_GetOpaque(func_obj, JS_CLASS_C_FUNCTION_DATA);
    8000e6d2:	463d                	li	a2,15
    8000e6d4:	852e                	mv	a0,a1
    8000e6d6:	85c6                	mv	a1,a7
quickjs-nuttx/quickjs.c:5106
{
    8000e6d8:	fae43423          	sd	a4,-88(s0)
    8000e6dc:	84be                	mv	s1,a5
    8000e6de:	fad43023          	sd	a3,-96(s0)
    8000e6e2:	f9043c23          	sd	a6,-104(s0)
quickjs-nuttx/quickjs.c:5107
    JSCFunctionDataRecord *s = JS_GetOpaque(func_obj, JS_CLASS_C_FUNCTION_DATA);
    8000e6e6:	fafff0ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:5112
    if (unlikely(argc < s->length)) {
    8000e6ea:	00854783          	lbu	a5,8(a0)
    8000e6ee:	f9843703          	ld	a4,-104(s0)
quickjs-nuttx/quickjs.c:5107
    JSCFunctionDataRecord *s = JS_GetOpaque(func_obj, JS_CLASS_C_FUNCTION_DATA);
    8000e6f2:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:5112
    if (unlikely(argc < s->length)) {
    8000e6f4:	02f4db63          	bge	s1,a5,8000e72a <js_c_function_data_call+0x72>
quickjs-nuttx/quickjs.c:5113
        arg_buf = alloca(sizeof(arg_buf[0]) * s->length);
    8000e6f8:	0792                	slli	a5,a5,0x4
    8000e6fa:	40f10133          	sub	sp,sp,a5
    8000e6fe:	868a                	mv	a3,sp
quickjs-nuttx/quickjs.c:5115
            arg_buf[i] = argv[i];
    8000e700:	0004861b          	sext.w	a2,s1
    8000e704:	0004d363          	bgez	s1,8000e70a <js_c_function_data_call+0x52>
    8000e708:	4601                	li	a2,0
    8000e70a:	85ba                	mv	a1,a4
    8000e70c:	8536                	mv	a0,a3
    8000e70e:	0612                	slli	a2,a2,0x4
    8000e710:	69c550ef          	jal	ra,80063dac <memcpy>
    8000e714:	00449793          	slli	a5,s1,0x4
    8000e718:	86aa                	mv	a3,a0
    8000e71a:	97aa                	add	a5,a5,a0
    8000e71c:	8726                	mv	a4,s1
quickjs-nuttx/quickjs.c:5117
            arg_buf[i] = JS_UNDEFINED;
    8000e71e:	458d                	li	a1,3
quickjs-nuttx/quickjs.c:5116 (discriminator 1)
        for(i = argc; i < s->length; i++)
    8000e720:	00894603          	lbu	a2,8(s2)
    8000e724:	02c74963          	blt	a4,a2,8000e756 <js_c_function_data_call+0x9e>
    8000e728:	8736                	mv	a4,a3
quickjs-nuttx/quickjs.c:5122
    return s->func(ctx, this_val, argc, arg_buf, s->magic, s->data);
    8000e72a:	00093883          	ld	a7,0(s2)
    8000e72e:	00a95783          	lhu	a5,10(s2)
    8000e732:	fa043583          	ld	a1,-96(s0)
    8000e736:	fa843603          	ld	a2,-88(s0)
    8000e73a:	01090813          	addi	a6,s2,16
    8000e73e:	86a6                	mv	a3,s1
    8000e740:	854e                	mv	a0,s3
    8000e742:	9882                	jalr	a7
quickjs-nuttx/quickjs.c:5123
}
    8000e744:	f9040113          	addi	sp,s0,-112
    8000e748:	70a6                	ld	ra,104(sp)
    8000e74a:	7406                	ld	s0,96(sp)
    8000e74c:	64e6                	ld	s1,88(sp)
    8000e74e:	6946                	ld	s2,80(sp)
    8000e750:	69a6                	ld	s3,72(sp)
    8000e752:	6165                	addi	sp,sp,112
    8000e754:	8082                	ret
quickjs-nuttx/quickjs.c:5117 (discriminator 3)
            arg_buf[i] = JS_UNDEFINED;
    8000e756:	0007b023          	sd	zero,0(a5)
    8000e75a:	e78c                	sd	a1,8(a5)
quickjs-nuttx/quickjs.c:5116 (discriminator 3)
        for(i = argc; i < s->length; i++)
    8000e75c:	2705                	addiw	a4,a4,1
    8000e75e:	07c1                	addi	a5,a5,16
    8000e760:	b7c1                	j	8000e720 <js_c_function_data_call+0x68>

000000008000e762 <js_generator_finalizer>:
js_generator_finalizer():
quickjs-nuttx/quickjs.c:18901
{
    8000e762:	7179                	addi	sp,sp,-48
    8000e764:	87b2                	mv	a5,a2
    8000e766:	f022                	sd	s0,32(sp)
quickjs-nuttx/quickjs.c:18902
    JSGeneratorData *s = JS_GetOpaque(obj, JS_CLASS_GENERATOR);
    8000e768:	02f00613          	li	a2,47
quickjs-nuttx/quickjs.c:18901
{
    8000e76c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:18902
    JSGeneratorData *s = JS_GetOpaque(obj, JS_CLASS_GENERATOR);
    8000e76e:	852e                	mv	a0,a1
    8000e770:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:18901
{
    8000e772:	f406                	sd	ra,40(sp)
quickjs-nuttx/quickjs.c:18902
    JSGeneratorData *s = JS_GetOpaque(obj, JS_CLASS_GENERATOR);
    8000e774:	f21ff0ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:18904
    if (s) {
    8000e778:	cd09                	beqz	a0,8000e792 <js_generator_finalizer+0x30>
    8000e77a:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs.c:18905
        free_generator_stack_rt(rt, s);
    8000e77c:	e42a                	sd	a0,8(sp)
    8000e77e:	8522                	mv	a0,s0
    8000e780:	ad3fd0ef          	jal	ra,8000c252 <free_generator_stack_rt>
quickjs-nuttx/quickjs.c:18906
        js_free_rt(rt, s);
    8000e784:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:18908
}
    8000e786:	7402                	ld	s0,32(sp)
quickjs-nuttx/quickjs.c:18906
        js_free_rt(rt, s);
    8000e788:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:18908
}
    8000e78a:	70a2                	ld	ra,40(sp)
    8000e78c:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:18906
        js_free_rt(rt, s);
    8000e78e:	a52fc06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:18908
}
    8000e792:	70a2                	ld	ra,40(sp)
    8000e794:	7402                	ld	s0,32(sp)
    8000e796:	6145                	addi	sp,sp,48
    8000e798:	8082                	ret

000000008000e79a <js_operator_set_mark>:
js_operator_set_mark():
quickjs-nuttx/quickjs.c:50269
{
    8000e79a:	715d                	addi	sp,sp,-80
    8000e79c:	87b2                	mv	a5,a2
    8000e79e:	f84a                	sd	s2,48(sp)
    8000e7a0:	e02e                	sd	a1,0(sp)
    8000e7a2:	892a                	mv	s2,a0
    8000e7a4:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:50270
    JSOperatorSetData *opset = JS_GetOpaque(val, JS_CLASS_OPERATOR_SET);
    8000e7a6:	852e                	mv	a0,a1
    8000e7a8:	02500613          	li	a2,37
    8000e7ac:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:50269
{
    8000e7ae:	f44e                	sd	s3,40(sp)
    8000e7b0:	e486                	sd	ra,72(sp)
    8000e7b2:	e0a2                	sd	s0,64(sp)
    8000e7b4:	fc26                	sd	s1,56(sp)
    8000e7b6:	f052                	sd	s4,32(sp)
    8000e7b8:	ec56                	sd	s5,24(sp)
    8000e7ba:	e85a                	sd	s6,16(sp)
    8000e7bc:	89b6                	mv	s3,a3
quickjs-nuttx/quickjs.c:50270
    JSOperatorSetData *opset = JS_GetOpaque(val, JS_CLASS_OPERATOR_SET);
    8000e7be:	ed7ff0ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:50274
    if (opset) {
    8000e7c2:	c91d                	beqz	a0,8000e7f8 <js_operator_set_mark+0x5e>
    8000e7c4:	842a                	mv	s0,a0
    8000e7c6:	00850493          	addi	s1,a0,8
    8000e7ca:	0a050a13          	addi	s4,a0,160
quickjs-nuttx/quickjs.c:50276
            if (opset->self_ops[i])
    8000e7ce:	608c                	ld	a1,0(s1)
    8000e7d0:	c199                	beqz	a1,8000e7d6 <js_operator_set_mark+0x3c>
JS_MarkValue():
quickjs-nuttx/quickjs.c:5599
            mark_func(rt, JS_VALUE_GET_PTR(val));
    8000e7d2:	854a                	mv	a0,s2
    8000e7d4:	9982                	jalr	s3
js_operator_set_mark():
quickjs-nuttx/quickjs.c:50275 (discriminator 2)
        for(i = 0; i < JS_OVOP_COUNT; i++) {
    8000e7d6:	04a1                	addi	s1,s1,8
    8000e7d8:	fe9a1be3          	bne	s4,s1,8000e7ce <js_operator_set_mark+0x34>
quickjs-nuttx/quickjs.c:50280
        for(j = 0; j < opset->left.count; j++) {
    8000e7dc:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:50281
            ent = &opset->left.tab[j];
    8000e7de:	07800b13          	li	s6,120
quickjs-nuttx/quickjs.c:50280 (discriminator 1)
        for(j = 0; j < opset->left.count; j++) {
    8000e7e2:	0a042783          	lw	a5,160(s0)
    8000e7e6:	02fa4363          	blt	s4,a5,8000e80c <js_operator_set_mark+0x72>
quickjs-nuttx/quickjs.c:50288
        for(j = 0; j < opset->right.count; j++) {
    8000e7ea:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:50289
            ent = &opset->right.tab[j];
    8000e7ec:	07800b13          	li	s6,120
quickjs-nuttx/quickjs.c:50288 (discriminator 1)
        for(j = 0; j < opset->right.count; j++) {
    8000e7f0:	0b042783          	lw	a5,176(s0)
    8000e7f4:	02fa4e63          	blt	s4,a5,8000e830 <js_operator_set_mark+0x96>
quickjs-nuttx/quickjs.c:50297
}
    8000e7f8:	60a6                	ld	ra,72(sp)
    8000e7fa:	6406                	ld	s0,64(sp)
    8000e7fc:	74e2                	ld	s1,56(sp)
    8000e7fe:	7942                	ld	s2,48(sp)
    8000e800:	79a2                	ld	s3,40(sp)
    8000e802:	7a02                	ld	s4,32(sp)
    8000e804:	6ae2                	ld	s5,24(sp)
    8000e806:	6b42                	ld	s6,16(sp)
    8000e808:	6161                	addi	sp,sp,80
    8000e80a:	8082                	ret
quickjs-nuttx/quickjs.c:50281
            ent = &opset->left.tab[j];
    8000e80c:	036a07b3          	mul	a5,s4,s6
    8000e810:	7458                	ld	a4,168(s0)
    8000e812:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:50282
            for(i = 0; i < JS_OVOP_BINARY_COUNT; i++) {
    8000e814:	00878a93          	addi	s5,a5,8
    8000e818:	07878493          	addi	s1,a5,120
quickjs-nuttx/quickjs.c:50283
                if (ent->ops[i])
    8000e81c:	000ab583          	ld	a1,0(s5)
    8000e820:	c199                	beqz	a1,8000e826 <js_operator_set_mark+0x8c>
JS_MarkValue():
quickjs-nuttx/quickjs.c:5599
            mark_func(rt, JS_VALUE_GET_PTR(val));
    8000e822:	854a                	mv	a0,s2
    8000e824:	9982                	jalr	s3
js_operator_set_mark():
quickjs-nuttx/quickjs.c:50282 (discriminator 2)
            for(i = 0; i < JS_OVOP_BINARY_COUNT; i++) {
    8000e826:	0aa1                	addi	s5,s5,8
    8000e828:	ff549ae3          	bne	s1,s5,8000e81c <js_operator_set_mark+0x82>
quickjs-nuttx/quickjs.c:50280 (discriminator 2)
        for(j = 0; j < opset->left.count; j++) {
    8000e82c:	2a05                	addiw	s4,s4,1
    8000e82e:	bf55                	j	8000e7e2 <js_operator_set_mark+0x48>
quickjs-nuttx/quickjs.c:50289
            ent = &opset->right.tab[j];
    8000e830:	036a07b3          	mul	a5,s4,s6
    8000e834:	7c58                	ld	a4,184(s0)
    8000e836:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:50290
            for(i = 0; i < JS_OVOP_BINARY_COUNT; i++) {
    8000e838:	00878a93          	addi	s5,a5,8
    8000e83c:	07878493          	addi	s1,a5,120
quickjs-nuttx/quickjs.c:50291
                if (ent->ops[i])
    8000e840:	000ab583          	ld	a1,0(s5)
    8000e844:	c199                	beqz	a1,8000e84a <js_operator_set_mark+0xb0>
JS_MarkValue():
quickjs-nuttx/quickjs.c:5599
            mark_func(rt, JS_VALUE_GET_PTR(val));
    8000e846:	854a                	mv	a0,s2
    8000e848:	9982                	jalr	s3
js_operator_set_mark():
quickjs-nuttx/quickjs.c:50290 (discriminator 2)
            for(i = 0; i < JS_OVOP_BINARY_COUNT; i++) {
    8000e84a:	0aa1                	addi	s5,s5,8
    8000e84c:	ff549ae3          	bne	s1,s5,8000e840 <js_operator_set_mark+0xa6>
quickjs-nuttx/quickjs.c:50288 (discriminator 2)
        for(j = 0; j < opset->right.count; j++) {
    8000e850:	2a05                	addiw	s4,s4,1
    8000e852:	bf79                	j	8000e7f0 <js_operator_set_mark+0x56>

000000008000e854 <js_operator_set_finalizer>:
js_operator_set_finalizer():
quickjs-nuttx/quickjs.c:50237
{
    8000e854:	711d                	addi	sp,sp,-96
    8000e856:	87b2                	mv	a5,a2
    8000e858:	e4a6                	sd	s1,72(sp)
    8000e85a:	e02e                	sd	a1,0(sp)
    8000e85c:	84aa                	mv	s1,a0
    8000e85e:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:50238
    JSOperatorSetData *opset = JS_GetOpaque(val, JS_CLASS_OPERATOR_SET);
    8000e860:	852e                	mv	a0,a1
    8000e862:	02500613          	li	a2,37
    8000e866:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:50237
{
    8000e868:	ec86                	sd	ra,88(sp)
    8000e86a:	e8a2                	sd	s0,80(sp)
    8000e86c:	e0ca                	sd	s2,64(sp)
    8000e86e:	fc4e                	sd	s3,56(sp)
    8000e870:	f852                	sd	s4,48(sp)
    8000e872:	f456                	sd	s5,40(sp)
    8000e874:	f05a                	sd	s6,32(sp)
quickjs-nuttx/quickjs.c:50238
    JSOperatorSetData *opset = JS_GetOpaque(val, JS_CLASS_OPERATOR_SET);
    8000e876:	e1fff0ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:50242
    if (opset) {
    8000e87a:	c171                	beqz	a0,8000e93e <js_operator_set_finalizer+0xea>
    8000e87c:	842a                	mv	s0,a0
    8000e87e:	00850913          	addi	s2,a0,8
    8000e882:	0a050993          	addi	s3,a0,160
quickjs-nuttx/quickjs.c:50245
                JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_OBJECT, opset->self_ops[i]));
    8000e886:	5a7d                	li	s4,-1
quickjs-nuttx/quickjs.c:50244
            if (opset->self_ops[i])
    8000e888:	00093583          	ld	a1,0(s2)
    8000e88c:	c599                	beqz	a1,8000e89a <js_operator_set_finalizer+0x46>
quickjs-nuttx/quickjs.c:50245
                JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_OBJECT, opset->self_ops[i]));
    8000e88e:	567d                	li	a2,-1
    8000e890:	8526                	mv	a0,s1
    8000e892:	e82e                	sd	a1,16(sp)
    8000e894:	ec52                	sd	s4,24(sp)
    8000e896:	ae1fd0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:50243 (discriminator 2)
        for(i = 0; i < JS_OVOP_COUNT; i++) {
    8000e89a:	0921                	addi	s2,s2,8
    8000e89c:	ff3916e3          	bne	s2,s3,8000e888 <js_operator_set_finalizer+0x34>
quickjs-nuttx/quickjs.c:50247
        for(j = 0; j < opset->left.count; j++) {
    8000e8a0:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:50248
            ent = &opset->left.tab[j];
    8000e8a2:	07800a93          	li	s5,120
quickjs-nuttx/quickjs.c:50251
                    JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_OBJECT, ent->ops[i]));
    8000e8a6:	5b7d                	li	s6,-1
quickjs-nuttx/quickjs.c:50247 (discriminator 1)
        for(j = 0; j < opset->left.count; j++) {
    8000e8a8:	0a042783          	lw	a5,160(s0)
quickjs-nuttx/quickjs.c:50248 (discriminator 1)
            ent = &opset->left.tab[j];
    8000e8ac:	744c                	ld	a1,168(s0)
quickjs-nuttx/quickjs.c:50247 (discriminator 1)
        for(j = 0; j < opset->left.count; j++) {
    8000e8ae:	02f9ce63          	blt	s3,a5,8000e8ea <js_operator_set_finalizer+0x96>
quickjs-nuttx/quickjs.c:50254
        js_free_rt(rt, opset->left.tab);
    8000e8b2:	8526                	mv	a0,s1
    8000e8b4:	92cfc0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:50255
        for(j = 0; j < opset->right.count; j++) {
    8000e8b8:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:50256
            ent = &opset->right.tab[j];
    8000e8ba:	07800a93          	li	s5,120
quickjs-nuttx/quickjs.c:50259
                    JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_OBJECT, ent->ops[i]));
    8000e8be:	5b7d                	li	s6,-1
quickjs-nuttx/quickjs.c:50255 (discriminator 1)
        for(j = 0; j < opset->right.count; j++) {
    8000e8c0:	0b042783          	lw	a5,176(s0)
quickjs-nuttx/quickjs.c:50256 (discriminator 1)
            ent = &opset->right.tab[j];
    8000e8c4:	7c4c                	ld	a1,184(s0)
quickjs-nuttx/quickjs.c:50255 (discriminator 1)
        for(j = 0; j < opset->right.count; j++) {
    8000e8c6:	04f9c763          	blt	s3,a5,8000e914 <js_operator_set_finalizer+0xc0>
quickjs-nuttx/quickjs.c:50262
        js_free_rt(rt, opset->right.tab);
    8000e8ca:	8526                	mv	a0,s1
    8000e8cc:	914fc0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:50263
        js_free_rt(rt, opset);
    8000e8d0:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:50265
}
    8000e8d2:	6446                	ld	s0,80(sp)
    8000e8d4:	60e6                	ld	ra,88(sp)
    8000e8d6:	6906                	ld	s2,64(sp)
    8000e8d8:	79e2                	ld	s3,56(sp)
    8000e8da:	7a42                	ld	s4,48(sp)
    8000e8dc:	7aa2                	ld	s5,40(sp)
    8000e8de:	7b02                	ld	s6,32(sp)
quickjs-nuttx/quickjs.c:50263
        js_free_rt(rt, opset);
    8000e8e0:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:50265
}
    8000e8e2:	64a6                	ld	s1,72(sp)
    8000e8e4:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:50263
        js_free_rt(rt, opset);
    8000e8e6:	8fafc06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:50248
            ent = &opset->left.tab[j];
    8000e8ea:	035987b3          	mul	a5,s3,s5
    8000e8ee:	95be                	add	a1,a1,a5
quickjs-nuttx/quickjs.c:50249
            for(i = 0; i < JS_OVOP_BINARY_COUNT; i++) {
    8000e8f0:	00858a13          	addi	s4,a1,8
    8000e8f4:	07858913          	addi	s2,a1,120
quickjs-nuttx/quickjs.c:50250
                if (ent->ops[i])
    8000e8f8:	000a3583          	ld	a1,0(s4)
    8000e8fc:	c599                	beqz	a1,8000e90a <js_operator_set_finalizer+0xb6>
quickjs-nuttx/quickjs.c:50251
                    JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_OBJECT, ent->ops[i]));
    8000e8fe:	567d                	li	a2,-1
    8000e900:	8526                	mv	a0,s1
    8000e902:	e82e                	sd	a1,16(sp)
    8000e904:	ec5a                	sd	s6,24(sp)
    8000e906:	a71fd0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:50249 (discriminator 2)
            for(i = 0; i < JS_OVOP_BINARY_COUNT; i++) {
    8000e90a:	0a21                	addi	s4,s4,8
    8000e90c:	ff4916e3          	bne	s2,s4,8000e8f8 <js_operator_set_finalizer+0xa4>
quickjs-nuttx/quickjs.c:50247 (discriminator 2)
        for(j = 0; j < opset->left.count; j++) {
    8000e910:	2985                	addiw	s3,s3,1
    8000e912:	bf59                	j	8000e8a8 <js_operator_set_finalizer+0x54>
quickjs-nuttx/quickjs.c:50256
            ent = &opset->right.tab[j];
    8000e914:	035987b3          	mul	a5,s3,s5
    8000e918:	95be                	add	a1,a1,a5
quickjs-nuttx/quickjs.c:50257
            for(i = 0; i < JS_OVOP_BINARY_COUNT; i++) {
    8000e91a:	00858a13          	addi	s4,a1,8
    8000e91e:	07858913          	addi	s2,a1,120
quickjs-nuttx/quickjs.c:50258
                if (ent->ops[i])
    8000e922:	000a3583          	ld	a1,0(s4)
    8000e926:	c599                	beqz	a1,8000e934 <js_operator_set_finalizer+0xe0>
quickjs-nuttx/quickjs.c:50259
                    JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_OBJECT, ent->ops[i]));
    8000e928:	567d                	li	a2,-1
    8000e92a:	8526                	mv	a0,s1
    8000e92c:	e82e                	sd	a1,16(sp)
    8000e92e:	ec5a                	sd	s6,24(sp)
    8000e930:	a47fd0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:50257 (discriminator 2)
            for(i = 0; i < JS_OVOP_BINARY_COUNT; i++) {
    8000e934:	0a21                	addi	s4,s4,8
    8000e936:	ff2a16e3          	bne	s4,s2,8000e922 <js_operator_set_finalizer+0xce>
quickjs-nuttx/quickjs.c:50255 (discriminator 2)
        for(j = 0; j < opset->right.count; j++) {
    8000e93a:	2985                	addiw	s3,s3,1
    8000e93c:	b751                	j	8000e8c0 <js_operator_set_finalizer+0x6c>
quickjs-nuttx/quickjs.c:50265
}
    8000e93e:	60e6                	ld	ra,88(sp)
    8000e940:	6446                	ld	s0,80(sp)
    8000e942:	64a6                	ld	s1,72(sp)
    8000e944:	6906                	ld	s2,64(sp)
    8000e946:	79e2                	ld	s3,56(sp)
    8000e948:	7a42                	ld	s4,48(sp)
    8000e94a:	7aa2                	ld	s5,40(sp)
    8000e94c:	7b02                	ld	s6,32(sp)
    8000e94e:	6125                	addi	sp,sp,96
    8000e950:	8082                	ret

000000008000e952 <js_float_env_finalizer>:
js_float_env_finalizer():
quickjs-nuttx/quickjs.c:51602
{
    8000e952:	1101                	addi	sp,sp,-32
    8000e954:	87b2                	mv	a5,a2
    8000e956:	e822                	sd	s0,16(sp)
quickjs-nuttx/quickjs.c:51603
    JSFloatEnv *fe = JS_GetOpaque(val, JS_CLASS_FLOAT_ENV);
    8000e958:	02300613          	li	a2,35
quickjs-nuttx/quickjs.c:51602
{
    8000e95c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:51603
    JSFloatEnv *fe = JS_GetOpaque(val, JS_CLASS_FLOAT_ENV);
    8000e95e:	852e                	mv	a0,a1
    8000e960:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:51602
{
    8000e962:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:51603
    JSFloatEnv *fe = JS_GetOpaque(val, JS_CLASS_FLOAT_ENV);
    8000e964:	d31ff0ef          	jal	ra,8000e694 <JS_GetOpaque>
    8000e968:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs.c:51604
    js_free_rt(rt, fe);
    8000e96a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:51605
}
    8000e96c:	6442                	ld	s0,16(sp)
    8000e96e:	60e2                	ld	ra,24(sp)
    8000e970:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:51604
    js_free_rt(rt, fe);
    8000e972:	86efc06f          	j	8000a9e0 <js_free_rt>

000000008000e976 <js_c_function_data_mark>:
js_c_function_data_mark():
quickjs-nuttx/quickjs.c:5092
{
    8000e976:	7139                	addi	sp,sp,-64
    8000e978:	87b2                	mv	a5,a2
    8000e97a:	f04a                	sd	s2,32(sp)
    8000e97c:	e02e                	sd	a1,0(sp)
    8000e97e:	892a                	mv	s2,a0
    8000e980:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:5093
    JSCFunctionDataRecord *s = JS_GetOpaque(val, JS_CLASS_C_FUNCTION_DATA);
    8000e982:	852e                	mv	a0,a1
    8000e984:	463d                	li	a2,15
    8000e986:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:5092
{
    8000e988:	ec4e                	sd	s3,24(sp)
    8000e98a:	fc06                	sd	ra,56(sp)
    8000e98c:	f822                	sd	s0,48(sp)
    8000e98e:	f426                	sd	s1,40(sp)
    8000e990:	89b6                	mv	s3,a3
quickjs-nuttx/quickjs.c:5093
    JSCFunctionDataRecord *s = JS_GetOpaque(val, JS_CLASS_C_FUNCTION_DATA);
    8000e992:	d03ff0ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:5096
    if (s) {
    8000e996:	e905                	bnez	a0,8000e9c6 <js_c_function_data_mark+0x50>
quickjs-nuttx/quickjs.c:5101
}
    8000e998:	70e2                	ld	ra,56(sp)
    8000e99a:	7442                	ld	s0,48(sp)
    8000e99c:	74a2                	ld	s1,40(sp)
    8000e99e:	7902                	ld	s2,32(sp)
    8000e9a0:	69e2                	ld	s3,24(sp)
    8000e9a2:	6121                	addi	sp,sp,64
    8000e9a4:	8082                	ret
quickjs-nuttx/quickjs.c:5098 (discriminator 3)
            JS_MarkValue(rt, s->data[i], mark_func);
    8000e9a6:	00148793          	addi	a5,s1,1
    8000e9aa:	0792                	slli	a5,a5,0x4
    8000e9ac:	97a2                	add	a5,a5,s0
    8000e9ae:	638c                	ld	a1,0(a5)
    8000e9b0:	6790                	ld	a2,8(a5)
    8000e9b2:	86ce                	mv	a3,s3
    8000e9b4:	854a                	mv	a0,s2
    8000e9b6:	dacfe0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:5097 (discriminator 3)
        for(i = 0; i < s->data_len; i++) {
    8000e9ba:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:5097 (discriminator 1)
    8000e9bc:	00944783          	lbu	a5,9(s0)
    8000e9c0:	fef4c3e3          	blt	s1,a5,8000e9a6 <js_c_function_data_mark+0x30>
    8000e9c4:	bfd1                	j	8000e998 <js_c_function_data_mark+0x22>
    8000e9c6:	842a                	mv	s0,a0
    8000e9c8:	4481                	li	s1,0
    8000e9ca:	bfcd                	j	8000e9bc <js_c_function_data_mark+0x46>

000000008000e9cc <js_c_function_data_finalizer>:
js_c_function_data_finalizer():
quickjs-nuttx/quickjs.c:5078
{
    8000e9cc:	7179                	addi	sp,sp,-48
    8000e9ce:	87b2                	mv	a5,a2
    8000e9d0:	ec26                	sd	s1,24(sp)
    8000e9d2:	e02e                	sd	a1,0(sp)
    8000e9d4:	84aa                	mv	s1,a0
    8000e9d6:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:5079
    JSCFunctionDataRecord *s = JS_GetOpaque(val, JS_CLASS_C_FUNCTION_DATA);
    8000e9d8:	852e                	mv	a0,a1
    8000e9da:	463d                	li	a2,15
    8000e9dc:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:5078
{
    8000e9de:	f406                	sd	ra,40(sp)
    8000e9e0:	f022                	sd	s0,32(sp)
    8000e9e2:	e84a                	sd	s2,16(sp)
quickjs-nuttx/quickjs.c:5079
    JSCFunctionDataRecord *s = JS_GetOpaque(val, JS_CLASS_C_FUNCTION_DATA);
    8000e9e4:	cb1ff0ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:5082
    if (s) {
    8000e9e8:	ed15                	bnez	a0,8000ea24 <js_c_function_data_finalizer+0x58>
quickjs-nuttx/quickjs.c:5088
}
    8000e9ea:	70a2                	ld	ra,40(sp)
    8000e9ec:	7402                	ld	s0,32(sp)
    8000e9ee:	64e2                	ld	s1,24(sp)
    8000e9f0:	6942                	ld	s2,16(sp)
    8000e9f2:	6145                	addi	sp,sp,48
    8000e9f4:	8082                	ret
quickjs-nuttx/quickjs.c:5084 (discriminator 3)
            JS_FreeValueRT(rt, s->data[i]);
    8000e9f6:	00190793          	addi	a5,s2,1
    8000e9fa:	0792                	slli	a5,a5,0x4
    8000e9fc:	97a2                	add	a5,a5,s0
    8000e9fe:	638c                	ld	a1,0(a5)
    8000ea00:	6790                	ld	a2,8(a5)
    8000ea02:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:5083 (discriminator 3)
        for(i = 0; i < s->data_len; i++) {
    8000ea04:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:5084 (discriminator 3)
            JS_FreeValueRT(rt, s->data[i]);
    8000ea06:	971fd0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:5083 (discriminator 1)
        for(i = 0; i < s->data_len; i++) {
    8000ea0a:	00944783          	lbu	a5,9(s0)
    8000ea0e:	fef944e3          	blt	s2,a5,8000e9f6 <js_c_function_data_finalizer+0x2a>
quickjs-nuttx/quickjs.c:5086
        js_free_rt(rt, s);
    8000ea12:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:5088
}
    8000ea14:	7402                	ld	s0,32(sp)
    8000ea16:	70a2                	ld	ra,40(sp)
    8000ea18:	6942                	ld	s2,16(sp)
quickjs-nuttx/quickjs.c:5086
        js_free_rt(rt, s);
    8000ea1a:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:5088
}
    8000ea1c:	64e2                	ld	s1,24(sp)
    8000ea1e:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:5086
        js_free_rt(rt, s);
    8000ea20:	fc1fb06f          	j	8000a9e0 <js_free_rt>
    8000ea24:	842a                	mv	s0,a0
    8000ea26:	4901                	li	s2,0
    8000ea28:	b7cd                	j	8000ea0a <js_c_function_data_finalizer+0x3e>

000000008000ea2a <js_proxy_revoke>:
js_proxy_revoke():
quickjs-nuttx/quickjs.c:46588
{
    8000ea2a:	7139                	addi	sp,sp,-64
    8000ea2c:	f426                	sd	s1,40(sp)
quickjs-nuttx/quickjs.c:46589
    JSProxyData *s = JS_GetOpaque(func_data[0], JS_CLASS_PROXY);
    8000ea2e:	00883583          	ld	a1,8(a6)
quickjs-nuttx/quickjs.c:46588
{
    8000ea32:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:46589
    JSProxyData *s = JS_GetOpaque(func_data[0], JS_CLASS_PROXY);
    8000ea34:	00083503          	ld	a0,0(a6)
    8000ea38:	03000613          	li	a2,48
quickjs-nuttx/quickjs.c:46588
{
    8000ea3c:	f822                	sd	s0,48(sp)
    8000ea3e:	fc06                	sd	ra,56(sp)
    8000ea40:	8442                	mv	s0,a6
quickjs-nuttx/quickjs.c:46589
    JSProxyData *s = JS_GetOpaque(func_data[0], JS_CLASS_PROXY);
    8000ea42:	c53ff0ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:46590
    if (s) {
    8000ea46:	cd09                	beqz	a0,8000ea60 <js_proxy_revoke+0x36>
quickjs-nuttx/quickjs.c:46593
        s->is_revoked = TRUE;
    8000ea48:	4785                	li	a5,1
    8000ea4a:	02f500a3          	sb	a5,33(a0)
quickjs-nuttx/quickjs.c:46594
        JS_FreeValue(ctx, func_data[0]);
    8000ea4e:	600c                	ld	a1,0(s0)
    8000ea50:	6410                	ld	a2,8(s0)
    8000ea52:	8526                	mv	a0,s1
    8000ea54:	d4bfc0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46595
        func_data[0] = JS_NULL;
    8000ea58:	4789                	li	a5,2
    8000ea5a:	00043023          	sd	zero,0(s0)
    8000ea5e:	e41c                	sd	a5,8(s0)
quickjs-nuttx/quickjs.c:46598
}
    8000ea60:	70e2                	ld	ra,56(sp)
    8000ea62:	7442                	ld	s0,48(sp)
    8000ea64:	74a2                	ld	s1,40(sp)
    8000ea66:	4501                	li	a0,0
    8000ea68:	458d                	li	a1,3
    8000ea6a:	6121                	addi	sp,sp,64
    8000ea6c:	8082                	ret

000000008000ea6e <js_proxy_mark>:
js_proxy_mark():
quickjs-nuttx/quickjs.c:45716
{
    8000ea6e:	7179                	addi	sp,sp,-48
    8000ea70:	87b2                	mv	a5,a2
    8000ea72:	ec26                	sd	s1,24(sp)
    8000ea74:	e02e                	sd	a1,0(sp)
    8000ea76:	84aa                	mv	s1,a0
    8000ea78:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:45717
    JSProxyData *s = JS_GetOpaque(val, JS_CLASS_PROXY);
    8000ea7a:	852e                	mv	a0,a1
    8000ea7c:	03000613          	li	a2,48
    8000ea80:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:45716
{
    8000ea82:	e84a                	sd	s2,16(sp)
    8000ea84:	f406                	sd	ra,40(sp)
    8000ea86:	f022                	sd	s0,32(sp)
    8000ea88:	8936                	mv	s2,a3
quickjs-nuttx/quickjs.c:45717
    JSProxyData *s = JS_GetOpaque(val, JS_CLASS_PROXY);
    8000ea8a:	c0bff0ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:45718
    if (s) {
    8000ea8e:	c11d                	beqz	a0,8000eab4 <js_proxy_mark+0x46>
quickjs-nuttx/quickjs.c:45719
        JS_MarkValue(rt, s->target, mark_func);
    8000ea90:	610c                	ld	a1,0(a0)
    8000ea92:	6510                	ld	a2,8(a0)
    8000ea94:	842a                	mv	s0,a0
    8000ea96:	86ca                	mv	a3,s2
    8000ea98:	8526                	mv	a0,s1
    8000ea9a:	cc8fe0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:45720
        JS_MarkValue(rt, s->handler, mark_func);
    8000ea9e:	680c                	ld	a1,16(s0)
    8000eaa0:	6c10                	ld	a2,24(s0)
quickjs-nuttx/quickjs.c:45722
}
    8000eaa2:	7402                	ld	s0,32(sp)
    8000eaa4:	70a2                	ld	ra,40(sp)
quickjs-nuttx/quickjs.c:45720
        JS_MarkValue(rt, s->handler, mark_func);
    8000eaa6:	86ca                	mv	a3,s2
    8000eaa8:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:45722
}
    8000eaaa:	6942                	ld	s2,16(sp)
    8000eaac:	64e2                	ld	s1,24(sp)
    8000eaae:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:45720
        JS_MarkValue(rt, s->handler, mark_func);
    8000eab0:	cb2fe06f          	j	8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:45722
}
    8000eab4:	70a2                	ld	ra,40(sp)
    8000eab6:	7402                	ld	s0,32(sp)
    8000eab8:	64e2                	ld	s1,24(sp)
    8000eaba:	6942                	ld	s2,16(sp)
    8000eabc:	6145                	addi	sp,sp,48
    8000eabe:	8082                	ret

000000008000eac0 <js_proxy_finalizer>:
js_proxy_finalizer():
quickjs-nuttx/quickjs.c:45705
{
    8000eac0:	7179                	addi	sp,sp,-48
    8000eac2:	87b2                	mv	a5,a2
    8000eac4:	ec26                	sd	s1,24(sp)
    8000eac6:	e02e                	sd	a1,0(sp)
    8000eac8:	84aa                	mv	s1,a0
    8000eaca:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:45706
    JSProxyData *s = JS_GetOpaque(val, JS_CLASS_PROXY);
    8000eacc:	852e                	mv	a0,a1
    8000eace:	03000613          	li	a2,48
    8000ead2:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:45705
{
    8000ead4:	f406                	sd	ra,40(sp)
    8000ead6:	f022                	sd	s0,32(sp)
quickjs-nuttx/quickjs.c:45706
    JSProxyData *s = JS_GetOpaque(val, JS_CLASS_PROXY);
    8000ead8:	bbdff0ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:45707
    if (s) {
    8000eadc:	c505                	beqz	a0,8000eb04 <js_proxy_finalizer+0x44>
quickjs-nuttx/quickjs.c:45708
        JS_FreeValueRT(rt, s->target);
    8000eade:	610c                	ld	a1,0(a0)
    8000eae0:	6510                	ld	a2,8(a0)
    8000eae2:	842a                	mv	s0,a0
    8000eae4:	8526                	mv	a0,s1
    8000eae6:	891fd0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:45709
        JS_FreeValueRT(rt, s->handler);
    8000eaea:	680c                	ld	a1,16(s0)
    8000eaec:	6c10                	ld	a2,24(s0)
    8000eaee:	8526                	mv	a0,s1
    8000eaf0:	887fd0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:45710
        js_free_rt(rt, s);
    8000eaf4:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:45712
}
    8000eaf6:	7402                	ld	s0,32(sp)
    8000eaf8:	70a2                	ld	ra,40(sp)
quickjs-nuttx/quickjs.c:45710
        js_free_rt(rt, s);
    8000eafa:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:45712
}
    8000eafc:	64e2                	ld	s1,24(sp)
    8000eafe:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:45710
        js_free_rt(rt, s);
    8000eb00:	ee1fb06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:45712
}
    8000eb04:	70a2                	ld	ra,40(sp)
    8000eb06:	7402                	ld	s0,32(sp)
    8000eb08:	64e2                	ld	s1,24(sp)
    8000eb0a:	6145                	addi	sp,sp,48
    8000eb0c:	8082                	ret

000000008000eb0e <js_async_generator_mark>:
js_async_generator_mark():
quickjs-nuttx/quickjs.c:19255
{
    8000eb0e:	7139                	addi	sp,sp,-64
    8000eb10:	87b2                	mv	a5,a2
    8000eb12:	f04a                	sd	s2,32(sp)
    8000eb14:	e02e                	sd	a1,0(sp)
    8000eb16:	892a                	mv	s2,a0
    8000eb18:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:19256
    JSAsyncGeneratorData *s = JS_GetOpaque(val, JS_CLASS_ASYNC_GENERATOR);
    8000eb1a:	852e                	mv	a0,a1
    8000eb1c:	03900613          	li	a2,57
    8000eb20:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:19255
{
    8000eb22:	f426                	sd	s1,40(sp)
    8000eb24:	fc06                	sd	ra,56(sp)
    8000eb26:	f822                	sd	s0,48(sp)
    8000eb28:	ec4e                	sd	s3,24(sp)
    8000eb2a:	e852                	sd	s4,16(sp)
    8000eb2c:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:19256
    JSAsyncGeneratorData *s = JS_GetOpaque(val, JS_CLASS_ASYNC_GENERATOR);
    8000eb2e:	b67ff0ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:19259
    if (s) {
    8000eb32:	cd31                	beqz	a0,8000eb8e <js_async_generator_mark+0x80>
quickjs-nuttx/quickjs.c:19260
        list_for_each(el, &s->queue) {
    8000eb34:	7100                	ld	s0,32(a0)
    8000eb36:	89aa                	mv	s3,a0
    8000eb38:	01850a13          	addi	s4,a0,24
quickjs-nuttx/quickjs.c:19260 (discriminator 1)
    8000eb3c:	01441f63          	bne	s0,s4,8000eb5a <js_async_generator_mark+0x4c>
quickjs-nuttx/quickjs.c:19267
        if (s->func_state) {
    8000eb40:	0109b583          	ld	a1,16(s3)
    8000eb44:	c5a9                	beqz	a1,8000eb8e <js_async_generator_mark+0x80>
quickjs-nuttx/quickjs.c:19271
}
    8000eb46:	7442                	ld	s0,48(sp)
    8000eb48:	70e2                	ld	ra,56(sp)
    8000eb4a:	69e2                	ld	s3,24(sp)
    8000eb4c:	6a42                	ld	s4,16(sp)
quickjs-nuttx/quickjs.c:19268
            mark_func(rt, &s->func_state->header);
    8000eb4e:	854a                	mv	a0,s2
    8000eb50:	87a6                	mv	a5,s1
quickjs-nuttx/quickjs.c:19271
}
    8000eb52:	7902                	ld	s2,32(sp)
    8000eb54:	74a2                	ld	s1,40(sp)
    8000eb56:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:19268
            mark_func(rt, &s->func_state->header);
    8000eb58:	8782                	jr	a5
quickjs-nuttx/quickjs.c:19262 (discriminator 3)
            JS_MarkValue(rt, req->result, mark_func);
    8000eb5a:	6c0c                	ld	a1,24(s0)
    8000eb5c:	7010                	ld	a2,32(s0)
    8000eb5e:	86a6                	mv	a3,s1
    8000eb60:	854a                	mv	a0,s2
    8000eb62:	c00fe0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:19263 (discriminator 3)
            JS_MarkValue(rt, req->promise, mark_func);
    8000eb66:	740c                	ld	a1,40(s0)
    8000eb68:	7810                	ld	a2,48(s0)
    8000eb6a:	86a6                	mv	a3,s1
    8000eb6c:	854a                	mv	a0,s2
    8000eb6e:	bf4fe0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:19264 (discriminator 3)
            JS_MarkValue(rt, req->resolving_funcs[0], mark_func);
    8000eb72:	7c0c                	ld	a1,56(s0)
    8000eb74:	6030                	ld	a2,64(s0)
    8000eb76:	86a6                	mv	a3,s1
    8000eb78:	854a                	mv	a0,s2
    8000eb7a:	be8fe0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:19265 (discriminator 3)
            JS_MarkValue(rt, req->resolving_funcs[1], mark_func);
    8000eb7e:	642c                	ld	a1,72(s0)
    8000eb80:	6830                	ld	a2,80(s0)
    8000eb82:	86a6                	mv	a3,s1
    8000eb84:	854a                	mv	a0,s2
    8000eb86:	bdcfe0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:19260 (discriminator 3)
        list_for_each(el, &s->queue) {
    8000eb8a:	6400                	ld	s0,8(s0)
    8000eb8c:	bf45                	j	8000eb3c <js_async_generator_mark+0x2e>
quickjs-nuttx/quickjs.c:19271
}
    8000eb8e:	70e2                	ld	ra,56(sp)
    8000eb90:	7442                	ld	s0,48(sp)
    8000eb92:	74a2                	ld	s1,40(sp)
    8000eb94:	7902                	ld	s2,32(sp)
    8000eb96:	69e2                	ld	s3,24(sp)
    8000eb98:	6a42                	ld	s4,16(sp)
    8000eb9a:	6121                	addi	sp,sp,64
    8000eb9c:	8082                	ret

000000008000eb9e <js_async_generator_finalizer>:
js_async_generator_finalizer():
quickjs-nuttx/quickjs.c:19245
{
    8000eb9e:	1101                	addi	sp,sp,-32
    8000eba0:	87b2                	mv	a5,a2
    8000eba2:	e822                	sd	s0,16(sp)
quickjs-nuttx/quickjs.c:19246
    JSAsyncGeneratorData *s = JS_GetOpaque(obj, JS_CLASS_ASYNC_GENERATOR);
    8000eba4:	03900613          	li	a2,57
quickjs-nuttx/quickjs.c:19245
{
    8000eba8:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:19246
    JSAsyncGeneratorData *s = JS_GetOpaque(obj, JS_CLASS_ASYNC_GENERATOR);
    8000ebaa:	852e                	mv	a0,a1
    8000ebac:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:19245
{
    8000ebae:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:19246
    JSAsyncGeneratorData *s = JS_GetOpaque(obj, JS_CLASS_ASYNC_GENERATOR);
    8000ebb0:	ae5ff0ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:19248
    if (s) {
    8000ebb4:	c901                	beqz	a0,8000ebc4 <js_async_generator_finalizer+0x26>
    8000ebb6:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs.c:19249
        js_async_generator_free(rt, s);
    8000ebb8:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:19251
}
    8000ebba:	6442                	ld	s0,16(sp)
    8000ebbc:	60e2                	ld	ra,24(sp)
    8000ebbe:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:19249
        js_async_generator_free(rt, s);
    8000ebc0:	e6ffd06f          	j	8000ca2e <js_async_generator_free>
quickjs-nuttx/quickjs.c:19251
}
    8000ebc4:	60e2                	ld	ra,24(sp)
    8000ebc6:	6442                	ld	s0,16(sp)
    8000ebc8:	6105                	addi	sp,sp,32
    8000ebca:	8082                	ret

000000008000ebcc <js_async_from_sync_iterator_mark>:
js_async_from_sync_iterator_mark():
quickjs-nuttx/quickjs.c:48738
{
    8000ebcc:	7179                	addi	sp,sp,-48
    8000ebce:	87b2                	mv	a5,a2
    8000ebd0:	ec26                	sd	s1,24(sp)
    8000ebd2:	e02e                	sd	a1,0(sp)
    8000ebd4:	84aa                	mv	s1,a0
    8000ebd6:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:48740
        JS_GetOpaque(val, JS_CLASS_ASYNC_FROM_SYNC_ITERATOR);
    8000ebd8:	852e                	mv	a0,a1
    8000ebda:	03700613          	li	a2,55
    8000ebde:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:48738
{
    8000ebe0:	e84a                	sd	s2,16(sp)
    8000ebe2:	f406                	sd	ra,40(sp)
    8000ebe4:	f022                	sd	s0,32(sp)
    8000ebe6:	8936                	mv	s2,a3
quickjs-nuttx/quickjs.c:48740
        JS_GetOpaque(val, JS_CLASS_ASYNC_FROM_SYNC_ITERATOR);
    8000ebe8:	aadff0ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:48741
    if (s) {
    8000ebec:	c11d                	beqz	a0,8000ec12 <js_async_from_sync_iterator_mark+0x46>
quickjs-nuttx/quickjs.c:48742
        JS_MarkValue(rt, s->sync_iter, mark_func);
    8000ebee:	610c                	ld	a1,0(a0)
    8000ebf0:	6510                	ld	a2,8(a0)
    8000ebf2:	842a                	mv	s0,a0
    8000ebf4:	86ca                	mv	a3,s2
    8000ebf6:	8526                	mv	a0,s1
    8000ebf8:	b6afe0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:48743
        JS_MarkValue(rt, s->next_method, mark_func);
    8000ebfc:	680c                	ld	a1,16(s0)
    8000ebfe:	6c10                	ld	a2,24(s0)
quickjs-nuttx/quickjs.c:48745
}
    8000ec00:	7402                	ld	s0,32(sp)
    8000ec02:	70a2                	ld	ra,40(sp)
quickjs-nuttx/quickjs.c:48743
        JS_MarkValue(rt, s->next_method, mark_func);
    8000ec04:	86ca                	mv	a3,s2
    8000ec06:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:48745
}
    8000ec08:	6942                	ld	s2,16(sp)
    8000ec0a:	64e2                	ld	s1,24(sp)
    8000ec0c:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:48743
        JS_MarkValue(rt, s->next_method, mark_func);
    8000ec0e:	b54fe06f          	j	8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:48745
}
    8000ec12:	70a2                	ld	ra,40(sp)
    8000ec14:	7402                	ld	s0,32(sp)
    8000ec16:	64e2                	ld	s1,24(sp)
    8000ec18:	6942                	ld	s2,16(sp)
    8000ec1a:	6145                	addi	sp,sp,48
    8000ec1c:	8082                	ret

000000008000ec1e <js_async_from_sync_iterator_finalizer>:
js_async_from_sync_iterator_finalizer():
quickjs-nuttx/quickjs.c:48726
{
    8000ec1e:	7179                	addi	sp,sp,-48
    8000ec20:	87b2                	mv	a5,a2
    8000ec22:	ec26                	sd	s1,24(sp)
    8000ec24:	e02e                	sd	a1,0(sp)
    8000ec26:	84aa                	mv	s1,a0
    8000ec28:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:48728
        JS_GetOpaque(val, JS_CLASS_ASYNC_FROM_SYNC_ITERATOR);
    8000ec2a:	852e                	mv	a0,a1
    8000ec2c:	03700613          	li	a2,55
    8000ec30:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:48726
{
    8000ec32:	f406                	sd	ra,40(sp)
    8000ec34:	f022                	sd	s0,32(sp)
quickjs-nuttx/quickjs.c:48728
        JS_GetOpaque(val, JS_CLASS_ASYNC_FROM_SYNC_ITERATOR);
    8000ec36:	a5fff0ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:48729
    if (s) {
    8000ec3a:	c505                	beqz	a0,8000ec62 <js_async_from_sync_iterator_finalizer+0x44>
quickjs-nuttx/quickjs.c:48730
        JS_FreeValueRT(rt, s->sync_iter);
    8000ec3c:	610c                	ld	a1,0(a0)
    8000ec3e:	6510                	ld	a2,8(a0)
    8000ec40:	842a                	mv	s0,a0
    8000ec42:	8526                	mv	a0,s1
    8000ec44:	f32fd0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:48731
        JS_FreeValueRT(rt, s->next_method);
    8000ec48:	680c                	ld	a1,16(s0)
    8000ec4a:	6c10                	ld	a2,24(s0)
    8000ec4c:	8526                	mv	a0,s1
    8000ec4e:	f28fd0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:48732
        js_free_rt(rt, s);
    8000ec52:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:48734
}
    8000ec54:	7402                	ld	s0,32(sp)
    8000ec56:	70a2                	ld	ra,40(sp)
quickjs-nuttx/quickjs.c:48732
        js_free_rt(rt, s);
    8000ec58:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:48734
}
    8000ec5a:	64e2                	ld	s1,24(sp)
    8000ec5c:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:48732
        js_free_rt(rt, s);
    8000ec5e:	d83fb06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:48734
}
    8000ec62:	70a2                	ld	ra,40(sp)
    8000ec64:	7402                	ld	s0,32(sp)
    8000ec66:	64e2                	ld	s1,24(sp)
    8000ec68:	6145                	addi	sp,sp,48
    8000ec6a:	8082                	ret

000000008000ec6c <js_promise_mark>:
js_promise_mark():
quickjs-nuttx/quickjs.c:48000
{
    8000ec6c:	7139                	addi	sp,sp,-64
    8000ec6e:	87b2                	mv	a5,a2
    8000ec70:	f822                	sd	s0,48(sp)
    8000ec72:	e02e                	sd	a1,0(sp)
    8000ec74:	842a                	mv	s0,a0
    8000ec76:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:48001
    JSPromiseData *s = JS_GetOpaque(val, JS_CLASS_PROMISE);
    8000ec78:	852e                	mv	a0,a1
    8000ec7a:	03100613          	li	a2,49
    8000ec7e:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:48000
{
    8000ec80:	f04a                	sd	s2,32(sp)
    8000ec82:	fc06                	sd	ra,56(sp)
    8000ec84:	f426                	sd	s1,40(sp)
    8000ec86:	ec4e                	sd	s3,24(sp)
    8000ec88:	e852                	sd	s4,16(sp)
    8000ec8a:	8936                	mv	s2,a3
quickjs-nuttx/quickjs.c:48001
    JSPromiseData *s = JS_GetOpaque(val, JS_CLASS_PROMISE);
    8000ec8c:	a09ff0ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:48005
    if (!s)
    8000ec90:	c145                	beqz	a0,8000ed30 <js_promise_mark+0xc4>
quickjs-nuttx/quickjs.c:48008
        list_for_each(el, &s->promise_reactions[i]) {
    8000ec92:	01053983          	ld	s3,16(a0)
    8000ec96:	84aa                	mv	s1,a0
    8000ec98:	00850a13          	addi	s4,a0,8
    8000ec9c:	033a0d63          	beq	s4,s3,8000ecd6 <js_promise_mark+0x6a>
quickjs-nuttx/quickjs.c:48011
            JS_MarkValue(rt, rd->resolving_funcs[0], mark_func);
    8000eca0:	0109b583          	ld	a1,16(s3)
    8000eca4:	0189b603          	ld	a2,24(s3)
    8000eca8:	86ca                	mv	a3,s2
    8000ecaa:	8522                	mv	a0,s0
    8000ecac:	ab6fe0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:48012
            JS_MarkValue(rt, rd->resolving_funcs[1], mark_func);
    8000ecb0:	0209b583          	ld	a1,32(s3)
    8000ecb4:	0289b603          	ld	a2,40(s3)
    8000ecb8:	86ca                	mv	a3,s2
    8000ecba:	8522                	mv	a0,s0
    8000ecbc:	aa6fe0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:48013
            JS_MarkValue(rt, rd->handler, mark_func);
    8000ecc0:	0309b583          	ld	a1,48(s3)
    8000ecc4:	0389b603          	ld	a2,56(s3)
    8000ecc8:	86ca                	mv	a3,s2
    8000ecca:	8522                	mv	a0,s0
    8000eccc:	a96fe0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:48008
        list_for_each(el, &s->promise_reactions[i]) {
    8000ecd0:	0089b983          	ld	s3,8(s3)
    8000ecd4:	b7e1                	j	8000ec9c <js_promise_mark+0x30>
    8000ecd6:	0204b983          	ld	s3,32(s1)
    8000ecda:	01848a13          	addi	s4,s1,24
quickjs-nuttx/quickjs.c:48011 (discriminator 1)
            JS_MarkValue(rt, rd->resolving_funcs[0], mark_func);
    8000ecde:	86ca                	mv	a3,s2
quickjs-nuttx/quickjs.c:48008 (discriminator 1)
        list_for_each(el, &s->promise_reactions[i]) {
    8000ece0:	013a1e63          	bne	s4,s3,8000ecfc <js_promise_mark+0x90>
quickjs-nuttx/quickjs.c:48016 (discriminator 2)
    JS_MarkValue(rt, s->promise_result, mark_func);
    8000ece4:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:48017 (discriminator 2)
}
    8000ece6:	7442                	ld	s0,48(sp)
quickjs-nuttx/quickjs.c:48016 (discriminator 2)
    JS_MarkValue(rt, s->promise_result, mark_func);
    8000ece8:	788c                	ld	a1,48(s1)
    8000ecea:	7c90                	ld	a2,56(s1)
quickjs-nuttx/quickjs.c:48017 (discriminator 2)
}
    8000ecec:	70e2                	ld	ra,56(sp)
    8000ecee:	74a2                	ld	s1,40(sp)
    8000ecf0:	7902                	ld	s2,32(sp)
    8000ecf2:	69e2                	ld	s3,24(sp)
    8000ecf4:	6a42                	ld	s4,16(sp)
    8000ecf6:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:48016 (discriminator 2)
    JS_MarkValue(rt, s->promise_result, mark_func);
    8000ecf8:	a6afe06f          	j	8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:48011 (discriminator 3)
            JS_MarkValue(rt, rd->resolving_funcs[0], mark_func);
    8000ecfc:	0109b583          	ld	a1,16(s3)
    8000ed00:	0189b603          	ld	a2,24(s3)
    8000ed04:	8522                	mv	a0,s0
    8000ed06:	a5cfe0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:48012 (discriminator 3)
            JS_MarkValue(rt, rd->resolving_funcs[1], mark_func);
    8000ed0a:	0209b583          	ld	a1,32(s3)
    8000ed0e:	0289b603          	ld	a2,40(s3)
    8000ed12:	86ca                	mv	a3,s2
    8000ed14:	8522                	mv	a0,s0
    8000ed16:	a4cfe0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:48013 (discriminator 3)
            JS_MarkValue(rt, rd->handler, mark_func);
    8000ed1a:	0309b583          	ld	a1,48(s3)
    8000ed1e:	0389b603          	ld	a2,56(s3)
    8000ed22:	86ca                	mv	a3,s2
    8000ed24:	8522                	mv	a0,s0
    8000ed26:	a3cfe0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:48008 (discriminator 3)
        list_for_each(el, &s->promise_reactions[i]) {
    8000ed2a:	0089b983          	ld	s3,8(s3)
    8000ed2e:	bf45                	j	8000ecde <js_promise_mark+0x72>
quickjs-nuttx/quickjs.c:48017
}
    8000ed30:	70e2                	ld	ra,56(sp)
    8000ed32:	7442                	ld	s0,48(sp)
    8000ed34:	74a2                	ld	s1,40(sp)
    8000ed36:	7902                	ld	s2,32(sp)
    8000ed38:	69e2                	ld	s3,24(sp)
    8000ed3a:	6a42                	ld	s4,16(sp)
    8000ed3c:	6121                	addi	sp,sp,64
    8000ed3e:	8082                	ret

000000008000ed40 <js_promise_finalizer>:
js_promise_finalizer():
quickjs-nuttx/quickjs.c:47980
{
    8000ed40:	7139                	addi	sp,sp,-64
    8000ed42:	87b2                	mv	a5,a2
    8000ed44:	f426                	sd	s1,40(sp)
    8000ed46:	e02e                	sd	a1,0(sp)
    8000ed48:	84aa                	mv	s1,a0
    8000ed4a:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:47981
    JSPromiseData *s = JS_GetOpaque(val, JS_CLASS_PROMISE);
    8000ed4c:	852e                	mv	a0,a1
    8000ed4e:	03100613          	li	a2,49
    8000ed52:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:47980
{
    8000ed54:	fc06                	sd	ra,56(sp)
    8000ed56:	f822                	sd	s0,48(sp)
    8000ed58:	f04a                	sd	s2,32(sp)
    8000ed5a:	ec4e                	sd	s3,24(sp)
quickjs-nuttx/quickjs.c:47981
    JSPromiseData *s = JS_GetOpaque(val, JS_CLASS_PROMISE);
    8000ed5c:	939ff0ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:47985
    if (!s)
    8000ed60:	cd29                	beqz	a0,8000edba <js_promise_finalizer+0x7a>
quickjs-nuttx/quickjs.c:47988
        list_for_each_safe(el, el1, &s->promise_reactions[i]) {
    8000ed62:	690c                	ld	a1,16(a0)
    8000ed64:	842a                	mv	s0,a0
    8000ed66:	00850993          	addi	s3,a0,8
    8000ed6a:	0085b903          	ld	s2,8(a1)
    8000ed6e:	01358963          	beq	a1,s3,8000ed80 <js_promise_finalizer+0x40>
quickjs-nuttx/quickjs.c:47991
            promise_reaction_data_free(rt, rd);
    8000ed72:	8526                	mv	a0,s1
    8000ed74:	e28fd0ef          	jal	ra,8000c39c <promise_reaction_data_free>
quickjs-nuttx/quickjs.c:47988
        list_for_each_safe(el, el1, &s->promise_reactions[i]) {
    8000ed78:	85ca                	mv	a1,s2
    8000ed7a:	00893903          	ld	s2,8(s2)
    8000ed7e:	bfc5                	j	8000ed6e <js_promise_finalizer+0x2e>
    8000ed80:	700c                	ld	a1,32(s0)
    8000ed82:	01840993          	addi	s3,s0,24
    8000ed86:	0085b903          	ld	s2,8(a1)
    8000ed8a:	01358963          	beq	a1,s3,8000ed9c <js_promise_finalizer+0x5c>
quickjs-nuttx/quickjs.c:47991
            promise_reaction_data_free(rt, rd);
    8000ed8e:	8526                	mv	a0,s1
    8000ed90:	e0cfd0ef          	jal	ra,8000c39c <promise_reaction_data_free>
quickjs-nuttx/quickjs.c:47988
        list_for_each_safe(el, el1, &s->promise_reactions[i]) {
    8000ed94:	85ca                	mv	a1,s2
    8000ed96:	00893903          	ld	s2,8(s2)
    8000ed9a:	bfc5                	j	8000ed8a <js_promise_finalizer+0x4a>
quickjs-nuttx/quickjs.c:47994
    JS_FreeValueRT(rt, s->promise_result);
    8000ed9c:	780c                	ld	a1,48(s0)
    8000ed9e:	7c10                	ld	a2,56(s0)
    8000eda0:	8526                	mv	a0,s1
    8000eda2:	dd4fd0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:47995
    js_free_rt(rt, s);
    8000eda6:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:47996
}
    8000eda8:	7442                	ld	s0,48(sp)
    8000edaa:	70e2                	ld	ra,56(sp)
    8000edac:	7902                	ld	s2,32(sp)
    8000edae:	69e2                	ld	s3,24(sp)
quickjs-nuttx/quickjs.c:47995
    js_free_rt(rt, s);
    8000edb0:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:47996
}
    8000edb2:	74a2                	ld	s1,40(sp)
    8000edb4:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:47995
    js_free_rt(rt, s);
    8000edb6:	c2bfb06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:47996
}
    8000edba:	70e2                	ld	ra,56(sp)
    8000edbc:	7442                	ld	s0,48(sp)
    8000edbe:	74a2                	ld	s1,40(sp)
    8000edc0:	7902                	ld	s2,32(sp)
    8000edc2:	69e2                	ld	s3,24(sp)
    8000edc4:	6121                	addi	sp,sp,64
    8000edc6:	8082                	ret

000000008000edc8 <JS_SetIsHTMLDDA>:
JS_SetIsHTMLDDA():
quickjs-nuttx/quickjs.c:9922
{
    8000edc8:	1141                	addi	sp,sp,-16
    8000edca:	e432                	sd	a2,8(sp)
    8000edcc:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:9924
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    8000edce:	2601                	sext.w	a2,a2
    8000edd0:	57fd                	li	a5,-1
    8000edd2:	00f61863          	bne	a2,a5,8000ede2 <JS_SetIsHTMLDDA+0x1a>
quickjs-nuttx/quickjs.c:9927
    p->is_HTMLDDA = TRUE;
    8000edd6:	0055c783          	lbu	a5,5(a1)
    8000edda:	f807e793          	ori	a5,a5,-128
    8000edde:	00f582a3          	sb	a5,5(a1)
quickjs-nuttx/quickjs.c:9928
}
    8000ede2:	0141                	addi	sp,sp,16
    8000ede4:	8082                	ret

000000008000ede6 <JS_ToBool>:
JS_ToBool():
quickjs-nuttx/quickjs.c:9999
{
    8000ede6:	7179                	addi	sp,sp,-48
    8000ede8:	f022                	sd	s0,32(sp)
    8000edea:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:10000
    return JS_ToBoolFree(ctx, JS_DupValue(ctx, val));
    8000edec:	852e                	mv	a0,a1
    8000edee:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:9999
{
    8000edf0:	f406                	sd	ra,40(sp)
quickjs-nuttx/quickjs.c:10000
    return JS_ToBoolFree(ctx, JS_DupValue(ctx, val));
    8000edf2:	e28fb0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8000edf6:	862e                	mv	a2,a1
    8000edf8:	85aa                	mv	a1,a0
    8000edfa:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:10001
}
    8000edfc:	7402                	ld	s0,32(sp)
    8000edfe:	70a2                	ld	ra,40(sp)
    8000ee00:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:10000
    return JS_ToBoolFree(ctx, JS_DupValue(ctx, val));
    8000ee02:	d13fc06f          	j	8000bb14 <JS_ToBoolFree>

000000008000ee06 <JS_DetectModule>:
JS_DetectModule():
quickjs-nuttx/quickjs.c:21406
{
    8000ee06:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:21410
    skip_shebang(&p, p + input_len);
    8000ee08:	95aa                	add	a1,a1,a0
quickjs-nuttx/quickjs.c:21407
    const uint8_t *p = (const uint8_t *)input;
    8000ee0a:	e42a                	sd	a0,8(sp)
quickjs-nuttx/quickjs.c:21410
    skip_shebang(&p, p + input_len);
    8000ee0c:	0028                	addi	a0,sp,8
quickjs-nuttx/quickjs.c:21406
{
    8000ee0e:	ec06                	sd	ra,24(sp)
    8000ee10:	e822                	sd	s0,16(sp)
quickjs-nuttx/quickjs.c:21410
    skip_shebang(&p, p + input_len);
    8000ee12:	d71f90ef          	jal	ra,80008b82 <skip_shebang>
quickjs-nuttx/quickjs.c:21411
    switch(simple_next_token(&p, FALSE)) {
    8000ee16:	4581                	li	a1,0
    8000ee18:	0028                	addi	a0,sp,8
    8000ee1a:	c0ffa0ef          	jal	ra,80009a28 <simple_next_token>
    8000ee1e:	fcd00793          	li	a5,-51
quickjs-nuttx/quickjs.c:21416
        return TRUE;
    8000ee22:	4405                	li	s0,1
quickjs-nuttx/quickjs.c:21411
    switch(simple_next_token(&p, FALSE)) {
    8000ee24:	02f50363          	beq	a0,a5,8000ee4a <JS_DetectModule+0x44>
    8000ee28:	fcf00793          	li	a5,-49
    8000ee2c:	4401                	li	s0,0
    8000ee2e:	00f51e63          	bne	a0,a5,8000ee4a <JS_DetectModule+0x44>
quickjs-nuttx/quickjs.c:21413
        tok = simple_next_token(&p, FALSE);
    8000ee32:	4581                	li	a1,0
    8000ee34:	0028                	addi	a0,sp,8
    8000ee36:	bf3fa0ef          	jal	ra,80009a28 <simple_next_token>
quickjs-nuttx/quickjs.c:21414
        return (tok != '.' && tok != '(');
    8000ee3a:	02e00793          	li	a5,46
    8000ee3e:	00f50663          	beq	a0,a5,8000ee4a <JS_DetectModule+0x44>
quickjs-nuttx/quickjs.c:21414 (discriminator 1)
    8000ee42:	fd850513          	addi	a0,a0,-40
    8000ee46:	00a03433          	snez	s0,a0
quickjs-nuttx/quickjs.c:21420
}
    8000ee4a:	60e2                	ld	ra,24(sp)
    8000ee4c:	8522                	mv	a0,s0
    8000ee4e:	6442                	ld	s0,16(sp)
    8000ee50:	6105                	addi	sp,sp,32
    8000ee52:	8082                	ret

000000008000ee54 <JS_SetModuleLoaderFunc>:
JS_SetModuleLoaderFunc():
quickjs-nuttx/quickjs.c:27355
    rt->module_normalize_func = module_normalize;
    8000ee54:	12b53823          	sd	a1,304(a0)
quickjs-nuttx/quickjs.c:27356
    rt->module_loader_func = module_loader;
    8000ee58:	12c53c23          	sd	a2,312(a0)
quickjs-nuttx/quickjs.c:27357
    rt->module_loader_opaque = opaque;
    8000ee5c:	14d53023          	sd	a3,320(a0)
quickjs-nuttx/quickjs.c:27358
}
    8000ee60:	8082                	ret

000000008000ee62 <JS_GetScriptOrModuleName>:
JS_GetScriptOrModuleName():
quickjs-nuttx/quickjs.c:28293
{
    8000ee62:	7179                	addi	sp,sp,-48
    8000ee64:	f406                	sd	ra,40(sp)
    8000ee66:	f022                	sd	s0,32(sp)
    8000ee68:	ec26                	sd	s1,24(sp)
    8000ee6a:	e84a                	sd	s2,16(sp)
    8000ee6c:	e44e                	sd	s3,8(sp)
quickjs-nuttx/quickjs.c:28300
    sf = ctx->rt->current_stack_frame;
    8000ee6e:	6d1c                	ld	a5,24(a0)
    8000ee70:	7fe0                	ld	s0,248(a5)
quickjs-nuttx/quickjs.c:28301
    if (!sf)
    8000ee72:	c431                	beqz	s0,8000eebe <JS_GetScriptOrModuleName+0x5c>
    8000ee74:	84aa                	mv	s1,a0
    8000ee76:	2581                	sext.w	a1,a1
quickjs-nuttx/quickjs.c:28303
    while (n_stack_levels-- > 0) {
    8000ee78:	04b04063          	bgtz	a1,8000eeb8 <JS_GetScriptOrModuleName+0x56>
quickjs-nuttx/quickjs.c:28309
        if (JS_VALUE_GET_TAG(sf->cur_func) != JS_TAG_OBJECT)
    8000ee7c:	59fd                	li	s3,-1
    8000ee7e:	481c                	lw	a5,16(s0)
    8000ee80:	03379f63          	bne	a5,s3,8000eebe <JS_GetScriptOrModuleName+0x5c>
quickjs-nuttx/quickjs.c:28311
        p = JS_VALUE_GET_OBJ(sf->cur_func);
    8000ee84:	00843903          	ld	s2,8(s0)
quickjs-nuttx/quickjs.c:28312
        if (!js_class_has_bytecode(p->class_id))
    8000ee88:	00695503          	lhu	a0,6(s2)
    8000ee8c:	d84fa0ef          	jal	ra,80009410 <js_class_has_bytecode>
    8000ee90:	c51d                	beqz	a0,8000eebe <JS_GetScriptOrModuleName+0x5c>
quickjs-nuttx/quickjs.c:28314
        b = p->u.func.function_bytecode;
    8000ee92:	03093703          	ld	a4,48(s2)
quickjs-nuttx/quickjs.c:28315
        if (!b->is_direct_or_indirect_eval) {
    8000ee96:	01a74783          	lbu	a5,26(a4)
    8000ee9a:	0207f693          	andi	a3,a5,32
    8000ee9e:	ea85                	bnez	a3,8000eece <JS_GetScriptOrModuleName+0x6c>
quickjs-nuttx/quickjs.c:28316
            if (!b->has_debug)
    8000eea0:	8b91                	andi	a5,a5,4
    8000eea2:	cf91                	beqz	a5,8000eebe <JS_GetScriptOrModuleName+0x5c>
quickjs-nuttx/quickjs.c:28325
}
    8000eea4:	7402                	ld	s0,32(sp)
    8000eea6:	70a2                	ld	ra,40(sp)
    8000eea8:	6942                	ld	s2,16(sp)
    8000eeaa:	69a2                	ld	s3,8(sp)
quickjs-nuttx/quickjs.c:28318
            return JS_DupAtom(ctx, b->debug.filename);
    8000eeac:	532c                	lw	a1,96(a4)
    8000eeae:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:28325
}
    8000eeb0:	64e2                	ld	s1,24(sp)
    8000eeb2:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:28318
            return JS_DupAtom(ctx, b->debug.filename);
    8000eeb4:	a52fc06f          	j	8000b106 <JS_DupAtom>
quickjs-nuttx/quickjs.c:28304
        sf = sf->prev_frame;
    8000eeb8:	6000                	ld	s0,0(s0)
quickjs-nuttx/quickjs.c:28305
        if (!sf)
    8000eeba:	35fd                	addiw	a1,a1,-1
    8000eebc:	fc55                	bnez	s0,8000ee78 <JS_GetScriptOrModuleName+0x16>
quickjs-nuttx/quickjs.c:28325
}
    8000eebe:	70a2                	ld	ra,40(sp)
    8000eec0:	7402                	ld	s0,32(sp)
    8000eec2:	64e2                	ld	s1,24(sp)
    8000eec4:	6942                	ld	s2,16(sp)
    8000eec6:	69a2                	ld	s3,8(sp)
    8000eec8:	4501                	li	a0,0
    8000eeca:	6145                	addi	sp,sp,48
    8000eecc:	8082                	ret
quickjs-nuttx/quickjs.c:28320
            sf = sf->prev_frame;
    8000eece:	6000                	ld	s0,0(s0)
quickjs-nuttx/quickjs.c:28321
            if (!sf)
    8000eed0:	f45d                	bnez	s0,8000ee7e <JS_GetScriptOrModuleName+0x1c>
    8000eed2:	b7f5                	j	8000eebe <JS_GetScriptOrModuleName+0x5c>

000000008000eed4 <JS_GetModuleName>:
JS_GetModuleName():
quickjs-nuttx/quickjs.c:28329
    return JS_DupAtom(ctx, m->module_name);
    8000eed4:	41cc                	lw	a1,4(a1)
    8000eed6:	a30fc06f          	j	8000b106 <JS_DupAtom>

000000008000eeda <lre_check_stack_overflow>:
lre_check_stack_overflow():
quickjs-nuttx/quickjs.c:43728
{
    8000eeda:	1141                	addi	sp,sp,-16
    8000eedc:	e422                	sd	s0,8(sp)
    8000eede:	0800                	addi	s0,sp,16
quickjs-nuttx/quickjs.c:43730
    return js_check_stack_overflow(ctx->rt, alloca_size);
    8000eee0:	6d1c                	ld	a5,24(a0)
js_check_stack_overflow():
quickjs-nuttx/quickjs.c:1613
    sp = js_get_stack_pointer() - alloca_size;
    8000eee2:	40b405b3          	sub	a1,s0,a1
lre_check_stack_overflow():
quickjs-nuttx/quickjs.c:43731
}
    8000eee6:	6422                	ld	s0,8(sp)
js_check_stack_overflow():
quickjs-nuttx/quickjs.c:1614
    return unlikely(sp < rt->stack_limit);
    8000eee8:	6fe8                	ld	a0,216(a5)
lre_check_stack_overflow():
quickjs-nuttx/quickjs.c:43731
}
    8000eeea:	00a5b533          	sltu	a0,a1,a0
    8000eeee:	0141                	addi	sp,sp,16
    8000eef0:	8082                	ret

000000008000eef2 <lre_realloc>:
lre_realloc():
quickjs-nuttx/quickjs.c:43737
    return js_realloc_rt(ctx->rt, ptr, size);
    8000eef2:	6d08                	ld	a0,24(a0)
    8000eef4:	c67f806f          	j	80007b5a <js_realloc_rt>

000000008000eef8 <JS_AddIntrinsicRegExpCompiler>:
JS_AddIntrinsicRegExpCompiler():
quickjs-nuttx/quickjs.c:44814
    ctx->compile_regexp = js_compile_regexp;
    8000eef8:	00017797          	auipc	a5,0x17
    8000eefc:	e1878793          	addi	a5,a5,-488 # 80025d10 <js_compile_regexp>
    8000ef00:	1cf53023          	sd	a5,448(a0)
quickjs-nuttx/quickjs.c:44815
}
    8000ef04:	8082                	ret

000000008000ef06 <JS_PromiseState>:
JS_PromiseState():
quickjs-nuttx/quickjs.c:47706
{
    8000ef06:	1101                	addi	sp,sp,-32
    8000ef08:	87b2                	mv	a5,a2
    8000ef0a:	e02e                	sd	a1,0(sp)
    8000ef0c:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:47707
    JSPromiseData *s = JS_GetOpaque(promise, JS_CLASS_PROMISE);
    8000ef0e:	852e                	mv	a0,a1
    8000ef10:	03100613          	li	a2,49
    8000ef14:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:47706
{
    8000ef16:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:47707
    JSPromiseData *s = JS_GetOpaque(promise, JS_CLASS_PROMISE);
    8000ef18:	f7cff0ef          	jal	ra,8000e694 <JS_GetOpaque>
    8000ef1c:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:47708
    if (!s)
    8000ef1e:	557d                	li	a0,-1
    8000ef20:	c391                	beqz	a5,8000ef24 <JS_PromiseState+0x1e>
quickjs-nuttx/quickjs.c:47710
    return s->promise_state;
    8000ef22:	4388                	lw	a0,0(a5)
quickjs-nuttx/quickjs.c:47711
}
    8000ef24:	60e2                	ld	ra,24(sp)
    8000ef26:	6105                	addi	sp,sp,32
    8000ef28:	8082                	ret

000000008000ef2a <JS_PromiseResult>:
JS_PromiseResult():
quickjs-nuttx/quickjs.c:47714
{
    8000ef2a:	7179                	addi	sp,sp,-48
    8000ef2c:	87b2                	mv	a5,a2
    8000ef2e:	e02e                	sd	a1,0(sp)
    8000ef30:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:47715
    JSPromiseData *s = JS_GetOpaque(promise, JS_CLASS_PROMISE);
    8000ef32:	852e                	mv	a0,a1
    8000ef34:	03100613          	li	a2,49
    8000ef38:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:47714
{
    8000ef3a:	f406                	sd	ra,40(sp)
quickjs-nuttx/quickjs.c:47715
    JSPromiseData *s = JS_GetOpaque(promise, JS_CLASS_PROMISE);
    8000ef3c:	f58ff0ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:47716
    if (!s)
    8000ef40:	c901                	beqz	a0,8000ef50 <JS_PromiseResult+0x26>
    8000ef42:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:47719
}
    8000ef44:	70a2                	ld	ra,40(sp)
quickjs-nuttx/quickjs.c:47718
    return JS_DupValue(ctx, s->promise_result);
    8000ef46:	7908                	ld	a0,48(a0)
    8000ef48:	7f8c                	ld	a1,56(a5)
quickjs-nuttx/quickjs.c:47719
}
    8000ef4a:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:47718
    return JS_DupValue(ctx, s->promise_result);
    8000ef4c:	ccefb06f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:47719 (discriminator 1)
}
    8000ef50:	70a2                	ld	ra,40(sp)
    8000ef52:	458d                	li	a1,3
    8000ef54:	6145                	addi	sp,sp,48
    8000ef56:	8082                	ret

000000008000ef58 <JS_SetHostPromiseRejectionTracker>:
JS_SetHostPromiseRejectionTracker():
quickjs-nuttx/quickjs.c:47779
    rt->host_promise_rejection_tracker = cb;
    8000ef58:	10b53823          	sd	a1,272(a0)
quickjs-nuttx/quickjs.c:47780
    rt->host_promise_rejection_tracker_opaque = opaque;
    8000ef5c:	10c53c23          	sd	a2,280(a0)
quickjs-nuttx/quickjs.c:47781
}
    8000ef60:	8082                	ret

000000008000ef62 <JS_NewPromiseCapability>:
JS_NewPromiseCapability():
quickjs-nuttx/quickjs.c:48129
{
    8000ef62:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:48130
    return js_new_promise_capability(ctx, resolving_funcs, JS_UNDEFINED);
    8000ef64:	4601                	li	a2,0
    8000ef66:	468d                	li	a3,3
quickjs-nuttx/quickjs.c:48131
}
    8000ef68:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:48130
    return js_new_promise_capability(ctx, resolving_funcs, JS_UNDEFINED);
    8000ef6a:	4bb3406f          	j	80043c24 <js_new_promise_capability>

000000008000ef6e <JS_CallInternal>:
JS_CallInternal():
quickjs-nuttx/quickjs.c:16038
{
    8000ef6e:	81010113          	addi	sp,sp,-2032
    8000ef72:	7c913c23          	sd	s1,2008(sp)
    8000ef76:	74fd                	lui	s1,0xfffff
    8000ef78:	7e813023          	sd	s0,2016(sp)
    8000ef7c:	7d213823          	sd	s2,2000(sp)
    8000ef80:	7e113423          	sd	ra,2024(sp)
    8000ef84:	7d313423          	sd	s3,1992(sp)
    8000ef88:	7d413023          	sd	s4,1984(sp)
    8000ef8c:	7b513c23          	sd	s5,1976(sp)
    8000ef90:	7b613823          	sd	s6,1968(sp)
    8000ef94:	7b713423          	sd	s7,1960(sp)
    8000ef98:	7b813023          	sd	s8,1952(sp)
    8000ef9c:	79913c23          	sd	s9,1944(sp)
    8000efa0:	79a13823          	sd	s10,1936(sp)
    8000efa4:	79b13423          	sd	s11,1928(sp)
    8000efa8:	76813c27          	fsd	fs0,1912(sp)
    8000efac:	76913827          	fsd	fs1,1904(sp)
    8000efb0:	7f010413          	addi	s0,sp,2032
    8000efb4:	62048493          	addi	s1,s1,1568 # fffffffffffff620 <_ebss+0xffffffff7fefe4ba>
    8000efb8:	94a2                	add	s1,s1,s0
    8000efba:	e088                	sd	a0,0(s1)
    8000efbc:	f8040313          	addi	t1,s0,-128
    8000efc0:	74fd                	lui	s1,0xfffff
    8000efc2:	949a                	add	s1,s1,t1
    8000efc4:	6ef4b823          	sd	a5,1776(s1) # fffffffffffff6f0 <_ebss+0xffffffff7fefe58a>
    8000efc8:	77fd                	lui	a5,0xfffff
    8000efca:	64078793          	addi	a5,a5,1600 # fffffffffffff640 <_ebss+0xffffffff7fefe4da>
    8000efce:	97a2                	add	a5,a5,s0
    8000efd0:	0117b023          	sd	a7,0(a5)
    8000efd4:	00842883          	lw	a7,8(s0)
    8000efd8:	77fd                	lui	a5,0xfffff
    8000efda:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    8000efde:	97a2                	add	a5,a5,s0
    8000efe0:	0117b023          	sd	a7,0(a5)
    8000efe4:	70e4b423          	sd	a4,1800(s1)
quickjs-nuttx/quickjs.c:16039
    JSRuntime *rt = caller_ctx->rt;
    8000efe8:	6d1c                	ld	a5,24(a0)
    8000efea:	777d                	lui	a4,0xfffff
    8000efec:	64870713          	addi	a4,a4,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
    8000eff0:	9722                	add	a4,a4,s0
quickjs-nuttx/quickjs.c:16038
{
    8000eff2:	da010113          	addi	sp,sp,-608
quickjs-nuttx/quickjs.c:16039
    JSRuntime *rt = caller_ctx->rt;
    8000eff6:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs.c:16038
{
    8000eff8:	70b4b823          	sd	a1,1808(s1)
    8000effc:	70c4bc23          	sd	a2,1816(s1)
