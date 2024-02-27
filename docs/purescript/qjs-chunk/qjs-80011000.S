    80010000:	9a6ff06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16331
            sp[0] = JS_DupValue(ctx, sp[-2]);
    80010004:	fe0cb503          	ld	a0,-32(s9)
    80010008:	fe8cb583          	ld	a1,-24(s9)
quickjs-nuttx/quickjs.c:16334
            BREAK;
    8001000c:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16333
            sp += 2;
    8001000e:	020c8c93          	addi	s9,s9,32
quickjs-nuttx/quickjs.c:16331
            sp[0] = JS_DupValue(ctx, sp[-2]);
    80010012:	c08fa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80010016:	feacb023          	sd	a0,-32(s9)
    8001001a:	febcb423          	sd	a1,-24(s9)
quickjs-nuttx/quickjs.c:16332
            sp[1] = JS_DupValue(ctx, sp[-1]);
    8001001e:	fd0cb503          	ld	a0,-48(s9)
    80010022:	fd8cb583          	ld	a1,-40(s9)
    80010026:	bf4fa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001002a:	feacb823          	sd	a0,-16(s9)
    8001002e:	febcbc23          	sd	a1,-8(s9)
quickjs-nuttx/quickjs.c:16334
            BREAK;
    80010032:	fffd4b03          	lbu	s6,-1(s10)
    80010036:	0005f797          	auipc	a5,0x5f
    8001003a:	dfa78793          	addi	a5,a5,-518 # 8006ee30 <dispatch_table.4>
    8001003e:	003b1713          	slli	a4,s6,0x3
    80010042:	97ba                	add	a5,a5,a4
    80010044:	639c                	ld	a5,0(a5)
    80010046:	960ff06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16336
            sp[0] = JS_DupValue(ctx, sp[-3]);
    8001004a:	fd0cb503          	ld	a0,-48(s9)
    8001004e:	fd8cb583          	ld	a1,-40(s9)
quickjs-nuttx/quickjs.c:16340
            BREAK;
    80010052:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16339
            sp += 3;
    80010054:	030c8c93          	addi	s9,s9,48
quickjs-nuttx/quickjs.c:16336
            sp[0] = JS_DupValue(ctx, sp[-3]);
    80010058:	bc2fa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001005c:	fcacb823          	sd	a0,-48(s9)
    80010060:	fcbcbc23          	sd	a1,-40(s9)
quickjs-nuttx/quickjs.c:16337
            sp[1] = JS_DupValue(ctx, sp[-2]);
    80010064:	fb0cb503          	ld	a0,-80(s9)
    80010068:	fb8cb583          	ld	a1,-72(s9)
    8001006c:	baefa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80010070:	feacb023          	sd	a0,-32(s9)
    80010074:	febcb423          	sd	a1,-24(s9)
quickjs-nuttx/quickjs.c:16338
            sp[2] = JS_DupValue(ctx, sp[-1]);
    80010078:	fc0cb503          	ld	a0,-64(s9)
    8001007c:	fc8cb583          	ld	a1,-56(s9)
    80010080:	b9afa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80010084:	feacb823          	sd	a0,-16(s9)
    80010088:	febcbc23          	sd	a1,-8(s9)
quickjs-nuttx/quickjs.c:16340
            BREAK;
    8001008c:	fffd4b03          	lbu	s6,-1(s10)
    80010090:	0005f797          	auipc	a5,0x5f
    80010094:	da078793          	addi	a5,a5,-608 # 8006ee30 <dispatch_table.4>
    80010098:	003b1713          	slli	a4,s6,0x3
    8001009c:	97ba                	add	a5,a5,a4
    8001009e:	639c                	ld	a5,0(a5)
    800100a0:	906ff06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16342
            sp[0] = sp[-1];
    800100a4:	ff0cb783          	ld	a5,-16(s9)
quickjs-nuttx/quickjs.c:16343
            sp[-1] = JS_DupValue(ctx, sp[-2]);
    800100a8:	fe0cb503          	ld	a0,-32(s9)
    800100ac:	fe8cb583          	ld	a1,-24(s9)
quickjs-nuttx/quickjs.c:16342
            sp[0] = sp[-1];
    800100b0:	00fcb023          	sd	a5,0(s9)
    800100b4:	ff8cb783          	ld	a5,-8(s9)
quickjs-nuttx/quickjs.c:16345
            BREAK;
    800100b8:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16344
            sp++;
    800100ba:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:16342
            sp[0] = sp[-1];
    800100bc:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16343
            sp[-1] = JS_DupValue(ctx, sp[-2]);
    800100c0:	b5afa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800100c4:	feacb023          	sd	a0,-32(s9)
    800100c8:	febcb423          	sd	a1,-24(s9)
quickjs-nuttx/quickjs.c:16345
            BREAK;
    800100cc:	fffd4b03          	lbu	s6,-1(s10)
    800100d0:	0005f797          	auipc	a5,0x5f
    800100d4:	d6078793          	addi	a5,a5,-672 # 8006ee30 <dispatch_table.4>
    800100d8:	003b1713          	slli	a4,s6,0x3
    800100dc:	97ba                	add	a5,a5,a4
    800100de:	639c                	ld	a5,0(a5)
    800100e0:	8c6ff06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16348
            sp[-1] = sp[-2];
    800100e4:	fe0cb783          	ld	a5,-32(s9)
quickjs-nuttx/quickjs.c:16347
            sp[0] = sp[-1];
    800100e8:	ff0cb503          	ld	a0,-16(s9)
    800100ec:	ff8cb583          	ld	a1,-8(s9)
quickjs-nuttx/quickjs.c:16348
            sp[-1] = sp[-2];
    800100f0:	fefcb823          	sd	a5,-16(s9)
    800100f4:	fe8cb783          	ld	a5,-24(s9)
quickjs-nuttx/quickjs.c:16347
            sp[0] = sp[-1];
    800100f8:	00acb023          	sd	a0,0(s9)
    800100fc:	00bcb423          	sd	a1,8(s9)
quickjs-nuttx/quickjs.c:16348
            sp[-1] = sp[-2];
    80010100:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16349
            sp[-2] = JS_DupValue(ctx, sp[0]);
    80010104:	b16fa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80010108:	feacb023          	sd	a0,-32(s9)
    8001010c:	febcb423          	sd	a1,-24(s9)
quickjs-nuttx/quickjs.c:16351
            BREAK;
    80010110:	000d4b03          	lbu	s6,0(s10)
    80010114:	0005f797          	auipc	a5,0x5f
    80010118:	d1c78793          	addi	a5,a5,-740 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:16350
            sp++;
    8001011c:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:16351
            BREAK;
    8001011e:	003b1713          	slli	a4,s6,0x3
    80010122:	97ba                	add	a5,a5,a4
    80010124:	639c                	ld	a5,0(a5)
    80010126:	0d05                	addi	s10,s10,1
    80010128:	87eff06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16354
            sp[-1] = sp[-2];
    8001012c:	fe0cb783          	ld	a5,-32(s9)
quickjs-nuttx/quickjs.c:16353
            sp[0] = sp[-1];
    80010130:	ff0cb503          	ld	a0,-16(s9)
    80010134:	ff8cb583          	ld	a1,-8(s9)
quickjs-nuttx/quickjs.c:16354
            sp[-1] = sp[-2];
    80010138:	fefcb823          	sd	a5,-16(s9)
    8001013c:	fe8cb783          	ld	a5,-24(s9)
quickjs-nuttx/quickjs.c:16353
            sp[0] = sp[-1];
    80010140:	00acb023          	sd	a0,0(s9)
    80010144:	00bcb423          	sd	a1,8(s9)
quickjs-nuttx/quickjs.c:16354
            sp[-1] = sp[-2];
    80010148:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16355
            sp[-2] = sp[-3];
    8001014c:	fd0cb783          	ld	a5,-48(s9)
quickjs-nuttx/quickjs.c:16358
            BREAK;
    80010150:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16357
            sp++;
    80010152:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:16355
            sp[-2] = sp[-3];
    80010154:	fcfcb823          	sd	a5,-48(s9)
    80010158:	fc8cb783          	ld	a5,-56(s9)
    8001015c:	fcfcbc23          	sd	a5,-40(s9)
quickjs-nuttx/quickjs.c:16356
            sp[-3] = JS_DupValue(ctx, sp[0]);
    80010160:	abafa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80010164:	fcacb023          	sd	a0,-64(s9)
    80010168:	fcbcb423          	sd	a1,-56(s9)
quickjs-nuttx/quickjs.c:16358
            BREAK;
    8001016c:	fffd4b03          	lbu	s6,-1(s10)
    80010170:	0005f797          	auipc	a5,0x5f
    80010174:	cc078793          	addi	a5,a5,-832 # 8006ee30 <dispatch_table.4>
    80010178:	003b1713          	slli	a4,s6,0x3
    8001017c:	97ba                	add	a5,a5,a4
    8001017e:	639c                	ld	a5,0(a5)
    80010180:	826ff06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16361
            sp[-1] = sp[-2];
    80010184:	fe0cb783          	ld	a5,-32(s9)
quickjs-nuttx/quickjs.c:16360
            sp[0] = sp[-1];
    80010188:	ff0cb503          	ld	a0,-16(s9)
    8001018c:	ff8cb583          	ld	a1,-8(s9)
quickjs-nuttx/quickjs.c:16361
            sp[-1] = sp[-2];
    80010190:	fefcb823          	sd	a5,-16(s9)
    80010194:	fe8cb783          	ld	a5,-24(s9)
quickjs-nuttx/quickjs.c:16360
            sp[0] = sp[-1];
    80010198:	00acb023          	sd	a0,0(s9)
    8001019c:	00bcb423          	sd	a1,8(s9)
quickjs-nuttx/quickjs.c:16361
            sp[-1] = sp[-2];
    800101a0:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16362
            sp[-2] = sp[-3];
    800101a4:	fd0cb783          	ld	a5,-48(s9)
quickjs-nuttx/quickjs.c:16366
            BREAK;
    800101a8:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16365
            sp++;
    800101aa:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:16362
            sp[-2] = sp[-3];
    800101ac:	fcfcb823          	sd	a5,-48(s9)
    800101b0:	fc8cb783          	ld	a5,-56(s9)
    800101b4:	fcfcbc23          	sd	a5,-40(s9)
quickjs-nuttx/quickjs.c:16363
            sp[-3] = sp[-4];
    800101b8:	fb0cb783          	ld	a5,-80(s9)
    800101bc:	fcfcb023          	sd	a5,-64(s9)
    800101c0:	fb8cb783          	ld	a5,-72(s9)
    800101c4:	fcfcb423          	sd	a5,-56(s9)
quickjs-nuttx/quickjs.c:16364
            sp[-4] = JS_DupValue(ctx, sp[0]);
    800101c8:	a52fa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800101cc:	faacb823          	sd	a0,-80(s9)
    800101d0:	fabcbc23          	sd	a1,-72(s9)
quickjs-nuttx/quickjs.c:16366
            BREAK;
    800101d4:	fffd4b03          	lbu	s6,-1(s10)
    800101d8:	0005f797          	auipc	a5,0x5f
    800101dc:	c5878793          	addi	a5,a5,-936 # 8006ee30 <dispatch_table.4>
    800101e0:	003b1713          	slli	a4,s6,0x3
    800101e4:	97ba                	add	a5,a5,a4
    800101e6:	639c                	ld	a5,0(a5)
    800101e8:	fbffe06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16370
                tmp = sp[-2];
    800101ec:	fe0cb783          	ld	a5,-32(s9)
quickjs-nuttx/quickjs.c:16374
            BREAK;
    800101f0:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16370
                tmp = sp[-2];
    800101f2:	eef43823          	sd	a5,-272(s0)
    800101f6:	fe8cb783          	ld	a5,-24(s9)
    800101fa:	eef43c23          	sd	a5,-264(s0)
quickjs-nuttx/quickjs.c:16371
                sp[-2] = sp[-3];
    800101fe:	fd0cb783          	ld	a5,-48(s9)
    80010202:	fefcb023          	sd	a5,-32(s9)
    80010206:	fd8cb783          	ld	a5,-40(s9)
    8001020a:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:16372
                sp[-3] = tmp;
    8001020e:	ef043783          	ld	a5,-272(s0)
    80010212:	fcfcb823          	sd	a5,-48(s9)
    80010216:	ef843783          	ld	a5,-264(s0)
    8001021a:	fcfcbc23          	sd	a5,-40(s9)
quickjs-nuttx/quickjs.c:16374
            BREAK;
    8001021e:	fffd4b03          	lbu	s6,-1(s10)
    80010222:	0005f797          	auipc	a5,0x5f
    80010226:	c0e78793          	addi	a5,a5,-1010 # 8006ee30 <dispatch_table.4>
    8001022a:	003b1713          	slli	a4,s6,0x3
    8001022e:	97ba                	add	a5,a5,a4
    80010230:	639c                	ld	a5,0(a5)
    80010232:	f75fe06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16378
                tmp = sp[-3];
    80010236:	fd0cb783          	ld	a5,-48(s9)
quickjs-nuttx/quickjs.c:16383
            BREAK;
    8001023a:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16378
                tmp = sp[-3];
    8001023c:	eef43823          	sd	a5,-272(s0)
    80010240:	fd8cb783          	ld	a5,-40(s9)
    80010244:	eef43c23          	sd	a5,-264(s0)
quickjs-nuttx/quickjs.c:16379
                sp[-3] = sp[-2];
    80010248:	fe0cb783          	ld	a5,-32(s9)
    8001024c:	fcfcb823          	sd	a5,-48(s9)
    80010250:	fe8cb783          	ld	a5,-24(s9)
    80010254:	fcfcbc23          	sd	a5,-40(s9)
quickjs-nuttx/quickjs.c:16380
                sp[-2] = sp[-1];
    80010258:	ff0cb783          	ld	a5,-16(s9)
    8001025c:	fefcb023          	sd	a5,-32(s9)
    80010260:	ff8cb783          	ld	a5,-8(s9)
    80010264:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:16381
                sp[-1] = tmp;
    80010268:	ef043783          	ld	a5,-272(s0)
    8001026c:	fefcb823          	sd	a5,-16(s9)
    80010270:	ef843783          	ld	a5,-264(s0)
    80010274:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16383
            BREAK;
    80010278:	fffd4b03          	lbu	s6,-1(s10)
    8001027c:	0005f797          	auipc	a5,0x5f
    80010280:	bb478793          	addi	a5,a5,-1100 # 8006ee30 <dispatch_table.4>
    80010284:	003b1713          	slli	a4,s6,0x3
    80010288:	97ba                	add	a5,a5,a4
    8001028a:	639c                	ld	a5,0(a5)
    8001028c:	f1bfe06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16387
                tmp = sp[-4];
    80010290:	fc0cb783          	ld	a5,-64(s9)
quickjs-nuttx/quickjs.c:16393
            BREAK;
    80010294:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16387
                tmp = sp[-4];
    80010296:	eef43823          	sd	a5,-272(s0)
    8001029a:	fc8cb783          	ld	a5,-56(s9)
    8001029e:	eef43c23          	sd	a5,-264(s0)
quickjs-nuttx/quickjs.c:16388
                sp[-4] = sp[-3];
    800102a2:	fd0cb783          	ld	a5,-48(s9)
    800102a6:	fcfcb023          	sd	a5,-64(s9)
    800102aa:	fd8cb783          	ld	a5,-40(s9)
    800102ae:	fcfcb423          	sd	a5,-56(s9)
quickjs-nuttx/quickjs.c:16389
                sp[-3] = sp[-2];
    800102b2:	fe0cb783          	ld	a5,-32(s9)
    800102b6:	fcfcb823          	sd	a5,-48(s9)
    800102ba:	fe8cb783          	ld	a5,-24(s9)
    800102be:	fcfcbc23          	sd	a5,-40(s9)
quickjs-nuttx/quickjs.c:16390
                sp[-2] = sp[-1];
    800102c2:	ff0cb783          	ld	a5,-16(s9)
    800102c6:	fefcb023          	sd	a5,-32(s9)
    800102ca:	ff8cb783          	ld	a5,-8(s9)
    800102ce:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:16391
                sp[-1] = tmp;
    800102d2:	ef043783          	ld	a5,-272(s0)
    800102d6:	fefcb823          	sd	a5,-16(s9)
    800102da:	ef843783          	ld	a5,-264(s0)
    800102de:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16393
            BREAK;
    800102e2:	fffd4b03          	lbu	s6,-1(s10)
    800102e6:	0005f797          	auipc	a5,0x5f
    800102ea:	b4a78793          	addi	a5,a5,-1206 # 8006ee30 <dispatch_table.4>
    800102ee:	003b1713          	slli	a4,s6,0x3
    800102f2:	97ba                	add	a5,a5,a4
    800102f4:	639c                	ld	a5,0(a5)
    800102f6:	eb1fe06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16397
                tmp = sp[-5];
    800102fa:	fb0cb783          	ld	a5,-80(s9)
quickjs-nuttx/quickjs.c:16404
            BREAK;
    800102fe:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16397
                tmp = sp[-5];
    80010300:	eef43823          	sd	a5,-272(s0)
    80010304:	fb8cb783          	ld	a5,-72(s9)
    80010308:	eef43c23          	sd	a5,-264(s0)
quickjs-nuttx/quickjs.c:16398
                sp[-5] = sp[-4];
    8001030c:	fc0cb783          	ld	a5,-64(s9)
    80010310:	fafcb823          	sd	a5,-80(s9)
    80010314:	fc8cb783          	ld	a5,-56(s9)
    80010318:	fafcbc23          	sd	a5,-72(s9)
quickjs-nuttx/quickjs.c:16399
                sp[-4] = sp[-3];
    8001031c:	fd0cb783          	ld	a5,-48(s9)
    80010320:	fcfcb023          	sd	a5,-64(s9)
    80010324:	fd8cb783          	ld	a5,-40(s9)
    80010328:	fcfcb423          	sd	a5,-56(s9)
quickjs-nuttx/quickjs.c:16400
                sp[-3] = sp[-2];
    8001032c:	fe0cb783          	ld	a5,-32(s9)
    80010330:	fcfcb823          	sd	a5,-48(s9)
    80010334:	fe8cb783          	ld	a5,-24(s9)
    80010338:	fcfcbc23          	sd	a5,-40(s9)
quickjs-nuttx/quickjs.c:16401
                sp[-2] = sp[-1];
    8001033c:	ff0cb783          	ld	a5,-16(s9)
    80010340:	fefcb023          	sd	a5,-32(s9)
    80010344:	ff8cb783          	ld	a5,-8(s9)
    80010348:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:16402
                sp[-1] = tmp;
    8001034c:	ef043783          	ld	a5,-272(s0)
    80010350:	fefcb823          	sd	a5,-16(s9)
    80010354:	ef843783          	ld	a5,-264(s0)
    80010358:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16404
            BREAK;
    8001035c:	fffd4b03          	lbu	s6,-1(s10)
    80010360:	0005f797          	auipc	a5,0x5f
    80010364:	ad078793          	addi	a5,a5,-1328 # 8006ee30 <dispatch_table.4>
    80010368:	003b1713          	slli	a4,s6,0x3
    8001036c:	97ba                	add	a5,a5,a4
    8001036e:	639c                	ld	a5,0(a5)
    80010370:	e37fe06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16408
                tmp = sp[-1];
    80010374:	ff0cb783          	ld	a5,-16(s9)
quickjs-nuttx/quickjs.c:16413
            BREAK;
    80010378:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16408
                tmp = sp[-1];
    8001037a:	eef43823          	sd	a5,-272(s0)
    8001037e:	ff8cb783          	ld	a5,-8(s9)
    80010382:	eef43c23          	sd	a5,-264(s0)
quickjs-nuttx/quickjs.c:16409
                sp[-1] = sp[-2];
    80010386:	fe0cb783          	ld	a5,-32(s9)
    8001038a:	fefcb823          	sd	a5,-16(s9)
    8001038e:	fe8cb783          	ld	a5,-24(s9)
    80010392:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16410
                sp[-2] = sp[-3];
    80010396:	fd0cb783          	ld	a5,-48(s9)
    8001039a:	fefcb023          	sd	a5,-32(s9)
    8001039e:	fd8cb783          	ld	a5,-40(s9)
    800103a2:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:16411
                sp[-3] = tmp;
    800103a6:	ef043783          	ld	a5,-272(s0)
    800103aa:	fcfcb823          	sd	a5,-48(s9)
    800103ae:	ef843783          	ld	a5,-264(s0)
    800103b2:	fcfcbc23          	sd	a5,-40(s9)
quickjs-nuttx/quickjs.c:16413
            BREAK;
    800103b6:	fffd4b03          	lbu	s6,-1(s10)
    800103ba:	0005f797          	auipc	a5,0x5f
    800103be:	a7678793          	addi	a5,a5,-1418 # 8006ee30 <dispatch_table.4>
    800103c2:	003b1713          	slli	a4,s6,0x3
    800103c6:	97ba                	add	a5,a5,a4
    800103c8:	639c                	ld	a5,0(a5)
    800103ca:	dddfe06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16417
                tmp = sp[-2];
    800103ce:	fe0cb783          	ld	a5,-32(s9)
quickjs-nuttx/quickjs.c:16422
            BREAK;
    800103d2:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16417
                tmp = sp[-2];
    800103d4:	eef43823          	sd	a5,-272(s0)
    800103d8:	fe8cb783          	ld	a5,-24(s9)
    800103dc:	eef43c23          	sd	a5,-264(s0)
quickjs-nuttx/quickjs.c:16418
                sp[-2] = sp[-3];
    800103e0:	fd0cb783          	ld	a5,-48(s9)
    800103e4:	fefcb023          	sd	a5,-32(s9)
    800103e8:	fd8cb783          	ld	a5,-40(s9)
    800103ec:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:16419
                sp[-3] = sp[-4];
    800103f0:	fc0cb783          	ld	a5,-64(s9)
    800103f4:	fcfcb823          	sd	a5,-48(s9)
    800103f8:	fc8cb783          	ld	a5,-56(s9)
    800103fc:	fcfcbc23          	sd	a5,-40(s9)
quickjs-nuttx/quickjs.c:16420
                sp[-4] = tmp;
    80010400:	ef043783          	ld	a5,-272(s0)
    80010404:	fcfcb023          	sd	a5,-64(s9)
    80010408:	ef843783          	ld	a5,-264(s0)
    8001040c:	fcfcb423          	sd	a5,-56(s9)
quickjs-nuttx/quickjs.c:16422
            BREAK;
    80010410:	fffd4b03          	lbu	s6,-1(s10)
    80010414:	0005f797          	auipc	a5,0x5f
    80010418:	a1c78793          	addi	a5,a5,-1508 # 8006ee30 <dispatch_table.4>
    8001041c:	003b1713          	slli	a4,s6,0x3
    80010420:	97ba                	add	a5,a5,a4
    80010422:	639c                	ld	a5,0(a5)
    80010424:	d83fe06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16426
                tmp = sp[-2];
    80010428:	fe0cb783          	ld	a5,-32(s9)
quickjs-nuttx/quickjs.c:16432
            BREAK;
    8001042c:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16426
                tmp = sp[-2];
    8001042e:	eef43823          	sd	a5,-272(s0)
    80010432:	fe8cb783          	ld	a5,-24(s9)
    80010436:	eef43c23          	sd	a5,-264(s0)
quickjs-nuttx/quickjs.c:16427
                sp[-2] = sp[-3];
    8001043a:	fd0cb783          	ld	a5,-48(s9)
    8001043e:	fefcb023          	sd	a5,-32(s9)
    80010442:	fd8cb783          	ld	a5,-40(s9)
    80010446:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:16428
                sp[-3] = sp[-4];
    8001044a:	fc0cb783          	ld	a5,-64(s9)
    8001044e:	fcfcb823          	sd	a5,-48(s9)
    80010452:	fc8cb783          	ld	a5,-56(s9)
    80010456:	fcfcbc23          	sd	a5,-40(s9)
quickjs-nuttx/quickjs.c:16429
                sp[-4] = sp[-5];
    8001045a:	fb0cb783          	ld	a5,-80(s9)
    8001045e:	fcfcb023          	sd	a5,-64(s9)
    80010462:	fb8cb783          	ld	a5,-72(s9)
    80010466:	fcfcb423          	sd	a5,-56(s9)
quickjs-nuttx/quickjs.c:16430
                sp[-5] = tmp;
    8001046a:	ef043783          	ld	a5,-272(s0)
    8001046e:	fafcb823          	sd	a5,-80(s9)
    80010472:	ef843783          	ld	a5,-264(s0)
    80010476:	fafcbc23          	sd	a5,-72(s9)
quickjs-nuttx/quickjs.c:16432
            BREAK;
    8001047a:	fffd4b03          	lbu	s6,-1(s10)
    8001047e:	0005f797          	auipc	a5,0x5f
    80010482:	9b278793          	addi	a5,a5,-1614 # 8006ee30 <dispatch_table.4>
    80010486:	003b1713          	slli	a4,s6,0x3
    8001048a:	97ba                	add	a5,a5,a4
    8001048c:	639c                	ld	a5,0(a5)
    8001048e:	d19fe06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16436
                tmp = sp[-2];
    80010492:	fe0cb783          	ld	a5,-32(s9)
quickjs-nuttx/quickjs.c:16440
            BREAK;
    80010496:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16436
                tmp = sp[-2];
    80010498:	eef43823          	sd	a5,-272(s0)
    8001049c:	fe8cb783          	ld	a5,-24(s9)
    800104a0:	eef43c23          	sd	a5,-264(s0)
quickjs-nuttx/quickjs.c:16437
                sp[-2] = sp[-1];
    800104a4:	ff0cb783          	ld	a5,-16(s9)
    800104a8:	fefcb023          	sd	a5,-32(s9)
    800104ac:	ff8cb783          	ld	a5,-8(s9)
    800104b0:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:16438
                sp[-1] = tmp;
    800104b4:	ef043783          	ld	a5,-272(s0)
    800104b8:	fefcb823          	sd	a5,-16(s9)
    800104bc:	ef843783          	ld	a5,-264(s0)
    800104c0:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16440
            BREAK;
    800104c4:	fffd4b03          	lbu	s6,-1(s10)
    800104c8:	0005f797          	auipc	a5,0x5f
    800104cc:	96878793          	addi	a5,a5,-1688 # 8006ee30 <dispatch_table.4>
    800104d0:	003b1713          	slli	a4,s6,0x3
    800104d4:	97ba                	add	a5,a5,a4
    800104d6:	639c                	ld	a5,0(a5)
    800104d8:	ccffe06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16444
                tmp1 = sp[-4];
    800104dc:	fc0cb783          	ld	a5,-64(s9)
quickjs-nuttx/quickjs.c:16451
            BREAK;
    800104e0:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16444
                tmp1 = sp[-4];
    800104e2:	ecf43823          	sd	a5,-304(s0)
    800104e6:	fc8cb783          	ld	a5,-56(s9)
    800104ea:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:16445
                tmp2 = sp[-3];
    800104ee:	fd0cb783          	ld	a5,-48(s9)
    800104f2:	eef43823          	sd	a5,-272(s0)
    800104f6:	fd8cb783          	ld	a5,-40(s9)
    800104fa:	eef43c23          	sd	a5,-264(s0)
quickjs-nuttx/quickjs.c:16446
                sp[-4] = sp[-2];
    800104fe:	fe0cb783          	ld	a5,-32(s9)
    80010502:	fcfcb023          	sd	a5,-64(s9)
    80010506:	fe8cb783          	ld	a5,-24(s9)
    8001050a:	fcfcb423          	sd	a5,-56(s9)
quickjs-nuttx/quickjs.c:16447
                sp[-3] = sp[-1];
    8001050e:	ff0cb783          	ld	a5,-16(s9)
    80010512:	fcfcb823          	sd	a5,-48(s9)
    80010516:	ff8cb783          	ld	a5,-8(s9)
    8001051a:	fcfcbc23          	sd	a5,-40(s9)
quickjs-nuttx/quickjs.c:16448
                sp[-2] = tmp1;
    8001051e:	ed043783          	ld	a5,-304(s0)
    80010522:	fefcb023          	sd	a5,-32(s9)
    80010526:	ed843783          	ld	a5,-296(s0)
    8001052a:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:16449
                sp[-1] = tmp2;
    8001052e:	ef043783          	ld	a5,-272(s0)
    80010532:	fefcb823          	sd	a5,-16(s9)
    80010536:	ef843783          	ld	a5,-264(s0)
    8001053a:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16451
            BREAK;
    8001053e:	fffd4b03          	lbu	s6,-1(s10)
    80010542:	0005f797          	auipc	a5,0x5f
    80010546:	8ee78793          	addi	a5,a5,-1810 # 8006ee30 <dispatch_table.4>
    8001054a:	003b1713          	slli	a4,s6,0x3
    8001054e:	97ba                	add	a5,a5,a4
    80010550:	639c                	ld	a5,0(a5)
    80010552:	c55fe06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    80010556:	001d4703          	lbu	a4,1(s10)
    8001055a:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16456
                pc += 4;
    8001055e:	004d0a13          	addi	s4,s10,4
get_u32():
quickjs-nuttx/cutils.h:170
    80010562:	0722                	slli	a4,a4,0x8
    80010564:	8f5d                	or	a4,a4,a5
    80010566:	002d4783          	lbu	a5,2(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16457
                *sp++ = js_closure(ctx, bfunc, var_refs, sf);
    8001056a:	010c8993          	addi	s3,s9,16
get_u32():
quickjs-nuttx/cutils.h:170
    8001056e:	07c2                	slli	a5,a5,0x10
    80010570:	8f5d                	or	a4,a4,a5
    80010572:	003d4783          	lbu	a5,3(s10)
    80010576:	07e2                	slli	a5,a5,0x18
JS_CallInternal():
quickjs-nuttx/quickjs.c:16455
                JSValue bfunc = JS_DupValue(ctx, b->cpool[get_u32(pc)]);
    80010578:	8fd9                	or	a5,a5,a4
    8001057a:	050db703          	ld	a4,80(s11)
    8001057e:	0792                	slli	a5,a5,0x4
    80010580:	97ba                	add	a5,a5,a4
    80010582:	6388                	ld	a0,0(a5)
    80010584:	678c                	ld	a1,8(a5)
    80010586:	e95f90ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:16457
                *sp++ = js_closure(ctx, bfunc, var_refs, sf);
    8001058a:	77fd                	lui	a5,0xfffff
    8001058c:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    80010590:	97a2                	add	a5,a5,s0
    80010592:	6398                	ld	a4,0(a5)
    80010594:	77fd                	lui	a5,0xfffff
    80010596:	65078793          	addi	a5,a5,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    8001059a:	97a2                	add	a5,a5,s0
    8001059c:	6394                	ld	a3,0(a5)
quickjs-nuttx/quickjs.c:16455
                JSValue bfunc = JS_DupValue(ctx, b->cpool[get_u32(pc)]);
    8001059e:	862e                	mv	a2,a1
    800105a0:	eea43823          	sd	a0,-272(s0)
    800105a4:	eeb43c23          	sd	a1,-264(s0)
quickjs-nuttx/quickjs.c:16457
                *sp++ = js_closure(ctx, bfunc, var_refs, sf);
    800105a8:	85aa                	mv	a1,a0
    800105aa:	8526                	mv	a0,s1
    800105ac:	6c0200ef          	jal	ra,80030c6c <js_closure>
    800105b0:	00bcb423          	sd	a1,8(s9)
    800105b4:	00acb023          	sd	a0,0(s9)
quickjs-nuttx/quickjs.c:16458
                if (unlikely(JS_IsException(sp[-1])))
    800105b8:	2581                	sext.w	a1,a1
    800105ba:	4799                	li	a5,6
    800105bc:	00f59663          	bne	a1,a5,800105c8 <JS_CallInternal+0x165a>
quickjs-nuttx/quickjs.c:16457
                *sp++ = js_closure(ctx, bfunc, var_refs, sf);
    800105c0:	8cce                	mv	s9,s3
quickjs-nuttx/quickjs.c:16456
                pc += 4;
    800105c2:	8d52                	mv	s10,s4
    800105c4:	a3aff06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16461
            BREAK;
    800105c8:	004d4b03          	lbu	s6,4(s10)
    800105cc:	0005f797          	auipc	a5,0x5f
    800105d0:	86478793          	addi	a5,a5,-1948 # 8006ee30 <dispatch_table.4>
    800105d4:	8cce                	mv	s9,s3
    800105d6:	003b1713          	slli	a4,s6,0x3
    800105da:	97ba                	add	a5,a5,a4
    800105dc:	639c                	ld	a5,0(a5)
    800105de:	0d15                	addi	s10,s10,5
    800105e0:	bc7fe06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16467
            call_argc = opcode - OP_call0;
    800105e4:	f10b0a1b          	addiw	s4,s6,-240
quickjs-nuttx/quickjs.c:16478
                sf->cur_pc = pc;
    800105e8:	77fd                	lui	a5,0xfffff
    800105ea:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    800105ee:	97a2                	add	a5,a5,s0
    800105f0:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:16477
                call_argv = sp - call_argc;
    800105f2:	004a1613          	slli	a2,s4,0x4
    800105f6:	40cc8633          	sub	a2,s9,a2
quickjs-nuttx/quickjs.c:16478
                sf->cur_pc = pc;
    800105fa:	03a7bc23          	sd	s10,56(a5)
quickjs-nuttx/quickjs.c:16479
                ret_val = JS_CallInternal(ctx, call_argv[-1], JS_UNDEFINED,
    800105fe:	478d                	li	a5,3
    80010600:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:16480
                                          JS_UNDEFINED, call_argc, call_argv, 0);
    80010604:	eef43c23          	sd	a5,-264(s0)
quickjs-nuttx/quickjs.c:16479
                ret_val = JS_CallInternal(ctx, call_argv[-1], JS_UNDEFINED,
    80010608:	ec043823          	sd	zero,-304(s0)
quickjs-nuttx/quickjs.c:16480
                                          JS_UNDEFINED, call_argc, call_argv, 0);
    8001060c:	ee043823          	sd	zero,-272(s0)
quickjs-nuttx/quickjs.c:16479
                ret_val = JS_CallInternal(ctx, call_argv[-1], JS_UNDEFINED,
    80010610:	e402                	sd	zero,8(sp)
    80010612:	e032                	sd	a2,0(sp)
    80010614:	ff063583          	ld	a1,-16(a2)
    80010618:	ff060a93          	addi	s5,a2,-16
    8001061c:	ff863603          	ld	a2,-8(a2)
    80010620:	4781                	li	a5,0
    80010622:	4681                	li	a3,0
    80010624:	470d                	li	a4,3
    80010626:	88d2                	mv	a7,s4
    80010628:	480d                	li	a6,3
    8001062a:	8526                	mv	a0,s1
    8001062c:	943fe0ef          	jal	ra,8000ef6e <JS_CallInternal>
    80010630:	f8040793          	addi	a5,s0,-128
    80010634:	97ca                	add	a5,a5,s2
    80010636:	72a7b023          	sd	a0,1824(a5)
    8001063a:	72b7b423          	sd	a1,1832(a5)
quickjs-nuttx/quickjs.c:16481
                if (unlikely(JS_IsException(ret_val)))
    8001063e:	0005869b          	sext.w	a3,a1
    80010642:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:16479
                ret_val = JS_CallInternal(ctx, call_argv[-1], JS_UNDEFINED,
    80010644:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:16481
                if (unlikely(JS_IsException(ret_val)))
    80010646:	9ae68c63          	beq	a3,a4,8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16483
                if (opcode == OP_tail_call)
    8001064a:	02300713          	li	a4,35
    8001064e:	1aeb0363          	beq	s6,a4,800107f4 <JS_CallInternal+0x1886>
    80010652:	89d6                	mv	s3,s5
quickjs-nuttx/quickjs.c:16485
                for(i = -1; i < call_argc; i++)
    80010654:	5afd                	li	s5,-1
quickjs-nuttx/quickjs.c:16485 (discriminator 1)
    80010656:	054acc63          	blt	s5,s4,800106ae <JS_CallInternal+0x1740>
quickjs-nuttx/quickjs.c:16488
                *sp++ = ret_val;
    8001065a:	f8040793          	addi	a5,s0,-128
    8001065e:	97ca                	add	a5,a5,s2
    80010660:	7207b703          	ld	a4,1824(a5)
quickjs-nuttx/quickjs.c:16487
                sp -= call_argc + 1;
    80010664:	001a089b          	addiw	a7,s4,1
quickjs-nuttx/quickjs.c:16488
                *sp++ = ret_val;
    80010668:	7287b783          	ld	a5,1832(a5)
quickjs-nuttx/quickjs.c:16487
                sp -= call_argc + 1;
    8001066c:	0892                	slli	a7,a7,0x4
    8001066e:	411c88b3          	sub	a7,s9,a7
quickjs-nuttx/quickjs.c:16488
                *sp++ = ret_val;
    80010672:	00e8b023          	sd	a4,0(a7)
    80010676:	00f8b423          	sd	a5,8(a7)
quickjs-nuttx/quickjs.c:16490
            BREAK;
    8001067a:	000d4b03          	lbu	s6,0(s10)
    8001067e:	0005e797          	auipc	a5,0x5e
    80010682:	7b278793          	addi	a5,a5,1970 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:16488
                *sp++ = ret_val;
    80010686:	01088c93          	addi	s9,a7,16
quickjs-nuttx/quickjs.c:16490
            BREAK;
    8001068a:	003b1713          	slli	a4,s6,0x3
    8001068e:	97ba                	add	a5,a5,a4
    80010690:	639c                	ld	a5,0(a5)
    80010692:	0d05                	addi	s10,s10,1
    80010694:	b13fe06f          	j	8000f1a6 <JS_CallInternal+0x238>
    80010698:	b7b1                	j	800105e4 <JS_CallInternal+0x1676>
    8001069a:	b7a9                	j	800105e4 <JS_CallInternal+0x1676>
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8001069c:	001d4883          	lbu	a7,1(s10)
    800106a0:	000d4a03          	lbu	s4,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16474
                pc += 2;
    800106a4:	0d09                	addi	s10,s10,2
get_u16():
quickjs-nuttx/cutils.h:185
    800106a6:	08a2                	slli	a7,a7,0x8
JS_CallInternal():
quickjs-nuttx/quickjs.c:16473
                call_argc = get_u16(pc);
    800106a8:	0148ea33          	or	s4,a7,s4
quickjs-nuttx/quickjs.c:16475
                goto has_call_argc;
    800106ac:	bf35                	j	800105e8 <JS_CallInternal+0x167a>
quickjs-nuttx/quickjs.c:16486 (discriminator 3)
                    JS_FreeValue(ctx, call_argv[i]);
    800106ae:	0009b583          	ld	a1,0(s3)
    800106b2:	0089b603          	ld	a2,8(s3)
    800106b6:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:16485 (discriminator 3)
                for(i = -1; i < call_argc; i++)
    800106b8:	2a85                	addiw	s5,s5,1
quickjs-nuttx/quickjs.c:16486 (discriminator 3)
                    JS_FreeValue(ctx, call_argv[i]);
    800106ba:	8e4fb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:16485 (discriminator 3)
                for(i = -1; i < call_argc; i++)
    800106be:	09c1                	addi	s3,s3,16
    800106c0:	bf59                	j	80010656 <JS_CallInternal+0x16e8>
get_u16():
quickjs-nuttx/cutils.h:185
    800106c2:	001d4983          	lbu	s3,1(s10)
    800106c6:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16494
                pc += 2;
    800106ca:	002d0a93          	addi	s5,s10,2
get_u16():
quickjs-nuttx/cutils.h:185
    800106ce:	09a2                	slli	s3,s3,0x8
    800106d0:	00f9e833          	or	a6,s3,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:16496
                sf->cur_pc = pc;
    800106d4:	77fd                	lui	a5,0xfffff
    800106d6:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    800106da:	97a2                	add	a5,a5,s0
    800106dc:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:16493
                call_argc = get_u16(pc);
    800106de:	89c2                	mv	s3,a6
quickjs-nuttx/quickjs.c:16495
                call_argv = sp - call_argc;
    800106e0:	0812                	slli	a6,a6,0x4
    800106e2:	410c8833          	sub	a6,s9,a6
quickjs-nuttx/quickjs.c:16496
                sf->cur_pc = pc;
    800106e6:	0357bc23          	sd	s5,56(a5)
quickjs-nuttx/quickjs.c:16497
                ret_val = JS_CallConstructorInternal(ctx, call_argv[-2],
    800106ea:	ff083683          	ld	a3,-16(a6)
    800106ee:	ff883703          	ld	a4,-8(a6)
    800106f2:	fe083583          	ld	a1,-32(a6)
    800106f6:	fe883603          	ld	a2,-24(a6)
    800106fa:	87ce                	mv	a5,s3
    800106fc:	4881                	li	a7,0
    800106fe:	8526                	mv	a0,s1
    80010700:	fe080a13          	addi	s4,a6,-32
    80010704:	294310ef          	jal	ra,80041998 <JS_CallConstructorInternal>
    80010708:	f8040793          	addi	a5,s0,-128
    8001070c:	97ca                	add	a5,a5,s2
    8001070e:	72b7b423          	sd	a1,1832(a5)
    80010712:	72a7b023          	sd	a0,1824(a5)
quickjs-nuttx/quickjs.c:16500
                if (unlikely(JS_IsException(ret_val)))
    80010716:	2581                	sext.w	a1,a1
    80010718:	4799                	li	a5,6
    8001071a:	00f59463          	bne	a1,a5,80010722 <JS_CallInternal+0x17b4>
    8001071e:	1e80606f          	j	80016906 <JS_CallInternal+0x7998>
quickjs-nuttx/quickjs.c:16502
                for(i = -2; i < call_argc; i++)
    80010722:	5af9                	li	s5,-2
quickjs-nuttx/quickjs.c:16503 (discriminator 3)
                    JS_FreeValue(ctx, call_argv[i]);
    80010724:	000a3583          	ld	a1,0(s4)
    80010728:	008a3603          	ld	a2,8(s4)
    8001072c:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:16502 (discriminator 3)
                for(i = -2; i < call_argc; i++)
    8001072e:	2a85                	addiw	s5,s5,1
quickjs-nuttx/quickjs.c:16503 (discriminator 3)
                    JS_FreeValue(ctx, call_argv[i]);
    80010730:	86efb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:16502 (discriminator 3)
                for(i = -2; i < call_argc; i++)
    80010734:	0a41                	addi	s4,s4,16
    80010736:	ff3ac7e3          	blt	s5,s3,80010724 <JS_CallInternal+0x17b6>
quickjs-nuttx/quickjs.c:16505
                *sp++ = ret_val;
    8001073a:	f8040793          	addi	a5,s0,-128
    8001073e:	97ca                	add	a5,a5,s2
    80010740:	7207b703          	ld	a4,1824(a5)
quickjs-nuttx/quickjs.c:16504
                sp -= call_argc + 2;
    80010744:	0989                	addi	s3,s3,2
quickjs-nuttx/quickjs.c:16505
                *sp++ = ret_val;
    80010746:	7287b783          	ld	a5,1832(a5)
quickjs-nuttx/quickjs.c:16504
                sp -= call_argc + 2;
    8001074a:	0992                	slli	s3,s3,0x4
    8001074c:	413c89b3          	sub	s3,s9,s3
quickjs-nuttx/quickjs.c:16505
                *sp++ = ret_val;
    80010750:	00e9b023          	sd	a4,0(s3)
    80010754:	00f9b423          	sd	a5,8(s3)
quickjs-nuttx/quickjs.c:16507
            BREAK;
    80010758:	002d4b03          	lbu	s6,2(s10)
    8001075c:	0005e797          	auipc	a5,0x5e
    80010760:	6d478793          	addi	a5,a5,1748 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:16505
                *sp++ = ret_val;
    80010764:	01098c93          	addi	s9,s3,16
quickjs-nuttx/quickjs.c:16507
            BREAK;
    80010768:	003b1713          	slli	a4,s6,0x3
    8001076c:	97ba                	add	a5,a5,a4
    8001076e:	639c                	ld	a5,0(a5)
    80010770:	0d0d                	addi	s10,s10,3
    80010772:	a35fe06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    80010776:	001d4a03          	lbu	s4,1(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16514
                sf->cur_pc = pc;
    8001077a:	77fd                	lui	a5,0xfffff
get_u16():
quickjs-nuttx/cutils.h:185
    8001077c:	000d4883          	lbu	a7,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16514
    80010780:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    80010784:	97a2                	add	a5,a5,s0
    80010786:	639c                	ld	a5,0(a5)
get_u16():
quickjs-nuttx/cutils.h:185
    80010788:	0a22                	slli	s4,s4,0x8
    8001078a:	011a6633          	or	a2,s4,a7
JS_CallInternal():
quickjs-nuttx/quickjs.c:16511
                call_argc = get_u16(pc);
    8001078e:	8a32                	mv	s4,a2
quickjs-nuttx/quickjs.c:16512
                pc += 2;
    80010790:	002d0b93          	addi	s7,s10,2
quickjs-nuttx/quickjs.c:16513
                call_argv = sp - call_argc;
    80010794:	0612                	slli	a2,a2,0x4
quickjs-nuttx/quickjs.c:16514
                sf->cur_pc = pc;
    80010796:	0377bc23          	sd	s7,56(a5)
quickjs-nuttx/quickjs.c:16513
                call_argv = sp - call_argc;
    8001079a:	40cc8633          	sub	a2,s9,a2
quickjs-nuttx/quickjs.c:16516
                                          JS_UNDEFINED, call_argc, call_argv, 0);
    8001079e:	478d                	li	a5,3
    800107a0:	eef43c23          	sd	a5,-264(s0)
    800107a4:	ee043823          	sd	zero,-272(s0)
quickjs-nuttx/quickjs.c:16515
                ret_val = JS_CallInternal(ctx, call_argv[-1], call_argv[-2],
    800107a8:	e402                	sd	zero,8(sp)
    800107aa:	e032                	sd	a2,0(sp)
    800107ac:	fe063683          	ld	a3,-32(a2)
    800107b0:	ff063583          	ld	a1,-16(a2)
    800107b4:	fe060a93          	addi	s5,a2,-32
    800107b8:	008ab703          	ld	a4,8(s5)
    800107bc:	ff863603          	ld	a2,-8(a2)
    800107c0:	4781                	li	a5,0
    800107c2:	88d2                	mv	a7,s4
    800107c4:	480d                	li	a6,3
    800107c6:	8526                	mv	a0,s1
    800107c8:	fa6fe0ef          	jal	ra,8000ef6e <JS_CallInternal>
    800107cc:	f8040793          	addi	a5,s0,-128
    800107d0:	97ca                	add	a5,a5,s2
    800107d2:	72a7b023          	sd	a0,1824(a5)
    800107d6:	72b7b423          	sd	a1,1832(a5)
quickjs-nuttx/quickjs.c:16517
                if (unlikely(JS_IsException(ret_val)))
    800107da:	0005869b          	sext.w	a3,a1
    800107de:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:16515
                ret_val = JS_CallInternal(ctx, call_argv[-1], call_argv[-2],
    800107e0:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:16517
                if (unlikely(JS_IsException(ret_val)))
    800107e2:	00e69563          	bne	a3,a4,800107ec <JS_CallInternal+0x187e>
quickjs-nuttx/quickjs.c:16512
                pc += 2;
    800107e6:	8d5e                	mv	s10,s7
    800107e8:	816ff06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16519
                if (opcode == OP_tail_call_method)
    800107ec:	02500713          	li	a4,37
    800107f0:	08eb1863          	bne	s6,a4,80010880 <JS_CallInternal+0x1912>
quickjs-nuttx/quickjs.c:16515
                ret_val = JS_CallInternal(ctx, call_argv[-1], call_argv[-2],
    800107f4:	7207a783          	lw	a5,1824(a5)
    800107f8:	777d                	lui	a4,0xfffff
    800107fa:	62870713          	addi	a4,a4,1576 # fffffffffffff628 <_ebss+0xffffffff7fefe4c2>
    800107fe:	9722                	add	a4,a4,s0
    80010800:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs.c:18558
        if (unlikely(!list_empty(&sf->var_ref_list))) {
    80010802:	777d                	lui	a4,0xfffff
    80010804:	66070713          	addi	a4,a4,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    80010808:	77fd                	lui	a5,0xfffff
    8001080a:	9722                	add	a4,a4,s0
    8001080c:	6318                	ld	a4,0(a4)
    8001080e:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    80010812:	97a2                	add	a5,a5,s0
    80010814:	639c                	ld	a5,0(a5)
    80010816:	7b18                	ld	a4,48(a4)
    80010818:	02878793          	addi	a5,a5,40
    8001081c:	00f70e63          	beq	a4,a5,80010838 <JS_CallInternal+0x18ca>
quickjs-nuttx/quickjs.c:18560
            close_var_refs(rt, sf);
    80010820:	77fd                	lui	a5,0xfffff
    80010822:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    80010826:	97a2                	add	a5,a5,s0
    80010828:	638c                	ld	a1,0(a5)
    8001082a:	77fd                	lui	a5,0xfffff
    8001082c:	64878793          	addi	a5,a5,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
    80010830:	97a2                	add	a5,a5,s0
    80010832:	6388                	ld	a0,0(a5)
    80010834:	99dfb0ef          	jal	ra,8000c1d0 <close_var_refs>
quickjs-nuttx/quickjs.c:18563 (discriminator 1)
        for(pval = local_buf; pval < sp; pval++) {
    80010838:	77fd                	lui	a5,0xfffff
    8001083a:	63878793          	addi	a5,a5,1592 # fffffffffffff638 <_ebss+0xffffffff7fefe4d2>
    8001083e:	97a2                	add	a5,a5,s0
    80010840:	639c                	ld	a5,0(a5)
    80010842:	0197e463          	bltu	a5,s9,8001084a <JS_CallInternal+0x18dc>
    80010846:	6f30506f          	j	80016738 <JS_CallInternal+0x77ca>
quickjs-nuttx/quickjs.c:18564 (discriminator 3)
            JS_FreeValue(ctx, *pval);
    8001084a:	77fd                	lui	a5,0xfffff
    8001084c:	63878793          	addi	a5,a5,1592 # fffffffffffff638 <_ebss+0xffffffff7fefe4d2>
    80010850:	97a2                	add	a5,a5,s0
    80010852:	639c                	ld	a5,0(a5)
    80010854:	8526                	mv	a0,s1
    80010856:	638c                	ld	a1,0(a5)
    80010858:	77fd                	lui	a5,0xfffff
    8001085a:	63878793          	addi	a5,a5,1592 # fffffffffffff638 <_ebss+0xffffffff7fefe4d2>
    8001085e:	97a2                	add	a5,a5,s0
    80010860:	639c                	ld	a5,0(a5)
    80010862:	6790                	ld	a2,8(a5)
    80010864:	f3bfa0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:18563 (discriminator 3)
        for(pval = local_buf; pval < sp; pval++) {
    80010868:	77fd                	lui	a5,0xfffff
    8001086a:	63878793          	addi	a5,a5,1592 # fffffffffffff638 <_ebss+0xffffffff7fefe4d2>
    8001086e:	97a2                	add	a5,a5,s0
    80010870:	639c                	ld	a5,0(a5)
    80010872:	777d                	lui	a4,0xfffff
    80010874:	63870713          	addi	a4,a4,1592 # fffffffffffff638 <_ebss+0xffffffff7fefe4d2>
    80010878:	07c1                	addi	a5,a5,16
    8001087a:	9722                	add	a4,a4,s0
    8001087c:	e31c                	sd	a5,0(a4)
    8001087e:	bf6d                	j	80010838 <JS_CallInternal+0x18ca>
quickjs-nuttx/quickjs.c:16521
                for(i = -2; i < call_argc; i++)
    80010880:	59f9                	li	s3,-2
quickjs-nuttx/quickjs.c:16522 (discriminator 3)
                    JS_FreeValue(ctx, call_argv[i]);
    80010882:	000ab583          	ld	a1,0(s5)
    80010886:	008ab603          	ld	a2,8(s5)
    8001088a:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:16521 (discriminator 3)
                for(i = -2; i < call_argc; i++)
    8001088c:	2985                	addiw	s3,s3,1
quickjs-nuttx/quickjs.c:16522 (discriminator 3)
                    JS_FreeValue(ctx, call_argv[i]);
    8001088e:	f11fa0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:16521 (discriminator 3)
                for(i = -2; i < call_argc; i++)
    80010892:	0ac1                	addi	s5,s5,16
    80010894:	ff49c7e3          	blt	s3,s4,80010882 <JS_CallInternal+0x1914>
quickjs-nuttx/quickjs.c:16524
                *sp++ = ret_val;
    80010898:	f8040793          	addi	a5,s0,-128
    8001089c:	97ca                	add	a5,a5,s2
    8001089e:	7207b703          	ld	a4,1824(a5)
quickjs-nuttx/quickjs.c:16523
                sp -= call_argc + 2;
    800108a2:	0a09                	addi	s4,s4,2
quickjs-nuttx/quickjs.c:16524
                *sp++ = ret_val;
    800108a4:	7287b783          	ld	a5,1832(a5)
quickjs-nuttx/quickjs.c:16523
                sp -= call_argc + 2;
    800108a8:	0a12                	slli	s4,s4,0x4
    800108aa:	414c8a33          	sub	s4,s9,s4
quickjs-nuttx/quickjs.c:16524
                *sp++ = ret_val;
    800108ae:	00ea3023          	sd	a4,0(s4)
    800108b2:	00fa3423          	sd	a5,8(s4)
quickjs-nuttx/quickjs.c:16526
            BREAK;
    800108b6:	002d4b03          	lbu	s6,2(s10)
    800108ba:	0005e797          	auipc	a5,0x5e
    800108be:	57678793          	addi	a5,a5,1398 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:16524
                *sp++ = ret_val;
    800108c2:	010a0c93          	addi	s9,s4,16
quickjs-nuttx/quickjs.c:16526
            BREAK;
    800108c6:	003b1713          	slli	a4,s6,0x3
    800108ca:	97ba                	add	a5,a5,a4
    800108cc:	639c                	ld	a5,0(a5)
    800108ce:	0d0d                	addi	s10,s10,3
    800108d0:	8d7fe06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    800108d4:	001d4983          	lbu	s3,1(s10)
    800108d8:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16533
                ret_val = JS_NewArray(ctx);
    800108dc:	8526                	mv	a0,s1
get_u16():
quickjs-nuttx/cutils.h:185
    800108de:	09a2                	slli	s3,s3,0x8
    800108e0:	00f9eb33          	or	s6,s3,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:16533
    800108e4:	1770b0ef          	jal	ra,8001c25a <JS_NewArray>
    800108e8:	f8040793          	addi	a5,s0,-128
    800108ec:	01278ab3          	add	s5,a5,s2
    800108f0:	72aab023          	sd	a0,1824(s5)
    800108f4:	72bab423          	sd	a1,1832(s5)
quickjs-nuttx/quickjs.c:16534
                if (unlikely(JS_IsException(ret_val)))
    800108f8:	0005871b          	sext.w	a4,a1
    800108fc:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:16531
                call_argc = get_u16(pc);
    800108fe:	89da                	mv	s3,s6
quickjs-nuttx/quickjs.c:16532
                pc += 2;
    80010900:	002d0a13          	addi	s4,s10,2
quickjs-nuttx/quickjs.c:16533
                ret_val = JS_NewArray(ctx);
    80010904:	862e                	mv	a2,a1
    80010906:	00050b9b          	sext.w	s7,a0
quickjs-nuttx/quickjs.c:16534
                if (unlikely(JS_IsException(ret_val)))
    8001090a:	00f71463          	bne	a4,a5,80010912 <JS_CallInternal+0x19a4>
    8001090e:	7ff0506f          	j	8001690c <JS_CallInternal+0x799e>
quickjs-nuttx/quickjs.c:16536
                call_argv = sp - call_argc;
    80010912:	0b12                	slli	s6,s6,0x4
    80010914:	416c8b33          	sub	s6,s9,s6
quickjs-nuttx/quickjs.c:16538
                    ret = JS_DefinePropertyValue(ctx, ret_val, __JS_AtomFromUInt32(i), call_argv[i],
    80010918:	6811                	lui	a6,0x4
    8001091a:	8c5a                	mv	s8,s6
quickjs-nuttx/quickjs.c:16537
                for(i = 0; i < call_argc; i++) {
    8001091c:	4881                	li	a7,0
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    8001091e:	80000337          	lui	t1,0x80000
JS_CallInternal():
quickjs-nuttx/quickjs.c:16538
                    ret = JS_DefinePropertyValue(ctx, ret_val, __JS_AtomFromUInt32(i), call_argv[i],
    80010922:	081d                	addi	a6,a6,7
quickjs-nuttx/quickjs.c:16537 (discriminator 1)
                for(i = 0; i < call_argc; i++) {
    80010924:	0338ce63          	blt	a7,s3,80010960 <JS_CallInternal+0x19f2>
quickjs-nuttx/quickjs.c:16547
                *sp++ = ret_val;
    80010928:	f8040793          	addi	a5,s0,-128
    8001092c:	97ca                	add	a5,a5,s2
    8001092e:	7377a023          	sw	s7,1824(a5)
    80010932:	72c7b423          	sd	a2,1832(a5)
    80010936:	7207b783          	ld	a5,1824(a5)
    8001093a:	00cb3423          	sd	a2,8(s6)
    8001093e:	010b0c93          	addi	s9,s6,16
    80010942:	00fb3023          	sd	a5,0(s6)
quickjs-nuttx/quickjs.c:16549
            BREAK;
    80010946:	002d4b03          	lbu	s6,2(s10)
    8001094a:	0005e797          	auipc	a5,0x5e
    8001094e:	4e678793          	addi	a5,a5,1254 # 8006ee30 <dispatch_table.4>
    80010952:	0d0d                	addi	s10,s10,3
    80010954:	003b1713          	slli	a4,s6,0x3
    80010958:	97ba                	add	a5,a5,a4
    8001095a:	639c                	ld	a5,0(a5)
    8001095c:	84bfe06f          	j	8000f1a6 <JS_CallInternal+0x238>
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    80010960:	77fd                	lui	a5,0xfffff
    80010962:	61878793          	addi	a5,a5,1560 # fffffffffffff618 <_ebss+0xffffffff7fefe4b2>
JS_CallInternal():
quickjs-nuttx/quickjs.c:16538
                    ret = JS_DefinePropertyValue(ctx, ret_val, __JS_AtomFromUInt32(i), call_argv[i],
    80010966:	737aa023          	sw	s7,1824(s5)
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    8001096a:	97a2                	add	a5,a5,s0
JS_CallInternal():
quickjs-nuttx/quickjs.c:16538
                    ret = JS_DefinePropertyValue(ctx, ret_val, __JS_AtomFromUInt32(i), call_argv[i],
    8001096c:	757d                	lui	a0,0xfffff
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    8001096e:	0117b023          	sd	a7,0(a5)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16538
                    ret = JS_DefinePropertyValue(ctx, ret_val, __JS_AtomFromUInt32(i), call_argv[i],
    80010972:	000c3703          	ld	a4,0(s8)
    80010976:	008c3783          	ld	a5,8(s8)
    8001097a:	720ab583          	ld	a1,1824(s5)
    8001097e:	63050513          	addi	a0,a0,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    80010982:	0068e6b3          	or	a3,a7,t1
JS_CallInternal():
quickjs-nuttx/quickjs.c:16538
                    ret = JS_DefinePropertyValue(ctx, ret_val, __JS_AtomFromUInt32(i), call_argv[i],
    80010986:	9522                	add	a0,a0,s0
    80010988:	e110                	sd	a2,0(a0)
    8001098a:	2681                	sext.w	a3,a3
    8001098c:	8526                	mv	a0,s1
    8001098e:	72cab423          	sd	a2,1832(s5)
    80010992:	09b070ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:16541
                    if (ret < 0) {
    80010996:	77fd                	lui	a5,0xfffff
    80010998:	63078793          	addi	a5,a5,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    8001099c:	97a2                	add	a5,a5,s0
    8001099e:	6390                	ld	a2,0(a5)
    800109a0:	6791                	lui	a5,0x4
    800109a2:	00778813          	addi	a6,a5,7 # 4007 <asinh-0x7fffbff9>
    800109a6:	77fd                	lui	a5,0xfffff
quickjs-nuttx/quickjs.c:16540
                    call_argv[i] = JS_UNDEFINED;
    800109a8:	4e0d                	li	t3,3
quickjs-nuttx/quickjs.c:16541
                    if (ret < 0) {
    800109aa:	61878793          	addi	a5,a5,1560 # fffffffffffff618 <_ebss+0xffffffff7fefe4b2>
quickjs-nuttx/quickjs.c:16540
                    call_argv[i] = JS_UNDEFINED;
    800109ae:	000c3023          	sd	zero,0(s8)
    800109b2:	01cc3423          	sd	t3,8(s8)
quickjs-nuttx/quickjs.c:16541
                    if (ret < 0) {
    800109b6:	97a2                	add	a5,a5,s0
    800109b8:	0007b883          	ld	a7,0(a5)
    800109bc:	0c41                	addi	s8,s8,16
    800109be:	80000337          	lui	t1,0x80000
    800109c2:	00055c63          	bgez	a0,800109da <JS_CallInternal+0x1a6c>
quickjs-nuttx/quickjs.c:16542
                        JS_FreeValue(ctx, ret_val);
    800109c6:	720ab583          	ld	a1,1824(s5)
    800109ca:	728ab603          	ld	a2,1832(s5)
    800109ce:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:16532
                pc += 2;
    800109d0:	8d52                	mv	s10,s4
quickjs-nuttx/quickjs.c:16542
                        JS_FreeValue(ctx, ret_val);
    800109d2:	dcdfa0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:16543
                        goto exception;
    800109d6:	e29fe06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16537
                for(i = 0; i < call_argc; i++) {
    800109da:	2885                	addiw	a7,a7,1
    800109dc:	b7a1                	j	80010924 <JS_CallInternal+0x19b6>
get_u16():
quickjs-nuttx/cutils.h:185
    800109de:	001d4783          	lbu	a5,1(s10)
    800109e2:	000d4703          	lbu	a4,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16557
                ret_val = js_function_apply(ctx, sp[-3], 2, (JSValueConst *)&sp[-2], magic);
    800109e6:	fd0cb583          	ld	a1,-48(s9)
    800109ea:	fd8cb603          	ld	a2,-40(s9)
    800109ee:	fe0c8a13          	addi	s4,s9,-32
get_u16():
quickjs-nuttx/cutils.h:185
    800109f2:	07a2                	slli	a5,a5,0x8
JS_CallInternal():
quickjs-nuttx/quickjs.c:16557
    800109f4:	8fd9                	or	a5,a5,a4
    800109f6:	4689                	li	a3,2
    800109f8:	8752                	mv	a4,s4
    800109fa:	8526                	mv	a0,s1
    800109fc:	422320ef          	jal	ra,80042e1e <js_function_apply>
    80010a00:	f8040793          	addi	a5,s0,-128
    80010a04:	012789b3          	add	s3,a5,s2
    80010a08:	72b9b423          	sd	a1,1832(s3)
    80010a0c:	72a9b023          	sd	a0,1824(s3)
quickjs-nuttx/quickjs.c:16558
                if (unlikely(JS_IsException(ret_val)))
    80010a10:	2581                	sext.w	a1,a1
    80010a12:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:16555
                pc += 2;
    80010a14:	002d0b13          	addi	s6,s10,2
quickjs-nuttx/quickjs.c:16558
                if (unlikely(JS_IsException(ret_val)))
    80010a18:	00f59463          	bne	a1,a5,80010a20 <JS_CallInternal+0x1ab2>
    80010a1c:	6f70506f          	j	80016912 <JS_CallInternal+0x79a4>
quickjs-nuttx/quickjs.c:16560
                JS_FreeValue(ctx, sp[-3]);
    80010a20:	fd0cb583          	ld	a1,-48(s9)
    80010a24:	fd8cb603          	ld	a2,-40(s9)
    80010a28:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:16566
            BREAK;
    80010a2a:	0d0d                	addi	s10,s10,3
quickjs-nuttx/quickjs.c:16560
                JS_FreeValue(ctx, sp[-3]);
    80010a2c:	d73fa0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:16561
                JS_FreeValue(ctx, sp[-2]);
    80010a30:	fe0cb583          	ld	a1,-32(s9)
    80010a34:	fe8cb603          	ld	a2,-24(s9)
    80010a38:	8526                	mv	a0,s1
    80010a3a:	d65fa0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:16562
                JS_FreeValue(ctx, sp[-1]);
    80010a3e:	ff0cb583          	ld	a1,-16(s9)
    80010a42:	ff8cb603          	ld	a2,-8(s9)
    80010a46:	8526                	mv	a0,s1
    80010a48:	d57fa0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:16564
                *sp++ = ret_val;
    80010a4c:	7209b783          	ld	a5,1824(s3)
    80010a50:	fcfcb823          	sd	a5,-48(s9)
    80010a54:	7289b783          	ld	a5,1832(s3)
    80010a58:	fcfcbc23          	sd	a5,-40(s9)
quickjs-nuttx/quickjs.c:16566
            BREAK;
    80010a5c:	fffd4b03          	lbu	s6,-1(s10)
    80010a60:	0005e797          	auipc	a5,0x5e
    80010a64:	3d078793          	addi	a5,a5,976 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:16564
                *sp++ = ret_val;
    80010a68:	8cd2                	mv	s9,s4
quickjs-nuttx/quickjs.c:16566
            BREAK;
    80010a6a:	003b1713          	slli	a4,s6,0x3
    80010a6e:	97ba                	add	a5,a5,a4
    80010a70:	639c                	ld	a5,0(a5)
    80010a72:	f34fe06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16568
            ret_val = *--sp;
    80010a76:	f8040713          	addi	a4,s0,-128
    80010a7a:	77fd                	lui	a5,0xfffff
    80010a7c:	97ba                	add	a5,a5,a4
    80010a7e:	ff8cb983          	ld	s3,-8(s9)
    80010a82:	ff0cb703          	ld	a4,-16(s9)
    80010a86:	1cc1                	addi	s9,s9,-16
    80010a88:	7337b423          	sd	s3,1832(a5) # fffffffffffff728 <_ebss+0xffffffff7fefe5c2>
    80010a8c:	72e7b023          	sd	a4,1824(a5)
    80010a90:	000ca783          	lw	a5,0(s9)
    80010a94:	777d                	lui	a4,0xfffff
    80010a96:	62870713          	addi	a4,a4,1576 # fffffffffffff628 <_ebss+0xffffffff7fefe4c2>
    80010a9a:	9722                	add	a4,a4,s0
    80010a9c:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs.c:16569
            goto done;
    80010a9e:	b395                	j	80010802 <JS_CallInternal+0x1894>
quickjs-nuttx/quickjs.c:16571
            ret_val = JS_UNDEFINED;
    80010aa0:	77fd                	lui	a5,0xfffff
    80010aa2:	f8040713          	addi	a4,s0,-128
    80010aa6:	97ba                	add	a5,a5,a4
    80010aa8:	7207a223          	sw	zero,1828(a5) # fffffffffffff724 <_ebss+0xffffffff7fefe5be>
    80010aac:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:16572
            goto done;
    80010aae:	bb91                	j	80010802 <JS_CallInternal+0x1894>
JS_IsObject():
quickjs-nuttx/quickjs.h:630
    return JS_VALUE_GET_TAG(v) == JS_TAG_OBJECT;
    80010ab0:	ff8ca783          	lw	a5,-8(s9)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16576
            if (!JS_IsObject(sp[-1])) {
    80010ab4:	577d                	li	a4,-1
    80010ab6:	04e78563          	beq	a5,a4,80010b00 <JS_CallInternal+0x1b92>
quickjs-nuttx/quickjs.c:16577
                if (!JS_IsUndefined(sp[-1])) {
    80010aba:	470d                	li	a4,3
    80010abc:	00e78f63          	beq	a5,a4,80010ada <JS_CallInternal+0x1b6c>
quickjs-nuttx/quickjs.c:16578
                    JS_ThrowTypeError(caller_ctx, "derived class constructor must return an object or undefined");
    80010ac0:	77fd                	lui	a5,0xfffff
    80010ac2:	62078793          	addi	a5,a5,1568 # fffffffffffff620 <_ebss+0xffffffff7fefe4ba>
    80010ac6:	97a2                	add	a5,a5,s0
    80010ac8:	6388                	ld	a0,0(a5)
    80010aca:	00059597          	auipc	a1,0x59
    80010ace:	16658593          	addi	a1,a1,358 # 80069c30 <qjsc_repl+0x4680>
    80010ad2:	39b070ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:16579
                    goto exception;
    80010ad6:	d29fe06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16581
                sp[0] = JS_TRUE;
    80010ada:	4785                	li	a5,1
    80010adc:	00fcb023          	sd	a5,0(s9)
quickjs-nuttx/quickjs.c:16583
                sp[0] = JS_FALSE;
    80010ae0:	00fcb423          	sd	a5,8(s9)
quickjs-nuttx/quickjs.c:16586
            BREAK;
    80010ae4:	000d4b03          	lbu	s6,0(s10)
    80010ae8:	0005e797          	auipc	a5,0x5e
    80010aec:	34878793          	addi	a5,a5,840 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:16585
            sp++;
    80010af0:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:16586
            BREAK;
    80010af2:	003b1713          	slli	a4,s6,0x3
    80010af6:	97ba                	add	a5,a5,a4
    80010af8:	639c                	ld	a5,0(a5)
    80010afa:	0d05                	addi	s10,s10,1
    80010afc:	eaafe06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16583
                sp[0] = JS_FALSE;
    80010b00:	000cb023          	sd	zero,0(s9)
    80010b04:	4785                	li	a5,1
    80010b06:	bfe9                	j	80010ae0 <JS_CallInternal+0x1b72>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80010b08:	f8040793          	addi	a5,s0,-128
    80010b0c:	97ca                	add	a5,a5,s2
JS_CallInternal():
quickjs-nuttx/quickjs.c:16588
            if (JS_IsUndefined(new_target)) {
    80010b0e:	6f87a703          	lw	a4,1784(a5)
    80010b12:	478d                	li	a5,3
    80010b14:	00f71b63          	bne	a4,a5,80010b2a <JS_CallInternal+0x1bbc>
quickjs-nuttx/quickjs.c:16589
                JS_ThrowTypeError(ctx, "class constructors must be invoked with 'new'");
    80010b18:	8526                	mv	a0,s1
    80010b1a:	00059597          	auipc	a1,0x59
    80010b1e:	15658593          	addi	a1,a1,342 # 80069c70 <qjsc_repl+0x46c0>
    80010b22:	34b070ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:16590
                goto exception;
    80010b26:	cd9fe06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16592
            BREAK;
    80010b2a:	000d4b03          	lbu	s6,0(s10)
    80010b2e:	0005e797          	auipc	a5,0x5e
    80010b32:	30278793          	addi	a5,a5,770 # 8006ee30 <dispatch_table.4>
    80010b36:	0d05                	addi	s10,s10,1
    80010b38:	003b1713          	slli	a4,s6,0x3
    80010b3c:	97ba                	add	a5,a5,a4
    80010b3e:	639c                	ld	a5,0(a5)
    80010b40:	e66fe06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16595
                int ret = JS_CheckBrand(ctx, sp[-2], sp[-1]);
    80010b44:	ff0cb683          	ld	a3,-16(s9)
    80010b48:	ff8cb703          	ld	a4,-8(s9)
    80010b4c:	fe0cb583          	ld	a1,-32(s9)
    80010b50:	fe8cb603          	ld	a2,-24(s9)
    80010b54:	8526                	mv	a0,s1
    80010b56:	21c080ef          	jal	ra,80018d72 <JS_CheckBrand>
quickjs-nuttx/quickjs.c:16596
                if (ret < 0)
    80010b5a:	00055463          	bgez	a0,80010b62 <JS_CallInternal+0x1bf4>
    80010b5e:	ca1fe06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16598
                if (!ret) {
    80010b62:	e911                	bnez	a0,80010b76 <JS_CallInternal+0x1c08>
quickjs-nuttx/quickjs.c:16599
                    JS_ThrowTypeError(ctx, "invalid brand on object");
    80010b64:	8526                	mv	a0,s1
    80010b66:	00059597          	auipc	a1,0x59
    80010b6a:	13a58593          	addi	a1,a1,314 # 80069ca0 <qjsc_repl+0x46f0>
    80010b6e:	2ff070ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:16600
                    goto exception;
    80010b72:	c8dfe06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16603
            BREAK;
    80010b76:	000d4b03          	lbu	s6,0(s10)
    80010b7a:	0005e797          	auipc	a5,0x5e
    80010b7e:	2b678793          	addi	a5,a5,694 # 8006ee30 <dispatch_table.4>
    80010b82:	0d05                	addi	s10,s10,1
    80010b84:	003b1713          	slli	a4,s6,0x3
    80010b88:	97ba                	add	a5,a5,a4
    80010b8a:	639c                	ld	a5,0(a5)
    80010b8c:	e1afe06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16605
            if (JS_AddBrand(ctx, sp[-2], sp[-1]) < 0)
    80010b90:	ff8cb783          	ld	a5,-8(s9)
    80010b94:	fe0cba83          	ld	s5,-32(s9)
    80010b98:	ff0cbb83          	ld	s7,-16(s9)
    80010b9c:	fe8cba03          	ld	s4,-24(s9)
    80010ba0:	bef43c23          	sd	a5,-1032(s0)
    80010ba4:	bf543023          	sd	s5,-1056(s0)
    80010ba8:	bf443423          	sd	s4,-1048(s0)
    80010bac:	bf743823          	sd	s7,-1040(s0)
JS_AddBrand():
quickjs-nuttx/quickjs.c:7364
    if (unlikely(JS_VALUE_GET_TAG(home_obj) != JS_TAG_OBJECT)) {
    80010bb0:	2781                	sext.w	a5,a5
    80010bb2:	577d                	li	a4,-1
JS_CallInternal():
quickjs-nuttx/quickjs.c:16605
            if (JS_AddBrand(ctx, sp[-2], sp[-1]) < 0)
    80010bb4:	fe0c8993          	addi	s3,s9,-32
    80010bb8:	ff0c8b13          	addi	s6,s9,-16
JS_AddBrand():
quickjs-nuttx/quickjs.c:7364
    if (unlikely(JS_VALUE_GET_TAG(home_obj) != JS_TAG_OBJECT)) {
    80010bbc:	00e78763          	beq	a5,a4,80010bca <JS_CallInternal+0x1c5c>
quickjs-nuttx/quickjs.c:7365
        JS_ThrowTypeErrorNotAnObject(ctx);
    80010bc0:	8526                	mv	a0,s1
    80010bc2:	068080ef          	jal	ra,80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:7366
        return -1;
    80010bc6:	c39fe06f          	j	8000f7fe <JS_CallInternal+0x890>
find_own_property():
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    80010bca:	018bb703          	ld	a4,24(s7)
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80010bce:	56f1                	li	a3,-4
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80010bd0:	04000637          	lui	a2,0x4000
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80010bd4:	531c                	lw	a5,32(a4)
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    80010bd6:	0d400593          	li	a1,212
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80010bda:	167d                	addi	a2,a2,-1
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80010bdc:	0d47f793          	andi	a5,a5,212
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80010be0:	0785                	addi	a5,a5,1
    80010be2:	02d787b3          	mul	a5,a5,a3
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80010be6:	04070693          	addi	a3,a4,64
find_own_property():
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80010bea:	97ba                	add	a5,a5,a4
    80010bec:	0007e783          	lwu	a5,0(a5)
quickjs-nuttx/quickjs.c:5224
    while (h) {
    80010bf0:	e3b9                	bnez	a5,80010c36 <JS_CallInternal+0x1cc8>
JS_AddBrand():
quickjs-nuttx/quickjs.c:7372
        brand = JS_NewSymbolFromAtom(ctx, JS_ATOM_brand, JS_ATOM_TYPE_PRIVATE);
    80010bf2:	07800593          	li	a1,120
    80010bf6:	8526                	mv	a0,s1
    80010bf8:	2ca0d0ef          	jal	ra,8001dec2 <JS_NewSymbolFromAtom.constprop.0>
    80010bfc:	eeb43c23          	sd	a1,-264(s0)
    80010c00:	eea43823          	sd	a0,-272(s0)
quickjs-nuttx/quickjs.c:7373
        if (JS_IsException(brand))
    80010c04:	2581                	sext.w	a1,a1
    80010c06:	4799                	li	a5,6
    80010c08:	00f59463          	bne	a1,a5,80010c10 <JS_CallInternal+0x1ca2>
    80010c0c:	bf3fe06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:7375
        pr = add_property(ctx, p, JS_ATOM_Private_brand, JS_PROP_C_W_E);
    80010c10:	85de                	mv	a1,s7
    80010c12:	469d                	li	a3,7
    80010c14:	0d400613          	li	a2,212
    80010c18:	8526                	mv	a0,s1
    80010c1a:	4090a0ef          	jal	ra,8001b822 <add_property>
    80010c1e:	8baa                	mv	s7,a0
quickjs-nuttx/quickjs.c:7376
        if (!pr) {
    80010c20:	0e051463          	bnez	a0,80010d08 <JS_CallInternal+0x1d9a>
quickjs-nuttx/quickjs.c:7377
            JS_FreeValue(ctx, brand);
    80010c24:	ef043583          	ld	a1,-272(s0)
    80010c28:	ef843603          	ld	a2,-264(s0)
    80010c2c:	8526                	mv	a0,s1
    80010c2e:	b71fa0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:7378
            return -1;
    80010c32:	bcdfe06f          	j	8000f7fe <JS_CallInternal+0x890>
find_own_property():
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    80010c36:	00379713          	slli	a4,a5,0x3
    80010c3a:	1761                	addi	a4,a4,-8
    80010c3c:	9736                	add	a4,a4,a3
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    80010c3e:	4348                	lw	a0,4(a4)
    80010c40:	0ab51f63          	bne	a0,a1,80010cfe <JS_CallInternal+0x1d90>
JS_AddBrand():
quickjs-nuttx/quickjs.c:7382
        brand = JS_DupValue(ctx, pr->u.value);
    80010c44:	020bb703          	ld	a4,32(s7)
    80010c48:	0792                	slli	a5,a5,0x4
    80010c4a:	97ba                	add	a5,a5,a4
    80010c4c:	ff07b503          	ld	a0,-16(a5)
    80010c50:	ff87b583          	ld	a1,-8(a5)
    80010c54:	fc6f90ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80010c58:	eea43823          	sd	a0,-272(s0)
    80010c5c:	eeb43c23          	sd	a1,-264(s0)
js_symbol_to_atom():
quickjs-nuttx/quickjs.c:7859
    return js_get_atom_index(ctx->rt, p);
    80010c60:	ef043583          	ld	a1,-272(s0)
    80010c64:	6c88                	ld	a0,24(s1)
JS_AddBrand():
quickjs-nuttx/quickjs.c:7386
    if (JS_IsObject(obj)) {
    80010c66:	2a01                	sext.w	s4,s4
js_symbol_to_atom():
quickjs-nuttx/quickjs.c:7859
    return js_get_atom_index(ctx->rt, p);
    80010c68:	a27f80ef          	jal	ra,8000968e <js_get_atom_index>
JS_AddBrand():
quickjs-nuttx/quickjs.c:7386
    if (JS_IsObject(obj)) {
    80010c6c:	57fd                	li	a5,-1
js_symbol_to_atom():
quickjs-nuttx/quickjs.c:7859
    return js_get_atom_index(ctx->rt, p);
    80010c6e:	00050b9b          	sext.w	s7,a0
JS_AddBrand():
quickjs-nuttx/quickjs.c:7386
    if (JS_IsObject(obj)) {
    80010c72:	0cfa1363          	bne	s4,a5,80010d38 <JS_CallInternal+0x1dca>
find_own_property():
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    80010c76:	018ab703          	ld	a4,24(s5)
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80010c7a:	56f1                	li	a3,-4
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80010c7c:	531c                	lw	a5,32(a4)
    80010c7e:	00fbf7b3          	and	a5,s7,a5
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80010c82:	1782                	slli	a5,a5,0x20
    80010c84:	9381                	srli	a5,a5,0x20
    80010c86:	0785                	addi	a5,a5,1
    80010c88:	02d787b3          	mul	a5,a5,a3
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80010c8c:	040006b7          	lui	a3,0x4000
    80010c90:	16fd                	addi	a3,a3,-1
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80010c92:	97ba                	add	a5,a5,a4
    80010c94:	0007e783          	lwu	a5,0(a5)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80010c98:	04070713          	addi	a4,a4,64
find_own_property():
quickjs-nuttx/quickjs.c:5224
    while (h) {
    80010c9c:	e3c9                	bnez	a5,80010d1e <JS_CallInternal+0x1db0>
JS_AddBrand():
quickjs-nuttx/quickjs.c:7394
        pr = add_property(ctx, p1, brand_atom, JS_PROP_C_W_E);
    80010c9e:	85d6                	mv	a1,s5
    80010ca0:	469d                	li	a3,7
    80010ca2:	865e                	mv	a2,s7
    80010ca4:	8526                	mv	a0,s1
    80010ca6:	37d0a0ef          	jal	ra,8001b822 <add_property>
    80010caa:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:7395
        JS_FreeAtom(ctx, brand_atom);
    80010cac:	85de                	mv	a1,s7
    80010cae:	8526                	mv	a0,s1
    80010cb0:	c98fa0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:7396
        if (!pr)
    80010cb4:	000a1463          	bnez	s4,80010cbc <JS_CallInternal+0x1d4e>
    80010cb8:	b47fe06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:7398
        pr->u.value = JS_UNDEFINED;
    80010cbc:	478d                	li	a5,3
    80010cbe:	000a3023          	sd	zero,0(s4)
    80010cc2:	00fa3423          	sd	a5,8(s4)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16607
            JS_FreeValue(ctx, sp[-2]);
    80010cc6:	0009b583          	ld	a1,0(s3)
    80010cca:	0089b603          	ld	a2,8(s3)
    80010cce:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:16610
            BREAK;
    80010cd0:	8cce                	mv	s9,s3
quickjs-nuttx/quickjs.c:16607
            JS_FreeValue(ctx, sp[-2]);
    80010cd2:	acdfa0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:16608
            JS_FreeValue(ctx, sp[-1]);
    80010cd6:	000b3583          	ld	a1,0(s6)
    80010cda:	008b3603          	ld	a2,8(s6)
    80010cde:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:16610
            BREAK;
    80010ce0:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16608
            JS_FreeValue(ctx, sp[-1]);
    80010ce2:	abdfa0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:16610
            BREAK;
    80010ce6:	fffd4b03          	lbu	s6,-1(s10)
    80010cea:	0005e797          	auipc	a5,0x5e
    80010cee:	14678793          	addi	a5,a5,326 # 8006ee30 <dispatch_table.4>
    80010cf2:	003b1713          	slli	a4,s6,0x3
    80010cf6:	97ba                	add	a5,a5,a4
    80010cf8:	639c                	ld	a5,0(a5)
    80010cfa:	cacfe06f          	j	8000f1a6 <JS_CallInternal+0x238>
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80010cfe:	431c                	lw	a5,0(a4)
    80010d00:	8ff1                	and	a5,a5,a2
    80010d02:	1782                	slli	a5,a5,0x20
    80010d04:	9381                	srli	a5,a5,0x20
    80010d06:	b5ed                	j	80010bf0 <JS_CallInternal+0x1c82>
JS_AddBrand():
quickjs-nuttx/quickjs.c:7380
        pr->u.value = JS_DupValue(ctx, brand);
    80010d08:	ef043503          	ld	a0,-272(s0)
    80010d0c:	ef843583          	ld	a1,-264(s0)
    80010d10:	f0af90ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80010d14:	00abb023          	sd	a0,0(s7)
    80010d18:	00bbb423          	sd	a1,8(s7)
    80010d1c:	b791                	j	80010c60 <JS_CallInternal+0x1cf2>
find_own_property():
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    80010d1e:	078e                	slli	a5,a5,0x3
    80010d20:	17e1                	addi	a5,a5,-8
    80010d22:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    80010d24:	43d0                	lw	a2,4(a5)
    80010d26:	01761463          	bne	a2,s7,80010d2e <JS_CallInternal+0x1dc0>
    80010d2a:	5310506f          	j	80016a5a <JS_CallInternal+0x7aec>
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80010d2e:	439c                	lw	a5,0(a5)
    80010d30:	8ff5                	and	a5,a5,a3
    80010d32:	1782                	slli	a5,a5,0x20
    80010d34:	9381                	srli	a5,a5,0x20
    80010d36:	b79d                	j	80010c9c <JS_CallInternal+0x1d2e>
JS_AddBrand():
quickjs-nuttx/quickjs.c:7400
        JS_FreeAtom(ctx, brand_atom);
    80010d38:	85de                	mv	a1,s7
    80010d3a:	8526                	mv	a0,s1
    80010d3c:	c0cfa0ef          	jal	ra,8000b148 <JS_FreeAtom>
    80010d40:	b759                	j	80010cc6 <JS_CallInternal+0x1d58>
JS_CallInternal():
quickjs-nuttx/quickjs.c:16613
            JS_Throw(ctx, *--sp);
    80010d42:	ff0cb583          	ld	a1,-16(s9)
    80010d46:	ff8cb603          	ld	a2,-8(s9)
    80010d4a:	8526                	mv	a0,s1
    80010d4c:	1cc1                	addi	s9,s9,-16
    80010d4e:	ef4fd0ef          	jal	ra,8000e442 <JS_Throw>
quickjs-nuttx/quickjs.c:16614
            goto exception;
    80010d52:	aadfe06f          	j	8000f7fe <JS_CallInternal+0x890>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    80010d56:	001d4783          	lbu	a5,1(s10)
    80010d5a:	000d4583          	lbu	a1,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16626
                type = pc[4];
    80010d5e:	004d4603          	lbu	a2,4(s10)
get_u32():
quickjs-nuttx/cutils.h:170
    80010d62:	07a2                	slli	a5,a5,0x8
    80010d64:	8fcd                	or	a5,a5,a1
    80010d66:	002d4583          	lbu	a1,2(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16627
                pc += 5;
    80010d6a:	0d15                	addi	s10,s10,5
get_u32():
quickjs-nuttx/cutils.h:170
    80010d6c:	05c2                	slli	a1,a1,0x10
    80010d6e:	8fcd                	or	a5,a5,a1
    80010d70:	ffed4583          	lbu	a1,-2(s10)
    80010d74:	05e2                	slli	a1,a1,0x18
    80010d76:	8ddd                	or	a1,a1,a5
    80010d78:	2581                	sext.w	a1,a1
JS_CallInternal():
quickjs-nuttx/quickjs.c:16628
                if (type == JS_THROW_VAR_RO)
    80010d7a:	ee11                	bnez	a2,80010d96 <JS_CallInternal+0x1e28>
JS_ThrowTypeErrorReadOnly():
quickjs-nuttx/quickjs.c:6707
        JS_ThrowTypeErrorAtom(ctx, "'%s' is read-only", atom);
    80010d7c:	00059697          	auipc	a3,0x59
    80010d80:	e0c68693          	addi	a3,a3,-500 # 80069b88 <qjsc_repl+0x45d8>
    80010d84:	00059617          	auipc	a2,0x59
    80010d88:	f3460613          	addi	a2,a2,-204 # 80069cb8 <qjsc_repl+0x4708>
    80010d8c:	8526                	mv	a0,s1
    80010d8e:	1bb070ef          	jal	ra,80018748 <__JS_ThrowTypeErrorAtom>
quickjs-nuttx/quickjs.c:6708
        return -1;
    80010d92:	a6dfe06f          	j	8000f7fe <JS_CallInternal+0x890>
JS_CallInternal():
quickjs-nuttx/quickjs.c:16631
                if (type == JS_THROW_VAR_REDECL)
    80010d96:	4785                	li	a5,1
    80010d98:	02f61363          	bne	a2,a5,80010dbe <JS_CallInternal+0x1e50>
JS_ThrowSyntaxErrorVarRedeclaration():
quickjs-nuttx/quickjs.c:9468
    return JS_ThrowSyntaxErrorAtom(ctx, "redeclaration of '%s'", prop);
    80010d9c:	00059697          	auipc	a3,0x59
    80010da0:	dec68693          	addi	a3,a3,-532 # 80069b88 <qjsc_repl+0x45d8>
    80010da4:	00059617          	auipc	a2,0x59
    80010da8:	f2c60613          	addi	a2,a2,-212 # 80069cd0 <qjsc_repl+0x4720>
    80010dac:	8526                	mv	a0,s1
    80010dae:	5fe070ef          	jal	ra,800183ac <__JS_ThrowSyntaxErrorAtom>
    80010db2:	c0a43023          	sd	a0,-1024(s0)
    80010db6:	c0b43423          	sd	a1,-1016(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:9468
    80010dba:	a45fe06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16634
                if (type == JS_THROW_VAR_UNINITIALIZED)
    80010dbe:	4789                	li	a5,2
    80010dc0:	00f61763          	bne	a2,a5,80010dce <JS_CallInternal+0x1e60>
quickjs-nuttx/quickjs.c:16635
                    JS_ThrowReferenceErrorUninitialized(ctx, atom);
    80010dc4:	8526                	mv	a0,s1
    80010dc6:	287080ef          	jal	ra,8001984c <JS_ThrowReferenceErrorUninitialized>
    80010dca:	a35fe06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16637
                if (type == JS_THROW_ERROR_DELETE_SUPER)
    80010dce:	478d                	li	a5,3
    80010dd0:	00f61b63          	bne	a2,a5,80010de6 <JS_CallInternal+0x1e78>
quickjs-nuttx/quickjs.c:16638
                    JS_ThrowReferenceError(ctx, "unsupported reference to 'super'");
    80010dd4:	8526                	mv	a0,s1
    80010dd6:	00059597          	auipc	a1,0x59
    80010dda:	f1258593          	addi	a1,a1,-238 # 80069ce8 <qjsc_repl+0x4738>
    80010dde:	245080ef          	jal	ra,80019822 <JS_ThrowReferenceError>
    80010de2:	a1dfe06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16640
                if (type == JS_THROW_ERROR_ITERATOR_THROW)
    80010de6:	4791                	li	a5,4
    80010de8:	00f61b63          	bne	a2,a5,80010dfe <JS_CallInternal+0x1e90>
quickjs-nuttx/quickjs.c:16641
                    JS_ThrowTypeError(ctx, "iterator does not have a throw method");
    80010dec:	8526                	mv	a0,s1
    80010dee:	00059597          	auipc	a1,0x59
    80010df2:	f2258593          	addi	a1,a1,-222 # 80069d10 <qjsc_repl+0x4760>
    80010df6:	077070ef          	jal	ra,8001866c <JS_ThrowTypeError>
    80010dfa:	a05fe06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16643
                    JS_ThrowInternalError(ctx, "invalid throw var type %d", type);
    80010dfe:	8526                	mv	a0,s1
    80010e00:	00059597          	auipc	a1,0x59
    80010e04:	f3858593          	addi	a1,a1,-200 # 80069d38 <qjsc_repl+0x4788>
    80010e08:	2f1080ef          	jal	ra,800198f8 <JS_ThrowInternalError>
    80010e0c:	9f3fe06f          	j	8000f7fe <JS_CallInternal+0x890>
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    80010e10:	001d4983          	lbu	s3,1(s10)
    80010e14:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16653
                pc += 4;
    80010e18:	004d0a93          	addi	s5,s10,4
get_u16():
quickjs-nuttx/cutils.h:185
    80010e1c:	09a2                	slli	s3,s3,0x8
    80010e1e:	00f9eb33          	or	s6,s3,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:16655
                sf->cur_pc = pc;
    80010e22:	77fd                	lui	a5,0xfffff
    80010e24:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    80010e28:	97a2                	add	a5,a5,s0
    80010e2a:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:16651
                call_argc = get_u16(pc);
    80010e2c:	89da                	mv	s3,s6
quickjs-nuttx/quickjs.c:16654
                call_argv = sp - call_argc;
    80010e2e:	0b12                	slli	s6,s6,0x4
    80010e30:	416c8b33          	sub	s6,s9,s6
get_u16():
quickjs-nuttx/cutils.h:185
    80010e34:	002d4803          	lbu	a6,2(s10)
    80010e38:	003d4b83          	lbu	s7,3(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16656
                if (js_same_value(ctx, call_argv[-1], ctx->eval_obj)) {
    80010e3c:	ff0b0a13          	addi	s4,s6,-16
quickjs-nuttx/quickjs.c:16655
                sf->cur_pc = pc;
    80010e40:	0357bc23          	sd	s5,56(a5)
quickjs-nuttx/quickjs.c:16656
                if (js_same_value(ctx, call_argv[-1], ctx->eval_obj)) {
    80010e44:	1584b683          	ld	a3,344(s1)
    80010e48:	1604b703          	ld	a4,352(s1)
    80010e4c:	ff0b3583          	ld	a1,-16(s6)
    80010e50:	008a3603          	ld	a2,8(s4)
get_u16():
quickjs-nuttx/cutils.h:185
    80010e54:	0ba2                	slli	s7,s7,0x8
JS_CallInternal():
quickjs-nuttx/quickjs.c:16656
    80010e56:	8526                	mv	a0,s1
get_u16():
quickjs-nuttx/cutils.h:185
    80010e58:	010bebb3          	or	s7,s7,a6
JS_CallInternal():
quickjs-nuttx/quickjs.c:16656
    80010e5c:	b17fa0ef          	jal	ra,8000b972 <js_same_value>
    80010e60:	c135                	beqz	a0,80010ec4 <JS_CallInternal+0x1f56>
quickjs-nuttx/quickjs.c:16657
                    if (call_argc >= 1)
    80010e62:	04098d63          	beqz	s3,80010ebc <JS_CallInternal+0x1f4e>
quickjs-nuttx/quickjs.c:16658
                        obj = call_argv[0];
    80010e66:	000b3783          	ld	a5,0(s6)
    80010e6a:	ecf43823          	sd	a5,-304(s0)
    80010e6e:	008b3783          	ld	a5,8(s6)
quickjs-nuttx/quickjs.c:16660
                        obj = JS_UNDEFINED;
    80010e72:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:16661
                    ret_val = JS_EvalObject(ctx, JS_UNDEFINED, obj,
    80010e76:	ed043683          	ld	a3,-304(s0)
    80010e7a:	ed843703          	ld	a4,-296(s0)
    80010e7e:	478d                	li	a5,3
    80010e80:	eef43c23          	sd	a5,-264(s0)
    80010e84:	fffb881b          	addiw	a6,s7,-1
    80010e88:	4789                	li	a5,2
    80010e8a:	4581                	li	a1,0
    80010e8c:	460d                	li	a2,3
    80010e8e:	8526                	mv	a0,s1
    80010e90:	ee043823          	sd	zero,-272(s0)
    80010e94:	773160ef          	jal	ra,80027e06 <JS_EvalObject>
quickjs-nuttx/quickjs.c:16664
                    ret_val = JS_CallInternal(ctx, call_argv[-1], JS_UNDEFINED,
    80010e98:	f8040793          	addi	a5,s0,-128
    80010e9c:	97ca                	add	a5,a5,s2
    80010e9e:	72a7b023          	sd	a0,1824(a5)
    80010ea2:	72b7b423          	sd	a1,1832(a5)
quickjs-nuttx/quickjs.c:16667
                if (unlikely(JS_IsException(ret_val)))
    80010ea6:	4719                	li	a4,6
    80010ea8:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:16664
                    ret_val = JS_CallInternal(ctx, call_argv[-1], JS_UNDEFINED,
    80010eac:	8b2e                	mv	s6,a1
    80010eae:	00050b9b          	sext.w	s7,a0
quickjs-nuttx/quickjs.c:16667
                if (unlikely(JS_IsException(ret_val)))
    80010eb2:	04e79163          	bne	a5,a4,80010ef4 <JS_CallInternal+0x1f86>
quickjs-nuttx/quickjs.c:16653
                pc += 4;
    80010eb6:	8d56                	mv	s10,s5
    80010eb8:	947fe06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16660
                        obj = JS_UNDEFINED;
    80010ebc:	ec043823          	sd	zero,-304(s0)
    80010ec0:	478d                	li	a5,3
    80010ec2:	bf45                	j	80010e72 <JS_CallInternal+0x1f04>
quickjs-nuttx/quickjs.c:16664
                    ret_val = JS_CallInternal(ctx, call_argv[-1], JS_UNDEFINED,
    80010ec4:	478d                	li	a5,3
    80010ec6:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:16665
                                              JS_UNDEFINED, call_argc, call_argv, 0);
    80010eca:	eef43c23          	sd	a5,-264(s0)
quickjs-nuttx/quickjs.c:16664
                    ret_val = JS_CallInternal(ctx, call_argv[-1], JS_UNDEFINED,
    80010ece:	ec043823          	sd	zero,-304(s0)
quickjs-nuttx/quickjs.c:16665
                                              JS_UNDEFINED, call_argc, call_argv, 0);
    80010ed2:	ee043823          	sd	zero,-272(s0)
quickjs-nuttx/quickjs.c:16664
                    ret_val = JS_CallInternal(ctx, call_argv[-1], JS_UNDEFINED,
    80010ed6:	e402                	sd	zero,8(sp)
    80010ed8:	e05a                	sd	s6,0(sp)
    80010eda:	ff0b3583          	ld	a1,-16(s6)
    80010ede:	008a3603          	ld	a2,8(s4)
    80010ee2:	88ce                	mv	a7,s3
    80010ee4:	4781                	li	a5,0
    80010ee6:	480d                	li	a6,3
    80010ee8:	4681                	li	a3,0
    80010eea:	470d                	li	a4,3
    80010eec:	8526                	mv	a0,s1
    80010eee:	880fe0ef          	jal	ra,8000ef6e <JS_CallInternal>
    80010ef2:	b75d                	j	80010e98 <JS_CallInternal+0x1f2a>
quickjs-nuttx/quickjs.c:16669
                for(i = -1; i < call_argc; i++)
    80010ef4:	5afd                	li	s5,-1
quickjs-nuttx/quickjs.c:16670 (discriminator 3)
                    JS_FreeValue(ctx, call_argv[i]);
    80010ef6:	000a3583          	ld	a1,0(s4)
    80010efa:	008a3603          	ld	a2,8(s4)
    80010efe:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:16669 (discriminator 3)
                for(i = -1; i < call_argc; i++)
    80010f00:	2a85                	addiw	s5,s5,1
quickjs-nuttx/quickjs.c:16670 (discriminator 3)
                    JS_FreeValue(ctx, call_argv[i]);
    80010f02:	89dfa0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:16669 (discriminator 3)
                for(i = -1; i < call_argc; i++)
    80010f06:	0a41                	addi	s4,s4,16
    80010f08:	ff3ac7e3          	blt	s5,s3,80010ef6 <JS_CallInternal+0x1f88>
quickjs-nuttx/quickjs.c:16672
                *sp++ = ret_val;
    80010f0c:	f8040793          	addi	a5,s0,-128
    80010f10:	97ca                	add	a5,a5,s2
    80010f12:	7377a023          	sw	s7,1824(a5)
    80010f16:	7367b423          	sd	s6,1832(a5)
quickjs-nuttx/quickjs.c:16671
                sp -= call_argc + 1;
    80010f1a:	0985                	addi	s3,s3,1
quickjs-nuttx/quickjs.c:16672
                *sp++ = ret_val;
    80010f1c:	7207b783          	ld	a5,1824(a5)
quickjs-nuttx/quickjs.c:16671
                sp -= call_argc + 1;
    80010f20:	0992                	slli	s3,s3,0x4
    80010f22:	413c89b3          	sub	s3,s9,s3
quickjs-nuttx/quickjs.c:16672
                *sp++ = ret_val;
    80010f26:	00f9b023          	sd	a5,0(s3)
    80010f2a:	0169b423          	sd	s6,8(s3)
quickjs-nuttx/quickjs.c:16674
            BREAK;
    80010f2e:	004d4b03          	lbu	s6,4(s10)
    80010f32:	0005e797          	auipc	a5,0x5e
    80010f36:	efe78793          	addi	a5,a5,-258 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:16672
                *sp++ = ret_val;
    80010f3a:	01098c93          	addi	s9,s3,16
quickjs-nuttx/quickjs.c:16674
            BREAK;
    80010f3e:	003b1713          	slli	a4,s6,0x3
    80010f42:	97ba                	add	a5,a5,a4
    80010f44:	639c                	ld	a5,0(a5)
    80010f46:	0d15                	addi	s10,s10,5
    80010f48:	a5efe06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    80010f4c:	001d4983          	lbu	s3,1(s10)
    80010f50:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16685
                tab = build_arg_list(ctx, &len, sp[-1]);
    80010f54:	ff0cb603          	ld	a2,-16(s9)
    80010f58:	ff8cb683          	ld	a3,-8(s9)
get_u16():
quickjs-nuttx/cutils.h:185
    80010f5c:	09a2                	slli	s3,s3,0x8
JS_CallInternal():
quickjs-nuttx/quickjs.c:16685
    80010f5e:	e9040593          	addi	a1,s0,-368
    80010f62:	8526                	mv	a0,s1
get_u16():
quickjs-nuttx/cutils.h:185
    80010f64:	00f9e9b3          	or	s3,s3,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:16685
    80010f68:	45a280ef          	jal	ra,800393c2 <build_arg_list>
    80010f6c:	ff0c8a93          	addi	s5,s9,-16
quickjs-nuttx/quickjs.c:16684
                pc += 2;
    80010f70:	002d0b13          	addi	s6,s10,2
quickjs-nuttx/quickjs.c:16685
                tab = build_arg_list(ctx, &len, sp[-1]);
    80010f74:	8c2a                	mv	s8,a0
quickjs-nuttx/quickjs.c:16686
                if (!tab)
    80010f76:	10050063          	beqz	a0,80011076 <JS_CallInternal+0x2108>
quickjs-nuttx/quickjs.c:16688
                if (js_same_value(ctx, sp[-2], ctx->eval_obj)) {
    80010f7a:	1584b683          	ld	a3,344(s1)
    80010f7e:	1604b703          	ld	a4,352(s1)
    80010f82:	fe0cb583          	ld	a1,-32(s9)
    80010f86:	fe8cb603          	ld	a2,-24(s9)
    80010f8a:	8526                	mv	a0,s1
    80010f8c:	fe0c8a13          	addi	s4,s9,-32
    80010f90:	9e3fa0ef          	jal	ra,8000b972 <js_same_value>
    80010f94:	cd5d                	beqz	a0,80011052 <JS_CallInternal+0x20e4>
quickjs-nuttx/quickjs.c:16689
                    if (len >= 1)
    80010f96:	e9042783          	lw	a5,-368(s0)
    80010f9a:	cbc5                	beqz	a5,8001104a <JS_CallInternal+0x20dc>
quickjs-nuttx/quickjs.c:16690
                        obj = tab[0];
    80010f9c:	000c3783          	ld	a5,0(s8)
    80010fa0:	ecf43823          	sd	a5,-304(s0)
    80010fa4:	008c3783          	ld	a5,8(s8)
quickjs-nuttx/quickjs.c:16692
                        obj = JS_UNDEFINED;
    80010fa8:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:16693
                    ret_val = JS_EvalObject(ctx, JS_UNDEFINED, obj,
    80010fac:	ed043683          	ld	a3,-304(s0)
    80010fb0:	ed843703          	ld	a4,-296(s0)
    80010fb4:	478d                	li	a5,3
    80010fb6:	eef43c23          	sd	a5,-264(s0)
    80010fba:	fff9881b          	addiw	a6,s3,-1
    80010fbe:	4789                	li	a5,2
    80010fc0:	4581                	li	a1,0
    80010fc2:	460d                	li	a2,3
    80010fc4:	8526                	mv	a0,s1
    80010fc6:	ee043823          	sd	zero,-272(s0)
    80010fca:	63d160ef          	jal	ra,80027e06 <JS_EvalObject>
quickjs-nuttx/quickjs.c:16699
                free_arg_list(ctx, tab, len);
    80010fce:	e9042603          	lw	a2,-368(s0)
quickjs-nuttx/quickjs.c:16696
                    ret_val = JS_Call(ctx, sp[-2], JS_UNDEFINED, len,
    80010fd2:	f8040793          	addi	a5,s0,-128
    80010fd6:	97ca                	add	a5,a5,s2
    80010fd8:	72a7b023          	sd	a0,1824(a5)
    80010fdc:	72b7b423          	sd	a1,1832(a5)
    80010fe0:	8bae                	mv	s7,a1
    80010fe2:	0005099b          	sext.w	s3,a0
quickjs-nuttx/quickjs.c:16699
                free_arg_list(ctx, tab, len);
    80010fe6:	85e2                	mv	a1,s8
    80010fe8:	8526                	mv	a0,s1
    80010fea:	abdfa0ef          	jal	ra,8000baa6 <free_arg_list>
quickjs-nuttx/quickjs.c:16700
                if (unlikely(JS_IsException(ret_val)))
    80010fee:	000b879b          	sext.w	a5,s7
    80010ff2:	4719                	li	a4,6
    80010ff4:	08e78163          	beq	a5,a4,80011076 <JS_CallInternal+0x2108>
quickjs-nuttx/quickjs.c:16702
                JS_FreeValue(ctx, sp[-2]);
    80010ff8:	000a3583          	ld	a1,0(s4)
    80010ffc:	008a3603          	ld	a2,8(s4)
