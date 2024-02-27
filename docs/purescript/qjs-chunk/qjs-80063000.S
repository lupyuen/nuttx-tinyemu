    80062000:	bf45                	j	80061fb0 <lib_mode2oflags+0x60>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:342
            if ((state & MODE_MASK) != MODE_NONE)
    80062002:	d7dd                	beqz	a5,80061fb0 <lib_mode2oflags+0x60>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:346
                oflags &= ~O_TEXT;
    80062004:	eff57513          	andi	a0,a0,-257
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:352
            break;
    80062008:	bff1                	j	80061fe4 <lib_mode2oflags+0x94>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:357
            if ((state & MODE_MASK) != MODE_NONE)
    8006200a:	d3dd                	beqz	a5,80061fb0 <lib_mode2oflags+0x60>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:361
                oflags |= O_CLOEXEC;
    8006200c:	40056513          	ori	a0,a0,1024
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:367
            break;
    80062010:	bfd1                	j	80061fe4 <lib_mode2oflags+0x94>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:372
            if ((state & MODE_MASK) != MODE_NONE)
    80062012:	dfd9                	beqz	a5,80061fb0 <lib_mode2oflags+0x60>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:376
                oflags |= O_EXCL;
    80062014:	00856513          	ori	a0,a0,8
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:382
            break;
    80062018:	b7f1                	j	80061fe4 <lib_mode2oflags+0x94>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:387
            if ((state & MODE_MASK) != MODE_NONE)
    8006201a:	dbd9                	beqz	a5,80061fb0 <lib_mode2oflags+0x60>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:391
                oflags |= O_TEXT;
    8006201c:	10056513          	ori	a0,a0,256
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:397
            break;
    80062020:	b7d1                	j	80061fe4 <lib_mode2oflags+0x94>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:239
                oflags = O_RDOK | O_TEXT;
    80062022:	10100513          	li	a0,257
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:240
                state  = MODE_R;
    80062026:	4785                	li	a5,1
    80062028:	bf75                	j	80061fe4 <lib_mode2oflags+0x94>

000000008006202a <fdopen>:
fdopen():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:67
{
    8006202a:	7179                	addi	sp,sp,-48
    8006202c:	f022                	sd	s0,32(sp)
    8006202e:	ec26                	sd	s1,24(sp)
    80062030:	e44e                	sd	s3,8(sp)
    80062032:	f406                	sd	ra,40(sp)
    80062034:	e84a                	sd	s2,16(sp)
    80062036:	e052                	sd	s4,0(sp)
    80062038:	842e                	mv	s0,a1
    8006203a:	89aa                	mv	s3,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:68
  FAR struct streamlist *list = lib_get_streams();
    8006203c:	313000ef          	jal	ra,80062b4e <lib_get_streams>
    80062040:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:75
  oflags = lib_mode2oflags(mode);
    80062042:	8522                	mv	a0,s0
    80062044:	f0dff0ef          	jal	ra,80061f50 <lib_mode2oflags>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:76
  if (oflags < 0)
    80062048:	02054b63          	bltz	a0,8006207e <fdopen+0x54>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:83
  if (fd >= 3)
    8006204c:	4789                	li	a5,2
    8006204e:	8a2a                	mv	s4,a0
    80062050:	0937d963          	bge	a5,s3,800620e2 <fdopen+0xb8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:85
      filep = lib_zalloc(sizeof(FILE));
    80062054:	0c000513          	li	a0,192
    80062058:	1b1020ef          	jal	ra,80064a08 <zalloc>
    8006205c:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:86
      if (filep == NULL)
    8006205e:	c951                	beqz	a0,800620f2 <fdopen+0xc8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:94
      ret = nxmutex_lock(&list->sl_lock);
    80062060:	8526                	mv	a0,s1
    80062062:	a53fe0ef          	jal	ra,80060ab4 <nxmutex_lock>
    80062066:	892a                	mv	s2,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:95
      if (ret < 0)
    80062068:	00055d63          	bgez	a0,80062082 <fdopen+0x58>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:97
          lib_free(filep);
    8006206c:	8522                	mv	a0,s0
    8006206e:	c49fd0ef          	jal	ra,8005fcb6 <free>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:163
  set_errno(-ret);
    80062072:	9a7fe0ef          	jal	ra,80060a18 <__errno>
    80062076:	4120093b          	negw	s2,s2
    8006207a:	01252023          	sw	s2,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:78
      return NULL;
    8006207e:	4401                	li	s0,0
    80062080:	a0a9                	j	800620ca <fdopen+0xa0>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:101
      if (list->sl_tail)
    80062082:	2684b783          	ld	a5,616(s1)
    80062086:	cbb9                	beqz	a5,800620dc <fdopen+0xb2>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:103
          list->sl_tail->fs_next = filep;
    80062088:	e380                	sd	s0,0(a5)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:109
          list->sl_tail = filep;
    8006208a:	2684b423          	sd	s0,616(s1)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:112
      nxmutex_unlock(&list->sl_lock);
    8006208e:	8526                	mv	a0,s1
    80062090:	b27fe0ef          	jal	ra,80060bb6 <nxmutex_unlock>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:116
      nxrmutex_init(&filep->fs_lock);
    80062094:	00840513          	addi	a0,s0,8
    80062098:	bb3fe0ef          	jal	ra,80060c4a <nxrmutex_init>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:126
  filep->fs_bufstart = filep->fs_buffer;
    8006209c:	07840793          	addi	a5,s0,120
    800620a0:	ec3c                	sd	a5,88(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:127
  filep->fs_bufend   = filep->fs_bufstart + CONFIG_STDIO_BUFFER_SIZE;
    800620a2:	0b840713          	addi	a4,s0,184
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:128
  filep->fs_bufpos   = filep->fs_bufstart;
    800620a6:	f43c                	sd	a5,104(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:129
  filep->fs_bufread  = filep->fs_bufstart;
    800620a8:	f83c                	sd	a5,112(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:135
  filep->fs_flags   |= __FS_FLAG_LBF; /* Line buffering */
    800620aa:	47b1                	li	a5,12
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:127
  filep->fs_bufend   = filep->fs_bufstart + CONFIG_STDIO_BUFFER_SIZE;
    800620ac:	f038                	sd	a4,96(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:135
  filep->fs_flags   |= __FS_FLAG_LBF; /* Line buffering */
    800620ae:	0af40d23          	sb	a5,186(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:144
  filep->fs_cookie   = (FAR void *)(intptr_t)fd;
    800620b2:	05343823          	sd	s3,80(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:145
  filep->fs_oflags   = oflags;
    800620b6:	0b441c23          	sh	s4,184(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:155
  filep->fs_iofunc.read  = NULL;
    800620ba:	02043823          	sd	zero,48(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:156
  filep->fs_iofunc.write = NULL;
    800620be:	02043c23          	sd	zero,56(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:157
  filep->fs_iofunc.seek  = NULL;
    800620c2:	04043023          	sd	zero,64(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:158
  filep->fs_iofunc.close = NULL;
    800620c6:	04043423          	sd	zero,72(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:165
}
    800620ca:	70a2                	ld	ra,40(sp)
    800620cc:	8522                	mv	a0,s0
    800620ce:	7402                	ld	s0,32(sp)
    800620d0:	64e2                	ld	s1,24(sp)
    800620d2:	6942                	ld	s2,16(sp)
    800620d4:	69a2                	ld	s3,8(sp)
    800620d6:	6a02                	ld	s4,0(sp)
    800620d8:	6145                	addi	sp,sp,48
    800620da:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:108
          list->sl_head = filep;
    800620dc:	2684b023          	sd	s0,608(s1)
    800620e0:	b76d                	j	8006208a <fdopen+0x60>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:120
      filep = &list->sl_std[fd];
    800620e2:	0c000413          	li	s0,192
    800620e6:	02898433          	mul	s0,s3,s0
    800620ea:	02040413          	addi	s0,s0,32
    800620ee:	9426                	add	s0,s0,s1
    800620f0:	b775                	j	8006209c <fdopen+0x72>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:88
          ret = -ENOMEM;
    800620f2:	5951                	li	s2,-12
    800620f4:	bfbd                	j	80062072 <fdopen+0x48>

00000000800620f6 <fopen>:
fopen():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:172
{
    800620f6:	1101                	addi	sp,sp,-32
    800620f8:	e426                	sd	s1,8(sp)
    800620fa:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:179
  oflags = lib_mode2oflags(mode);
    800620fc:	852e                	mv	a0,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:172
{
    800620fe:	e822                	sd	s0,16(sp)
    80062100:	ec06                	sd	ra,24(sp)
    80062102:	842e                	mv	s0,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:179
  oflags = lib_mode2oflags(mode);
    80062104:	e4dff0ef          	jal	ra,80061f50 <lib_mode2oflags>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:180
  if (oflags < 0)
    80062108:	00055963          	bgez	a0,8006211a <fopen+0x24>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:182
      return NULL;
    8006210c:	4401                	li	s0,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:208
}
    8006210e:	60e2                	ld	ra,24(sp)
    80062110:	8522                	mv	a0,s0
    80062112:	6442                	ld	s0,16(sp)
    80062114:	64a2                	ld	s1,8(sp)
    80062116:	6105                	addi	sp,sp,32
    80062118:	8082                	ret
    8006211a:	85aa                	mv	a1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:187
  fd = open(path, oflags, 0666);
    8006211c:	1b600613          	li	a2,438
    80062120:	8526                	mv	a0,s1
    80062122:	6f0020ef          	jal	ra,80064812 <open>
    80062126:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:194
  if (fd >= 0)
    80062128:	fe0542e3          	bltz	a0,8006210c <fopen+0x16>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:196
      filep = fdopen(fd, mode);
    8006212c:	85a2                	mv	a1,s0
    8006212e:	efdff0ef          	jal	ra,8006202a <fdopen>
    80062132:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:197
      if (filep == NULL)
    80062134:	fd69                	bnez	a0,8006210e <fopen+0x18>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:203
          close(fd);
    80062136:	8526                	mv	a0,s1
    80062138:	52c020ef          	jal	ra,80064664 <close>
    8006213c:	bfc9                	j	8006210e <fopen+0x18>

000000008006213e <fclose>:
fclose():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:60
 *   stream results in undefined behaviour.
 *
 ****************************************************************************/

int fclose(FAR FILE *stream)
{
    8006213e:	7179                	addi	sp,sp,-48
    80062140:	f406                	sd	ra,40(sp)
    80062142:	f022                	sd	s0,32(sp)
    80062144:	ec26                	sd	s1,24(sp)
    80062146:	e84a                	sd	s2,16(sp)
    80062148:	e44e                	sd	s3,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:70
  int ret = ERROR;
  int status;

  /* Verify that a stream was provided. */

  if (stream)
    8006214a:	0c050c63          	beqz	a0,80062222 <fclose+0xe4>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:76
    {
      ret = OK;

      /* If the stream was opened for writing, then flush the stream */

      if ((stream->fs_oflags & O_WROK) != 0)
    8006214e:	0b855783          	lhu	a5,184(a0)
    80062152:	842a                	mv	s0,a0
    80062154:	8b89                	andi	a5,a5,2
    80062156:	cbd5                	beqz	a5,8006220a <fclose+0xcc>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:78
        {
          ret = lib_fflush(stream);
    80062158:	720000ef          	jal	ra,80062878 <lib_fflush>
    8006215c:	0005049b          	sext.w	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:79
          errcode = get_errno();
    80062160:	8b9fe0ef          	jal	ra,80060a18 <__errno>
    80062164:	00052983          	lw	s3,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:84
        }

      /* Skip close the builtin streams(stdin, stdout and stderr) */

      if (stream == stdin || stream == stdout || stream == stderr)
    80062168:	4501                	li	a0,0
    8006216a:	1f7000ef          	jal	ra,80062b60 <lib_get_stream>
    8006216e:	08a40063          	beq	s0,a0,800621ee <fclose+0xb0>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:84 (discriminator 1)
    80062172:	4505                	li	a0,1
    80062174:	1ed000ef          	jal	ra,80062b60 <lib_get_stream>
    80062178:	06a40b63          	beq	s0,a0,800621ee <fclose+0xb0>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:84 (discriminator 2)
    8006217c:	4509                	li	a0,2
    8006217e:	1e3000ef          	jal	ra,80062b60 <lib_get_stream>
    80062182:	06a40663          	beq	s0,a0,800621ee <fclose+0xb0>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:91
          goto done;
        }

      /* Remove FILE structure from the stream list */

      slist = lib_get_streams();
    80062186:	1c9000ef          	jal	ra,80062b4e <lib_get_streams>
    8006218a:	892a                	mv	s2,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:92
      nxmutex_lock(&slist->sl_lock);
    8006218c:	929fe0ef          	jal	ra,80060ab4 <nxmutex_lock>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:94

      for (next = slist->sl_head; next; prev = next, next = next->fs_next)
    80062190:	26093603          	ld	a2,608(s2)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:62
  FAR FILE *prev = NULL;
    80062194:	4701                	li	a4,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:94
      for (next = slist->sl_head; next; prev = next, next = next->fs_next)
    80062196:	87b2                	mv	a5,a2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:94 (discriminator 1)
    80062198:	cf91                	beqz	a5,800621b4 <fclose+0x76>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:100
        {
          if (next == stream)
            {
              if (next == slist->sl_head)
                {
                  slist->sl_head = next->fs_next;
    8006219a:	6394                	ld	a3,0(a5)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:96
          if (next == stream)
    8006219c:	06879c63          	bne	a5,s0,80062214 <fclose+0xd6>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:98
              if (next == slist->sl_head)
    800621a0:	06c79863          	bne	a5,a2,80062210 <fclose+0xd2>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:100
                  slist->sl_head = next->fs_next;
    800621a4:	26d93023          	sd	a3,608(s2)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:107
              else
                {
                  prev->fs_next = next->fs_next;
                }

              if (next == slist->sl_tail)
    800621a8:	26893683          	ld	a3,616(s2)
    800621ac:	00f69463          	bne	a3,a5,800621b4 <fclose+0x76>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:109
                {
                  slist->sl_tail = prev;
    800621b0:	26e93423          	sd	a4,616(s2)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:116

              break;
            }
        }

      nxmutex_unlock(&slist->sl_lock);
    800621b4:	854a                	mv	a0,s2
    800621b6:	a01fe0ef          	jal	ra,80060bb6 <nxmutex_unlock>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:120

      /* Call user custom callback if it is not NULL. */

      if (stream->fs_iofunc.close != NULL)
    800621ba:	643c                	ld	a5,72(s0)
    800621bc:	6828                	ld	a0,80(s0)
    800621be:	cfb1                	beqz	a5,8006221a <fclose+0xdc>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:122
        {
          status = stream->fs_iofunc.close(stream->fs_cookie);
    800621c0:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:133
          uint64_t tag;
          tag = android_fdsan_create_owner_tag(ANDROID_FDSAN_OWNER_TYPE_FILE,
                                               (uintptr_t)stream);
          status = android_fdsan_close_with_tag(fd, tag);
#else
          status = close(fd);
    800621c2:	892a                	mv	s2,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:141

      /* If close() returns an error but flush() did not then make sure
       * that we return the close() error condition.
       */

      if (ret == OK)
    800621c4:	e491                	bnez	s1,800621d0 <fclose+0x92>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:144
        {
          ret = status;
          errcode = get_errno();
    800621c6:	853fe0ef          	jal	ra,80060a18 <__errno>
    800621ca:	00052983          	lw	s3,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:143
          ret = status;
    800621ce:	84ca                	mv	s1,s2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:150
        }

#ifndef CONFIG_STDIO_DISABLE_BUFFERING
      /* Destroy the mutex */

      nxrmutex_destroy(&stream->fs_lock);
    800621d0:	00840513          	addi	a0,s0,8
    800621d4:	a7ffe0ef          	jal	ra,80060c52 <nxrmutex_destroy>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:154

      /* Release the buffer */

      if (stream->fs_bufstart != NULL &&
    800621d8:	6c28                	ld	a0,88(s0)
    800621da:	c519                	beqz	a0,800621e8 <fclose+0xaa>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:154 (discriminator 1)
    800621dc:	0ba44783          	lbu	a5,186(s0)
    800621e0:	8ba1                	andi	a5,a5,8
    800621e2:	e399                	bnez	a5,800621e8 <fclose+0xaa>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:157
          (stream->fs_flags & __FS_FLAG_UBF) == 0)
        {
          lib_free(stream->fs_bufstart);
    800621e4:	ad3fd0ef          	jal	ra,8005fcb6 <free>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:161
        }
#endif

      lib_free(stream);
    800621e8:	8522                	mv	a0,s0
    800621ea:	acdfd0ef          	jal	ra,8005fcb6 <free>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:169
done:
  /* On an error, reset the errno to the first error encountered and return
   * EOF.
   */

  if (ret != OK)
    800621ee:	c491                	beqz	s1,800621fa <fclose+0xbc>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:171
    {
      set_errno(errcode);
    800621f0:	829fe0ef          	jal	ra,80060a18 <__errno>
    800621f4:	01352023          	sw	s3,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:172
      return EOF;
    800621f8:	54fd                	li	s1,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:178
    }

  /* Return success */

  return OK;
}
    800621fa:	70a2                	ld	ra,40(sp)
    800621fc:	7402                	ld	s0,32(sp)
    800621fe:	6942                	ld	s2,16(sp)
    80062200:	69a2                	ld	s3,8(sp)
    80062202:	8526                	mv	a0,s1
    80062204:	64e2                	ld	s1,24(sp)
    80062206:	6145                	addi	sp,sp,48
    80062208:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:72
      ret = OK;
    8006220a:	4481                	li	s1,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:64
  int errcode = EINVAL;
    8006220c:	49d9                	li	s3,22
    8006220e:	bfa9                	j	80062168 <fclose+0x2a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:104
                  prev->fs_next = next->fs_next;
    80062210:	e314                	sd	a3,0(a4)
    80062212:	bf59                	j	800621a8 <fclose+0x6a>
    80062214:	873e                	mv	a4,a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:100
                  slist->sl_head = next->fs_next;
    80062216:	87b6                	mv	a5,a3
    80062218:	b741                	j	80062198 <fclose+0x5a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:133
          status = close(fd);
    8006221a:	2501                	sext.w	a0,a0
    8006221c:	448020ef          	jal	ra,80064664 <close>
    80062220:	b74d                	j	800621c2 <fclose+0x84>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fclose.c:64
  int errcode = EINVAL;
    80062222:	49d9                	li	s3,22
    80062224:	b7f1                	j	800621f0 <fclose+0xb2>

0000000080062226 <fread_unlocked>:
fread_unlocked():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fread.c:42
 * Name: fread
 ****************************************************************************/

size_t fread_unlocked(FAR void *ptr, size_t size,
                      size_t n_items, FAR FILE *stream)
{
    80062226:	1141                	addi	sp,sp,-16
    80062228:	e022                	sd	s0,0(sp)
    8006222a:	842e                	mv	s0,a1
    8006222c:	85b2                	mv	a1,a2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fread.c:49
  ssize_t bytes_read;
  size_t  items_read = 0;

  /* Write the data into the stream buffer */

  bytes_read = lib_fread_unlocked(ptr, full_size, stream);
    8006222e:	028585b3          	mul	a1,a1,s0
    80062232:	8636                	mv	a2,a3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fread.c:42
{
    80062234:	e406                	sd	ra,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fread.c:49
  bytes_read = lib_fread_unlocked(ptr, full_size, stream);
    80062236:	04e000ef          	jal	ra,80062284 <lib_fread_unlocked>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fread.c:50
  if (bytes_read > 0)
    8006223a:	00a05863          	blez	a0,8006224a <fread_unlocked+0x24>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fread.c:54
    {
      /* Return the number of full items read */

      items_read = bytes_read / size;
    8006223e:	02855533          	divu	a0,a0,s0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fread.c:58
    }

  return items_read;
}
    80062242:	60a2                	ld	ra,8(sp)
    80062244:	6402                	ld	s0,0(sp)
    80062246:	0141                	addi	sp,sp,16
    80062248:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fread.c:45
  size_t  items_read = 0;
    8006224a:	4501                	li	a0,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fread.c:57
  return items_read;
    8006224c:	bfdd                	j	80062242 <fread_unlocked+0x1c>

000000008006224e <fread>:
fread():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fread.c:61

size_t fread(FAR void *ptr, size_t size, size_t n_items, FAR FILE *stream)
{
    8006224e:	7179                	addi	sp,sp,-48
    80062250:	ec26                	sd	s1,24(sp)
    80062252:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fread.c:64
  size_t ret;

  flockfile(stream);
    80062254:	8536                	mv	a0,a3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fread.c:61
{
    80062256:	f406                	sd	ra,40(sp)
    80062258:	f022                	sd	s0,32(sp)
    8006225a:	e42e                	sd	a1,8(sp)
    8006225c:	8436                	mv	s0,a3
    8006225e:	e032                	sd	a2,0(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fread.c:64
  flockfile(stream);
    80062260:	0dd000ef          	jal	ra,80062b3c <flockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fread.c:65
  ret = fread_unlocked(ptr, size, n_items, stream);
    80062264:	6602                	ld	a2,0(sp)
    80062266:	65a2                	ld	a1,8(sp)
    80062268:	86a2                	mv	a3,s0
    8006226a:	8526                	mv	a0,s1
    8006226c:	fbbff0ef          	jal	ra,80062226 <fread_unlocked>
    80062270:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fread.c:66
  funlockfile(stream);
    80062272:	8522                	mv	a0,s0
    80062274:	0d5000ef          	jal	ra,80062b48 <funlockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fread.c:69

  return ret;
}
    80062278:	70a2                	ld	ra,40(sp)
    8006227a:	7402                	ld	s0,32(sp)
    8006227c:	8526                	mv	a0,s1
    8006227e:	64e2                	ld	s1,24(sp)
    80062280:	6145                	addi	sp,sp,48
    80062282:	8082                	ret

0000000080062284 <lib_fread_unlocked>:
lib_fread_unlocked():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:60
#endif
  int fd;

  /* Make sure that reading from this stream is allowed */

  if (!stream)
    80062284:	16060863          	beqz	a2,800623f4 <lib_fread_unlocked+0x170>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:48
{
    80062288:	7139                	addi	sp,sp,-64
    8006228a:	f822                	sd	s0,48(sp)
    8006228c:	fc06                	sd	ra,56(sp)
    8006228e:	f426                	sd	s1,40(sp)
    80062290:	f04a                	sd	s2,32(sp)
    80062292:	ec4e                	sd	s3,24(sp)
    80062294:	e852                	sd	s4,16(sp)
    80062296:	e456                	sd	s5,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:65
    {
      _NX_SETERRNO(EBADF);
      return ERROR;
    }
  else if ((stream->fs_oflags & O_RDOK) == 0)
    80062298:	0b865783          	lhu	a5,184(a2)
    8006229c:	8432                	mv	s0,a2
    8006229e:	8b85                	andi	a5,a5,1
    800622a0:	eb89                	bnez	a5,800622b2 <lib_fread_unlocked+0x2e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:356
    }

  /* Error exits */

errout_with_errno:
  stream->fs_flags |= __FS_FLAG_ERROR;
    800622a2:	0ba44783          	lbu	a5,186(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:357
  return ERROR;
    800622a6:	557d                	li	a0,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:356
  stream->fs_flags |= __FS_FLAG_ERROR;
    800622a8:	0027e793          	ori	a5,a5,2
    800622ac:	0af40d23          	sb	a5,186(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:357
  return ERROR;
    800622b0:	a8e9                	j	8006238a <lib_fread_unlocked+0x106>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:73
      fd = (int)(intptr_t)stream->fs_cookie;
    800622b2:	05062a03          	lw	s4,80(a2)
    800622b6:	892a                	mv	s2,a0
    800622b8:	89ae                	mv	s3,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:77
      while (stream->fs_nungotten > 0 && remaining > 0)
    800622ba:	84ae                	mv	s1,a1
    800622bc:	0bb44783          	lbu	a5,187(s0)
    800622c0:	c391                	beqz	a5,800622c4 <lib_fread_unlocked+0x40>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:77 (discriminator 1)
    800622c2:	ec89                	bnez	s1,800622dc <lib_fread_unlocked+0x58>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:96
      if (stream->fs_bufstart != NULL)
    800622c4:	6c3c                	ld	a5,88(s0)
    800622c6:	0e078f63          	beqz	a5,800623c4 <lib_fread_unlocked+0x140>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:103
          ret = lib_wrflush_unlocked(stream);
    800622ca:	8522                	mv	a0,s0
    800622cc:	62c000ef          	jal	ra,800628f8 <lib_wrflush_unlocked>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:104
          if (ret < 0)
    800622d0:	0a055363          	bgez	a0,80062376 <lib_fread_unlocked+0xf2>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:106
              if (count - remaining > 0)
    800622d4:	fd3487e3          	beq	s1,s3,800622a2 <lib_fread_unlocked+0x1e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:341
      if (remaining == 0)
    800622d8:	c0c5                	beqz	s1,80062378 <lib_fread_unlocked+0xf4>
    800622da:	a0a5                	j	80062342 <lib_fread_unlocked+0xbe>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:81
          stream->fs_nungotten--;
    800622dc:	37fd                	addiw	a5,a5,-1
    800622de:	0ff7f793          	zext.b	a5,a5
    800622e2:	0af40da3          	sb	a5,187(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:85
          *dest++ = stream->fs_ungotten[stream->fs_nungotten];
    800622e6:	97a2                	add	a5,a5,s0
    800622e8:	0bc7c783          	lbu	a5,188(a5)
    800622ec:	0905                	addi	s2,s2,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:89
          remaining--;
    800622ee:	14fd                	addi	s1,s1,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:85
          *dest++ = stream->fs_ungotten[stream->fs_nungotten];
    800622f0:	fef90fa3          	sb	a5,-1(s2)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:89
          remaining--;
    800622f4:	b7e1                	j	800622bc <lib_fread_unlocked+0x38>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:123
              gulp_size = stream->fs_bufread - stream->fs_bufpos;
    800622f6:	742c                	ld	a1,104(s0)
    800622f8:	7838                	ld	a4,112(s0)
    800622fa:	40b707b3          	sub	a5,a4,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:129
              if (gulp_size > 0)
    800622fe:	02b70163          	beq	a4,a1,80062320 <lib_fread_unlocked+0x9c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:131
                  if (gulp_size > remaining)
    80062302:	8aa6                	mv	s5,s1
    80062304:	0097f363          	bgeu	a5,s1,8006230a <lib_fread_unlocked+0x86>
    80062308:	8abe                	mv	s5,a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:138
                  memcpy(dest, stream->fs_bufpos, gulp_size);
    8006230a:	8656                	mv	a2,s5
    8006230c:	854a                	mv	a0,s2
    8006230e:	29f010ef          	jal	ra,80063dac <memcpy>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:141
                  stream->fs_bufpos += gulp_size;
    80062312:	743c                	ld	a5,104(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:140
                  remaining -= gulp_size;
    80062314:	415484b3          	sub	s1,s1,s5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:141
                  stream->fs_bufpos += gulp_size;
    80062318:	97d6                	add	a5,a5,s5
    8006231a:	f43c                	sd	a5,104(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:150
              if (remaining > 0)
    8006231c:	ccb1                	beqz	s1,80062378 <lib_fread_unlocked+0xf4>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:142
                  dest += gulp_size;
    8006231e:	9956                	add	s2,s2,s5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:161
                                      stream->fs_bufstart;
    80062320:	6c2c                	ld	a1,88(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:165
                  buffer_available = stream->fs_bufend - stream->fs_bufread;
    80062322:	7030                	ld	a2,96(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:175
                      if (stream->fs_iofunc.read != NULL)
    80062324:	781c                	ld	a5,48(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:160
                  stream->fs_bufpos = stream->fs_bufread =
    80062326:	f82c                	sd	a1,112(s0)
    80062328:	f42c                	sd	a1,104(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:165
                  buffer_available = stream->fs_bufend - stream->fs_bufread;
    8006232a:	8e0d                	sub	a2,a2,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:173
                  if (remaining > buffer_available)
    8006232c:	06967863          	bgeu	a2,s1,8006239c <lib_fread_unlocked+0x118>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:177
                          bytes_read = stream->fs_iofunc.read(
    80062330:	8626                	mv	a2,s1
    80062332:	85ca                	mv	a1,s2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:175
                      if (stream->fs_iofunc.read != NULL)
    80062334:	cf81                	beqz	a5,8006234c <lib_fread_unlocked+0xc8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:177
                          bytes_read = stream->fs_iofunc.read(
    80062336:	6828                	ld	a0,80(s0)
    80062338:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:186
                      if (bytes_read < 0)
    8006233a:	00055d63          	bgez	a0,80062354 <lib_fread_unlocked+0xd0>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:296
                  if (count - remaining > 0)
    8006233e:	f73482e3          	beq	s1,s3,800622a2 <lib_fread_unlocked+0x1e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:347
          stream->fs_flags |= __FS_FLAG_EOF;
    80062342:	0ba44783          	lbu	a5,186(s0)
    80062346:	0017e793          	ori	a5,a5,1
    8006234a:	a825                	j	80062382 <lib_fread_unlocked+0xfe>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:183
                          bytes_read = _NX_READ(fd, dest, remaining);
    8006234c:	8552                	mv	a0,s4
    8006234e:	594020ef          	jal	ra,800648e2 <read>
    80062352:	b7e5                	j	8006233a <lib_fread_unlocked+0xb6>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:200
                      else if (bytes_read == 0)
    80062354:	d57d                	beqz	a0,80062342 <lib_fread_unlocked+0xbe>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:215
                          DEBUGASSERT(bytes_read <= remaining);
    80062356:	00a4fe63          	bgeu	s1,a0,80062372 <lib_fread_unlocked+0xee>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:215 (discriminator 1)
    8006235a:	00030617          	auipc	a2,0x30
    8006235e:	e9e60613          	addi	a2,a2,-354 # 800921f8 <g_dtoa_scale_up+0xc0>
    80062362:	0d700593          	li	a1,215
    80062366:	00030517          	auipc	a0,0x30
    8006236a:	eaa50513          	addi	a0,a0,-342 # 80092210 <g_dtoa_scale_up+0xd8>
    8006236e:	deefe0ef          	jal	ra,8006095c <__assert>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:216 (discriminator 2)
                          dest      += bytes_read;
    80062372:	992a                	add	s2,s2,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:217 (discriminator 2)
                          remaining -= bytes_read;
    80062374:	8c89                	sub	s1,s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:119
          while (remaining > 0)
    80062376:	f0c1                	bnez	s1,800622f6 <lib_fread_unlocked+0x72>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:343
          stream->fs_flags &= ~__FS_FLAG_EOF;
    80062378:	0ba44783          	lbu	a5,186(s0)
    8006237c:	4481                	li	s1,0
    8006237e:	0fe7f793          	andi	a5,a5,254
    80062382:	0af40d23          	sb	a5,186(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:350
      return count - remaining;
    80062386:	40998533          	sub	a0,s3,s1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:358
}
    8006238a:	70e2                	ld	ra,56(sp)
    8006238c:	7442                	ld	s0,48(sp)
    8006238e:	74a2                	ld	s1,40(sp)
    80062390:	7902                	ld	s2,32(sp)
    80062392:	69e2                	ld	s3,24(sp)
    80062394:	6a42                	ld	s4,16(sp)
    80062396:	6aa2                	ld	s5,8(sp)
    80062398:	6121                	addi	sp,sp,64
    8006239a:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:228
                      if (stream->fs_iofunc.read != NULL)
    8006239c:	cb91                	beqz	a5,800623b0 <lib_fread_unlocked+0x12c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:230
                          bytes_read = stream->fs_iofunc.read(
    8006239e:	6828                	ld	a0,80(s0)
    800623a0:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:241
                      if (bytes_read < 0)
    800623a2:	f8054ee3          	bltz	a0,8006233e <lib_fread_unlocked+0xba>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:257
                      else if (bytes_read == 0)
    800623a6:	dd51                	beqz	a0,80062342 <lib_fread_unlocked+0xbe>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:270
                          stream->fs_bufread += bytes_read;
    800623a8:	783c                	ld	a5,112(s0)
    800623aa:	953e                	add	a0,a0,a5
    800623ac:	f828                	sd	a0,112(s0)
    800623ae:	b7e1                	j	80062376 <lib_fread_unlocked+0xf2>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:237
                          bytes_read = _NX_READ(fd, stream->fs_bufread,
    800623b0:	8552                	mv	a0,s4
    800623b2:	530020ef          	jal	ra,800648e2 <read>
    800623b6:	b7f5                	j	800623a2 <lib_fread_unlocked+0x11e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:291
                  bytes_read = _NX_READ(fd, dest, remaining);
    800623b8:	8552                	mv	a0,s4
    800623ba:	528020ef          	jal	ra,800648e2 <read>
    800623be:	a811                	j	800623d2 <lib_fread_unlocked+0x14e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:322 (discriminator 2)
                  dest      += bytes_read;
    800623c0:	992a                	add	s2,s2,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:323 (discriminator 2)
                  remaining -= bytes_read;
    800623c2:	8c89                	sub	s1,s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:281
          while (remaining > 0)
    800623c4:	d8d5                	beqz	s1,80062378 <lib_fread_unlocked+0xf4>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:283
              if (stream->fs_iofunc.read != NULL)
    800623c6:	781c                	ld	a5,48(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:285
                  bytes_read = stream->fs_iofunc.read(stream->fs_cookie,
    800623c8:	8626                	mv	a2,s1
    800623ca:	85ca                	mv	a1,s2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:283
              if (stream->fs_iofunc.read != NULL)
    800623cc:	d7f5                	beqz	a5,800623b8 <lib_fread_unlocked+0x134>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:285
                  bytes_read = stream->fs_iofunc.read(stream->fs_cookie,
    800623ce:	6828                	ld	a0,80(s0)
    800623d0:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:294
              if (bytes_read < 0)
    800623d2:	f60546e3          	bltz	a0,8006233e <lib_fread_unlocked+0xba>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:310
              else if (bytes_read == 0)
    800623d6:	d535                	beqz	a0,80062342 <lib_fread_unlocked+0xbe>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:321
                  DEBUGASSERT(bytes_read <= remaining);
    800623d8:	fea4f4e3          	bgeu	s1,a0,800623c0 <lib_fread_unlocked+0x13c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:321 (discriminator 1)
    800623dc:	00030617          	auipc	a2,0x30
    800623e0:	e1c60613          	addi	a2,a2,-484 # 800921f8 <g_dtoa_scale_up+0xc0>
    800623e4:	14100593          	li	a1,321
    800623e8:	00030517          	auipc	a0,0x30
    800623ec:	e2850513          	addi	a0,a0,-472 # 80092210 <g_dtoa_scale_up+0xd8>
    800623f0:	d6cfe0ef          	jal	ra,8006095c <__assert>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:63
      return ERROR;
    800623f4:	557d                	li	a0,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfread_unlocked.c:358
}
    800623f6:	8082                	ret

00000000800623f8 <fseek>:
fseek():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fseek.c:51
 *
 ****************************************************************************/

int fseek(FAR FILE *stream, long int offset, int whence)
{
  return fseeko(stream, offset, whence);
    800623f8:	2581                	sext.w	a1,a1
    800623fa:	a009                	j	800623fc <fseeko>

00000000800623fc <fseeko>:
fseeko():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fseeko.c:58
 *   Zero on success; -1 on failure with errno set appropriately.
 *
 ****************************************************************************/

int fseeko(FAR FILE *stream, off_t offset, int whence)
{
    800623fc:	7179                	addi	sp,sp,-48
    800623fe:	f406                	sd	ra,40(sp)
    80062400:	f022                	sd	s0,32(sp)
    80062402:	ec26                	sd	s1,24(sp)
    80062404:	c62e                	sw	a1,12(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fseeko.c:62
#ifdef CONFIG_DEBUG_FEATURES
  /* Verify that we were provided with a stream */

  if (!stream)
    80062406:	e919                	bnez	a0,8006241c <fseeko+0x20>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fseeko.c:64
    {
      set_errno(EBADF);
    80062408:	e10fe0ef          	jal	ra,80060a18 <__errno>
    8006240c:	47a5                	li	a5,9
    8006240e:	c11c                	sw	a5,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fseeko.c:76

  flockfile(stream);
  if (lib_rdflush_unlocked(stream) < 0 || lib_wrflush_unlocked(stream) < 0)
    {
      funlockfile(stream);
      return ERROR;
    80062410:	557d                	li	a0,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fseeko.c:100
  else
    {
      return lseek((int)(intptr_t)stream->fs_cookie, offset,
                                    whence) == (off_t)-1 ? ERROR : OK;
    }
}
    80062412:	70a2                	ld	ra,40(sp)
    80062414:	7402                	ld	s0,32(sp)
    80062416:	64e2                	ld	s1,24(sp)
    80062418:	6145                	addi	sp,sp,48
    8006241a:	8082                	ret
    8006241c:	842a                	mv	s0,a0
    8006241e:	84b2                	mv	s1,a2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fseeko.c:72
  flockfile(stream);
    80062420:	71c000ef          	jal	ra,80062b3c <flockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fseeko.c:73
  if (lib_rdflush_unlocked(stream) < 0 || lib_wrflush_unlocked(stream) < 0)
    80062424:	8522                	mv	a0,s0
    80062426:	47a000ef          	jal	ra,800628a0 <lib_rdflush_unlocked>
    8006242a:	00055663          	bgez	a0,80062436 <fseeko+0x3a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fseeko.c:75
      funlockfile(stream);
    8006242e:	8522                	mv	a0,s0
    80062430:	718000ef          	jal	ra,80062b48 <funlockfile>
    80062434:	bff1                	j	80062410 <fseeko+0x14>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fseeko.c:73 (discriminator 1)
  if (lib_rdflush_unlocked(stream) < 0 || lib_wrflush_unlocked(stream) < 0)
    80062436:	8522                	mv	a0,s0
    80062438:	4c0000ef          	jal	ra,800628f8 <lib_wrflush_unlocked>
    8006243c:	fe0549e3          	bltz	a0,8006242e <fseeko+0x32>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fseeko.c:79
  funlockfile(stream);
    80062440:	8522                	mv	a0,s0
    80062442:	706000ef          	jal	ra,80062b48 <funlockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fseeko.c:90
  if (stream->fs_iofunc.seek != NULL)
    80062446:	603c                	ld	a5,64(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fseeko.c:85
  stream->fs_nungotten = 0;
    80062448:	0a040da3          	sb	zero,187(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fseeko.c:90
  if (stream->fs_iofunc.seek != NULL)
    8006244c:	6828                	ld	a0,80(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fseeko.c:92
      return stream->fs_iofunc.seek(stream->fs_cookie, &offset,
    8006244e:	8626                	mv	a2,s1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fseeko.c:90
  if (stream->fs_iofunc.seek != NULL)
    80062450:	cb89                	beqz	a5,80062462 <fseeko+0x66>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fseeko.c:92
      return stream->fs_iofunc.seek(stream->fs_cookie, &offset,
    80062452:	006c                	addi	a1,sp,12
    80062454:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fseeko.c:98
                                    whence) == (off_t)-1 ? ERROR : OK;
    80062456:	0505                	addi	a0,a0,1
    80062458:	00153513          	seqz	a0,a0
    8006245c:	40a00533          	neg	a0,a0
    80062460:	bf4d                	j	80062412 <fseeko+0x16>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fseeko.c:97
      return lseek((int)(intptr_t)stream->fs_cookie, offset,
    80062462:	45b2                	lw	a1,12(sp)
    80062464:	2501                	sext.w	a0,a0
    80062466:	2ec020ef          	jal	ra,80064752 <lseek>
    8006246a:	b7f5                	j	80062456 <fseeko+0x5a>

000000008006246c <ftell>:
ftell():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftell.c:44
 *   Zero on success; -1 on failure with errno set appropriately.
 *
 ****************************************************************************/

long ftell(FAR FILE *stream)
{
    8006246c:	1141                	addi	sp,sp,-16
    8006246e:	e406                	sd	ra,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftell.c:45
  return ftello(stream);
    80062470:	00a000ef          	jal	ra,8006247a <ftello>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftell.c:46
}
    80062474:	60a2                	ld	ra,8(sp)
    80062476:	0141                	addi	sp,sp,16
    80062478:	8082                	ret

000000008006247a <ftello>:
ftello():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:98
 *   Zero on success; -1 on failure with errno set appropriately.
 *
 ****************************************************************************/

off_t ftello(FAR FILE *stream)
{
    8006247a:	7179                	addi	sp,sp,-48
    8006247c:	f406                	sd	ra,40(sp)
    8006247e:	f022                	sd	s0,32(sp)
    80062480:	ec26                	sd	s1,24(sp)
    80062482:	e84a                	sd	s2,16(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:100
  off_t position;
  off_t offset = 0;
    80062484:	c602                	sw	zero,12(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:104

  /* Verify that we were provided with a stream */

  if (!stream)
    80062486:	ed09                	bnez	a0,800624a0 <ftello+0x26>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:106
    {
      set_errno(EBADF);
    80062488:	d90fe0ef          	jal	ra,80060a18 <__errno>
    8006248c:	47a5                	li	a5,9
    8006248e:	c11c                	sw	a5,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:107
      return ERROR;
    80062490:	54fd                	li	s1,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:132
    }
  else
    {
      return ERROR;
    }
}
    80062492:	70a2                	ld	ra,40(sp)
    80062494:	7402                	ld	s0,32(sp)
    80062496:	6942                	ld	s2,16(sp)
    80062498:	8526                	mv	a0,s1
    8006249a:	64e2                	ld	s1,24(sp)
    8006249c:	6145                	addi	sp,sp,48
    8006249e:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:114
  if (stream->fs_iofunc.seek != NULL)
    800624a0:	613c                	ld	a5,64(a0)
    800624a2:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:116
      position = stream->fs_iofunc.seek(stream->fs_cookie, &offset,
    800624a4:	4605                	li	a2,1
    800624a6:	6928                	ld	a0,80(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:114
  if (stream->fs_iofunc.seek != NULL)
    800624a8:	cf8d                	beqz	a5,800624e2 <ftello+0x68>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:116
      position = stream->fs_iofunc.seek(stream->fs_cookie, &offset,
    800624aa:	006c                	addi	a1,sp,12
    800624ac:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:124
  if (position != (off_t)-1)
    800624ae:	57fd                	li	a5,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:121
      position = lseek((int)(intptr_t)stream->fs_cookie, 0, SEEK_CUR);
    800624b0:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:124
  if (position != (off_t)-1)
    800624b2:	fef500e3          	beq	a0,a5,80062492 <ftello+0x18>
lib_getoffset():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:56
  flockfile(stream);
    800624b6:	8522                	mv	a0,s0
    800624b8:	684000ef          	jal	ra,80062b3c <flockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:58
  if (stream->fs_bufstart !=
    800624bc:	6c3c                	ld	a5,88(s0)
    800624be:	06843903          	ld	s2,104(s0)
    800624c2:	c78d                	beqz	a5,800624ec <ftello+0x72>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:59
      NULL && stream->fs_bufread !=
    800624c4:	7838                	ld	a4,112(s0)
    800624c6:	02e78363          	beq	a5,a4,800624ec <ftello+0x72>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:64
                 stream->fs_nungotten;
    800624ca:	0bb44783          	lbu	a5,187(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:63
      offset = stream->fs_bufread - stream->fs_bufpos +
    800624ce:	41270933          	sub	s2,a4,s2
    800624d2:	0127893b          	addw	s2,a5,s2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:74
  funlockfile(stream);
    800624d6:	8522                	mv	a0,s0
    800624d8:	670000ef          	jal	ra,80062b48 <funlockfile>
ftello():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:126
      return position - lib_getoffset(stream);
    800624dc:	412484bb          	subw	s1,s1,s2
    800624e0:	bf4d                	j	80062492 <ftello+0x18>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:121
      position = lseek((int)(intptr_t)stream->fs_cookie, 0, SEEK_CUR);
    800624e2:	4581                	li	a1,0
    800624e4:	2501                	sext.w	a0,a0
    800624e6:	26c020ef          	jal	ra,80064752 <lseek>
    800624ea:	b7d1                	j	800624ae <ftello+0x34>
lib_getoffset():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ftello.c:71
      offset = -(stream->fs_bufpos - stream->fs_bufstart);
    800624ec:	4127893b          	subw	s2,a5,s2
    800624f0:	b7dd                	j	800624d6 <ftello+0x5c>

00000000800624f2 <fgetc_unlocked>:
fgetc_unlocked():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fgetc.c:37
/****************************************************************************
 * fgetc
 ****************************************************************************/

int fgetc_unlocked(FAR FILE *stream)
{
    800624f2:	1101                	addi	sp,sp,-32
    800624f4:	862a                	mv	a2,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fgetc.c:41
  unsigned char ch;
  ssize_t ret;

  ret = lib_fread_unlocked(&ch, 1, stream);
    800624f6:	4585                	li	a1,1
    800624f8:	00f10513          	addi	a0,sp,15
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fgetc.c:37
{
    800624fc:	ec06                	sd	ra,24(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fgetc.c:41
  ret = lib_fread_unlocked(&ch, 1, stream);
    800624fe:	d87ff0ef          	jal	ra,80062284 <lib_fread_unlocked>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fgetc.c:42
  if (ret > 0)
    80062502:	00a05763          	blez	a0,80062510 <fgetc_unlocked+0x1e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fgetc.c:44
    {
      return ch;
    80062506:	00f14503          	lbu	a0,15(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fgetc.c:50
    }
  else
    {
      return EOF;
    }
}
    8006250a:	60e2                	ld	ra,24(sp)
    8006250c:	6105                	addi	sp,sp,32
    8006250e:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fgetc.c:48
      return EOF;
    80062510:	557d                	li	a0,-1
    80062512:	bfe5                	j	8006250a <fgetc_unlocked+0x18>

0000000080062514 <fgetc>:
fgetc():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fgetc.c:53

int fgetc(FAR FILE *stream)
{
    80062514:	1101                	addi	sp,sp,-32
    80062516:	ec06                	sd	ra,24(sp)
    80062518:	e822                	sd	s0,16(sp)
    8006251a:	e426                	sd	s1,8(sp)
    8006251c:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fgetc.c:56
  int ret;

  flockfile(stream);
    8006251e:	61e000ef          	jal	ra,80062b3c <flockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fgetc.c:57
  ret = fgetc_unlocked(stream);
    80062522:	8522                	mv	a0,s0
    80062524:	fcfff0ef          	jal	ra,800624f2 <fgetc_unlocked>
    80062528:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fgetc.c:58
  funlockfile(stream);
    8006252a:	8522                	mv	a0,s0
    8006252c:	61c000ef          	jal	ra,80062b48 <funlockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fgetc.c:61

  return ret;
}
    80062530:	60e2                	ld	ra,24(sp)
    80062532:	6442                	ld	s0,16(sp)
    80062534:	8526                	mv	a0,s1
    80062536:	64a2                	ld	s1,8(sp)
    80062538:	6105                	addi	sp,sp,32
    8006253a:	8082                	ret

000000008006253c <fwrite_unlocked>:
fwrite_unlocked():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fwrite.c:42
 * Name: fwrite
 ****************************************************************************/

size_t fwrite_unlocked(FAR const void *ptr, size_t size, size_t n_items,
                       FAR FILE *stream)
{
    8006253c:	1141                	addi	sp,sp,-16
    8006253e:	e022                	sd	s0,0(sp)
    80062540:	842e                	mv	s0,a1
    80062542:	85b2                	mv	a1,a2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fwrite.c:49
  ssize_t bytes_written;
  size_t  items_written = 0;

  /* Write the data into the stream buffer */

  bytes_written = lib_fwrite_unlocked(ptr, full_size, stream);
    80062544:	028585b3          	mul	a1,a1,s0
    80062548:	8636                	mv	a2,a3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fwrite.c:42
{
    8006254a:	e406                	sd	ra,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fwrite.c:49
  bytes_written = lib_fwrite_unlocked(ptr, full_size, stream);
    8006254c:	04e000ef          	jal	ra,8006259a <lib_fwrite_unlocked>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fwrite.c:50
  if (bytes_written > 0)
    80062550:	00a05863          	blez	a0,80062560 <fwrite_unlocked+0x24>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fwrite.c:54
    {
      /* Return the number of full items written */

      items_written = bytes_written / size;
    80062554:	02855533          	divu	a0,a0,s0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fwrite.c:58
    }

  return items_written;
}
    80062558:	60a2                	ld	ra,8(sp)
    8006255a:	6402                	ld	s0,0(sp)
    8006255c:	0141                	addi	sp,sp,16
    8006255e:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fwrite.c:45
  size_t  items_written = 0;
    80062560:	4501                	li	a0,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fwrite.c:57
  return items_written;
    80062562:	bfdd                	j	80062558 <fwrite_unlocked+0x1c>

0000000080062564 <fwrite>:
fwrite():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fwrite.c:62

size_t fwrite(FAR const void *ptr, size_t size, size_t n_items,
              FAR FILE *stream)
{
    80062564:	7179                	addi	sp,sp,-48
    80062566:	ec26                	sd	s1,24(sp)
    80062568:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fwrite.c:65
  size_t ret;

  flockfile(stream);
    8006256a:	8536                	mv	a0,a3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fwrite.c:62
{
    8006256c:	f406                	sd	ra,40(sp)
    8006256e:	f022                	sd	s0,32(sp)
    80062570:	e42e                	sd	a1,8(sp)
    80062572:	8436                	mv	s0,a3
    80062574:	e032                	sd	a2,0(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fwrite.c:65
  flockfile(stream);
    80062576:	5c6000ef          	jal	ra,80062b3c <flockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fwrite.c:66
  ret = fwrite_unlocked(ptr, size, n_items, stream);
    8006257a:	6602                	ld	a2,0(sp)
    8006257c:	65a2                	ld	a1,8(sp)
    8006257e:	86a2                	mv	a3,s0
    80062580:	8526                	mv	a0,s1
    80062582:	fbbff0ef          	jal	ra,8006253c <fwrite_unlocked>
    80062586:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fwrite.c:67
  funlockfile(stream);
    80062588:	8522                	mv	a0,s0
    8006258a:	5be000ef          	jal	ra,80062b48 <funlockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fwrite.c:70

  return ret;
}
    8006258e:	70a2                	ld	ra,40(sp)
    80062590:	7402                	ld	s0,32(sp)
    80062592:	8526                	mv	a0,s1
    80062594:	64e2                	ld	s1,24(sp)
    80062596:	6145                	addi	sp,sp,48
    80062598:	8082                	ret

000000008006259a <lib_fwrite_unlocked>:
lib_fwrite_unlocked():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:49
 ****************************************************************************/

ssize_t lib_fwrite_unlocked(FAR const void *ptr, size_t count,
                            FAR FILE *stream)
#ifndef CONFIG_STDIO_DISABLE_BUFFERING
{
    8006259a:	7179                	addi	sp,sp,-48
    8006259c:	f406                	sd	ra,40(sp)
    8006259e:	f022                	sd	s0,32(sp)
    800625a0:	ec26                	sd	s1,24(sp)
    800625a2:	e84a                	sd	s2,16(sp)
    800625a4:	e44e                	sd	s3,8(sp)
    800625a6:	e052                	sd	s4,0(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:57
  ssize_t ret = ERROR;
  size_t gulp_size;

  /* Make sure that writing to this stream is allowed */

  if (stream == NULL)
    800625a8:	ee11                	bnez	a2,800625c4 <lib_fwrite_unlocked+0x2a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:59
    {
      set_errno(EBADF);
    800625aa:	c6efe0ef          	jal	ra,80060a18 <__errno>
    800625ae:	47a5                	li	a5,9
    800625b0:	c11c                	sw	a5,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:60
      return ret;
    800625b2:	557d                	li	a0,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:179
    {
      stream->fs_flags |= __FS_FLAG_ERROR;
    }

  return ret;
}
    800625b4:	70a2                	ld	ra,40(sp)
    800625b6:	7402                	ld	s0,32(sp)
    800625b8:	64e2                	ld	s1,24(sp)
    800625ba:	6942                	ld	s2,16(sp)
    800625bc:	69a2                	ld	s3,8(sp)
    800625be:	6a02                	ld	s4,0(sp)
    800625c0:	6145                	addi	sp,sp,48
    800625c2:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:65
  if ((stream->fs_oflags & O_WROK) == 0)
    800625c4:	0b865783          	lhu	a5,184(a2)
    800625c8:	84b2                	mv	s1,a2
    800625ca:	8b89                	andi	a5,a5,2
    800625cc:	ef89                	bnez	a5,800625e6 <lib_fwrite_unlocked+0x4c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:67
      set_errno(EBADF);
    800625ce:	c4afe0ef          	jal	ra,80060a18 <__errno>
    800625d2:	47a5                	li	a5,9
    800625d4:	c11c                	sw	a5,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:87
          ret = ERROR;
    800625d6:	557d                	li	a0,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:175
      stream->fs_flags |= __FS_FLAG_ERROR;
    800625d8:	0ba4c783          	lbu	a5,186(s1)
    800625dc:	0027e793          	ori	a5,a5,2
    800625e0:	0af48d23          	sb	a5,186(s1)
    800625e4:	bfc1                	j	800625b4 <lib_fwrite_unlocked+0x1a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:73
  if (stream->fs_bufstart == NULL)
    800625e6:	6e3c                	ld	a5,88(a2)
    800625e8:	89aa                	mv	s3,a0
    800625ea:	892e                	mv	s2,a1
    800625ec:	ef91                	bnez	a5,80062608 <lib_fwrite_unlocked+0x6e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:75
      if (stream->fs_iofunc.write != NULL)
    800625ee:	7e1c                	ld	a5,56(a2)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:77
          ret = stream->fs_iofunc.write(stream->fs_cookie, ptr, count);
    800625f0:	6a28                	ld	a0,80(a2)
    800625f2:	862e                	mv	a2,a1
    800625f4:	85ce                	mv	a1,s3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:75
      if (stream->fs_iofunc.write != NULL)
    800625f6:	c789                	beqz	a5,80062600 <lib_fwrite_unlocked+0x66>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:77
          ret = stream->fs_iofunc.write(stream->fs_cookie, ptr, count);
    800625f8:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:84
      if (ret < 0)
    800625fa:	fa055de3          	bgez	a0,800625b4 <lib_fwrite_unlocked+0x1a>
    800625fe:	bfe1                	j	800625d6 <lib_fwrite_unlocked+0x3c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:81
          ret = _NX_WRITE((int)(intptr_t)stream->fs_cookie, ptr, count);
    80062600:	2501                	sext.w	a0,a0
    80062602:	3f0020ef          	jal	ra,800649f2 <write>
    80062606:	bfd5                	j	800625fa <lib_fwrite_unlocked+0x60>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:98
  if (lib_rdflush_unlocked(stream) < 0)
    80062608:	8532                	mv	a0,a2
    8006260a:	296000ef          	jal	ra,800628a0 <lib_rdflush_unlocked>
    8006260e:	fc0544e3          	bltz	a0,800625d6 <lib_fwrite_unlocked+0x3c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:105
  gulp_size = stream->fs_bufend - stream->fs_bufpos;
    80062612:	74a8                	ld	a0,104(s1)
    80062614:	70a0                	ld	s0,96(s1)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:106
  if (gulp_size != CONFIG_STDIO_BUFFER_SIZE || count < gulp_size)
    80062616:	04000793          	li	a5,64
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:105
  gulp_size = stream->fs_bufend - stream->fs_bufpos;
    8006261a:	8c09                	sub	s0,s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:106
  if (gulp_size != CONFIG_STDIO_BUFFER_SIZE || count < gulp_size)
    8006261c:	00f41663          	bne	s0,a5,80062628 <lib_fwrite_unlocked+0x8e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:106 (discriminator 1)
    80062620:	03f00793          	li	a5,63
    80062624:	0327ef63          	bltu	a5,s2,80062662 <lib_fwrite_unlocked+0xc8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:108
      if (gulp_size > count)
    80062628:	00897363          	bgeu	s2,s0,8006262e <lib_fwrite_unlocked+0x94>
    8006262c:	844a                	mv	s0,s2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:123
      memcpy(stream->fs_bufpos, src, gulp_size);
    8006262e:	8622                	mv	a2,s0
    80062630:	85ce                	mv	a1,s3
    80062632:	77a010ef          	jal	ra,80063dac <memcpy>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:124
      stream->fs_bufpos += gulp_size;
    80062636:	74bc                	ld	a5,104(s1)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:129
      if (stream->fs_bufpos >= stream->fs_bufend)
    80062638:	70b8                	ld	a4,96(s1)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:119
      count -= gulp_size;
    8006263a:	40890a33          	sub	s4,s2,s0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:124
      stream->fs_bufpos += gulp_size;
    8006263e:	97a2                	add	a5,a5,s0
    80062640:	f4bc                	sd	a5,104(s1)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:125
      src += gulp_size;
    80062642:	944e                	add	s0,s0,s3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:129
      if (stream->fs_bufpos >= stream->fs_bufend)
    80062644:	00e7f863          	bgeu	a5,a4,80062654 <lib_fwrite_unlocked+0xba>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:141
  if (count >= CONFIG_STDIO_BUFFER_SIZE)
    80062648:	03f00793          	li	a5,63
    8006264c:	0347fe63          	bgeu	a5,s4,80062688 <lib_fwrite_unlocked+0xee>
    80062650:	8952                	mv	s2,s4
    80062652:	a809                	j	80062664 <lib_fwrite_unlocked+0xca>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:133
          int bytes_buffered = lib_fflush_unlocked(stream);
    80062654:	8526                	mv	a0,s1
    80062656:	1a2000ef          	jal	ra,800627f8 <lib_fflush_unlocked>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:134
          if (bytes_buffered < 0)
    8006265a:	2501                	sext.w	a0,a0
    8006265c:	fe0556e3          	bgez	a0,80062648 <lib_fwrite_unlocked+0xae>
    80062660:	bf9d                	j	800625d6 <lib_fwrite_unlocked+0x3c>
    80062662:	844e                	mv	s0,s3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:143
      if (stream->fs_iofunc.write != NULL)
    80062664:	7c9c                	ld	a5,56(s1)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:145
          ret = stream->fs_iofunc.write(stream->fs_cookie, src, count);
    80062666:	68a8                	ld	a0,80(s1)
    80062668:	864a                	mv	a2,s2
    8006266a:	85a2                	mv	a1,s0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:143
      if (stream->fs_iofunc.write != NULL)
    8006266c:	cb91                	beqz	a5,80062680 <lib_fwrite_unlocked+0xe6>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:145
          ret = stream->fs_iofunc.write(stream->fs_cookie, src, count);
    8006266e:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:159
      src += ret;
    80062670:	942a                	add	s0,s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:152
      if (ret < 0)
    80062672:	f60542e3          	bltz	a0,800625d6 <lib_fwrite_unlocked+0x3c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:170
  ret = (uintptr_t)src - (uintptr_t)start;
    80062676:	41340533          	sub	a0,s0,s3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:173
  if (ret < 0)
    8006267a:	f4054fe3          	bltz	a0,800625d8 <lib_fwrite_unlocked+0x3e>
    8006267e:	bf1d                	j	800625b4 <lib_fwrite_unlocked+0x1a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:149
          ret = _NX_WRITE((int)(intptr_t)stream->fs_cookie, src, count);
    80062680:	2501                	sext.w	a0,a0
    80062682:	370020ef          	jal	ra,800649f2 <write>
    80062686:	b7ed                	j	80062670 <lib_fwrite_unlocked+0xd6>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:161
  else if (count > 0)
    80062688:	fe0a07e3          	beqz	s4,80062676 <lib_fwrite_unlocked+0xdc>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:163
      memcpy(stream->fs_bufpos, src, count);
    8006268c:	74a8                	ld	a0,104(s1)
    8006268e:	8652                	mv	a2,s4
    80062690:	85a2                	mv	a1,s0
    80062692:	71a010ef          	jal	ra,80063dac <memcpy>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:164
      stream->fs_bufpos += count;
    80062696:	74bc                	ld	a5,104(s1)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:165
      src += count;
    80062698:	01298433          	add	s0,s3,s2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:164
      stream->fs_bufpos += count;
    8006269c:	9a3e                	add	s4,s4,a5
    8006269e:	0744b423          	sd	s4,104(s1)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:165
      src += count;
    800626a2:	bfd1                	j	80062676 <lib_fwrite_unlocked+0xdc>

00000000800626a4 <lib_fwrite>:
lib_fwrite():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:203
  return ret;
}
#endif /* CONFIG_STDIO_DISABLE_BUFFERING */

ssize_t lib_fwrite(FAR const void *ptr, size_t count, FAR FILE *stream)
{
    800626a4:	7179                	addi	sp,sp,-48
    800626a6:	ec26                	sd	s1,24(sp)
    800626a8:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:206
  ssize_t ret;

  flockfile(stream);
    800626aa:	8532                	mv	a0,a2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:203
{
    800626ac:	f406                	sd	ra,40(sp)
    800626ae:	f022                	sd	s0,32(sp)
    800626b0:	e42e                	sd	a1,8(sp)
    800626b2:	8432                	mv	s0,a2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:206
  flockfile(stream);
    800626b4:	488000ef          	jal	ra,80062b3c <flockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:207
  ret = lib_fwrite_unlocked(ptr, count, stream);
    800626b8:	65a2                	ld	a1,8(sp)
    800626ba:	8622                	mv	a2,s0
    800626bc:	8526                	mv	a0,s1
    800626be:	eddff0ef          	jal	ra,8006259a <lib_fwrite_unlocked>
    800626c2:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:208
  funlockfile(stream);
    800626c4:	8522                	mv	a0,s0
    800626c6:	482000ef          	jal	ra,80062b48 <funlockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfwrite.c:211

  return ret;
}
    800626ca:	70a2                	ld	ra,40(sp)
    800626cc:	7402                	ld	s0,32(sp)
    800626ce:	8526                	mv	a0,s1
    800626d0:	64e2                	ld	s1,24(sp)
    800626d2:	6145                	addi	sp,sp,48
    800626d4:	8082                	ret

00000000800626d6 <fflush_unlocked>:
fflush_unlocked():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fflush.c:56
 *  OK on success EOF on failure (with errno set appropriately)
 *
 ****************************************************************************/

int fflush_unlocked(FAR FILE *stream)
{
    800626d6:	1141                	addi	sp,sp,-16
    800626d8:	e406                	sd	ra,8(sp)
    800626da:	e022                	sd	s0,0(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fflush.c:61
  int ret;

  /* Is the stream argument NULL? */

  if (stream == NULL)
    800626dc:	e11d                	bnez	a0,80062702 <fflush_unlocked+0x2c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fflush.c:65
    {
      /* Yes... then this is a request to flush all streams */

      ret = lib_flushall_unlocked(lib_get_streams());
    800626de:	470000ef          	jal	ra,80062b4e <lib_get_streams>
    800626e2:	060000ef          	jal	ra,80062742 <lib_flushall_unlocked>
    800626e6:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fflush.c:87
      /* And return EOF on failure. */

      return EOF;
    }

  return OK;
    800626e8:	4501                	li	a0,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fflush.c:74
  if (ret < 0)
    800626ea:	00045863          	bgez	s0,800626fa <fflush_unlocked+0x24>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fflush.c:80
      set_errno(-ret);
    800626ee:	b2afe0ef          	jal	ra,80060a18 <__errno>
    800626f2:	4080043b          	negw	s0,s0
    800626f6:	c100                	sw	s0,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fflush.c:84
      return EOF;
    800626f8:	557d                	li	a0,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fflush.c:88
}
    800626fa:	60a2                	ld	ra,8(sp)
    800626fc:	6402                	ld	s0,0(sp)
    800626fe:	0141                	addi	sp,sp,16
    80062700:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fflush.c:69
      ret = lib_fflush_unlocked(stream);
    80062702:	0f6000ef          	jal	ra,800627f8 <lib_fflush_unlocked>
    80062706:	0005041b          	sext.w	s0,a0
    8006270a:	bff9                	j	800626e8 <fflush_unlocked+0x12>

000000008006270c <fflush>:
fflush():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fflush.c:91

int fflush(FAR FILE *stream)
{
    8006270c:	1141                	addi	sp,sp,-16
    8006270e:	e406                	sd	ra,8(sp)
    80062710:	e022                	sd	s0,0(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fflush.c:96
  int ret;

  /* Is the stream argument NULL? */

  if (stream == NULL)
    80062712:	e11d                	bnez	a0,80062738 <fflush+0x2c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fflush.c:100
    {
      /* Yes... then this is a request to flush all streams */

      ret = lib_flushall(lib_get_streams());
    80062714:	43a000ef          	jal	ra,80062b4e <lib_get_streams>
    80062718:	07e000ef          	jal	ra,80062796 <lib_flushall>
    8006271c:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fflush.c:122
      /* And return EOF on failure. */

      return EOF;
    }

  return OK;
    8006271e:	4501                	li	a0,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fflush.c:109
  if (ret < 0)
    80062720:	00045863          	bgez	s0,80062730 <fflush+0x24>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fflush.c:115
      set_errno(-ret);
    80062724:	af4fe0ef          	jal	ra,80060a18 <__errno>
    80062728:	4080043b          	negw	s0,s0
    8006272c:	c100                	sw	s0,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fflush.c:119
      return EOF;
    8006272e:	557d                	li	a0,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fflush.c:123
}
    80062730:	60a2                	ld	ra,8(sp)
    80062732:	6402                	ld	s0,0(sp)
    80062734:	0141                	addi	sp,sp,16
    80062736:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fflush.c:104
      ret = lib_fflush(stream);
    80062738:	140000ef          	jal	ra,80062878 <lib_fflush>
    8006273c:	0005041b          	sext.w	s0,a0
    80062740:	bff9                	j	8006271e <fflush+0x12>

0000000080062742 <lib_flushall_unlocked>:
lib_flushall_unlocked():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:49
 *   when a NULL stream argument is provided.
 *
 ****************************************************************************/

int lib_flushall_unlocked(FAR struct streamlist *list)
{
    80062742:	1101                	addi	sp,sp,-32
    80062744:	e426                	sd	s1,8(sp)
    80062746:	ec06                	sd	ra,24(sp)
    80062748:	e822                	sd	s0,16(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:50
  int lasterrno = OK;
    8006274a:	4481                	li	s1,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:55
  int ret;

  /* Make sure that there are streams associated with this thread */

  if (list != NULL)
    8006274c:	c115                	beqz	a0,80062770 <lib_flushall_unlocked+0x2e>
    8006274e:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:64

      /* Process each stream in the thread's stream list */

      for (i = 0; i < 3; i++)
        {
          lib_fflush_unlocked(&list->sl_std[i]);
    80062750:	02050513          	addi	a0,a0,32
    80062754:	0a4000ef          	jal	ra,800627f8 <lib_fflush_unlocked>
    80062758:	0e040513          	addi	a0,s0,224
    8006275c:	09c000ef          	jal	ra,800627f8 <lib_fflush_unlocked>
    80062760:	1a040513          	addi	a0,s0,416
    80062764:	094000ef          	jal	ra,800627f8 <lib_fflush_unlocked>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:67
        }

      for (stream = list->sl_head; stream != NULL; stream = stream->fs_next)
    80062768:	26043403          	ld	s0,608(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:50
  int lasterrno = OK;
    8006276c:	4481                	li	s1,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:67 (discriminator 1)
      for (stream = list->sl_head; stream != NULL; stream = stream->fs_next)
    8006276e:	e419                	bnez	s0,8006277c <lib_flushall_unlocked+0x3a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:94
    }

  /* If any flush failed, return the errorcode of the last failed flush */

  return lasterrno;
}
    80062770:	60e2                	ld	ra,24(sp)
    80062772:	6442                	ld	s0,16(sp)
    80062774:	8526                	mv	a0,s1
    80062776:	64a2                	ld	s1,8(sp)
    80062778:	6105                	addi	sp,sp,32
    8006277a:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:73
          if ((stream->fs_oflags & O_WROK) != 0)
    8006277c:	0b845783          	lhu	a5,184(s0)
    80062780:	8b89                	andi	a5,a5,2
    80062782:	cb81                	beqz	a5,80062792 <lib_flushall_unlocked+0x50>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:77
              ret = lib_fflush_unlocked(stream);
    80062784:	8522                	mv	a0,s0
    80062786:	072000ef          	jal	ra,800627f8 <lib_fflush_unlocked>
    8006278a:	2501                	sext.w	a0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:78
              if (ret < 0)
    8006278c:	00055363          	bgez	a0,80062792 <lib_flushall_unlocked+0x50>
    80062790:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:67 (discriminator 2)
      for (stream = list->sl_head; stream != NULL; stream = stream->fs_next)
    80062792:	6000                	ld	s0,0(s0)
    80062794:	bfe9                	j	8006276e <lib_flushall_unlocked+0x2c>

0000000080062796 <lib_flushall>:
lib_flushall():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:97

int lib_flushall(FAR struct streamlist *list)
{
    80062796:	1101                	addi	sp,sp,-32
    80062798:	e04a                	sd	s2,0(sp)
    8006279a:	ec06                	sd	ra,24(sp)
    8006279c:	e822                	sd	s0,16(sp)
    8006279e:	e426                	sd	s1,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:98
  int lasterrno = OK;
    800627a0:	4901                	li	s2,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:103
  int ret;

  /* Make sure that there are streams associated with this thread */

  if (list != NULL)
    800627a2:	c51d                	beqz	a0,800627d0 <lib_flushall+0x3a>
    800627a4:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:110
      FAR FILE *stream;
      int i;

      /* Process each stream in the thread's stream list */

      nxmutex_lock(&list->sl_lock);
    800627a6:	b0efe0ef          	jal	ra,80060ab4 <nxmutex_lock>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:114

      for (i = 0; i < 3; i++)
        {
          lib_fflush(&list->sl_std[i]);
    800627aa:	02040513          	addi	a0,s0,32
    800627ae:	0ca000ef          	jal	ra,80062878 <lib_fflush>
    800627b2:	0e040513          	addi	a0,s0,224
    800627b6:	0c2000ef          	jal	ra,80062878 <lib_fflush>
    800627ba:	1a040513          	addi	a0,s0,416
    800627be:	0ba000ef          	jal	ra,80062878 <lib_fflush>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:117
        }

      for (stream = list->sl_head; stream != NULL; stream = stream->fs_next)
    800627c2:	26043483          	ld	s1,608(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:98
  int lasterrno = OK;
    800627c6:	4901                	li	s2,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:117 (discriminator 1)
      for (stream = list->sl_head; stream != NULL; stream = stream->fs_next)
    800627c8:	e899                	bnez	s1,800627de <lib_flushall+0x48>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:140
                  lasterrno = ret;
                }
            }
        }

      nxmutex_unlock(&list->sl_lock);
    800627ca:	8522                	mv	a0,s0
    800627cc:	beafe0ef          	jal	ra,80060bb6 <nxmutex_unlock>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:146
    }

  /* If any flush failed, return the errorcode of the last failed flush */

  return lasterrno;
}
    800627d0:	60e2                	ld	ra,24(sp)
    800627d2:	6442                	ld	s0,16(sp)
    800627d4:	64a2                	ld	s1,8(sp)
    800627d6:	854a                	mv	a0,s2
    800627d8:	6902                	ld	s2,0(sp)
    800627da:	6105                	addi	sp,sp,32
    800627dc:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:123
          if ((stream->fs_oflags & O_WROK) != 0)
    800627de:	0b84d783          	lhu	a5,184(s1)
    800627e2:	8b89                	andi	a5,a5,2
    800627e4:	cb81                	beqz	a5,800627f4 <lib_flushall+0x5e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:127
              ret = lib_fflush(stream);
    800627e6:	8526                	mv	a0,s1
    800627e8:	090000ef          	jal	ra,80062878 <lib_fflush>
    800627ec:	2501                	sext.w	a0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:128
              if (ret < 0)
    800627ee:	00055363          	bgez	a0,800627f4 <lib_flushall+0x5e>
    800627f2:	892a                	mv	s2,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libflushall.c:117 (discriminator 2)
      for (stream = list->sl_head; stream != NULL; stream = stream->fs_next)
    800627f4:	6084                	ld	s1,0(s1)
    800627f6:	bfc9                	j	800627c8 <lib_flushall+0x32>

00000000800627f8 <lib_fflush_unlocked>:
lib_fflush_unlocked():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:67
  ssize_t bytes_written;
  ssize_t nbuffer;

  /* Return EBADF if the file is not opened for writing */

  if ((stream->fs_oflags & O_WROK) == 0)
    800627f8:	0b855783          	lhu	a5,184(a0)
    800627fc:	8b89                	andi	a5,a5,2
    800627fe:	cbbd                	beqz	a5,80062874 <lib_fflush_unlocked+0x7c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:59
{
    80062800:	1101                	addi	sp,sp,-32
    80062802:	e822                	sd	s0,16(sp)
    80062804:	ec06                	sd	ra,24(sp)
    80062806:	e426                	sd	s1,8(sp)
    80062808:	e04a                	sd	s2,0(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:74
      return -EBADF;
    }

  /* Check if there is an allocated I/O buffer */

  if (stream->fs_bufstart == NULL)
    8006280a:	05853903          	ld	s2,88(a0)
    8006280e:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:78
    {
      /* No, then there can be nothing remaining in the buffer. */

      return 0;
    80062810:	4501                	li	a0,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:74
  if (stream->fs_bufstart == NULL)
    80062812:	02090d63          	beqz	s2,8006284c <lib_fflush_unlocked+0x54>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:83
    }

  /* Make sure that the buffer holds valid data */

  if (stream->fs_bufpos != stream->fs_bufstart)
    80062816:	7424                	ld	s1,104(s0)
    80062818:	04990a63          	beq	s2,s1,8006286c <lib_fflush_unlocked+0x74>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:89
    {
      /* Make sure that the buffer holds buffered write data.  We do not
       * support concurrent read/write buffer usage.
       */

      if (stream->fs_bufread != stream->fs_bufstart)
    8006281c:	783c                	ld	a5,112(s0)
    8006281e:	02f91763          	bne	s2,a5,8006284c <lib_fflush_unlocked+0x54>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:100
          return 0;
        }

      /* How many bytes of write data are used in the buffer now */

      nbuffer = stream->fs_bufpos - stream->fs_bufstart;
    80062822:	412484b3          	sub	s1,s1,s2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:109
      src = stream->fs_bufstart;
      do
        {
          /* Perform the write */

          if (stream->fs_iofunc.write != NULL)
    80062826:	7c1c                	ld	a5,56(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:111
            {
              bytes_written = stream->fs_iofunc.write(stream->fs_cookie,
    80062828:	6828                	ld	a0,80(s0)
    8006282a:	8626                	mv	a2,s1
    8006282c:	85ca                	mv	a1,s2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:109
          if (stream->fs_iofunc.write != NULL)
    8006282e:	c78d                	beqz	a5,80062858 <lib_fflush_unlocked+0x60>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:111
              bytes_written = stream->fs_iofunc.write(stream->fs_cookie,
    80062830:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:121
            {
              bytes_written = _NX_WRITE((int)(intptr_t)stream->fs_cookie,
                                        src, nbuffer);
            }

          if (bytes_written < 0)
    80062832:	02055763          	bgez	a0,80062860 <lib_fflush_unlocked+0x68>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:127
            {
              /* Write failed.  The cause of the failure is in 'errno'.
               * returned the negated errno value.
               */

              stream->fs_flags |= __FS_FLAG_ERROR;
    80062836:	0ba44783          	lbu	a5,186(s0)
    8006283a:	0027e793          	ori	a5,a5,2
    8006283e:	0af40d23          	sb	a5,186(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:128
              return _NX_GETERRVAL(bytes_written);
    80062842:	9d6fe0ef          	jal	ra,80060a18 <__errno>
    80062846:	4108                	lw	a0,0(a0)
    80062848:	40a0053b          	negw	a0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:168
#else
  /* Return no bytes remaining in the buffer */

  return 0;
#endif
}
    8006284c:	60e2                	ld	ra,24(sp)
    8006284e:	6442                	ld	s0,16(sp)
    80062850:	64a2                	ld	s1,8(sp)
    80062852:	6902                	ld	s2,0(sp)
    80062854:	6105                	addi	sp,sp,32
    80062856:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:117
              bytes_written = _NX_WRITE((int)(intptr_t)stream->fs_cookie,
    80062858:	2501                	sext.w	a0,a0
    8006285a:	198020ef          	jal	ra,800649f2 <write>
    8006285e:	bfd1                	j	80062832 <lib_fflush_unlocked+0x3a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:137
          nbuffer -= bytes_written;
    80062860:	8c89                	sub	s1,s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:136
          src     += bytes_written;
    80062862:	992a                	add	s2,s2,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:139
      while (nbuffer > 0);
    80062864:	fc9041e3          	bgtz	s1,80062826 <lib_fflush_unlocked+0x2e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:143
      stream->fs_bufpos = stream->fs_bufstart;
    80062868:	6c3c                	ld	a5,88(s0)
    8006286a:	f43c                	sd	a5,104(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:161
  return stream->fs_bufpos - stream->fs_bufstart;
    8006286c:	7428                	ld	a0,104(s0)
    8006286e:	6c3c                	ld	a5,88(s0)
    80062870:	8d1d                	sub	a0,a0,a5
    80062872:	bfe9                	j	8006284c <lib_fflush_unlocked+0x54>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:69
      return -EBADF;
    80062874:	555d                	li	a0,-9
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:168
}
    80062876:	8082                	ret

0000000080062878 <lib_fflush>:
lib_fflush():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:171

ssize_t lib_fflush(FAR FILE *stream)
{
    80062878:	1101                	addi	sp,sp,-32
    8006287a:	ec06                	sd	ra,24(sp)
    8006287c:	e822                	sd	s0,16(sp)
    8006287e:	e426                	sd	s1,8(sp)
    80062880:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:176
  ssize_t ret;

  /* Make sure that we have exclusive access to the stream */

  flockfile(stream);
    80062882:	2ba000ef          	jal	ra,80062b3c <flockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:177
  ret = lib_fflush_unlocked(stream);
    80062886:	8522                	mv	a0,s0
    80062888:	f71ff0ef          	jal	ra,800627f8 <lib_fflush_unlocked>
    8006288c:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:178
  funlockfile(stream);
    8006288e:	8522                	mv	a0,s0
    80062890:	2b8000ef          	jal	ra,80062b48 <funlockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfflush.c:180
  return ret;
}
    80062894:	60e2                	ld	ra,24(sp)
    80062896:	6442                	ld	s0,16(sp)
    80062898:	8526                	mv	a0,s1
    8006289a:	64a2                	ld	s1,8(sp)
    8006289c:	6105                	addi	sp,sp,32
    8006289e:	8082                	ret

00000000800628a0 <lib_rdflush_unlocked>:
lib_rdflush_unlocked():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:50
 *   account for the unread data
 *
 ****************************************************************************/

int lib_rdflush_unlocked(FAR FILE *stream)
{
    800628a0:	1101                	addi	sp,sp,-32
    800628a2:	ec06                	sd	ra,24(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:55
  int ret;

  /* Sanity checking */

  if (stream == NULL)
    800628a4:	e519                	bnez	a0,800628b2 <lib_rdflush_unlocked+0x12>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:57
    {
      set_errno(EBADF);
    800628a6:	972fe0ef          	jal	ra,80060a18 <__errno>
    800628aa:	47a5                	li	a5,9
    800628ac:	c11c                	sw	a5,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:110
          ret = lseek((int)(intptr_t)stream->fs_cookie, rdoffset, SEEK_CUR);
        }

      if (ret < 0)
        {
          return ERROR;
    800628ae:	557d                	li	a0,-1
    800628b0:	a82d                	j	800628ea <lib_rdflush_unlocked+0x4a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:63
  if (stream->fs_bufstart == NULL)
    800628b2:	6d34                	ld	a3,88(a0)
    800628b4:	87aa                	mv	a5,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:65
      return OK;
    800628b6:	4501                	li	a0,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:63
  if (stream->fs_bufstart == NULL)
    800628b8:	ca8d                	beqz	a3,800628ea <lib_rdflush_unlocked+0x4a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:73
  if (stream->fs_bufread != stream->fs_bufstart)
    800628ba:	7bb0                	ld	a2,112(a5)
    800628bc:	02c68763          	beq	a3,a2,800628ea <lib_rdflush_unlocked+0x4a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:80
      off_t rdoffset = stream->fs_bufread - stream->fs_bufpos +
    800628c0:	77b8                	ld	a4,104(a5)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:81
                       stream->fs_nungotten;
    800628c2:	0bb7c583          	lbu	a1,187(a5)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:89
      stream->fs_bufpos = stream->fs_bufread = stream->fs_bufstart;
    800628c6:	fbb4                	sd	a3,112(a5)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:80
      off_t rdoffset = stream->fs_bufread - stream->fs_bufpos +
    800628c8:	9f11                	subw	a4,a4,a2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:97
      rdoffset = -rdoffset;
    800628ca:	40b705bb          	subw	a1,a4,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:98
      if (stream->fs_iofunc.seek != NULL)
    800628ce:	63b8                	ld	a4,64(a5)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:89
      stream->fs_bufpos = stream->fs_bufread = stream->fs_bufstart;
    800628d0:	f7b4                	sd	a3,104(a5)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:91
      stream->fs_nungotten = 0;
    800628d2:	0a078da3          	sb	zero,187(a5)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:97
      rdoffset = -rdoffset;
    800628d6:	c62e                	sw	a1,12(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:100
          ret = stream->fs_iofunc.seek(stream->fs_cookie, &rdoffset,
    800628d8:	6ba8                	ld	a0,80(a5)
    800628da:	4605                	li	a2,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:98
      if (stream->fs_iofunc.seek != NULL)
    800628dc:	cb11                	beqz	a4,800628f0 <lib_rdflush_unlocked+0x50>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:100
          ret = stream->fs_iofunc.seek(stream->fs_cookie, &rdoffset,
    800628de:	006c                	addi	a1,sp,12
    800628e0:	9702                	jalr	a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:105
          ret = lseek((int)(intptr_t)stream->fs_cookie, rdoffset, SEEK_CUR);
    800628e2:	87aa                	mv	a5,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:114
        }
    }

  return OK;
    800628e4:	4501                	li	a0,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:108
      if (ret < 0)
    800628e6:	fc07c4e3          	bltz	a5,800628ae <lib_rdflush_unlocked+0xe>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:115
}
    800628ea:	60e2                	ld	ra,24(sp)
    800628ec:	6105                	addi	sp,sp,32
    800628ee:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_rdflush_unlocked.c:105
          ret = lseek((int)(intptr_t)stream->fs_cookie, rdoffset, SEEK_CUR);
    800628f0:	2501                	sext.w	a0,a0
    800628f2:	661010ef          	jal	ra,80064752 <lseek>
    800628f6:	b7f5                	j	800628e2 <lib_rdflush_unlocked+0x42>

00000000800628f8 <lib_wrflush_unlocked>:
lib_wrflush_unlocked():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_wrflush_unlocked.c:52
{
#ifndef CONFIG_STDIO_DISABLE_BUFFERING
  /* Verify that we were passed a valid (i.e., non-NULL) stream */

#ifdef CONFIG_DEBUG_FEATURES
  if (stream == NULL)
    800628f8:	c115                	beqz	a0,8006291c <lib_wrflush_unlocked+0x24>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_wrflush_unlocked.c:60
    }
#endif

  /* Do nothing if there is no I/O buffer */

  if (stream->fs_bufstart == NULL)
    800628fa:	6d34                	ld	a3,88(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_wrflush_unlocked.c:62
    {
      return OK;
    800628fc:	4781                	li	a5,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_wrflush_unlocked.c:60
  if (stream->fs_bufstart == NULL)
    800628fe:	c285                	beqz	a3,8006291e <lib_wrflush_unlocked+0x26>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_wrflush_unlocked.c:71
   * return an error if it is called for a stream that is not opened for
   * writing.  Check that first so that this function will not fail in
   * that case.
   */

  if ((stream->fs_oflags & O_WROK) == 0)
    80062900:	0b855703          	lhu	a4,184(a0)
    80062904:	8b09                	andi	a4,a4,2
    80062906:	cf01                	beqz	a4,8006291e <lib_wrflush_unlocked+0x26>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_wrflush_unlocked.c:47
{
    80062908:	1141                	addi	sp,sp,-16
    8006290a:	e406                	sd	ra,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_wrflush_unlocked.c:85
  /* Flush the stream.   Return success if there is no buffered write data
   * -- i.e., that the stream is opened for writing and  that all of the
   * buffered write data was successfully flushed by lib_fflush().
   */

  return lib_fflush_unlocked(stream);
    8006290c:	eedff0ef          	jal	ra,800627f8 <lib_fflush_unlocked>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_wrflush_unlocked.c:99
    }
#endif

  return OK;
#endif
}
    80062910:	60a2                	ld	ra,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_wrflush_unlocked.c:85
  return lib_fflush_unlocked(stream);
    80062912:	0005079b          	sext.w	a5,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_wrflush_unlocked.c:99
}
    80062916:	853e                	mv	a0,a5
    80062918:	0141                	addi	sp,sp,16
    8006291a:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_wrflush_unlocked.c:54
      return -EINVAL;
    8006291c:	57a9                	li	a5,-22
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_wrflush_unlocked.c:99
}
    8006291e:	853e                	mv	a0,a5
    80062920:	8082                	ret

0000000080062922 <putc>:
putc():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_putc.c:33
 * Public Functions
 ****************************************************************************/

int putc(int c, FAR FILE *stream)
{
  return fputc(c, stream);
    80062922:	a881                	j	80062972 <fputc>

0000000080062924 <putc_unlocked>:
putc_unlocked():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_putc.c:38
}

int putc_unlocked(int c, FAR FILE *stream)
{
  return fputc_unlocked(c, stream);
    80062924:	a009                	j	80062926 <fputc_unlocked>

0000000080062926 <fputc_unlocked>:
fputc_unlocked():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:37
/****************************************************************************
 * Name: fputc
 ****************************************************************************/

int fputc_unlocked(int c, FAR FILE *stream)
{
    80062926:	7179                	addi	sp,sp,-48
    80062928:	f022                	sd	s0,32(sp)
    8006292a:	ec26                	sd	s1,24(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:38
  unsigned char buf = (unsigned char)c;
    8006292c:	00a107a3          	sb	a0,15(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:41
  int ret;

  ret = lib_fwrite_unlocked(&buf, 1, stream);
    80062930:	862e                	mv	a2,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:37
{
    80062932:	842a                	mv	s0,a0
    80062934:	84ae                	mv	s1,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:41
  ret = lib_fwrite_unlocked(&buf, 1, stream);
    80062936:	00f10513          	addi	a0,sp,15
    8006293a:	4585                	li	a1,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:37
{
    8006293c:	f406                	sd	ra,40(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:41
  ret = lib_fwrite_unlocked(&buf, 1, stream);
    8006293e:	c5dff0ef          	jal	ra,8006259a <lib_fwrite_unlocked>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:42
  if (ret > 0)
    80062942:	2501                	sext.w	a0,a0
    80062944:	00a04963          	bgtz	a0,80062956 <fputc_unlocked+0x30>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:59

      return c;
    }
  else
    {
      return EOF;
    80062948:	547d                	li	s0,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:61
    }
}
    8006294a:	70a2                	ld	ra,40(sp)
    8006294c:	8522                	mv	a0,s0
    8006294e:	7402                	ld	s0,32(sp)
    80062950:	64e2                	ld	s1,24(sp)
    80062952:	6145                	addi	sp,sp,48
    80062954:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:46
      if (c == '\n' && (stream->fs_flags & __FS_FLAG_LBF) != 0)
    80062956:	47a9                	li	a5,10
    80062958:	fef419e3          	bne	s0,a5,8006294a <fputc_unlocked+0x24>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:46 (discriminator 1)
    8006295c:	0ba4c783          	lbu	a5,186(s1)
    80062960:	8b91                	andi	a5,a5,4
    80062962:	d7e5                	beqz	a5,8006294a <fputc_unlocked+0x24>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:48
          ret = lib_fflush_unlocked(stream);
    80062964:	8526                	mv	a0,s1
    80062966:	e93ff0ef          	jal	ra,800627f8 <lib_fflush_unlocked>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:49
          if (ret < 0)
    8006296a:	2501                	sext.w	a0,a0
    8006296c:	fc055fe3          	bgez	a0,8006294a <fputc_unlocked+0x24>
    80062970:	bfe1                	j	80062948 <fputc_unlocked+0x22>

0000000080062972 <fputc>:
fputc():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:64

int fputc(int c, FAR FILE *stream)
{
    80062972:	1101                	addi	sp,sp,-32
    80062974:	e426                	sd	s1,8(sp)
    80062976:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:67
  int ret;

  flockfile(stream);
    80062978:	852e                	mv	a0,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:64
{
    8006297a:	ec06                	sd	ra,24(sp)
    8006297c:	e822                	sd	s0,16(sp)
    8006297e:	842e                	mv	s0,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:67
  flockfile(stream);
    80062980:	1bc000ef          	jal	ra,80062b3c <flockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:68
  ret = fputc_unlocked(c, stream);
    80062984:	85a2                	mv	a1,s0
    80062986:	8526                	mv	a0,s1
    80062988:	f9fff0ef          	jal	ra,80062926 <fputc_unlocked>
    8006298c:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:69
  funlockfile(stream);
    8006298e:	8522                	mv	a0,s0
    80062990:	1b8000ef          	jal	ra,80062b48 <funlockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputc.c:72

  return ret;
}
    80062994:	60e2                	ld	ra,24(sp)
    80062996:	6442                	ld	s0,16(sp)
    80062998:	8526                	mv	a0,s1
    8006299a:	64a2                	ld	s1,8(sp)
    8006299c:	6105                	addi	sp,sp,32
    8006299e:	8082                	ret

00000000800629a0 <fputs_unlocked>:
fputs_unlocked():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:83
  return nput;
}

#else
int fputs_unlocked(FAR const IPTR char *s, FAR FILE *stream)
{
    800629a0:	7179                	addi	sp,sp,-48
    800629a2:	f022                	sd	s0,32(sp)
    800629a4:	e84a                	sd	s2,16(sp)
    800629a6:	f406                	sd	ra,40(sp)
    800629a8:	ec26                	sd	s1,24(sp)
    800629aa:	e44e                	sd	s3,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:90

  /* If line buffering is enabled, then we will have to output one character
   * at a time, checking for a newline character each time.
   */

  if ((stream->fs_flags & __FS_FLAG_LBF) != 0)
    800629ac:	0ba5c783          	lbu	a5,186(a1)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:83
{
    800629b0:	892a                	mv	s2,a0
    800629b2:	842e                	mv	s0,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:90
  if ((stream->fs_flags & __FS_FLAG_LBF) != 0)
    800629b4:	8b91                	andi	a5,a5,4
    800629b6:	e3bd                	bnez	a5,80062a1c <fputs_unlocked+0x7c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:127
    {
      int ntowrite;

      /* Get the length of the string. */

      ntowrite = strlen(s);
    800629b8:	3ca010ef          	jal	ra,80063d82 <strlen>
    800629bc:	2501                	sext.w	a0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:128
      if (ntowrite == 0)
    800629be:	c129                	beqz	a0,80062a00 <fputs_unlocked+0x60>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:135
          return 0;
        }

      /* Write the string */

      nput = lib_fwrite_unlocked(s, ntowrite, stream);
    800629c0:	85aa                	mv	a1,a0
    800629c2:	8622                	mv	a2,s0
    800629c4:	854a                	mv	a0,s2
    800629c6:	bd5ff0ef          	jal	ra,8006259a <lib_fwrite_unlocked>
    800629ca:	85aa                	mv	a1,a0
    800629cc:	2501                	sext.w	a0,a0
    800629ce:	00055363          	bgez	a0,800629d4 <fputs_unlocked+0x34>
    800629d2:	55fd                	li	a1,-1
    800629d4:	0005851b          	sext.w	a0,a1
    800629d8:	a025                	j	80062a00 <fputs_unlocked+0x60>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:108
          if (*s == '\n')
    800629da:	0004c783          	lbu	a5,0(s1)
    800629de:	03378863          	beq	a5,s3,80062a0e <fputs_unlocked+0x6e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:96
      for (nput = 0; *s; nput++, s++)
    800629e2:	0485                	addi	s1,s1,1
    800629e4:	0004c783          	lbu	a5,0(s1)
    800629e8:	4124853b          	subw	a0,s1,s2
    800629ec:	cb91                	beqz	a5,80062a00 <fputs_unlocked+0x60>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:100
          ret = lib_fwrite_unlocked(s, 1, stream);
    800629ee:	8622                	mv	a2,s0
    800629f0:	4585                	li	a1,1
    800629f2:	8526                	mv	a0,s1
    800629f4:	ba7ff0ef          	jal	ra,8006259a <lib_fwrite_unlocked>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:101
          if (ret <= 0)
    800629f8:	2501                	sext.w	a0,a0
    800629fa:	fea040e3          	bgtz	a0,800629da <fputs_unlocked+0x3a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:103
              return EOF;
    800629fe:	557d                	li	a0,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:143
          return EOF;
        }
    }

  return nput;
}
    80062a00:	70a2                	ld	ra,40(sp)
    80062a02:	7402                	ld	s0,32(sp)
    80062a04:	64e2                	ld	s1,24(sp)
    80062a06:	6942                	ld	s2,16(sp)
    80062a08:	69a2                	ld	s3,8(sp)
    80062a0a:	6145                	addi	sp,sp,48
    80062a0c:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:110
              ret = lib_fflush_unlocked(stream);
    80062a0e:	8522                	mv	a0,s0
    80062a10:	de9ff0ef          	jal	ra,800627f8 <lib_fflush_unlocked>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:111
              if (ret < 0)
    80062a14:	2501                	sext.w	a0,a0
    80062a16:	fc0556e3          	bgez	a0,800629e2 <fputs_unlocked+0x42>
    80062a1a:	b7d5                	j	800629fe <fputs_unlocked+0x5e>
    80062a1c:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:108
          if (*s == '\n')
    80062a1e:	49a9                	li	s3,10
    80062a20:	b7d1                	j	800629e4 <fputs_unlocked+0x44>

0000000080062a22 <fputs>:
fputs():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:147
#endif

int fputs(FAR const IPTR char *s, FAR FILE *stream)
{
    80062a22:	1101                	addi	sp,sp,-32
    80062a24:	e426                	sd	s1,8(sp)
    80062a26:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:150
  int ret;

  flockfile(stream);
    80062a28:	852e                	mv	a0,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:147
{
    80062a2a:	ec06                	sd	ra,24(sp)
    80062a2c:	e822                	sd	s0,16(sp)
    80062a2e:	842e                	mv	s0,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:150
  flockfile(stream);
    80062a30:	10c000ef          	jal	ra,80062b3c <flockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:151
  ret = fputs_unlocked(s, stream);
    80062a34:	85a2                	mv	a1,s0
    80062a36:	8526                	mv	a0,s1
    80062a38:	f69ff0ef          	jal	ra,800629a0 <fputs_unlocked>
    80062a3c:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:152
  funlockfile(stream);
    80062a3e:	8522                	mv	a0,s0
    80062a40:	108000ef          	jal	ra,80062b48 <funlockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fputs.c:155

  return ret;
}
    80062a44:	60e2                	ld	ra,24(sp)
    80062a46:	6442                	ld	s0,16(sp)
    80062a48:	8526                	mv	a0,s1
    80062a4a:	64a2                	ld	s1,8(sp)
    80062a4c:	6105                	addi	sp,sp,32
    80062a4e:	8082                	ret

0000000080062a50 <fprintf>:
fprintf():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fprintf.c:36
/****************************************************************************
 * Name: fprintf
 ****************************************************************************/

int fprintf(FAR FILE *stream, FAR const IPTR char *fmt, ...)
{
    80062a50:	715d                	addi	sp,sp,-80
    80062a52:	f032                	sd	a2,32(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fprintf.c:42
  va_list ap;
  int     n;

  /* vfprintf into the stream */

  va_start(ap, fmt);
    80062a54:	1010                	addi	a2,sp,32
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fprintf.c:36
{
    80062a56:	ec06                	sd	ra,24(sp)
    80062a58:	f436                	sd	a3,40(sp)
    80062a5a:	f83a                	sd	a4,48(sp)
    80062a5c:	fc3e                	sd	a5,56(sp)
    80062a5e:	e0c2                	sd	a6,64(sp)
    80062a60:	e4c6                	sd	a7,72(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fprintf.c:42
  va_start(ap, fmt);
    80062a62:	e432                	sd	a2,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fprintf.c:43
  n = vfprintf(stream, fmt, ap);
    80062a64:	00a000ef          	jal	ra,80062a6e <vfprintf>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fprintf.c:46
  va_end(ap);
  return n;
}
    80062a68:	60e2                	ld	ra,24(sp)
    80062a6a:	6161                	addi	sp,sp,80
    80062a6c:	8082                	ret

0000000080062a6e <vfprintf>:
vfprintf():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_vfprintf.c:36
/****************************************************************************
 * Public Functions
 ****************************************************************************/

int vfprintf(FAR FILE *stream, FAR const IPTR char *fmt, va_list ap)
{
    80062a6e:	711d                	addi	sp,sp,-96
    80062a70:	e8a2                	sd	s0,80(sp)
    80062a72:	e4a6                	sd	s1,72(sp)
    80062a74:	842a                	mv	s0,a0
    80062a76:	84ae                	mv	s1,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_vfprintf.c:44

  /* Wrap the stream in a stream object and let lib_vsprintf
   * do the work.
   */

  lib_stdoutstream(&stdoutstream, stream);
    80062a78:	85aa                	mv	a1,a0
    80062a7a:	0828                	addi	a0,sp,24
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_vfprintf.c:36
{
    80062a7c:	ec86                	sd	ra,88(sp)
    80062a7e:	e432                	sd	a2,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_vfprintf.c:44
  lib_stdoutstream(&stdoutstream, stream);
    80062a80:	769000ef          	jal	ra,800639e8 <lib_stdoutstream>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_vfprintf.c:51
  /* Hold the stream semaphore throughout the lib_vsprintf
   * call so that this thread can get its entire message out
   * before being pre-empted by the next thread.
   */

  flockfile(stream);
    80062a84:	8522                	mv	a0,s0
    80062a86:	0b6000ef          	jal	ra,80062b3c <flockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_vfprintf.c:52
  n = lib_vsprintf(&stdoutstream.common, fmt, ap);
    80062a8a:	6622                	ld	a2,8(sp)
    80062a8c:	85a6                	mv	a1,s1
    80062a8e:	0828                	addi	a0,sp,24
    80062a90:	901fe0ef          	jal	ra,80061390 <lib_vsprintf>
    80062a94:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_vfprintf.c:53
  funlockfile(stream);
    80062a96:	8522                	mv	a0,s0
    80062a98:	0b0000ef          	jal	ra,80062b48 <funlockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_vfprintf.c:56

  return n;
}
    80062a9c:	60e6                	ld	ra,88(sp)
    80062a9e:	6446                	ld	s0,80(sp)
    80062aa0:	8526                	mv	a0,s1
    80062aa2:	64a6                	ld	s1,72(sp)
    80062aa4:	6125                	addi	sp,sp,96
    80062aa6:	8082                	ret

0000000080062aa8 <feof>:
feof():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_feof.c:58
  /* If the end-of-file condition is encountered by any of the C-buffered
   * I/O functions that perform read operations, they should set the
   * __FS_FLAG_EOF in the fs_flags field of struct file_struct.
   */

  return (stream->fs_flags & __FS_FLAG_EOF) != 0;
    80062aa8:	0ba54503          	lbu	a0,186(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_feof.c:59
}
    80062aac:	8905                	andi	a0,a0,1
    80062aae:	8082                	ret

0000000080062ab0 <ferror>:
ferror():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ferror.c:57
  /* If an error is encountered by any of the C-buffered I/O functions, they
   * should set the __FS_FLAG_ERROR in the fs_flags field of struct
   * file_struct.
   */

  return (stream->fs_flags & __FS_FLAG_ERROR) != 0;
    80062ab0:	0ba54503          	lbu	a0,186(a0)
    80062ab4:	0015551b          	srliw	a0,a0,0x1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ferror.c:58
}
    80062ab8:	8905                	andi	a0,a0,1
    80062aba:	8082                	ret

0000000080062abc <clearerr_unlocked>:
clearerr_unlocked():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_clearerr.c:51
 *
 ****************************************************************************/

void clearerr_unlocked(FAR FILE *stream)
{
  stream->fs_flags &= (__FS_FLAG_LBF | __FS_FLAG_UBF);
    80062abc:	0ba54783          	lbu	a5,186(a0)
    80062ac0:	8bb1                	andi	a5,a5,12
    80062ac2:	0af50d23          	sb	a5,186(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_clearerr.c:52
}
    80062ac6:	8082                	ret

0000000080062ac8 <clearerr>:
clearerr():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_clearerr.c:55

void clearerr(FAR FILE *stream)
{
    80062ac8:	1141                	addi	sp,sp,-16
    80062aca:	e022                	sd	s0,0(sp)
    80062acc:	e406                	sd	ra,8(sp)
    80062ace:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_clearerr.c:56
  flockfile(stream);
    80062ad0:	06c000ef          	jal	ra,80062b3c <flockfile>
clearerr_unlocked():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_clearerr.c:51
  stream->fs_flags &= (__FS_FLAG_LBF | __FS_FLAG_UBF);
    80062ad4:	0ba44783          	lbu	a5,186(s0)
clearerr():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_clearerr.c:58
  clearerr_unlocked(stream);
  funlockfile(stream);
    80062ad8:	8522                	mv	a0,s0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_clearerr.c:59
}
    80062ada:	60a2                	ld	ra,8(sp)
clearerr_unlocked():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_clearerr.c:51
  stream->fs_flags &= (__FS_FLAG_LBF | __FS_FLAG_UBF);
    80062adc:	8bb1                	andi	a5,a5,12
    80062ade:	0af40d23          	sb	a5,186(s0)
clearerr():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_clearerr.c:59
}
    80062ae2:	6402                	ld	s0,0(sp)
    80062ae4:	0141                	addi	sp,sp,16
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_clearerr.c:58
  funlockfile(stream);
    80062ae6:	a08d                	j	80062b48 <funlockfile>

0000000080062ae8 <tmpfile>:
tmpfile():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_tmpfile.c:35
 * Public Functions
 ****************************************************************************/

FAR FILE *tmpfile(void)
{
  char path[L_tmpnam] = P_tmpdir "/XXXXXX.tmp";
    80062ae8:	00002797          	auipc	a5,0x2
    80062aec:	00078793          	mv	a5,a5
    80062af0:	6398                	ld	a4,0(a5)
    80062af2:	679c                	ld	a5,8(a5)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_tmpfile.c:34
{
    80062af4:	7139                	addi	sp,sp,-64
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_tmpfile.c:39
  FAR FILE *fp = NULL;
  int fd;

  fd = mkstemp(path);
    80062af6:	850a                	mv	a0,sp
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_tmpfile.c:34
{
    80062af8:	f822                	sd	s0,48(sp)
    80062afa:	fc06                	sd	ra,56(sp)
    80062afc:	f426                	sd	s1,40(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_tmpfile.c:35
  char path[L_tmpnam] = P_tmpdir "/XXXXXX.tmp";
    80062afe:	e03a                	sd	a4,0(sp)
    80062b00:	e43e                	sd	a5,8(sp)
    80062b02:	e802                	sd	zero,16(sp)
    80062b04:	ec02                	sd	zero,24(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_tmpfile.c:39
  fd = mkstemp(path);
    80062b06:	4a5000ef          	jal	ra,800637aa <mkstemp>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_tmpfile.c:36
  FAR FILE *fp = NULL;
    80062b0a:	4401                	li	s0,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_tmpfile.c:40
  if (fd >= 0)
    80062b0c:	02054263          	bltz	a0,80062b30 <tmpfile+0x48>
    80062b10:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_tmpfile.c:42
    {
      unlink(path);
    80062b12:	850a                	mv	a0,sp
    80062b14:	685010ef          	jal	ra,80064998 <unlink>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_tmpfile.c:43
      fp = fdopen(fd, "w+");
    80062b18:	0002f597          	auipc	a1,0x2f
    80062b1c:	71858593          	addi	a1,a1,1816 # 80092230 <g_dtoa_scale_up+0xf8>
    80062b20:	8526                	mv	a0,s1
    80062b22:	d08ff0ef          	jal	ra,8006202a <fdopen>
    80062b26:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_tmpfile.c:44
      if (fp == NULL)
    80062b28:	e501                	bnez	a0,80062b30 <tmpfile+0x48>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_tmpfile.c:46
        {
          close(fd);
    80062b2a:	8526                	mv	a0,s1
    80062b2c:	339010ef          	jal	ra,80064664 <close>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_tmpfile.c:51
        }
    }

  return fp;
}
    80062b30:	70e2                	ld	ra,56(sp)
    80062b32:	8522                	mv	a0,s0
    80062b34:	7442                	ld	s0,48(sp)
    80062b36:	74a2                	ld	s1,40(sp)
    80062b38:	6121                	addi	sp,sp,64
    80062b3a:	8082                	ret

0000000080062b3c <flockfile>:
flockfile():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfilelock.c:46
 * flockfile
 ****************************************************************************/

void flockfile(FAR struct file_struct *stream)
{
  nxrmutex_lock(&stream->fs_lock);
    80062b3c:	0521                	addi	a0,a0,8
    80062b3e:	938fe06f          	j	80060c76 <nxrmutex_lock>

0000000080062b42 <ftrylockfile>:
ftrylockfile():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfilelock.c:55
 * flockfile
 ****************************************************************************/

int ftrylockfile(FAR struct file_struct *stream)
{
  return nxrmutex_trylock(&stream->fs_lock);
    80062b42:	0521                	addi	a0,a0,8
    80062b44:	97afe06f          	j	80060cbe <nxrmutex_trylock>

0000000080062b48 <funlockfile>:
funlockfile():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libfilelock.c:64
 * funlockfile
 ****************************************************************************/

void funlockfile(FAR struct file_struct *stream)
{
  nxrmutex_unlock(&stream->fs_lock);
    80062b48:	0521                	addi	a0,a0,8
    80062b4a:	a08fe06f          	j	80060d52 <nxrmutex_unlock>

0000000080062b4e <lib_get_streams>:
lib_get_streams():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libgetstreams.c:54
 * Assumptions:
 *
 ****************************************************************************/

FAR struct streamlist *lib_get_streams(void)
{
    80062b4e:	1141                	addi	sp,sp,-16
    80062b50:	e406                	sd	ra,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libgetstreams.c:57
  FAR struct task_info_s *info;

  info = task_get_info();
    80062b52:	49a010ef          	jal	ra,80063fec <task_get_info>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libgetstreams.c:59
  return &info->ta_streamlist;
}
    80062b56:	60a2                	ld	ra,8(sp)
    80062b58:	02850513          	addi	a0,a0,40
    80062b5c:	0141                	addi	sp,sp,16
    80062b5e:	8082                	ret

0000000080062b60 <lib_get_stream>:
lib_get_stream():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libgetstreams.c:71
 *   Note: only reserved fd number 0/1/2 is valid.
 *
 ****************************************************************************/

FAR struct file_struct *lib_get_stream(int fd)
{
    80062b60:	1141                	addi	sp,sp,-16
    80062b62:	e022                	sd	s0,0(sp)
    80062b64:	e406                	sd	ra,8(sp)
    80062b66:	842a                	mv	s0,a0
lib_get_streams():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libgetstreams.c:57
  info = task_get_info();
    80062b68:	484010ef          	jal	ra,80063fec <task_get_info>
lib_get_stream():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libgetstreams.c:72
  return &lib_get_streams()->sl_std[fd];
    80062b6c:	0c000793          	li	a5,192
    80062b70:	02f40433          	mul	s0,s0,a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libgetstreams.c:73
}
    80062b74:	60a2                	ld	ra,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libgetstreams.c:72
  return &lib_get_streams()->sl_std[fd];
    80062b76:	9522                	add	a0,a0,s0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libgetstreams.c:73
}
    80062b78:	6402                	ld	s0,0(sp)
    80062b7a:	04850513          	addi	a0,a0,72
    80062b7e:	0141                	addi	sp,sp,16
    80062b80:	8082                	ret

0000000080062b82 <abort>:
abort():
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_abort.c:60
 *  This function does not return,
 *
 ****************************************************************************/

void abort(void)
{
    80062b82:	1141                	addi	sp,sp,-16
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_abort.c:69
   * signal the calling thread all.
   *
   * _exit() will close all open files and terminate the thread.
   */

  _exit(EXIT_FAILURE);
    80062b84:	4505                	li	a0,1
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_abort.c:60
{
    80062b86:	e406                	sd	ra,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_abort.c:69
  _exit(EXIT_FAILURE);
    80062b88:	293010ef          	jal	ra,8006461a <_exit>

0000000080062b8c <atoi>:
atoi():
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_atoi.c:33
 * Public Functions
 ****************************************************************************/

#undef atoi /* See mm/README.txt */
int atoi(FAR const char *nptr)
{
    80062b8c:	1141                	addi	sp,sp,-16
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_atoi.c:34
  return strtol(nptr, NULL, 10);
    80062b8e:	4629                	li	a2,10
    80062b90:	4581                	li	a1,0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_atoi.c:33
{
    80062b92:	e406                	sd	ra,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_atoi.c:34
  return strtol(nptr, NULL, 10);
    80062b94:	1c2000ef          	jal	ra,80062d56 <strtol>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_atoi.c:35
}
    80062b98:	60a2                	ld	ra,8(sp)
    80062b9a:	2501                	sext.w	a0,a0
    80062b9c:	0141                	addi	sp,sp,16
    80062b9e:	8082                	ret

0000000080062ba0 <exit>:
exit():
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_exit.c:94
 *   Does not return.
 *
 ****************************************************************************/

void exit(int status)
{
    80062ba0:	1141                	addi	sp,sp,-16
    80062ba2:	e022                	sd	s0,0(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_exit.c:100
  /* Mark the pthread as non-cancelable to avoid additional calls to
   * pthread_exit() due to any cancellation point logic that might get
   * kicked off by actions taken during pthread_exit processing.
   */

  task_setcancelstate(TASK_CANCEL_DISABLE, NULL);
    80062ba4:	4581                	li	a1,0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_exit.c:94
{
    80062ba6:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_exit.c:100
  task_setcancelstate(TASK_CANCEL_DISABLE, NULL);
    80062ba8:	4505                	li	a0,1
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_exit.c:94
{
    80062baa:	e406                	sd	ra,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_exit.c:100
  task_setcancelstate(TASK_CANCEL_DISABLE, NULL);
    80062bac:	bd0fe0ef          	jal	ra,80060f7c <task_setcancelstate>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_exit.c:121
#endif

#ifdef CONFIG_FILE_STREAM
  /* Flush all streams */

  fflush(NULL);
    80062bb0:	4501                	li	a0,0
    80062bb2:	b5bff0ef          	jal	ra,8006270c <fflush>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_exit.c:126
#endif

  /* Then perform the exit */

  _exit(status);
    80062bb6:	8522                	mv	a0,s0
    80062bb8:	263010ef          	jal	ra,8006461a <_exit>

0000000080062bbc <quick_exit>:
quick_exit():
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_exit.c:147
 *   Does not return.
 *
 ****************************************************************************/

void quick_exit(int status)
{
    80062bbc:	1141                	addi	sp,sp,-16
    80062bbe:	e022                	sd	s0,0(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_exit.c:153
  /* Mark the pthread as non-cancelable to avoid additional calls to
   * pthread_exit() due to any cancellation point logic that might get
   * kicked off by actions taken during pthread_exit processing.
   */

  task_setcancelstate(TASK_CANCEL_DISABLE, NULL);
    80062bc0:	4581                	li	a1,0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_exit.c:147
{
    80062bc2:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_exit.c:153
  task_setcancelstate(TASK_CANCEL_DISABLE, NULL);
    80062bc4:	4505                	li	a0,1
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_exit.c:147
{
    80062bc6:	e406                	sd	ra,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_exit.c:153
  task_setcancelstate(TASK_CANCEL_DISABLE, NULL);
    80062bc8:	bb4fe0ef          	jal	ra,80060f7c <task_setcancelstate>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_exit.c:169

  atexit_call_exitfuncs(status, true);

  /* Then perform the exit */

  _exit(status);
    80062bcc:	8522                	mv	a0,s0
    80062bce:	24d010ef          	jal	ra,8006461a <_exit>

0000000080062bd2 <_Exit>:
_Exit():
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_exit.c:190
 *   Does not return.
 *
 ****************************************************************************/

void _Exit(int status)
{
    80062bd2:	1141                	addi	sp,sp,-16
    80062bd4:	e406                	sd	ra,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_exit.c:191
  _exit(status);
    80062bd6:	245010ef          	jal	ra,8006461a <_exit>

0000000080062bda <realpath>:
realpath():
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:40
/****************************************************************************
 * Public Functions
 ****************************************************************************/

FAR char *realpath(FAR const char *path, FAR char *resolved)
{
    80062bda:	7155                	addi	sp,sp,-208
    80062bdc:	e586                	sd	ra,200(sp)
    80062bde:	e1a2                	sd	s0,192(sp)
    80062be0:	fd26                	sd	s1,184(sp)
    80062be2:	f94a                	sd	s2,176(sp)
    80062be4:	f54e                	sd	s3,168(sp)
    80062be6:	f152                	sd	s4,160(sp)
    80062be8:	ed56                	sd	s5,152(sp)
    80062bea:	e95a                	sd	s6,144(sp)
    80062bec:	e55e                	sd	s7,136(sp)
    80062bee:	e162                	sd	s8,128(sp)
    80062bf0:	fce6                	sd	s9,120(sp)
    80062bf2:	f8ea                	sd	s10,112(sp)
    80062bf4:	f4ee                	sd	s11,104(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:56
  FAR char *fres = NULL;
  FAR char *p;
  struct stat sb;
  size_t len;

  if (path == NULL)
    80062bf6:	e519                	bnez	a0,80062c04 <realpath+0x2a>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:58
    {
      set_errno(EINVAL);
    80062bf8:	e21fd0ef          	jal	ra,80060a18 <__errno>
    80062bfc:	47d9                	li	a5,22
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:64
      return NULL;
    }

  if (*path == '\0')
    {
      set_errno(ENOENT);
    80062bfe:	c11c                	sw	a5,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:267
    {
      lib_free(wbuf[0]);
    }
#endif

  return NULL;
    80062c00:	4981                	li	s3,0
    80062c02:	a805                	j	80062c32 <realpath+0x58>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:62
  if (*path == '\0')
    80062c04:	00054a03          	lbu	s4,0(a0)
    80062c08:	892a                	mv	s2,a0
    80062c0a:	000a1663          	bnez	s4,80062c16 <realpath+0x3c>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:64
      set_errno(ENOENT);
    80062c0e:	e0bfd0ef          	jal	ra,80060a18 <__errno>
    80062c12:	4789                	li	a5,2
    80062c14:	b7ed                	j	80062bfe <realpath+0x24>
    80062c16:	842e                	mv	s0,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:51
  FAR char *fres = NULL;
    80062c18:	4981                	li	s3,0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:68
  if (resolved == NULL)
    80062c1a:	ed85                	bnez	a1,80062c52 <realpath+0x78>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:70
      fres = resolved = lib_malloc(PATH_MAX);
    80062c1c:	10000513          	li	a0,256
    80062c20:	8a2fd0ef          	jal	ra,8005fcc2 <malloc>
    80062c24:	89aa                	mv	s3,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:71
      if (resolved == NULL)
    80062c26:	842a                	mv	s0,a0
    80062c28:	e50d                	bnez	a0,80062c52 <realpath+0x78>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:73
          set_errno(ENOMEM);
    80062c2a:	deffd0ef          	jal	ra,80060a18 <__errno>
    80062c2e:	47b1                	li	a5,12
    80062c30:	c11c                	sw	a5,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:268
}
    80062c32:	60ae                	ld	ra,200(sp)
    80062c34:	640e                	ld	s0,192(sp)
    80062c36:	74ea                	ld	s1,184(sp)
    80062c38:	794a                	ld	s2,176(sp)
    80062c3a:	7a0a                	ld	s4,160(sp)
    80062c3c:	6aea                	ld	s5,152(sp)
    80062c3e:	6b4a                	ld	s6,144(sp)
    80062c40:	6baa                	ld	s7,136(sp)
    80062c42:	6c0a                	ld	s8,128(sp)
    80062c44:	7ce6                	ld	s9,120(sp)
    80062c46:	7d46                	ld	s10,112(sp)
    80062c48:	7da6                	ld	s11,104(sp)
    80062c4a:	854e                	mv	a0,s3
    80062c4c:	79aa                	ld	s3,168(sp)
    80062c4e:	6169                	addi	sp,sp,208
    80062c50:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:90
  if (*path != '/')
    80062c52:	02f00793          	li	a5,47
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:106
loop:
    80062c56:	84a2                	mv	s1,s0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:90
  if (*path != '/')
    80062c58:	02fa0063          	beq	s4,a5,80062c78 <realpath+0x9e>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:94
      if (getcwd(resolved, PATH_MAX) == NULL)
    80062c5c:	10000593          	li	a1,256
    80062c60:	8522                	mv	a0,s0
    80062c62:	592010ef          	jal	ra,800641f4 <getcwd>
    80062c66:	c145                	beqz	a0,80062d06 <realpath+0x12c>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:99
      len = strlen(resolved);
    80062c68:	8522                	mv	a0,s0
    80062c6a:	118010ef          	jal	ra,80063d82 <strlen>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:100
      if (len > 1)
    80062c6e:	4785                	li	a5,1
    80062c70:	00a7f463          	bgeu	a5,a0,80062c78 <realpath+0x9e>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:102
          p += len;
    80062c74:	00a404b3          	add	s1,s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:110
  while (*path == '/')
    80062c78:	02f00a93          	li	s5,47
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:145
  if (path[0] == '.')
    80062c7c:	02e00b93          	li	s7,46
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:172
  if (p - resolved + 1 + q - path + 1 > PATH_MAX)
    80062c80:	0ff00d13          	li	s10,255
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:186
  if (lstat(resolved, &sb) == -1)
    80062c84:	5dfd                	li	s11,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:246
  if (*q == '/' && !S_ISDIR(sb.st_mode))
    80062c86:	6cbd                	lui	s9,0xf
    80062c88:	6c11                	lui	s8,0x4
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:147
      if (q - path == 1)
    80062c8a:	4705                	li	a4,1
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:110
  while (*path == '/')
    80062c8c:	00094783          	lbu	a5,0(s2)
    80062c90:	01578d63          	beq	a5,s5,80062caa <realpath+0xd0>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:115
  if (*path == '\0')
    80062c94:	ef99                	bnez	a5,80062cb2 <realpath+0xd8>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:117
      if (p == resolved)
    80062c96:	00941663          	bne	s0,s1,80062ca2 <realpath+0xc8>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:119
          *p++ = '/';
    80062c9a:	01540023          	sb	s5,0(s0)
    80062c9e:	00140493          	addi	s1,s0,1
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:122
      *p = '\0';
    80062ca2:	00048023          	sb	zero,0(s1)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:131
      return resolved;
    80062ca6:	89a2                	mv	s3,s0
    80062ca8:	b769                	j	80062c32 <realpath+0x58>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:112
      path++;
    80062caa:	00190a13          	addi	s4,s2,1
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:106
loop:
    80062cae:	8952                	mv	s2,s4
    80062cb0:	bff1                	j	80062c8c <realpath+0xb2>
    80062cb2:	8a4a                	mv	s4,s2
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:139 (discriminator 2)
      q++;
    80062cb4:	8b52                	mv	s6,s4
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:141 (discriminator 2)
  while (*q != '/' && *q != '\0');
    80062cb6:	001a4683          	lbu	a3,1(s4)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:139 (discriminator 2)
      q++;
    80062cba:	0a05                	addi	s4,s4,1
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:141 (discriminator 2)
  while (*q != '/' && *q != '\0');
    80062cbc:	01568363          	beq	a3,s5,80062cc2 <realpath+0xe8>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:141 (discriminator 1)
    80062cc0:	faf5                	bnez	a3,80062cb4 <realpath+0xda>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:145
  if (path[0] == '.')
    80062cc2:	03779563          	bne	a5,s7,80062cec <realpath+0x112>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:147
      if (q - path == 1)
    80062cc6:	412a07b3          	sub	a5,s4,s2
    80062cca:	fee782e3          	beq	a5,a4,80062cae <realpath+0xd4>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:153
      if (path[1] == '.' && q - path == 2)
    80062cce:	00194683          	lbu	a3,1(s2)
    80062cd2:	01769d63          	bne	a3,s7,80062cec <realpath+0x112>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:153 (discriminator 1)
    80062cd6:	4689                	li	a3,2
    80062cd8:	00d79a63          	bne	a5,a3,80062cec <realpath+0x112>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:157
          if (p != resolved)
    80062cdc:	fc9409e3          	beq	s0,s1,80062cae <realpath+0xd4>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:159
              while (*--p != '/')
    80062ce0:	fff4c783          	lbu	a5,-1(s1)
    80062ce4:	14fd                	addi	s1,s1,-1
    80062ce6:	fd5784e3          	beq	a5,s5,80062cae <realpath+0xd4>
    80062cea:	bfdd                	j	80062ce0 <realpath+0x106>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:172
  if (p - resolved + 1 + q - path + 1 > PATH_MAX)
    80062cec:	408487b3          	sub	a5,s1,s0
    80062cf0:	0785                	addi	a5,a5,1
    80062cf2:	97d2                	add	a5,a5,s4
    80062cf4:	412787b3          	sub	a5,a5,s2
    80062cf8:	00fd5b63          	bge	s10,a5,80062d0e <realpath+0x134>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:174
      set_errno(ENAMETOOLONG);
    80062cfc:	d1dfd0ef          	jal	ra,80060a18 <__errno>
    80062d00:	02400793          	li	a5,36
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:248
      set_errno(ENOTDIR);
    80062d04:	c11c                	sw	a5,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:259
  lib_free(fres);
    80062d06:	854e                	mv	a0,s3
    80062d08:	faffc0ef          	jal	ra,8005fcb6 <free>
    80062d0c:	bdd5                	j	80062c00 <realpath+0x26>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:180
  p[1 + q - path] = '\0';
    80062d0e:	0b09                	addi	s6,s6,2
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:179
  memcpy(&p[1], path, q - path);
    80062d10:	85ca                	mv	a1,s2
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:178
  p[0] = '/';
    80062d12:	01548023          	sb	s5,0(s1)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:179
  memcpy(&p[1], path, q - path);
    80062d16:	412a0633          	sub	a2,s4,s2
    80062d1a:	00148513          	addi	a0,s1,1
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:180
  p[1 + q - path] = '\0';
    80062d1e:	412b0933          	sub	s2,s6,s2
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:179
  memcpy(&p[1], path, q - path);
    80062d22:	08a010ef          	jal	ra,80063dac <memcpy>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:180
  p[1 + q - path] = '\0';
    80062d26:	94ca                	add	s1,s1,s2
    80062d28:	00048023          	sb	zero,0(s1)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:186
  if (lstat(resolved, &sb) == -1)
    80062d2c:	002c                	addi	a1,sp,8
    80062d2e:	8522                	mv	a0,s0
    80062d30:	23b010ef          	jal	ra,8006476a <lstat>
    80062d34:	fdb509e3          	beq	a0,s11,80062d06 <realpath+0x12c>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:246
  if (*q == '/' && !S_ISDIR(sb.st_mode))
    80062d38:	000a4783          	lbu	a5,0(s4)
    80062d3c:	4705                	li	a4,1
    80062d3e:	f75798e3          	bne	a5,s5,80062cae <realpath+0xd4>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:246 (discriminator 1)
    80062d42:	47c2                	lw	a5,16(sp)
    80062d44:	0197f7b3          	and	a5,a5,s9
    80062d48:	2781                	sext.w	a5,a5
    80062d4a:	f78782e3          	beq	a5,s8,80062cae <realpath+0xd4>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_realpath.c:248
      set_errno(ENOTDIR);
    80062d4e:	ccbfd0ef          	jal	ra,80060a18 <__errno>
    80062d52:	47d1                	li	a5,20
    80062d54:	bf45                	j	80062d04 <realpath+0x12a>

0000000080062d56 <strtol>:
strtol():
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:56
 *     * ERANGE if the number cannot be represented using long
 *
 ****************************************************************************/

long strtol(FAR const char *nptr, FAR char **endptr, int base)
{
    80062d56:	7179                	addi	sp,sp,-48
    80062d58:	f406                	sd	ra,40(sp)
    80062d5a:	f022                	sd	s0,32(sp)
    80062d5c:	ec26                	sd	s1,24(sp)
    80062d5e:	e84a                	sd	s2,16(sp)
    80062d60:	e42a                	sd	a0,8(sp)
    80062d62:	e032                	sd	a2,0(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:61
  unsigned long accum = 0;
  long retval = 0;
  char sign = 0;

  if (nptr)
    80062d64:	c159                	beqz	a0,80062dea <strtol+0x94>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:65
    {
      /* Skip leading spaces */

      lib_skipspace(&nptr);
    80062d66:	0028                	addi	a0,sp,8
    80062d68:	842e                	mv	s0,a1
    80062d6a:	53d000ef          	jal	ra,80063aa6 <lib_skipspace>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:69

      /* Check for leading + or - */

      if (*nptr == '-' || *nptr == '+')
    80062d6e:	67a2                	ld	a5,8(sp)
    80062d70:	6602                	ld	a2,0(sp)
    80062d72:	0007c483          	lbu	s1,0(a5) # 80064ae8 <_srodata+0xb8>
    80062d76:	fd54871b          	addiw	a4,s1,-43
    80062d7a:	0fd77713          	andi	a4,a4,253
    80062d7e:	e71d                	bnez	a4,80062dac <strtol+0x56>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:72
        {
          sign = *nptr;
          nptr++;
    80062d80:	0785                	addi	a5,a5,1
    80062d82:	e43e                	sd	a5,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:77
        }

      /* Get the unsigned value */

      accum = strtoul(nptr, endptr, base);
    80062d84:	6522                	ld	a0,8(sp)
    80062d86:	85a2                	mv	a1,s0
    80062d88:	066000ef          	jal	ra,80062dee <strtoul>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:81

      /* Correct the sign of the result and check for overflow */

      if (sign == '-')
    80062d8c:	02d00713          	li	a4,45
    80062d90:	02e49563          	bne	s1,a4,80062dba <strtol+0x64>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:85
        {
          const unsigned long limit = ((unsigned long)-(LONG_MIN + 1)) + 1;

          if (accum > limit)
    80062d94:	597d                	li	s2,-1
    80062d96:	197e                	slli	s2,s2,0x3f
    80062d98:	00a97c63          	bgeu	s2,a0,80062db0 <strtol+0x5a>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:87
            {
              set_errno(ERANGE);
    80062d9c:	c7dfd0ef          	jal	ra,80060a18 <__errno>
    80062da0:	02200793          	li	a5,34
    80062da4:	c11c                	sw	a5,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:88
              retval = LONG_MIN;
    80062da6:	854a                	mv	a0,s2
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:111
        }
    }

  /* Return the final pointer to the unused value */

  if (endptr)
    80062da8:	e405                	bnez	s0,80062dd0 <strtol+0x7a>
    80062daa:	a815                	j	80062dde <strtol+0x88>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:59
  char sign = 0;
    80062dac:	4481                	li	s1,0
    80062dae:	bfd9                	j	80062d84 <strtol+0x2e>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:92
              retval = (accum == limit) ? LONG_MIN : -(long)accum;
    80062db0:	ff250ce3          	beq	a0,s2,80062da8 <strtol+0x52>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:92 (discriminator 1)
    80062db4:	40a00533          	neg	a0,a0
    80062db8:	bfc5                	j	80062da8 <strtol+0x52>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:97
          if (accum > LONG_MAX)
    80062dba:	00055963          	bgez	a0,80062dcc <strtol+0x76>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:99
              set_errno(ERANGE);
    80062dbe:	c5bfd0ef          	jal	ra,80060a18 <__errno>
    80062dc2:	02200793          	li	a5,34
    80062dc6:	c11c                	sw	a5,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:100
              retval = LONG_MAX;
    80062dc8:	557d                	li	a0,-1
    80062dca:	8105                	srli	a0,a0,0x1
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:111
  if (endptr)
    80062dcc:	c809                	beqz	s0,80062dde <strtol+0x88>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:113
    {
      if (sign)
    80062dce:	c881                	beqz	s1,80062dde <strtol+0x88>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:115
        {
          if (*((*endptr) - 1) == sign)
    80062dd0:	601c                	ld	a5,0(s0)
    80062dd2:	fff7c703          	lbu	a4,-1(a5)
    80062dd6:	00971463          	bne	a4,s1,80062dde <strtol+0x88>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:117
            {
              (*endptr)--;
    80062dda:	17fd                	addi	a5,a5,-1
    80062ddc:	e01c                	sd	a5,0(s0)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:123
            }
        }
    }

  return retval;
}
    80062dde:	70a2                	ld	ra,40(sp)
    80062de0:	7402                	ld	s0,32(sp)
    80062de2:	64e2                	ld	s1,24(sp)
    80062de4:	6942                	ld	s2,16(sp)
    80062de6:	6145                	addi	sp,sp,48
    80062de8:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:58
  long retval = 0;
    80062dea:	4501                	li	a0,0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtol.c:122
  return retval;
    80062dec:	bfcd                	j	80062dde <strtol+0x88>

0000000080062dee <strtoul>:
strtoul():
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:54
 *     * ERANGE if the number cannot be represented using unsigned long
 *
 ****************************************************************************/

unsigned long strtoul(FAR const char *nptr, FAR char **endptr, int base)
{
    80062dee:	711d                	addi	sp,sp,-96
    80062df0:	e0ca                	sd	s2,64(sp)
    80062df2:	ec86                	sd	ra,88(sp)
    80062df4:	e8a2                	sd	s0,80(sp)
    80062df6:	e4a6                	sd	s1,72(sp)
    80062df8:	fc4e                	sd	s3,56(sp)
    80062dfa:	f852                	sd	s4,48(sp)
    80062dfc:	f456                	sd	s5,40(sp)
    80062dfe:	e42a                	sd	a0,8(sp)
    80062e00:	892e                	mv	s2,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:61
  unsigned long limit;
  int value;
  int last_digit;
  char sign = 0;

  if (nptr)
    80062e02:	cd71                	beqz	a0,80062ede <strtoul+0xf0>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:65
    {
      /* Skip leading spaces */

      lib_skipspace(&nptr);
    80062e04:	0028                	addi	a0,sp,8
    80062e06:	8432                	mv	s0,a2
    80062e08:	49f000ef          	jal	ra,80063aa6 <lib_skipspace>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:69

      /* Check for leading + or - already done for strtol */

      if (*nptr == '-' || *nptr == '+')
    80062e0c:	67a2                	ld	a5,8(sp)
    80062e0e:	0007ca03          	lbu	s4,0(a5)
    80062e12:	fd5a071b          	addiw	a4,s4,-43
    80062e16:	0fd77713          	andi	a4,a4,253
    80062e1a:	ef15                	bnez	a4,80062e56 <strtoul+0x68>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:72
        {
          sign = *nptr;
          nptr++;
    80062e1c:	0785                	addi	a5,a5,1
    80062e1e:	e43e                	sd	a5,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:77
        }

      /* Check for unspecified or incorrect base */

      base = lib_checkbase(base, &nptr);
    80062e20:	002c                	addi	a1,sp,8
    80062e22:	8522                	mv	a0,s0
    80062e24:	0f7000ef          	jal	ra,8006371a <lib_checkbase>
    80062e28:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:79

      if (base < 0)
    80062e2a:	02055863          	bgez	a0,80062e5a <strtoul+0x6c>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:81
        {
          set_errno(EINVAL);
    80062e2e:	bebfd0ef          	jal	ra,80060a18 <__errno>
    80062e32:	47d9                	li	a5,22
    80062e34:	c11c                	sw	a5,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:82
          accum = 0;
    80062e36:	4401                	li	s0,0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:120
        }
    }

  /* Return the final pointer to the unused value */

  if (endptr)
    80062e38:	06090e63          	beqz	s2,80062eb4 <strtoul+0xc6>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:122
    {
      if (sign)
    80062e3c:	000a0963          	beqz	s4,80062e4e <strtoul+0x60>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:124
        {
          if (*(nptr - 1) == sign)
    80062e40:	67a2                	ld	a5,8(sp)
    80062e42:	fff7c703          	lbu	a4,-1(a5)
    80062e46:	01471463          	bne	a4,s4,80062e4e <strtoul+0x60>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:126
            {
              nptr--;
    80062e4a:	17fd                	addi	a5,a5,-1
    80062e4c:	e43e                	sd	a5,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:130
            }
        }

      *endptr = (FAR char *)nptr;
    80062e4e:	67a2                	ld	a5,8(sp)
    80062e50:	00f93023          	sd	a5,0(s2)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:133
    }

  return accum;
    80062e54:	a085                	j	80062eb4 <strtoul+0xc6>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:59
  char sign = 0;
    80062e56:	4a01                	li	s4,0
    80062e58:	b7e1                	j	80062e20 <strtoul+0x32>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:86
          limit = ULONG_MAX / base;
    80062e5a:	57fd                	li	a5,-1
    80062e5c:	02a7dab3          	divu	s5,a5,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:55
  unsigned long accum = 0;
    80062e60:	4401                	li	s0,0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:87
          last_digit = ULONG_MAX % base;
    80062e62:	02a7f7b3          	remu	a5,a5,a0
    80062e66:	0007899b          	sext.w	s3,a5
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:91
          while (lib_isbasedigit(*nptr, base, &value))
    80062e6a:	67a2                	ld	a5,8(sp)
    80062e6c:	0870                	addi	a2,sp,28
    80062e6e:	85a6                	mv	a1,s1
    80062e70:	0007c503          	lbu	a0,0(a5)
    80062e74:	3cd000ef          	jal	ra,80063a40 <lib_isbasedigit>
    80062e78:	cd11                	beqz	a0,80062e94 <strtoul+0xa6>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:95
              if (accum > limit || (accum == limit && value > last_digit))
    80062e7a:	008ae763          	bltu	s5,s0,80062e88 <strtoul+0x9a>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:95 (discriminator 1)
    80062e7e:	47f2                	lw	a5,28(sp)
    80062e80:	05541463          	bne	s0,s5,80062ec8 <strtoul+0xda>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:95 (discriminator 2)
    80062e84:	04f9d263          	bge	s3,a5,80062ec8 <strtoul+0xda>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:97
                  set_errno(ERANGE);
    80062e88:	b91fd0ef          	jal	ra,80060a18 <__errno>
    80062e8c:	02200793          	li	a5,34
    80062e90:	c11c                	sw	a5,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:98
                  accum = ULONG_MAX;
    80062e92:	547d                	li	s0,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:106
          while (lib_isbasedigit(*nptr, base, &value))
    80062e94:	67a2                	ld	a5,8(sp)
    80062e96:	0870                	addi	a2,sp,28
    80062e98:	85a6                	mv	a1,s1
    80062e9a:	0007c503          	lbu	a0,0(a5)
    80062e9e:	3a3000ef          	jal	ra,80063a40 <lib_isbasedigit>
    80062ea2:	e915                	bnez	a0,80062ed6 <strtoul+0xe8>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:111
          if (sign == '-')
    80062ea4:	02d00793          	li	a5,45
    80062ea8:	f8fa18e3          	bne	s4,a5,80062e38 <strtoul+0x4a>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:113
              accum = (~accum) + 1;
    80062eac:	40800433          	neg	s0,s0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:120
  if (endptr)
    80062eb0:	f80918e3          	bnez	s2,80062e40 <strtoul+0x52>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:134
}
    80062eb4:	60e6                	ld	ra,88(sp)
    80062eb6:	8522                	mv	a0,s0
    80062eb8:	6446                	ld	s0,80(sp)
    80062eba:	64a6                	ld	s1,72(sp)
    80062ebc:	6906                	ld	s2,64(sp)
    80062ebe:	79e2                	ld	s3,56(sp)
    80062ec0:	7a42                	ld	s4,48(sp)
    80062ec2:	7aa2                	ld	s5,40(sp)
    80062ec4:	6125                	addi	sp,sp,96
    80062ec6:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:102
              accum = accum * base + value;
    80062ec8:	02848433          	mul	s0,s1,s0
    80062ecc:	943e                	add	s0,s0,a5
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:103
              nptr++;
    80062ece:	67a2                	ld	a5,8(sp)
    80062ed0:	0785                	addi	a5,a5,1
    80062ed2:	e43e                	sd	a5,8(sp)
    80062ed4:	bf59                	j	80062e6a <strtoul+0x7c>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:108
              nptr++;
    80062ed6:	67a2                	ld	a5,8(sp)
    80062ed8:	0785                	addi	a5,a5,1
    80062eda:	e43e                	sd	a5,8(sp)
    80062edc:	bf65                	j	80062e94 <strtoul+0xa6>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:55
  unsigned long accum = 0;
    80062ede:	4401                	li	s0,0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtoul.c:120
  if (endptr)
    80062ee0:	f5bd                	bnez	a1,80062e4e <strtoul+0x60>
    80062ee2:	bfc9                	j	80062eb4 <strtoul+0xc6>

0000000080062ee4 <ifallzero.constprop.0>:
ifallzero():
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:161
 *
 ****************************************************************************/

static bool ifallzero(FAR char **f, bool flag)
{
  FAR char *s = *f;
    80062ee4:	6118                	ld	a4,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:166
  int c;

  c = shgetc(s);

  while (c == '0')
    80062ee6:	03000693          	li	a3,48
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:164
  c = shgetc(s);
    80062eea:	00170793          	addi	a5,a4,1
    80062eee:	00074703          	lbu	a4,0(a4)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:166
  while (c == '0')
    80062ef2:	00d70a63          	beq	a4,a3,80062f06 <ifallzero.constprop.0+0x22>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:171
    {
      c = shgetc(s);
    }

  shunget(s);
    80062ef6:	17fd                	addi	a5,a5,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:174
  if (flag)
    {
      *f = s;
    80062ef8:	e11c                	sd	a5,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:177
    }

  return !isdigit(c);
    80062efa:	fd07071b          	addiw	a4,a4,-48
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:178
}
    80062efe:	4525                	li	a0,9
    80062f00:	00e53533          	sltu	a0,a0,a4
    80062f04:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:168
      c = shgetc(s);
    80062f06:	0785                	addi	a5,a5,1
    80062f08:	fff7c703          	lbu	a4,-1(a5)
    80062f0c:	b7dd                	j	80062ef2 <ifallzero.constprop.0+0xe>

0000000080062f0e <scanexp.constprop.0>:
scanexp():
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:113
static long_long scanexp(FAR char **f, bool flag)
    80062f0e:	85aa                	mv	a1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:115
  FAR char *s = *f;
    80062f10:	6108                	ld	a0,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:118
  bool neg = 0;
    80062f12:	4801                	li	a6,0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:120
  c = shgetc(s);
    80062f14:	00054783          	lbu	a5,0(a0)
    80062f18:	00150713          	addi	a4,a0,1
    80062f1c:	0007869b          	sext.w	a3,a5
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:122
  if ((c == '+' || c == '-') && isdigit(*s))
    80062f20:	fd57879b          	addiw	a5,a5,-43
    80062f24:	0fd7f613          	andi	a2,a5,253
    80062f28:	e205                	bnez	a2,80062f48 <scanexp.constprop.0+0x3a>
    80062f2a:	00154603          	lbu	a2,1(a0)
    80062f2e:	47a5                	li	a5,9
    80062f30:	fd06089b          	addiw	a7,a2,-48
    80062f34:	0117ea63          	bltu	a5,a7,80062f48 <scanexp.constprop.0+0x3a>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:124
      neg = (c == '-');
    80062f38:	fd368793          	addi	a5,a3,-45
    80062f3c:	0017b813          	seqz	a6,a5
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:125
      c = shgetc(s);
    80062f40:	00250713          	addi	a4,a0,2
    80062f44:	0006069b          	sext.w	a3,a2
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:118
  bool neg = 0;
    80062f48:	4501                	li	a0,0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:128
  while (isdigit(c))
    80062f4a:	4625                	li	a2,9
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:130
      y = 10 * y + c - '0';
    80062f4c:	48a9                	li	a7,10
    80062f4e:	a809                	j	80062f60 <scanexp.constprop.0+0x52>
    80062f50:	031507b3          	mul	a5,a0,a7
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:131
      c = shgetc(s);
    80062f54:	0705                	addi	a4,a4,1
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:130
      y = 10 * y + c - '0';
    80062f56:	97b6                	add	a5,a5,a3
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:131
      c = shgetc(s);
    80062f58:	fff74683          	lbu	a3,-1(a4)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:130
      y = 10 * y + c - '0';
    80062f5c:	fd078513          	addi	a0,a5,-48
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:128
  while (isdigit(c))
    80062f60:	fd06879b          	addiw	a5,a3,-48
    80062f64:	fef676e3          	bgeu	a2,a5,80062f50 <scanexp.constprop.0+0x42>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:134
  shunget(s);
    80062f68:	177d                	addi	a4,a4,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:137
      ifexist(f, s);
    80062f6a:	e198                	sd	a4,0(a1)
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:140
  return neg ? -y : y;
    80062f6c:	00080463          	beqz	a6,80062f74 <scanexp.constprop.0+0x66>
    80062f70:	40a00533          	neg	a0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:141
}
    80062f74:	8082                	ret

0000000080062f76 <strtox>:
strtox():
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:641
 *   A long_double number about str
 *
 ****************************************************************************/

static long_double strtox(FAR const char *str, FAR char **endptr, int flag)
{
    80062f76:	7115                	addi	sp,sp,-224
    80062f78:	e9a2                	sd	s0,208(sp)
    80062f7a:	e1ca                	sd	s2,192(sp)
    80062f7c:	fd4e                	sd	s3,184(sp)
    80062f7e:	f952                	sd	s4,176(sp)
    80062f80:	ed86                	sd	ra,216(sp)
    80062f82:	e5a6                	sd	s1,200(sp)
    80062f84:	f556                	sd	s5,168(sp)
    80062f86:	f15a                	sd	s6,160(sp)
    80062f88:	ed5e                	sd	s7,152(sp)
    80062f8a:	e962                	sd	s8,144(sp)
    80062f8c:	e566                	sd	s9,136(sp)
    80062f8e:	e16a                	sd	s10,128(sp)
    80062f90:	fcee                	sd	s11,120(sp)
    80062f92:	8a2a                	mv	s4,a0
    80062f94:	89ae                	mv	s3,a1
    80062f96:	8932                	mv	s2,a2
    80062f98:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:670 (discriminator 1)
        return 0;
    }

  /* Skip leading whitespace */

  while (isspace(*s))
    80062f9a:	00044483          	lbu	s1,0(s0)
    80062f9e:	8526                	mv	a0,s1
    80062fa0:	2d6010ef          	jal	ra,80064276 <isspace>
    80062fa4:	e941                	bnez	a0,80063034 <strtox+0xbe>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:677
      s++;
    }

  /* Handle optional sign */

  switch (*s)
    80062fa6:	02b00793          	li	a5,43
    80062faa:	08f48763          	beq	s1,a5,80063038 <strtox+0xc2>
    80062fae:	02d00793          	li	a5,45
    80062fb2:	4c01                	li	s8,0
    80062fb4:	00f49463          	bne	s1,a5,80062fbc <strtox+0x46>
    80062fb8:	4c05                	li	s8,1
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:683
    {
  case '-':
      negative = 1;  /* Fall through to increment position */

  case '+':
      s++;
    80062fba:	0405                	addi	s0,s0,1
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:677
  switch (*s)
    80062fbc:	4781                	li	a5,0
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:689

  default:
      break;
    }

  for (i = 0; i < 8 && (*s | 32) == "infinity"[i]; i++)
    80062fbe:	0002f597          	auipc	a1,0x2f
    80062fc2:	27a58593          	addi	a1,a1,634 # 80092238 <g_dtoa_scale_up+0x100>
    80062fc6:	4521                	li	a0,8
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:689 (discriminator 3)
    80062fc8:	00044703          	lbu	a4,0(s0)
    80062fcc:	00b78633          	add	a2,a5,a1
    80062fd0:	00064603          	lbu	a2,0(a2)
    80062fd4:	02076713          	ori	a4,a4,32
    80062fd8:	0007869b          	sext.w	a3,a5
    80062fdc:	06e60063          	beq	a2,a4,8006303c <strtox+0xc6>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:694
    {
      s++;
    }

  if (i == 3 || i == 8)
    80062fe0:	478d                	li	a5,3
    80062fe2:	06f68163          	beq	a3,a5,80063044 <strtox+0xce>
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:700
    {
      ifexist(endptr, s);
      return negative ? -INFINITY : INFINITY;
    }

  s -= i;
    80062fe6:	8c15                	sub	s0,s0,a3
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:701
  for (i = 0; i < 3 && (*s | 32) == "nan"[i]; i++)
    80062fe8:	00044783          	lbu	a5,0(s0)
    80062fec:	06e00713          	li	a4,110
    80062ff0:	0207e793          	ori	a5,a5,32
    80062ff4:	62e79363          	bne	a5,a4,8006361a <strtox+0x6a4>
    80062ff8:	00144703          	lbu	a4,1(s0)
    80062ffc:	06100693          	li	a3,97
/Users/Luppy/ox64/nuttx/libs/libc/stdlib/lib_strtold.c:703
    {
      s++;
