    80061000:	95dff0ef          	jal	ra,8006095c <__assert>
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_init.c:71 (discriminator 4)

  /* Initialize the semaphore count */

  sem->semcount = (int16_t)value;
    80061004:	0106161b          	slliw	a2,a2,0x10
    80061008:	4106561b          	sraiw	a2,a2,0x10
    8006100c:	00c51023          	sh	a2,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_init.c:75 (discriminator 4)

  /* Initialize semaphore wait list */

  dq_init(&sem->waitlist);
    80061010:	00053423          	sd	zero,8(a0)
    80061014:	00053823          	sd	zero,16(a0)
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_init.c:79 (discriminator 4)

  /* Initialize to support priority inheritance */

  sem->flags = 0;
    80061018:	00050123          	sb	zero,2(a0)
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_init.c:89 (discriminator 4)
#  else
  INITIALIZE_SEMHOLDER(&sem->holder);
#  endif
#endif
  return OK;
}
    8006101c:	4501                	li	a0,0
    8006101e:	8082                	ret

0000000080061020 <sem_init>:
sem_init():
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_init.c:116
 *   returned and the errno value is set appropriately.
 *
 ****************************************************************************/

int sem_init(FAR sem_t *sem, int pshared, unsigned int value)
{
    80061020:	1141                	addi	sp,sp,-16
    80061022:	e406                	sd	ra,8(sp)
    80061024:	e022                	sd	s0,0(sp)
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_init.c:123

  /* Verify that a semaphore was provided and the count is within the valid
   * range.
   */

  if (sem == NULL || value > SEM_VALUE_MAX)
    80061026:	c501                	beqz	a0,8006102e <sem_init+0xe>
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_init.c:123 (discriminator 1)
    80061028:	6721                	lui	a4,0x8
    8006102a:	00e66c63          	bltu	a2,a4,80061042 <sem_init+0x22>
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_init.c:125
    {
      set_errno(EINVAL);
    8006102e:	9ebff0ef          	jal	ra,80060a18 <__errno>
    80061032:	47d9                	li	a5,22
    80061034:	c11c                	sw	a5,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_init.c:133

  ret = nxsem_init(sem, pshared, value);
  if (ret < 0)
    {
      set_errno(-ret);
      ret = ERROR;
    80061036:	547d                	li	s0,-1
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_init.c:137
    }

  return ret;
}
    80061038:	60a2                	ld	ra,8(sp)
    8006103a:	8522                	mv	a0,s0
    8006103c:	6402                	ld	s0,0(sp)
    8006103e:	0141                	addi	sp,sp,16
    80061040:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_init.c:129
  ret = nxsem_init(sem, pshared, value);
    80061042:	f9fff0ef          	jal	ra,80060fe0 <nxsem_init>
    80061046:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_init.c:130
  if (ret < 0)
    80061048:	fe0558e3          	bgez	a0,80061038 <sem_init+0x18>
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_init.c:132
      set_errno(-ret);
    8006104c:	9cdff0ef          	jal	ra,80060a18 <__errno>
    80061050:	4080043b          	negw	s0,s0
    80061054:	c100                	sw	s0,0(a0)
    80061056:	b7c5                	j	80061036 <sem_init+0x16>

0000000080061058 <nxsem_set_protocol>:
nxsem_set_protocol():
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_setprotocol.c:78
 *
 ****************************************************************************/

int nxsem_set_protocol(FAR sem_t *sem, int protocol)
{
  DEBUGASSERT(sem != NULL);
    80061058:	ed19                	bnez	a0,80061076 <nxsem_set_protocol+0x1e>
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_setprotocol.c:77
{
    8006105a:	1141                	addi	sp,sp,-16
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_setprotocol.c:78
  DEBUGASSERT(sem != NULL);
    8006105c:	00031617          	auipc	a2,0x31
    80061060:	f7c60613          	addi	a2,a2,-132 # 80091fd8 <g_default_pthread_attr+0x90>
    80061064:	04e00593          	li	a1,78
    80061068:	00031517          	auipc	a0,0x31
    8006106c:	f8850513          	addi	a0,a0,-120 # 80091ff0 <g_default_pthread_attr+0xa8>
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_setprotocol.c:77
{
    80061070:	e406                	sd	ra,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_setprotocol.c:78
  DEBUGASSERT(sem != NULL);
    80061072:	8ebff0ef          	jal	ra,8006095c <__assert>
    80061076:	87aa                	mv	a5,a0
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_setprotocol.c:80 (discriminator 2)

  switch (protocol & SEM_PRIO_MASK)
    80061078:	0035f513          	andi	a0,a1,3
    8006107c:	c911                	beqz	a0,80061090 <nxsem_set_protocol+0x38>
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_setprotocol.c:80
    8006107e:	fff5071b          	addiw	a4,a0,-1
    80061082:	4785                	li	a5,1
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_setprotocol.c:87
      case SEM_PRIO_NONE:
        break;

      case SEM_PRIO_INHERIT:
      case SEM_PRIO_PROTECT:
        return -ENOTSUP;
    80061084:	f7600513          	li	a0,-138
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_setprotocol.c:80
  switch (protocol & SEM_PRIO_MASK)
    80061088:	00e7f663          	bgeu	a5,a4,80061094 <nxsem_set_protocol+0x3c>
    8006108c:	5529                	li	a0,-22
    8006108e:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_setprotocol.c:93

      default:
        return -EINVAL;
    }

  sem->flags = protocol;
    80061090:	00b78123          	sb	a1,2(a5) # 8002 <asinh-0x7fff7ffe>
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_setprotocol.c:95
  return OK;
}
    80061094:	8082                	ret

0000000080061096 <sem_setprotocol>:
sem_setprotocol():
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_setprotocol.c:137
 *   the errno value is set appropriately.
 *
 ****************************************************************************/

int sem_setprotocol(FAR sem_t *sem, int protocol)
{
    80061096:	1141                	addi	sp,sp,-16
    80061098:	e022                	sd	s0,0(sp)
    8006109a:	e406                	sd	ra,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_setprotocol.c:140
  int ret;

  ret = nxsem_set_protocol(sem, protocol);
    8006109c:	fbdff0ef          	jal	ra,80061058 <nxsem_set_protocol>
    800610a0:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_setprotocol.c:141
  if (ret < 0)
    800610a2:	00055863          	bgez	a0,800610b2 <sem_setprotocol+0x1c>
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_setprotocol.c:143
    {
      set_errno(-ret);
    800610a6:	4080043b          	negw	s0,s0
    800610aa:	96fff0ef          	jal	ra,80060a18 <__errno>
    800610ae:	c100                	sw	s0,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_setprotocol.c:144
      ret = ERROR;
    800610b0:	547d                	li	s0,-1
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_setprotocol.c:148
    }

  return ret;
}
    800610b2:	60a2                	ld	ra,8(sp)
    800610b4:	8522                	mv	a0,s0
    800610b6:	6402                	ld	s0,0(sp)
    800610b8:	0141                	addi	sp,sp,16
    800610ba:	8082                	ret

00000000800610bc <nxsem_get_value>:
nxsem_get_value():
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_getvalue.c:62
 *   returned on success.  A negated errno value is returned on failure.
 *
 ****************************************************************************/

int nxsem_get_value(FAR sem_t *sem, FAR int *sval)
{
    800610bc:	87aa                	mv	a5,a0
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_getvalue.c:69
    {
      *sval = sem->semcount;
      return OK;
    }

  return -EINVAL;
    800610be:	5529                	li	a0,-22
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_getvalue.c:63
  if (sem != NULL && sval != NULL)
    800610c0:	cb99                	beqz	a5,800610d6 <nxsem_get_value+0x1a>
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_getvalue.c:63 (discriminator 1)
    800610c2:	c991                	beqz	a1,800610d6 <nxsem_get_value+0x1a>
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_getvalue.c:65
      *sval = sem->semcount;
    800610c4:	0007d783          	lhu	a5,0(a5)
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_getvalue.c:66
      return OK;
    800610c8:	4501                	li	a0,0
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_getvalue.c:65
      *sval = sem->semcount;
    800610ca:	0107979b          	slliw	a5,a5,0x10
    800610ce:	4107d79b          	sraiw	a5,a5,0x10
    800610d2:	c19c                	sw	a5,0(a1)
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_getvalue.c:66
      return OK;
    800610d4:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_getvalue.c:70
}
    800610d6:	8082                	ret

00000000800610d8 <sem_getvalue>:
sem_getvalue():
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_getvalue.c:97
 *   returned and the errno value is set appropriately.
 *
 ****************************************************************************/

int sem_getvalue(FAR sem_t *sem, FAR int *sval)
{
    800610d8:	1141                	addi	sp,sp,-16
    800610da:	e022                	sd	s0,0(sp)
    800610dc:	e406                	sd	ra,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_getvalue.c:100
  int ret;

  ret = nxsem_get_value(sem, sval);
    800610de:	fdfff0ef          	jal	ra,800610bc <nxsem_get_value>
    800610e2:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_getvalue.c:101
  if (ret < 0)
    800610e4:	00055863          	bgez	a0,800610f4 <sem_getvalue+0x1c>
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_getvalue.c:103
    {
      set_errno(-ret);
    800610e8:	4080043b          	negw	s0,s0
    800610ec:	92dff0ef          	jal	ra,80060a18 <__errno>
    800610f0:	c100                	sw	s0,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_getvalue.c:104
      ret = ERROR;
    800610f2:	547d                	li	s0,-1
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_getvalue.c:108
    }

  return ret;
}
    800610f4:	60a2                	ld	ra,8(sp)
    800610f6:	8522                	mv	a0,s0
    800610f8:	6402                	ld	s0,0(sp)
    800610fa:	0141                	addi	sp,sp,16
    800610fc:	8082                	ret

00000000800610fe <sem_destroy>:
sem_destroy():
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_destroy.c:60
 *   set appropriately.
 *
 ****************************************************************************/

int sem_destroy(FAR sem_t *sem)
{
    800610fe:	1141                	addi	sp,sp,-16
    80061100:	e406                	sd	ra,8(sp)
    80061102:	e022                	sd	s0,0(sp)
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_destroy.c:65
  int ret;

  /* Assure a valid semaphore is specified */

  if (sem == NULL)
    80061104:	e919                	bnez	a0,8006111a <sem_destroy+0x1c>
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_destroy.c:67
    {
      set_errno(EINVAL);
    80061106:	913ff0ef          	jal	ra,80060a18 <__errno>
    8006110a:	47d9                	li	a5,22
    8006110c:	c11c                	sw	a5,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_destroy.c:75

  ret = nxsem_destroy(sem);
  if (ret < 0)
    {
      set_errno(-ret);
      ret = ERROR;
    8006110e:	547d                	li	s0,-1
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_destroy.c:79
    }

  return ret;
}
    80061110:	60a2                	ld	ra,8(sp)
    80061112:	8522                	mv	a0,s0
    80061114:	6402                	ld	s0,0(sp)
    80061116:	0141                	addi	sp,sp,16
    80061118:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_destroy.c:71
  ret = nxsem_destroy(sem);
    8006111a:	6c0030ef          	jal	ra,800647da <nxsem_destroy>
    8006111e:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_destroy.c:72
  if (ret < 0)
    80061120:	fe0558e3          	bgez	a0,80061110 <sem_destroy+0x12>
/Users/Luppy/ox64/nuttx/libs/libc/semaphore/sem_destroy.c:74
      set_errno(-ret);
    80061124:	8f5ff0ef          	jal	ra,80060a18 <__errno>
    80061128:	4080043b          	negw	s0,s0
    8006112c:	c100                	sw	s0,0(a0)
    8006112e:	b7c5                	j	8006110e <sem_destroy+0x10>

0000000080061130 <signal>:
signal():
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:60
 *   and errno set to indicate the nature of the error.
 *
 ****************************************************************************/

_sa_handler_t signal(int signo, _sa_handler_t func)
{
    80061130:	711d                	addi	sp,sp,-96
    80061132:	ec86                	sd	ra,88(sp)
    80061134:	e8a2                	sd	s0,80(sp)
    80061136:	e4a6                	sd	s1,72(sp)
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:65
  struct sigaction act;
  struct sigaction oact;
  int ret = -EINVAL;

  if (!GOOD_SIGNO(signo) || UNCAUGHT_SIGNO(signo))
    80061138:	03f00793          	li	a5,63
    8006113c:	06a7ed63          	bltu	a5,a0,800611b6 <signal+0x86>
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:65 (discriminator 1)
    80061140:	47a5                	li	a5,9
    80061142:	84aa                	mv	s1,a0
    80061144:	06f50963          	beq	a0,a5,800611b6 <signal+0x86>
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:65 (discriminator 2)
    80061148:	47cd                	li	a5,19
    8006114a:	06f50663          	beq	a0,a5,800611b6 <signal+0x86>
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:70
    {
      goto err;
    }

  DEBUGASSERT(func != SIG_ERR && func != SIG_HOLD);
    8006114e:	57fd                	li	a5,-1
    80061150:	842e                	mv	s0,a1
    80061152:	00f58563          	beq	a1,a5,8006115c <signal+0x2c>
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:70 (discriminator 2)
    80061156:	4785                	li	a5,1
    80061158:	00f59e63          	bne	a1,a5,80061174 <signal+0x44>
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:70 (discriminator 3)
    8006115c:	00031617          	auipc	a2,0x31
    80061160:	eb460613          	addi	a2,a2,-332 # 80092010 <g_default_pthread_attr+0xc8>
    80061164:	04600593          	li	a1,70
    80061168:	00031517          	auipc	a0,0x31
    8006116c:	ee850513          	addi	a0,a0,-280 # 80092050 <g_default_pthread_attr+0x108>
    80061170:	fecff0ef          	jal	ra,8006095c <__assert>
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:76 (discriminator 4)

  /* Initialize the sigaction structure */

  act.sa_handler = func;
  act.sa_flags   = 0;
  sigemptyset(&act.sa_mask);
    80061174:	0028                	addi	a0,sp,8
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:74 (discriminator 4)
  act.sa_handler = func;
    80061176:	e02e                	sd	a1,0(sp)
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:75 (discriminator 4)
  act.sa_flags   = 0;
    80061178:	c802                	sw	zero,16(sp)
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:76 (discriminator 4)
  sigemptyset(&act.sa_mask);
    8006117a:	200030ef          	jal	ra,8006437a <sigemptyset>
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:84 (discriminator 4)
   *
   * REVISIT:  Currently SIG_IGN, SIG_DFL, and SIG_HOLD have the same value
   * and cannot be distinguished.
   */

  if (func != SIG_DFL /* && func != SIG_IGN */)
    8006117e:	ec11                	bnez	s0,8006119a <signal+0x6a>
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:101
        }
    }

  /* Set the signal disposition */

  ret = sigaction(signo, &act, &oact);
    80061180:	1010                	addi	a2,sp,32
    80061182:	858a                	mv	a1,sp
    80061184:	8526                	mv	a0,s1
    80061186:	7e6030ef          	jal	ra,8006496c <sigaction>
    8006118a:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:108
  /* Upon successful completion, signal() will the signal's previous
   * disposition. Otherwise, SIG_ERR will be returned and errno set to
   * indicate the error.
   */

  if (ret == OK)
    8006118c:	ed11                	bnez	a0,800611a8 <signal+0x78>
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:110
    {
      return oact.sa_handler;
    8006118e:	7502                	ld	a0,32(sp)
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:116
    }

err:
  set_errno(-ret);
  return (_sa_handler_t)SIG_ERR;
}
    80061190:	60e6                	ld	ra,88(sp)
    80061192:	6446                	ld	s0,80(sp)
    80061194:	64a6                	ld	s1,72(sp)
    80061196:	6125                	addi	sp,sp,96
    80061198:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:90
      ret = sigaddset(&act.sa_mask, signo);
    8006119a:	85a6                	mv	a1,s1
    8006119c:	0028                	addi	a0,sp,8
    8006119e:	1c0030ef          	jal	ra,8006435e <sigaddset>
    800611a2:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:91
      if (ret < 0)
    800611a4:	fc055ee3          	bgez	a0,80061180 <signal+0x50>
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:114
  set_errno(-ret);
    800611a8:	871ff0ef          	jal	ra,80060a18 <__errno>
    800611ac:	4080043b          	negw	s0,s0
    800611b0:	c100                	sw	s0,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:115
  return (_sa_handler_t)SIG_ERR;
    800611b2:	557d                	li	a0,-1
    800611b4:	bff1                	j	80061190 <signal+0x60>
/Users/Luppy/ox64/nuttx/libs/libc/signal/sig_signal.c:63
  int ret = -EINVAL;
    800611b6:	5429                	li	s0,-22
    800611b8:	bfc5                	j	800611a8 <signal+0x78>

00000000800611ba <fileno>:
fileno():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fileno.c:42

int fileno(FAR FILE *stream)
{
  int ret = -1;

  if (stream)
    800611ba:	c501                	beqz	a0,800611c2 <fileno+0x8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fileno.c:44
    {
      ret = (int)(intptr_t)stream->fs_cookie;
    800611bc:	4928                	lw	a0,80(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fileno.c:47
    }

  if (ret < 0)
    800611be:	00055c63          	bgez	a0,800611d6 <fileno+0x1c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fileno.c:39
{
    800611c2:	1141                	addi	sp,sp,-16
    800611c4:	e406                	sd	ra,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fileno.c:49
    {
      set_errno(EBADF);
    800611c6:	853ff0ef          	jal	ra,80060a18 <__errno>
    800611ca:	47a5                	li	a5,9
    800611cc:	c11c                	sw	a5,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fileno.c:54
      return ERROR;
    }

  return ret;
}
    800611ce:	60a2                	ld	ra,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fileno.c:50
      return ERROR;
    800611d0:	557d                	li	a0,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fileno.c:54
}
    800611d2:	0141                	addi	sp,sp,16
    800611d4:	8082                	ret
    800611d6:	8082                	ret

00000000800611d8 <printf>:
printf():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_printf.c:38
/****************************************************************************
 * Name: printf
 ****************************************************************************/

int printf(FAR const IPTR char *fmt, ...)
{
    800611d8:	711d                	addi	sp,sp,-96
    800611da:	e822                	sd	s0,16(sp)
    800611dc:	e4be                	sd	a5,72(sp)
    800611de:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_printf.c:42
  va_list ap;
  int     ret;

  va_start(ap, fmt);
    800611e0:	103c                	addi	a5,sp,40
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_printf.c:44
#ifdef CONFIG_FILE_STREAM
  ret = vfprintf(stdout, fmt, ap);
    800611e2:	4505                	li	a0,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_printf.c:38
{
    800611e4:	ec06                	sd	ra,24(sp)
    800611e6:	f42e                	sd	a1,40(sp)
    800611e8:	f832                	sd	a2,48(sp)
    800611ea:	fc36                	sd	a3,56(sp)
    800611ec:	e0ba                	sd	a4,64(sp)
    800611ee:	e8c2                	sd	a6,80(sp)
    800611f0:	ecc6                	sd	a7,88(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_printf.c:42
  va_start(ap, fmt);
    800611f2:	e43e                	sd	a5,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_printf.c:44
  ret = vfprintf(stdout, fmt, ap);
    800611f4:	16d010ef          	jal	ra,80062b60 <lib_get_stream>
    800611f8:	6622                	ld	a2,8(sp)
    800611fa:	85a2                	mv	a1,s0
    800611fc:	073010ef          	jal	ra,80062a6e <vfprintf>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_printf.c:51
  ret = vdprintf(STDOUT_FILENO, fmt, ap);
#endif
  va_end(ap);

  return ret;
}
    80061200:	60e2                	ld	ra,24(sp)
    80061202:	6442                	ld	s0,16(sp)
    80061204:	6125                	addi	sp,sp,96
    80061206:	8082                	ret

0000000080061208 <sprintf>:
sprintf():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_sprintf.c:37
/****************************************************************************
 * sprintf
 ****************************************************************************/

int sprintf(FAR char *buf, FAR const IPTR char *fmt, ...)
{
    80061208:	7119                	addi	sp,sp,-128
    8006120a:	e8b2                	sd	a2,80(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_sprintf.c:44
  va_list ap;
  int     n;

  /* Initialize a memory stream to write to the buffer */

  lib_memoutstream(&memoutstream, buf, LIB_BUFLEN_UNKNOWN);
    8006120c:	80000637          	lui	a2,0x80000
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_sprintf.c:37
{
    80061210:	e0a2                	sd	s0,64(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_sprintf.c:44
  lib_memoutstream(&memoutstream, buf, LIB_BUFLEN_UNKNOWN);
    80061212:	fff64613          	not	a2,a2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_sprintf.c:37
{
    80061216:	842e                	mv	s0,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_sprintf.c:44
  lib_memoutstream(&memoutstream, buf, LIB_BUFLEN_UNKNOWN);
    80061218:	85aa                	mv	a1,a0
    8006121a:	0808                	addi	a0,sp,16
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_sprintf.c:37
{
    8006121c:	e486                	sd	ra,72(sp)
    8006121e:	ecb6                	sd	a3,88(sp)
    80061220:	f0ba                	sd	a4,96(sp)
    80061222:	f4be                	sd	a5,104(sp)
    80061224:	f8c2                	sd	a6,112(sp)
    80061226:	fcc6                	sd	a7,120(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_sprintf.c:44
  lib_memoutstream(&memoutstream, buf, LIB_BUFLEN_UNKNOWN);
    80061228:	626020ef          	jal	ra,8006384e <lib_memoutstream>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_sprintf.c:48

  /* Then let lib_vsprintf do the real work */

  va_start(ap, fmt);
    8006122c:	0890                	addi	a2,sp,80
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_sprintf.c:49
  n = lib_vsprintf(&memoutstream.common, fmt, ap);
    8006122e:	85a2                	mv	a1,s0
    80061230:	0808                	addi	a0,sp,16
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_sprintf.c:48
  va_start(ap, fmt);
    80061232:	e432                	sd	a2,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_sprintf.c:49
  n = lib_vsprintf(&memoutstream.common, fmt, ap);
    80061234:	15c000ef          	jal	ra,80061390 <lib_vsprintf>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_sprintf.c:52
  va_end(ap);
  return n;
}
    80061238:	60a6                	ld	ra,72(sp)
    8006123a:	6406                	ld	s0,64(sp)
    8006123c:	6109                	addi	sp,sp,128
    8006123e:	8082                	ret

0000000080061240 <snprintf>:
snprintf():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_snprintf.c:41
/****************************************************************************
 * snprintf
 ****************************************************************************/

int snprintf(FAR char *buf, size_t size, FAR const IPTR char *format, ...)
{
    80061240:	7119                	addi	sp,sp,-128
    80061242:	e0a2                	sd	s0,64(sp)
    80061244:	e486                	sd	ra,72(sp)
    80061246:	ecb6                	sd	a3,88(sp)
    80061248:	f0ba                	sd	a4,96(sp)
    8006124a:	f4be                	sd	a5,104(sp)
    8006124c:	f8c2                	sd	a6,112(sp)
    8006124e:	fcc6                	sd	a7,120(sp)
    80061250:	8432                	mv	s0,a2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_snprintf.c:58
   *  be written, the number of bytes that would have been written had [size]
   *  been sufficiently large excluding the terminating null shall be
   *  returned, and [buf] may be a null pointer." -- opengroup.org
   */

  if (size > 0)
    80061252:	c18d                	beqz	a1,80061274 <snprintf+0x34>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_snprintf.c:62
    {
      /* Initialize a memory stream to write to the buffer */

      lib_memoutstream(&u.memoutstream, buf, size);
    80061254:	0005861b          	sext.w	a2,a1
    80061258:	85aa                	mv	a1,a0
    8006125a:	0808                	addi	a0,sp,16
    8006125c:	5f2020ef          	jal	ra,8006384e <lib_memoutstream>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_snprintf.c:75
      stream = &u.nulloutstream;
    }

  /* Then let lib_vsprintf do the real work */

  va_start(ap, format);
    80061260:	08b0                	addi	a2,sp,88
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_snprintf.c:76
  n = lib_vsprintf(stream, format, ap);
    80061262:	85a2                	mv	a1,s0
    80061264:	0808                	addi	a0,sp,16
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_snprintf.c:75
  va_start(ap, format);
    80061266:	e432                	sd	a2,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_snprintf.c:76
  n = lib_vsprintf(stream, format, ap);
    80061268:	128000ef          	jal	ra,80061390 <lib_vsprintf>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_snprintf.c:79
  va_end(ap);
  return n;
}
    8006126c:	60a6                	ld	ra,72(sp)
    8006126e:	6406                	ld	s0,64(sp)
    80061270:	6109                	addi	sp,sp,128
    80061272:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_snprintf.c:69
      lib_nulloutstream(&u.nulloutstream);
    80061274:	0808                	addi	a0,sp,16
    80061276:	656020ef          	jal	ra,800638cc <lib_nulloutstream>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_snprintf.c:70
      stream = &u.nulloutstream;
    8006127a:	b7dd                	j	80061260 <snprintf+0x20>

000000008006127c <vsnprintf>:
vsnprintf():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_vsnprintf.c:42
 * Name: vsnprintf
 ****************************************************************************/

int vsnprintf(FAR char *buf, size_t size, FAR const IPTR char *format,
              va_list ap)
{
    8006127c:	715d                	addi	sp,sp,-80
    8006127e:	e0a2                	sd	s0,64(sp)
    80061280:	fc26                	sd	s1,56(sp)
    80061282:	e486                	sd	ra,72(sp)
    80061284:	8432                	mv	s0,a2
    80061286:	84b6                	mv	s1,a3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_vsnprintf.c:58
   *  be written, the number of bytes that would have been written had [size]
   *  been sufficiently large excluding the terminating null shall be
   *  returned, and [buf] may be a null pointer." -- opengroup.org
   */

  if (size > 0)
    80061288:	c18d                	beqz	a1,800612aa <vsnprintf+0x2e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_vsnprintf.c:62
    {
      /* Initialize a memory stream to write to the buffer */

      lib_memoutstream(&u.memoutstream, buf, size);
    8006128a:	0005861b          	sext.w	a2,a1
    8006128e:	85aa                	mv	a1,a0
    80061290:	850a                	mv	a0,sp
    80061292:	5bc020ef          	jal	ra,8006384e <lib_memoutstream>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_vsnprintf.c:75
      stream = &u.nulloutstream;
    }

  /* Then let lib_vsprintf do the real work */

  n = lib_vsprintf(stream, format, ap);
    80061296:	8626                	mv	a2,s1
    80061298:	85a2                	mv	a1,s0
    8006129a:	850a                	mv	a0,sp
    8006129c:	0f4000ef          	jal	ra,80061390 <lib_vsprintf>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_vsnprintf.c:77
  return n;
}
    800612a0:	60a6                	ld	ra,72(sp)
    800612a2:	6406                	ld	s0,64(sp)
    800612a4:	74e2                	ld	s1,56(sp)
    800612a6:	6161                	addi	sp,sp,80
    800612a8:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_vsnprintf.c:69
      lib_nulloutstream(&u.nulloutstream);
    800612aa:	850a                	mv	a0,sp
    800612ac:	620020ef          	jal	ra,800638cc <lib_nulloutstream>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_vsnprintf.c:70
      stream = &u.nulloutstream;
    800612b0:	b7dd                	j	80061296 <vsnprintf+0x1a>

00000000800612b2 <perror>:
perror():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_perror.c:58
/****************************************************************************
 * Name: perror
 ****************************************************************************/

void perror(FAR const char *s)
{
    800612b2:	1101                	addi	sp,sp,-32
    800612b4:	e42a                	sd	a0,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_perror.c:63
  /* If strerror() is not enabled, then just print the error number */

#ifdef CONFIG_LIBC_STRERROR
#  ifdef CONFIG_FILE_STREAM
  fprintf(PERROR_STREAM, "%s: %s\n", s, strerror(get_errno()));
    800612b6:	4505                	li	a0,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_perror.c:58
{
    800612b8:	ec06                	sd	ra,24(sp)
    800612ba:	e822                	sd	s0,16(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_perror.c:63
  fprintf(PERROR_STREAM, "%s: %s\n", s, strerror(get_errno()));
    800612bc:	0a5010ef          	jal	ra,80062b60 <lib_get_stream>
    800612c0:	842a                	mv	s0,a0
    800612c2:	f56ff0ef          	jal	ra,80060a18 <__errno>
    800612c6:	4108                	lw	a0,0(a0)
    800612c8:	067020ef          	jal	ra,80063b2e <strerror>
    800612cc:	86aa                	mv	a3,a0
    800612ce:	8522                	mv	a0,s0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_perror.c:74
  fprintf(PERROR_STREAM, "%s: Error %d\n", s, get_errno());
#  else
  dprintf(PERROR_FILENO, "%s: Error %d\n", s, get_errno());
#  endif
#endif
}
    800612d0:	6442                	ld	s0,16(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_perror.c:63
  fprintf(PERROR_STREAM, "%s: %s\n", s, strerror(get_errno()));
    800612d2:	6622                	ld	a2,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_perror.c:74
}
    800612d4:	60e2                	ld	ra,24(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_perror.c:63
  fprintf(PERROR_STREAM, "%s: %s\n", s, strerror(get_errno()));
    800612d6:	00031597          	auipc	a1,0x31
    800612da:	d9258593          	addi	a1,a1,-622 # 80092068 <g_default_pthread_attr+0x120>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_perror.c:74
}
    800612de:	6105                	addi	sp,sp,32
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_perror.c:63
  fprintf(PERROR_STREAM, "%s: %s\n", s, strerror(get_errno()));
    800612e0:	7700106f          	j	80062a50 <fprintf>

00000000800612e4 <putchar>:
putchar():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_putchar.c:33
/****************************************************************************
 * Public Functions
 ****************************************************************************/

int putchar(int c)
{
    800612e4:	1141                	addi	sp,sp,-16
    800612e6:	e022                	sd	s0,0(sp)
    800612e8:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_putchar.c:35
#ifdef CONFIG_FILE_STREAM
  return fputc(c, stdout);
    800612ea:	4505                	li	a0,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_putchar.c:33
{
    800612ec:	e406                	sd	ra,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_putchar.c:35
  return fputc(c, stdout);
    800612ee:	073010ef          	jal	ra,80062b60 <lib_get_stream>
    800612f2:	85aa                	mv	a1,a0
    800612f4:	8522                	mv	a0,s0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_putchar.c:40
#else
  unsigned char tmp = c;
  return write(STDOUT_FILENO, &tmp, 1) == 1 ? c : EOF;
#endif
}
    800612f6:	6402                	ld	s0,0(sp)
    800612f8:	60a2                	ld	ra,8(sp)
    800612fa:	0141                	addi	sp,sp,16
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_putchar.c:35
  return fputc(c, stdout);
    800612fc:	6760106f          	j	80062972 <fputc>

0000000080061300 <putchar_unlocked>:
putchar_unlocked():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_putchar.c:43

int putchar_unlocked(int c)
{
    80061300:	1141                	addi	sp,sp,-16
    80061302:	e022                	sd	s0,0(sp)
    80061304:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_putchar.c:45
#ifdef CONFIG_FILE_STREAM
  return fputc_unlocked(c, stdout);
    80061306:	4505                	li	a0,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_putchar.c:43
{
    80061308:	e406                	sd	ra,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_putchar.c:45
  return fputc_unlocked(c, stdout);
    8006130a:	057010ef          	jal	ra,80062b60 <lib_get_stream>
    8006130e:	85aa                	mv	a1,a0
    80061310:	8522                	mv	a0,s0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_putchar.c:50
#else
  unsigned char tmp = c;
  return write(STDOUT_FILENO, &tmp, 1) == 1 ? c : EOF;
#endif
}
    80061312:	6402                	ld	s0,0(sp)
    80061314:	60a2                	ld	ra,8(sp)
    80061316:	0141                	addi	sp,sp,16
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_putchar.c:45
  return fputc_unlocked(c, stdout);
    80061318:	60e0106f          	j	80062926 <fputc_unlocked>

000000008006131c <puts>:
puts():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:44
 *   puts() writes the string s and a trailing newline to stdout.
 *
 ****************************************************************************/

int puts(FAR const IPTR char *s)
{
    8006131c:	7179                	addi	sp,sp,-48
    8006131e:	f022                	sd	s0,32(sp)
    80061320:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:46
#ifdef CONFIG_FILE_STREAM
  FILE *stream = stdout;
    80061322:	4505                	li	a0,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:44
{
    80061324:	f406                	sd	ra,40(sp)
    80061326:	ec26                	sd	s1,24(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:46
  FILE *stream = stdout;
    80061328:	039010ef          	jal	ra,80062b60 <lib_get_stream>
    8006132c:	84aa                	mv	s1,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:53
  int nput = EOF;
  int ret;

  /* Write the string (the next two steps must be atomic) */

  flockfile(stream);
    8006132e:	00f010ef          	jal	ra,80062b3c <flockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:57

  /* Write the string without its trailing '\0' */

  nwritten = fputs_unlocked(s, stream);
    80061332:	85a6                	mv	a1,s1
    80061334:	8522                	mv	a0,s0
    80061336:	66a010ef          	jal	ra,800629a0 <fputs_unlocked>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:58
  if (nwritten > 0)
    8006133a:	02a05a63          	blez	a0,8006136e <puts+0x52>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:62
    {
      /* Followed by a newline */

      char newline = '\n';
    8006133e:	47a9                	li	a5,10
    80061340:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:63
      ret = lib_fwrite_unlocked(&newline, 1, stream);
    80061342:	8626                	mv	a2,s1
    80061344:	4585                	li	a1,1
    80061346:	00f10513          	addi	a0,sp,15
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:62
      char newline = '\n';
    8006134a:	00f107a3          	sb	a5,15(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:63
      ret = lib_fwrite_unlocked(&newline, 1, stream);
    8006134e:	24c010ef          	jal	ra,8006259a <lib_fwrite_unlocked>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:64
      if (ret > 0)
    80061352:	2501                	sext.w	a0,a0
    80061354:	00a05d63          	blez	a0,8006136e <puts+0x52>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:72

          /* Flush the buffer after the newline is output if line buffering
           * is enabled.
           */

          if ((stream->fs_flags & __FS_FLAG_LBF) != 0)
    80061358:	0ba4c783          	lbu	a5,186(s1)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:66
          nput = nwritten + 1;
    8006135c:	2405                	addiw	s0,s0,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:72
          if ((stream->fs_flags & __FS_FLAG_LBF) != 0)
    8006135e:	8b91                	andi	a5,a5,4
    80061360:	cb81                	beqz	a5,80061370 <puts+0x54>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:74
            {
              ret = lib_fflush_unlocked(stream);
    80061362:	8526                	mv	a0,s1
    80061364:	494010ef          	jal	ra,800627f8 <lib_fflush_unlocked>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:75
              if (ret < 0)
    80061368:	2501                	sext.w	a0,a0
    8006136a:	00055363          	bgez	a0,80061370 <puts+0x54>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:48
  int nput = EOF;
    8006136e:	547d                	li	s0,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:83
                }
            }
        }
    }

  funlockfile(stdout);
    80061370:	4505                	li	a0,1
    80061372:	7ee010ef          	jal	ra,80062b60 <lib_get_stream>
    80061376:	7d2010ef          	jal	ra,80062b48 <funlockfile>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_puts.c:96
  iov[1].iov_base = "\n";
  iov[1].iov_len  = 1;

  return writev(STDOUT_FILENO, iov, 2) == ++len ? len : EOF;
#endif
}
    8006137a:	70a2                	ld	ra,40(sp)
    8006137c:	8522                	mv	a0,s0
    8006137e:	7402                	ld	s0,32(sp)
    80061380:	64e2                	ld	s1,24(sp)
    80061382:	6145                	addi	sp,sp,48
    80061384:	8082                	ret

0000000080061386 <lib_vsprintf_internal>:
lib_vsprintf_internal():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1404
 *
 ****************************************************************************/

int lib_vsprintf_internal(FAR struct lib_outstream_s *stream,
                          FAR const IPTR char *fmt, va_list ap)
{
    80061386:	86ae                	mv	a3,a1
    80061388:	8732                	mv	a4,a2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1405
  return vsprintf_internal(stream, NULL, 0, fmt, ap);
    8006138a:	4581                	li	a1,0
    8006138c:	4601                	li	a2,0
    8006138e:	a019                	j	80061394 <vsprintf_internal.constprop.0>

0000000080061390 <lib_vsprintf>:
lib_vsprintf():
    80061390:	ff7ff06f          	j	80061386 <lib_vsprintf_internal>

0000000080061394 <vsprintf_internal.constprop.0>:
vsprintf_internal():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:158
static int vsprintf_internal(FAR struct lib_outstream_s *stream,
    80061394:	7171                	addi	sp,sp,-176
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:432
              flags &= ~FL_SHORT;
    80061396:	6785                	lui	a5,0x1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:158
static int vsprintf_internal(FAR struct lib_outstream_s *stream,
    80061398:	f4de                	sd	s7,104(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:432
              flags &= ~FL_SHORT;
    8006139a:	a0078b93          	addi	s7,a5,-1536 # a00 <asinh-0x7ffff600>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1232
              flags &= ~(FL_ALT | FL_ALTHEX | FL_ALTUPP);
    8006139e:	77e9                	lui	a5,0xffffa
    800613a0:	17bd                	addi	a5,a5,-17
    800613a2:	e83e                	sd	a5,16(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1221
              if ((flags & FL_ALT) != 0 && (flags & FL_ALTHEX) == 0)
    800613a4:	6791                	lui	a5,0x4
    800613a6:	07c1                	addi	a5,a5,16
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:158
static int vsprintf_internal(FAR struct lib_outstream_s *stream,
    800613a8:	f122                	sd	s0,160(sp)
    800613aa:	e54e                	sd	s3,136(sp)
    800613ac:	e152                	sd	s4,128(sp)
    800613ae:	f0e2                	sd	s8,96(sp)
    800613b0:	f506                	sd	ra,168(sp)
    800613b2:	ed26                	sd	s1,152(sp)
    800613b4:	e94a                	sd	s2,144(sp)
    800613b6:	fcd6                	sd	s5,120(sp)
    800613b8:	f8da                	sd	s6,112(sp)
    800613ba:	ece6                	sd	s9,88(sp)
    800613bc:	e8ea                	sd	s10,80(sp)
    800613be:	e4ee                	sd	s11,72(sp)
    800613c0:	8c2a                	mv	s8,a0
    800613c2:	8a36                	mv	s4,a3
    800613c4:	89ba                	mv	s3,a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:184
  int total_len = 0;
    800613c6:	4401                	li	s0,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1221
              if ((flags & FL_ALT) != 0 && (flags & FL_ALTHEX) == 0)
    800613c8:	ec3e                	sd	a5,24(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:194
          c = fmt_char(fmt);
    800613ca:	000a4903          	lbu	s2,0(s4)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:195
          if (c == '\0')
    800613ce:	12090ce3          	beqz	s2,80061d06 <vsprintf_internal.constprop.0+0x972>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:200
          if (c == '%')
    800613d2:	02500713          	li	a4,37
    800613d6:	87ca                	mv	a5,s2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:194
          c = fmt_char(fmt);
    800613d8:	001a0b13          	addi	s6,s4,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:200
          if (c == '%')
    800613dc:	00e91863          	bne	s2,a4,800613ec <vsprintf_internal.constprop.0+0x58>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:202
              c = fmt_char(fmt);
    800613e0:	001a4903          	lbu	s2,1(s4)
    800613e4:	002a0b13          	addi	s6,s4,2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:203
              if (c != '%')
    800613e8:	00f91b63          	bne	s2,a5,800613fe <vsprintf_internal.constprop.0+0x6a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:215
          stream_putc(c, stream);
    800613ec:	008c3783          	ld	a5,8(s8)
    800613f0:	85ca                	mv	a1,s2
    800613f2:	8562                	mv	a0,s8
    800613f4:	9782                	jalr	a5
    800613f6:	2405                	addiw	s0,s0,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:194
          c = fmt_char(fmt);
    800613f8:	e04e                	sd	s3,0(sp)
    800613fa:	1050006f          	j	80061cfe <vsprintf_internal.constprop.0+0x96a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:221
      prec  = 0;
    800613fe:	4481                	li	s1,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:220
      width = 0;
    80061400:	4c81                	li	s9,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:219
      flags = 0;
    80061402:	4d01                	li	s10,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:225
          if (flags < FL_ASTERISK)
    80061404:	03f00813          	li	a6,63
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:390
          if (c == 'z' || c == 't')
    80061408:	07a00593          	li	a1,122
    8006140c:	07400513          	li	a0,116
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:424
          if (c == 'j')
    80061410:	06a00313          	li	t1,106
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:436
          if (c == 'l')
    80061414:	06c00e13          	li	t3,108
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:451
          if (c == 'h')
    80061418:	06800e93          	li	t4,104
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:325
              if (c >= '0' && c <= '9')
    8006141c:	4f25                	li	t5,9
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:339
              if (c == '*')
    8006141e:	02a00f93          	li	t6,42
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:376
              if (c == '.')
    80061422:	02e00293          	li	t0,46
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:334
                  width = 10 * width + c;
    80061426:	46a9                	li	a3,10
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:252
          if (flags < FL_LONG)
    80061428:	1ff00393          	li	t2,511
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:227
              switch (c)
    8006142c:	02b00613          	li	a2,43
    80061430:	02d00a13          	li	s4,45
    80061434:	03000a93          	li	s5,48
    80061438:	02300d93          	li	s11,35
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:225
          if (flags < FL_ASTERISK)
    8006143c:	000d071b          	sext.w	a4,s10
    80061440:	15a86963          	bltu	a6,s10,80061592 <vsprintf_internal.constprop.0+0x1fe>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:227
              switch (c)
    80061444:	12c90c63          	beq	s2,a2,8006157c <vsprintf_internal.constprop.0+0x1e8>
    80061448:	03266763          	bltu	a2,s2,80061476 <vsprintf_internal.constprop.0+0xe2>
    8006144c:	02000793          	li	a5,32
    80061450:	12f90863          	beq	s2,a5,80061580 <vsprintf_internal.constprop.0+0x1ec>
    80061454:	13b90c63          	beq	s2,s11,8006158c <vsprintf_internal.constprop.0+0x1f8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:325
              if (c >= '0' && c <= '9')
    80061458:	fd09071b          	addiw	a4,s2,-48
    8006145c:	0ff77713          	zext.b	a4,a4
    80061460:	16ef6363          	bltu	t5,a4,800615c6 <vsprintf_internal.constprop.0+0x232>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:328
                  if ((flags & FL_PREC) != 0)
    80061464:	100d7913          	andi	s2,s10,256
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:330
                      prec = 10 * prec + c;
    80061468:	2701                	sext.w	a4,a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:328
                  if ((flags & FL_PREC) != 0)
    8006146a:	14090763          	beqz	s2,800615b8 <vsprintf_internal.constprop.0+0x224>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:330
                      prec = 10 * prec + c;
    8006146e:	029684bb          	mulw	s1,a3,s1
    80061472:	9cb9                	addw	s1,s1,a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:331
                      continue;
    80061474:	a039                	j	80061482 <vsprintf_internal.constprop.0+0xee>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:227
              switch (c)
    80061476:	11490863          	beq	s2,s4,80061586 <vsprintf_internal.constprop.0+0x1f2>
    8006147a:	fd591fe3          	bne	s2,s5,80061458 <vsprintf_internal.constprop.0+0xc4>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:230
                  flags |= FL_ZFILL;
    8006147e:	001d6d13          	ori	s10,s10,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:468
      while ((c = fmt_char(fmt)) != 0);
    80061482:	000b4903          	lbu	s2,0(s6)
    80061486:	0b05                	addi	s6,s6,1
    80061488:	fa091ae3          	bnez	s2,8006143c <vsprintf_internal.constprop.0+0xa8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:905
          buf[0] = va_arg(ap, int);
    8006148c:	00898793          	addi	a5,s3,8
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:551
      if (c >= 'E' && c <= 'G')
    80061490:	fbb9071b          	addiw	a4,s2,-69
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:905
          buf[0] = va_arg(ap, int);
    80061494:	e03e                	sd	a5,0(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:551
      if (c >= 'E' && c <= 'G')
    80061496:	0ff77713          	zext.b	a4,a4
    8006149a:	4689                	li	a3,2
    8006149c:	1ce6ee63          	bltu	a3,a4,80061678 <vsprintf_internal.constprop.0+0x2e4>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:553
          flags |= FL_FLTUPP;
    800614a0:	6709                	lui	a4,0x2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:554
          c += 'e' - 'E';
    800614a2:	0209091b          	addiw	s2,s2,32
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:553
          flags |= FL_FLTUPP;
    800614a6:	00ed6d33          	or	s10,s10,a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:554
          c += 'e' - 'E';
    800614aa:	0ff97913          	zext.b	s2,s2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:571
          if ((flags & FL_PREC) == 0)
    800614ae:	100d7713          	andi	a4,s10,256
    800614b2:	e311                	bnez	a4,800614b6 <vsprintf_internal.constprop.0+0x122>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:573
              prec = 6;
    800614b4:	4499                	li	s1,6
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:578
          if (c == 'e')
    800614b6:	06500693          	li	a3,101
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:580
              ndigs = prec + 1;
    800614ba:	0ff4f713          	zext.b	a4,s1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:578
          if (c == 'e')
    800614be:	1ed91f63          	bne	s2,a3,800616bc <vsprintf_internal.constprop.0+0x328>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:580
              ndigs = prec + 1;
    800614c2:	2705                	addiw	a4,a4,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:582
              flags |= FL_FLTEXP;
    800614c4:	6691                	lui	a3,0x4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:580
              ndigs = prec + 1;
    800614c6:	0ff77713          	zext.b	a4,a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:582
              flags |= FL_FLTEXP;
    800614ca:	00dd6d33          	or	s10,s10,a3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:581
              ndecimal = 0;
    800614ce:	4601                	li	a2,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:614
          ndigs = __dtoa_engine(value, &_dtoa, ndigs,
    800614d0:	46bd                	li	a3,15
    800614d2:	2601                	sext.w	a2,a2
    800614d4:	0ff77593          	zext.b	a1,a4
    800614d8:	00e6f363          	bgeu	a3,a4,800614de <vsprintf_internal.constprop.0+0x14a>
    800614dc:	45bd                	li	a1,15
    800614de:	0009b507          	fld	fa0,0(s3)
    800614e2:	02810d93          	addi	s11,sp,40
    800614e6:	856e                	mv	a0,s11
    800614e8:	0d5000ef          	jal	ra,80061dbc <__dtoa_engine>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:619
          if (_dtoa.flags & DTOA_MINUS)
    800614ec:	02c14703          	lbu	a4,44(sp)
    800614f0:	00177993          	andi	s3,a4,1
    800614f4:	1c099f63          	bnez	s3,800616d2 <vsprintf_internal.constprop.0+0x33e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:623
          else if ((flags & FL_PLUS) != 0)
    800614f8:	002d7613          	andi	a2,s10,2
    800614fc:	1c061e63          	bnez	a2,800616d8 <vsprintf_internal.constprop.0+0x344>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:627
          else if ((flags & FL_SPACE) != 0)
    80061500:	004d7613          	andi	a2,s10,4
    80061504:	c219                	beqz	a2,8006150a <vsprintf_internal.constprop.0+0x176>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:629
              sign = ' ';
    80061506:	02000993          	li	s3,32
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:632
          if (_dtoa.flags & (DTOA_NAN | DTOA_INF))
    8006150a:	8b31                	andi	a4,a4,12
    8006150c:	1e070463          	beqz	a4,800616f4 <vsprintf_internal.constprop.0+0x360>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:636
              ndigs = sign ? 4 : 3;
    80061510:	013034b3          	snez	s1,s3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:637
              if (width > ndigs)
    80061514:	048d                	addi	s1,s1,3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:651
                  width = 0;
    80061516:	4901                	li	s2,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:637
              if (width > ndigs)
    80061518:	0394d263          	bge	s1,s9,8006153c <vsprintf_internal.constprop.0+0x1a8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:639
                  width -= ndigs;
    8006151c:	409c893b          	subw	s2,s9,s1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:640
                  if ((flags & FL_LPAD) == 0)
    80061520:	008d7713          	andi	a4,s10,8
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:639
                  width -= ndigs;
    80061524:	84ca                	mv	s1,s2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:640
                  if ((flags & FL_LPAD) == 0)
    80061526:	eb19                	bnez	a4,8006153c <vsprintf_internal.constprop.0+0x1a8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:644
                          stream_putc(' ', stream);
    80061528:	008c3703          	ld	a4,8(s8)
    8006152c:	02000593          	li	a1,32
    80061530:	8562                	mv	a0,s8
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:646
                      while (--width);
    80061532:	397d                	addiw	s2,s2,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:644
                          stream_putc(' ', stream);
    80061534:	9702                	jalr	a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:646
                      while (--width);
    80061536:	fe0919e3          	bnez	s2,80061528 <vsprintf_internal.constprop.0+0x194>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:644
                          stream_putc(' ', stream);
    8006153a:	9c25                	addw	s0,s0,s1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:654
              if (sign)
    8006153c:	00098863          	beqz	s3,8006154c <vsprintf_internal.constprop.0+0x1b8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:656
                  stream_putc(sign, stream);
    80061540:	008c3703          	ld	a4,8(s8)
    80061544:	85ce                	mv	a1,s3
    80061546:	8562                	mv	a0,s8
    80061548:	2405                	addiw	s0,s0,1
    8006154a:	9702                	jalr	a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:660
              if (_dtoa.flags & DTOA_NAN)
    8006154c:	02c14703          	lbu	a4,44(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:659
              p = "inf";
    80061550:	0001f497          	auipc	s1,0x1f
    80061554:	1f848493          	addi	s1,s1,504 # 80080748 <std_name.0+0x1a0>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:660
              if (_dtoa.flags & DTOA_NAN)
    80061558:	8b21                	andi	a4,a4,8
    8006155a:	c709                	beqz	a4,80061564 <vsprintf_internal.constprop.0+0x1d0>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:662
                  p = "nan";
    8006155c:	0001f497          	auipc	s1,0x1f
    80061560:	1e448493          	addi	s1,s1,484 # 80080740 <std_name.0+0x198>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:670
                  if ((flags & FL_FLTUPP) != 0)
    80061564:	6a09                	lui	s4,0x2
    80061566:	9c05                	subw	s0,s0,s1
    80061568:	014d7a33          	and	s4,s10,s4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:668
              while ((ndigs = *p) != 0)
    8006156c:	0004c583          	lbu	a1,0(s1)
    80061570:	009409bb          	addw	s3,s0,s1
    80061574:	16059563          	bnez	a1,800616de <vsprintf_internal.constprop.0+0x34a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1304
tail:
    80061578:	844a                	mv	s0,s2
    8006157a:	afbd                	j	80061cf8 <vsprintf_internal.constprop.0+0x964>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:234
                  flags |= FL_PLUS;
    8006157c:	002d6d13          	ori	s10,s10,2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:239
                  flags |= FL_SPACE;
    80061580:	004d6d13          	ori	s10,s10,4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:240
                  continue;
    80061584:	bdfd                	j	80061482 <vsprintf_internal.constprop.0+0xee>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:243
                  flags |= FL_LPAD;
    80061586:	008d6d13          	ori	s10,s10,8
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:244
                  continue;
    8006158a:	bde5                	j	80061482 <vsprintf_internal.constprop.0+0xee>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:247
                  flags |= FL_ALT;
    8006158c:	010d6d13          	ori	s10,s10,16
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:248
                  continue;
    80061590:	bdcd                	j	80061482 <vsprintf_internal.constprop.0+0xee>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:252
          if (flags < FL_LONG)
    80061592:	ece3f3e3          	bgeu	t2,a4,80061458 <vsprintf_internal.constprop.0+0xc4>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:390
          if (c == 'z' || c == 't')
    80061596:	06b90d63          	beq	s2,a1,80061610 <vsprintf_internal.constprop.0+0x27c>
    8006159a:	06a90b63          	beq	s2,a0,80061610 <vsprintf_internal.constprop.0+0x27c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:424
          if (c == 'j')
    8006159e:	06691763          	bne	s2,t1,8006160c <vsprintf_internal.constprop.0+0x278>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:432
              flags &= ~FL_SHORT;
    800615a2:	bffd7793          	andi	a5,s10,-1025
    800615a6:	17c2                	slli	a5,a5,0x30
    800615a8:	93c1                	srli	a5,a5,0x30
    800615aa:	0177e7b3          	or	a5,a5,s7
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:462
              flags &= ~FL_LONG;
    800615ae:	03079d13          	slli	s10,a5,0x30
    800615b2:	030d5d13          	srli	s10,s10,0x30
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:463
              continue;
    800615b6:	b5f1                	j	80061482 <vsprintf_internal.constprop.0+0xee>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:334
                  width = 10 * width + c;
    800615b8:	039688bb          	mulw	a7,a3,s9
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:335
                  flags |= FL_WIDTH;
    800615bc:	080d6d13          	ori	s10,s10,128
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:334
                  width = 10 * width + c;
    800615c0:	00e88cbb          	addw	s9,a7,a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:336
                  continue;
    800615c4:	bd7d                	j	80061482 <vsprintf_internal.constprop.0+0xee>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:339
              if (c == '*')
    800615c6:	03f91a63          	bne	s2,t6,800615fa <vsprintf_internal.constprop.0+0x266>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:353
                  if ((flags & FL_PREC) != 0)
    800615ca:	100d7913          	andi	s2,s10,256
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:355
                      prec = va_arg(ap, int);
    800615ce:	0009a703          	lw	a4,0(s3)
    800615d2:	09a1                	addi	s3,s3,8
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:353
                  if ((flags & FL_PREC) != 0)
    800615d4:	00090863          	beqz	s2,800615e4 <vsprintf_internal.constprop.0+0x250>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:356
                      if (prec < 0)
    800615d8:	0007049b          	sext.w	s1,a4
    800615dc:	ea0753e3          	bgez	a4,80061482 <vsprintf_internal.constprop.0+0xee>
    800615e0:	4481                	li	s1,0
    800615e2:	b545                	j	80061482 <vsprintf_internal.constprop.0+0xee>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:366
                      if (width < 0)
    800615e4:	00074663          	bltz	a4,800615f0 <vsprintf_internal.constprop.0+0x25c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:364
                      flags |= FL_WIDTH;
    800615e8:	080d6d13          	ori	s10,s10,128
    800615ec:	8cba                	mv	s9,a4
    800615ee:	bd51                	j	80061482 <vsprintf_internal.constprop.0+0xee>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:368
                          width = -width;
    800615f0:	40e00cbb          	negw	s9,a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:369
                          flags |= FL_LPAD;
    800615f4:	088d6d13          	ori	s10,s10,136
    800615f8:	b569                	j	80061482 <vsprintf_internal.constprop.0+0xee>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:376
              if (c == '.')
    800615fa:	f8591ee3          	bne	s2,t0,80061596 <vsprintf_internal.constprop.0+0x202>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:378
                  if ((flags & FL_PREC) != 0)
    800615fe:	100d7713          	andi	a4,s10,256
    80061602:	70071263          	bnez	a4,80061d06 <vsprintf_internal.constprop.0+0x972>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:383
                  flags |= FL_PREC;
    80061606:	100d6d13          	ori	s10,s10,256
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:384
                  continue;
    8006160a:	bda5                	j	80061482 <vsprintf_internal.constprop.0+0xee>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:436
          if (c == 'l')
    8006160c:	03c91363          	bne	s2,t3,80061632 <vsprintf_internal.constprop.0+0x29e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:438
              if ((flags & FL_LONG) != 0)
    80061610:	200d7913          	andi	s2,s10,512
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:444
                  flags |= FL_LONG;
    80061614:	200d6713          	ori	a4,s10,512
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:438
              if ((flags & FL_LONG) != 0)
    80061618:	00090a63          	beqz	s2,8006162c <vsprintf_internal.constprop.0+0x298>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:440
                  flags |= FL_REPD_TYPE;
    8006161c:	6785                	lui	a5,0x1
    8006161e:	80078793          	addi	a5,a5,-2048 # 800 <asinh-0x7ffff800>
    80061622:	00fd67b3          	or	a5,s10,a5
    80061626:	03079713          	slli	a4,a5,0x30
    8006162a:	9341                	srli	a4,a4,0x30
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:447
              flags &= ~FL_SHORT;
    8006162c:	bff77793          	andi	a5,a4,-1025
    80061630:	bfbd                	j	800615ae <vsprintf_internal.constprop.0+0x21a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:451
          if (c == 'h')
    80061632:	03d91363          	bne	s2,t4,80061658 <vsprintf_internal.constprop.0+0x2c4>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:453
              if ((flags & FL_SHORT) != 0)
    80061636:	400d7913          	andi	s2,s10,1024
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:459
                  flags |= FL_SHORT;
    8006163a:	400d6713          	ori	a4,s10,1024
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:453
              if ((flags & FL_SHORT) != 0)
    8006163e:	00090a63          	beqz	s2,80061652 <vsprintf_internal.constprop.0+0x2be>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:455
                  flags |= FL_REPD_TYPE;
    80061642:	6785                	lui	a5,0x1
    80061644:	80078793          	addi	a5,a5,-2048 # 800 <asinh-0x7ffff800>
    80061648:	00fd67b3          	or	a5,s10,a5
    8006164c:	03079713          	slli	a4,a5,0x30
    80061650:	9341                	srli	a4,a4,0x30
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:462
              flags &= ~FL_LONG;
    80061652:	dff77793          	andi	a5,a4,-513
    80061656:	bfa1                	j	800615ae <vsprintf_internal.constprop.0+0x21a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:476
      if (c == 'p')
    80061658:	07000713          	li	a4,112
    8006165c:	e2e918e3          	bne	s2,a4,8006148c <vsprintf_internal.constprop.0+0xf8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:480
          flags &= ~(FL_LONG | FL_REPD_TYPE);
    80061660:	777d                	lui	a4,0xfffff
    80061662:	5ff70713          	addi	a4,a4,1535 # fffffffffffff5ff <_ebss+0xffffffff7fefe499>
    80061666:	00ed77b3          	and	a5,s10,a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:485
              flags |= (FL_LONG | FL_REPD_TYPE);
    8006166a:	0177e7b3          	or	a5,a5,s7
    8006166e:	03079d13          	slli	s10,a5,0x30
    80061672:	030d5d13          	srli	s10,s10,0x30
    80061676:	bd19                	j	8006148c <vsprintf_internal.constprop.0+0xf8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:557
      else if (c >= 'e' && c <= 'g')
    80061678:	f9b9071b          	addiw	a4,s2,-101
    8006167c:	0ff77713          	zext.b	a4,a4
    80061680:	e2e6f7e3          	bgeu	a3,a4,800614ae <vsprintf_internal.constprop.0+0x11a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:892
      switch (c)
    80061684:	06300713          	li	a4,99
    80061688:	2ee90863          	beq	s2,a4,80061978 <vsprintf_internal.constprop.0+0x5e4>
    8006168c:	0df97713          	andi	a4,s2,223
    80061690:	05300693          	li	a3,83
    80061694:	32d71f63          	bne	a4,a3,800619d2 <vsprintf_internal.constprop.0+0x63e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:923
          pnt = va_arg(ap, FAR char *);
    80061698:	0009ba03          	ld	s4,0(s3)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:925
          if (pnt == NULL)
    8006169c:	000a1663          	bnez	s4,800616a8 <vsprintf_internal.constprop.0+0x314>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:927
              pnt = g_nullstring;
    800616a0:	00033a17          	auipc	s4,0x33
    800616a4:	ba0a0a13          	addi	s4,s4,-1120 # 80094240 <g_nullstring>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:930
          size = strnlen(pnt, (flags & FL_PREC) ? prec : ~0);
    800616a8:	100d7713          	andi	a4,s10,256
    800616ac:	55fd                	li	a1,-1
    800616ae:	c311                	beqz	a4,800616b2 <vsprintf_internal.constprop.0+0x31e>
    800616b0:	85a6                	mv	a1,s1
    800616b2:	8552                	mv	a0,s4
    800616b4:	6e0020ef          	jal	ra,80063d94 <strnlen>
    800616b8:	84aa                	mv	s1,a0
    800616ba:	a4f1                	j	80061986 <vsprintf_internal.constprop.0+0x5f2>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:584
          else if (c == 'f')
    800616bc:	06600693          	li	a3,102
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:593
              ndecimal = 0;
    800616c0:	4601                	li	a2,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:584
          else if (c == 'f')
    800616c2:	e0d917e3          	bne	s2,a3,800614d0 <vsprintf_internal.constprop.0+0x13c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:588
              flags |= FL_FLTFIX;
    800616c6:	66a1                	lui	a3,0x8
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:587
              ndecimal = prec;
    800616c8:	863a                	mv	a2,a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:588
              flags |= FL_FLTFIX;
    800616ca:	00dd6d33          	or	s10,s10,a3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:586
              ndigs = DTOA_MAX_DIG;
    800616ce:	473d                	li	a4,15
    800616d0:	b501                	j	800614d0 <vsprintf_internal.constprop.0+0x13c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:621
              sign = '-';
    800616d2:	02d00993          	li	s3,45
    800616d6:	bd15                	j	8006150a <vsprintf_internal.constprop.0+0x176>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:625
              sign = '+';
    800616d8:	02b00993          	li	s3,43
    800616dc:	b53d                	j	8006150a <vsprintf_internal.constprop.0+0x176>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:670
                  if ((flags & FL_FLTUPP) != 0)
    800616de:	000a0563          	beqz	s4,800616e8 <vsprintf_internal.constprop.0+0x354>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:672
                      ndigs += 'I' - 'i';
    800616e2:	3581                	addiw	a1,a1,-32
    800616e4:	0ff5f593          	zext.b	a1,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:675
                  stream_putc(ndigs, stream);
    800616e8:	008c3783          	ld	a5,8(s8)
    800616ec:	8562                	mv	a0,s8
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:676
                  p++;
    800616ee:	0485                	addi	s1,s1,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:675
                  stream_putc(ndigs, stream);
    800616f0:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:676
                  p++;
    800616f2:	bdad                	j	8006156c <vsprintf_internal.constprop.0+0x1d8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:682
          if ((flags & (FL_FLTEXP | FL_FLTFIX)) == 0)
    800616f4:	7771                	lui	a4,0xffffc
    800616f6:	00ed7733          	and	a4,s10,a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:616
          exp = _dtoa.exp;
    800616fa:	5a22                	lw	s4,40(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:614
          ndigs = __dtoa_engine(value, &_dtoa, ndigs,
    800616fc:	0ff57a93          	zext.b	s5,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:682
          if ((flags & (FL_FLTEXP | FL_FLTFIX)) == 0)
    80061700:	e329                	bnez	a4,80061742 <vsprintf_internal.constprop.0+0x3ae>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:690
              while (ndigs > 0 && _dtoa.digits[ndigs - 1] == '0')
    80061702:	015d8733          	add	a4,s11,s5
    80061706:	03000613          	li	a2,48
    8006170a:	000a8763          	beqz	s5,80061718 <vsprintf_internal.constprop.0+0x384>
    8006170e:	00474583          	lbu	a1,4(a4) # ffffffffffffc004 <_ebss+0xffffffff7fefae9e>
    80061712:	177d                	addi	a4,a4,-1
    80061714:	06c58563          	beq	a1,a2,8006177e <vsprintf_internal.constprop.0+0x3ea>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:695
              if (-4 <= exp && exp < prec)
    80061718:	5671                	li	a2,-4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:699
                  if (exp < 0 || ndigs > exp)
    8006171a:	000a871b          	sext.w	a4,s5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:695
              if (-4 <= exp && exp < prec)
    8006171e:	06ca4463          	blt	s4,a2,80061786 <vsprintf_internal.constprop.0+0x3f2>
    80061722:	0ff57513          	zext.b	a0,a0
    80061726:	06aa5063          	bge	s4,a0,80061786 <vsprintf_internal.constprop.0+0x3f2>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:697
                  flags |= FL_FLTFIX;
    8006172a:	6621                	lui	a2,0x8
    8006172c:	00cd6d33          	or	s10,s10,a2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:699
                  if (exp < 0 || ndigs > exp)
    80061730:	000a4563          	bltz	s4,8006173a <vsprintf_internal.constprop.0+0x3a6>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:705
                      prec = 0;
    80061734:	4481                	li	s1,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:699
                  if (exp < 0 || ndigs > exp)
    80061736:	00ea5663          	bge	s4,a4,80061742 <vsprintf_internal.constprop.0+0x3ae>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:701
                      prec = ndigs - (exp + 1);
    8006173a:	001a049b          	addiw	s1,s4,1
    8006173e:	409704bb          	subw	s1,a4,s1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:718
          if ((flags & FL_FLTFIX) != 0)
    80061742:	010d179b          	slliw	a5,s10,0x10
    80061746:	4107d79b          	sraiw	a5,a5,0x10
    8006174a:	e43e                	sd	a5,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:724
              n = 5;              /* 1e+00 */
    8006174c:	4715                	li	a4,5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:718
          if ((flags & FL_FLTFIX) != 0)
    8006174e:	0007d763          	bgez	a5,8006175c <vsprintf_internal.constprop.0+0x3c8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:720
              n = (exp > 0 ? exp + 1 : 1);
    80061752:	8752                	mv	a4,s4
    80061754:	000a5363          	bgez	s4,8006175a <vsprintf_internal.constprop.0+0x3c6>
    80061758:	4701                	li	a4,0
    8006175a:	2705                	addiw	a4,a4,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:727
          if (sign != 0)
    8006175c:	00098363          	beqz	s3,80061762 <vsprintf_internal.constprop.0+0x3ce>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:729
              n += 1;
    80061760:	2705                	addiw	a4,a4,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:732
          if (prec != 0)
    80061762:	c48d                	beqz	s1,8006178c <vsprintf_internal.constprop.0+0x3f8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:734
              n += prec + 1;
    80061764:	0014861b          	addiw	a2,s1,1
    80061768:	9f31                	addw	a4,a4,a2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:741
          width = width > n ? width - n : 0;
    8006176a:	4901                	li	s2,0
    8006176c:	01975463          	bge	a4,s9,80061774 <vsprintf_internal.constprop.0+0x3e0>
    80061770:	40ec893b          	subw	s2,s9,a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:745
          if ((flags & (FL_LPAD | FL_ZFILL)) == 0)
    80061774:	009d7713          	andi	a4,s10,9
    80061778:	eb1d                	bnez	a4,800617ae <vsprintf_internal.constprop.0+0x41a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:741
          width = width > n ? width - n : 0;
    8006177a:	8cca                	mv	s9,s2
    8006177c:	a015                	j	800617a0 <vsprintf_internal.constprop.0+0x40c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:692
                  ndigs--;
    8006177e:	3afd                	addiw	s5,s5,-1
    80061780:	0ffafa93          	zext.b	s5,s5
    80061784:	b759                	j	8006170a <vsprintf_internal.constprop.0+0x376>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:712
                  prec = ndigs - 1;
    80061786:	fff7049b          	addiw	s1,a4,-1
    8006178a:	bf65                	j	80061742 <vsprintf_internal.constprop.0+0x3ae>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:736
          else if ((flags & FL_ALT) != 0)
    8006178c:	010d7613          	andi	a2,s10,16
    80061790:	de69                	beqz	a2,8006176a <vsprintf_internal.constprop.0+0x3d6>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:738
              n += 1;
    80061792:	2705                	addiw	a4,a4,1
    80061794:	bfd9                	j	8006176a <vsprintf_internal.constprop.0+0x3d6>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:749
                  stream_putc(' ', stream);
    80061796:	02000593          	li	a1,32
    8006179a:	8562                	mv	a0,s8
    8006179c:	9602                	jalr	a2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:750
                  width--;
    8006179e:	3cfd                	addiw	s9,s9,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:749
                  stream_putc(' ', stream);
    800617a0:	008c3603          	ld	a2,8(s8)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:747
              while (width)
    800617a4:	fe0c99e3          	bnez	s9,80061796 <vsprintf_internal.constprop.0+0x402>
    800617a8:	0124043b          	addw	s0,s0,s2
    800617ac:	4901                	li	s2,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:754
          if (sign != 0)
    800617ae:	00098863          	beqz	s3,800617be <vsprintf_internal.constprop.0+0x42a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:756
              stream_putc(sign, stream);
    800617b2:	008c3703          	ld	a4,8(s8)
    800617b6:	85ce                	mv	a1,s3
    800617b8:	8562                	mv	a0,s8
    800617ba:	2405                	addiw	s0,s0,1
    800617bc:	9702                	jalr	a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:759
          if ((flags & FL_LPAD) == 0)
    800617be:	008d7713          	andi	a4,s10,8
    800617c2:	ef19                	bnez	a4,800617e0 <vsprintf_internal.constprop.0+0x44c>
    800617c4:	8cca                	mv	s9,s2
    800617c6:	a031                	j	800617d2 <vsprintf_internal.constprop.0+0x43e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:763
                  stream_putc('0', stream);
    800617c8:	03000593          	li	a1,48
    800617cc:	8562                	mv	a0,s8
    800617ce:	9682                	jalr	a3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:764
                  width--;
    800617d0:	3cfd                	addiw	s9,s9,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:763
                  stream_putc('0', stream);
    800617d2:	008c3683          	ld	a3,8(s8)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:761
              while (width)
    800617d6:	fe0c99e3          	bnez	s9,800617c8 <vsprintf_internal.constprop.0+0x434>
    800617da:	0089043b          	addw	s0,s2,s0
    800617de:	4901                	li	s2,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:768
          if ((flags & FL_FLTFIX) != 0)
    800617e0:	67a2                	ld	a5,8(sp)
    800617e2:	0807df63          	bgez	a5,80061880 <vsprintf_internal.constprop.0+0x4ec>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:780
              n = exp > 0 ? exp : 0;    /* Exponent of left digit */
    800617e6:	8752                	mv	a4,s4
    800617e8:	000a5363          	bgez	s4,800617ee <vsprintf_internal.constprop.0+0x45a>
    800617ec:	4701                	li	a4,0
    800617ee:	00070c9b          	sext.w	s9,a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:785
                  if (n == -1)
    800617f2:	40ea073b          	subw	a4,s4,a4
    800617f6:	9dba                	add	s11,s11,a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:792
                  if (0 <= exp - n && exp - n < ndigs)
    800617f8:	2a81                	sext.w	s5,s5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:801
                  if (--n < -prec)
    800617fa:	409004bb          	negw	s1,s1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:792
                  if (0 <= exp - n && exp - n < ndigs)
    800617fe:	419a063b          	subw	a2,s4,s9
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:798
                      out = '0';
    80061802:	03000593          	li	a1,48
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:792
                  if (0 <= exp - n && exp - n < ndigs)
    80061806:	01567463          	bgeu	a2,s5,8006180e <vsprintf_internal.constprop.0+0x47a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:794
                      out = _dtoa.digits[exp - n];
    8006180a:	005dc583          	lbu	a1,5(s11)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:801
                  if (--n < -prec)
    8006180e:	3cfd                	addiw	s9,s9,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:806
                  stream_putc(out, stream);
    80061810:	008c3603          	ld	a2,8(s8)
    80061814:	0014099b          	addiw	s3,s0,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:801
                  if (--n < -prec)
    80061818:	029cc263          	blt	s9,s1,8006183c <vsprintf_internal.constprop.0+0x4a8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:806
                  stream_putc(out, stream);
    8006181c:	8562                	mv	a0,s8
    8006181e:	9602                	jalr	a2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:785
                  if (n == -1)
    80061820:	57fd                	li	a5,-1
    80061822:	00fc9a63          	bne	s9,a5,80061836 <vsprintf_internal.constprop.0+0x4a2>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:787
                      stream_putc('.', stream);
    80061826:	008c3603          	ld	a2,8(s8)
    8006182a:	02e00593          	li	a1,46
    8006182e:	8562                	mv	a0,s8
    80061830:	0024099b          	addiw	s3,s0,2
    80061834:	9602                	jalr	a2
    80061836:	0d85                	addi	s11,s11,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:761
              while (width)
    80061838:	844e                	mv	s0,s3
    8006183a:	b7d1                	j	800617fe <vsprintf_internal.constprop.0+0x46a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:810
              if (n == exp && (_dtoa.digits[0] > '5' ||
    8006183c:	039a1063          	bne	s4,s9,8006185c <vsprintf_internal.constprop.0+0x4c8>
    80061840:	02d14503          	lbu	a0,45(sp)
    80061844:	03500713          	li	a4,53
    80061848:	00a76863          	bltu	a4,a0,80061858 <vsprintf_internal.constprop.0+0x4c4>
    8006184c:	00e51863          	bne	a0,a4,8006185c <vsprintf_internal.constprop.0+0x4c8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:811
                  (_dtoa.digits[0] == '5' && !(_dtoa.flags & DTOA_CARRY))))
    80061850:	02c14703          	lbu	a4,44(sp)
    80061854:	8b41                	andi	a4,a4,16
    80061856:	e319                	bnez	a4,8006185c <vsprintf_internal.constprop.0+0x4c8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:813
                  out = '1';
    80061858:	03100593          	li	a1,49
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:816
              stream_putc(out, stream);
    8006185c:	8562                	mv	a0,s8
    8006185e:	9602                	jalr	a2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:818
              if ((flags & FL_ALT) != 0 && n == -1)
    80061860:	010d7793          	andi	a5,s10,16
    80061864:	d0078ae3          	beqz	a5,80061578 <vsprintf_internal.constprop.0+0x1e4>
    80061868:	57fd                	li	a5,-1
    8006186a:	d0fc97e3          	bne	s9,a5,80061578 <vsprintf_internal.constprop.0+0x1e4>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:820
                  stream_putc('.', stream);
    8006186e:	008c3783          	ld	a5,8(s8)
    80061872:	02e00593          	li	a1,46
    80061876:	8562                	mv	a0,s8
    80061878:	0024099b          	addiw	s3,s0,2
    8006187c:	9782                	jalr	a5
    8006187e:	b9ed                	j	80061578 <vsprintf_internal.constprop.0+0x1e4>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:830
              if (_dtoa.digits[0] != '1')
    80061880:	02d14583          	lbu	a1,45(sp)
    80061884:	03100713          	li	a4,49
    80061888:	00e58763          	beq	a1,a4,80061896 <vsprintf_internal.constprop.0+0x502>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:832
                  _dtoa.flags &= ~DTOA_CARRY;
    8006188c:	02c14703          	lbu	a4,44(sp)
    80061890:	9b3d                	andi	a4,a4,-17
    80061892:	02e10623          	sb	a4,44(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:835
              stream_putc(_dtoa.digits[0], stream);
    80061896:	008c3703          	ld	a4,8(s8)
    8006189a:	8562                	mv	a0,s8
    8006189c:	9702                	jalr	a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:836
              if (prec > 0)
    8006189e:	008c3703          	ld	a4,8(s8)
    800618a2:	0a905063          	blez	s1,80061942 <vsprintf_internal.constprop.0+0x5ae>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:840
                  stream_putc('.', stream);
    800618a6:	02e00593          	li	a1,46
    800618aa:	8562                	mv	a0,s8
    800618ac:	2409                	addiw	s0,s0,2
    800618ae:	9702                	jalr	a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:841
                  for (pos = 1; pos < 1 + prec; pos++)
    800618b0:	4985                	li	s3,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:843
                      stream_putc(pos < ndigs ? _dtoa.digits[pos] : '0',
    800618b2:	008c3683          	ld	a3,8(s8)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:841
                  for (pos = 1; pos < 1 + prec; pos++)
    800618b6:	0009871b          	sext.w	a4,s3
    800618ba:	0734d563          	bge	s1,s3,80061924 <vsprintf_internal.constprop.0+0x590>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:854
              stream_putc(flags & FL_FLTUPP ? 'E' : 'e', stream);
    800618be:	6709                	lui	a4,0x2
    800618c0:	00ed77b3          	and	a5,s10,a4
    800618c4:	008c3683          	ld	a3,8(s8)
    800618c8:	04500593          	li	a1,69
    800618cc:	e399                	bnez	a5,800618d2 <vsprintf_internal.constprop.0+0x53e>
    800618ce:	06500593          	li	a1,101
    800618d2:	8562                	mv	a0,s8
    800618d4:	9682                	jalr	a3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:856
              if (exp < 0 || (exp == 0 && (_dtoa.flags & DTOA_CARRY) != 0))
    800618d6:	000a4a63          	bltz	s4,800618ea <vsprintf_internal.constprop.0+0x556>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:855
              ndigs = '+';
    800618da:	02b00593          	li	a1,43
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:856
              if (exp < 0 || (exp == 0 && (_dtoa.flags & DTOA_CARRY) != 0))
    800618de:	000a1a63          	bnez	s4,800618f2 <vsprintf_internal.constprop.0+0x55e>
    800618e2:	02c14783          	lbu	a5,44(sp)
    800618e6:	8bc1                	andi	a5,a5,16
    800618e8:	c789                	beqz	a5,800618f2 <vsprintf_internal.constprop.0+0x55e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:858
                  exp = -exp;
    800618ea:	41400a3b          	negw	s4,s4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:859
                  ndigs = '-';
    800618ee:	02d00593          	li	a1,45
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:862
              stream_putc(ndigs, stream);
    800618f2:	008c3783          	ld	a5,8(s8)
    800618f6:	8562                	mv	a0,s8
    800618f8:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:863
              c = __ultoa_invert(exp, buf, 10) - buf;
    800618fa:	4629                	li	a2,10
    800618fc:	85ee                	mv	a1,s11
    800618fe:	8552                	mv	a0,s4
    80061900:	47c000ef          	jal	ra,80061d7c <__ultoa_invert>
    80061904:	41b504b3          	sub	s1,a0,s11
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:865
              if (exp >= 0 && exp <= 9)
    80061908:	47a5                	li	a5,9
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:863
              c = __ultoa_invert(exp, buf, 10) - buf;
    8006190a:	0ff4f993          	zext.b	s3,s1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:865
              if (exp >= 0 && exp <= 9)
    8006190e:	0547f563          	bgeu	a5,s4,80061958 <vsprintf_internal.constprop.0+0x5c4>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:862
              stream_putc(ndigs, stream);
    80061912:	2409                	addiw	s0,s0,2
    80061914:	0ff4f493          	zext.b	s1,s1
    80061918:	94ee                	add	s1,s1,s11
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:870
              while (c > 0)
    8006191a:	049d9763          	bne	s11,s1,80061968 <vsprintf_internal.constprop.0+0x5d4>
    8006191e:	008989bb          	addw	s3,s3,s0
    80061922:	b999                	j	80061578 <vsprintf_internal.constprop.0+0x1e4>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:843
                      stream_putc(pos < ndigs ? _dtoa.digits[pos] : '0',
    80061924:	2405                	addiw	s0,s0,1
    80061926:	03000593          	li	a1,48
    8006192a:	0159f663          	bgeu	s3,s5,80061936 <vsprintf_internal.constprop.0+0x5a2>
    8006192e:	009c                	addi	a5,sp,64
    80061930:	973e                	add	a4,a4,a5
    80061932:	fed74583          	lbu	a1,-19(a4) # 1fed <asinh-0x7fffe013>
    80061936:	8562                	mv	a0,s8
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:841
                  for (pos = 1; pos < 1 + prec; pos++)
    80061938:	2985                	addiw	s3,s3,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:843
                      stream_putc(pos < ndigs ? _dtoa.digits[pos] : '0',
    8006193a:	9682                	jalr	a3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:841
                  for (pos = 1; pos < 1 + prec; pos++)
    8006193c:	0ff9f993          	zext.b	s3,s3
    80061940:	bf8d                	j	800618b2 <vsprintf_internal.constprop.0+0x51e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:847
              else if ((flags & FL_ALT) != 0)
    80061942:	010d7693          	andi	a3,s10,16
    80061946:	e299                	bnez	a3,8006194c <vsprintf_internal.constprop.0+0x5b8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:835
              stream_putc(_dtoa.digits[0], stream);
    80061948:	2405                	addiw	s0,s0,1
    8006194a:	bf95                	j	800618be <vsprintf_internal.constprop.0+0x52a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:849
                  stream_putc('.', stream);
    8006194c:	02e00593          	li	a1,46
    80061950:	8562                	mv	a0,s8
    80061952:	2409                	addiw	s0,s0,2
    80061954:	9702                	jalr	a4
    80061956:	b7a5                	j	800618be <vsprintf_internal.constprop.0+0x52a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:867
                  stream_putc('0', stream);
    80061958:	008c3783          	ld	a5,8(s8)
    8006195c:	03000593          	li	a1,48
    80061960:	8562                	mv	a0,s8
    80061962:	240d                	addiw	s0,s0,3
    80061964:	9782                	jalr	a5
    80061966:	b77d                	j	80061914 <vsprintf_internal.constprop.0+0x580>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:872
                  stream_putc(buf[c - 1], stream);
    80061968:	fff4c583          	lbu	a1,-1(s1)
    8006196c:	008c3783          	ld	a5,8(s8)
    80061970:	8562                	mv	a0,s8
    80061972:	14fd                	addi	s1,s1,-1
    80061974:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:873
                  c--;
    80061976:	b755                	j	8006191a <vsprintf_internal.constprop.0+0x586>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:905
          buf[0] = va_arg(ap, int);
    80061978:	0009a703          	lw	a4,0(s3)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:908
          size = 1;
    8006197c:	4485                	li	s1,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:907
          pnt = buf;
    8006197e:	02810a13          	addi	s4,sp,40
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:905
          buf[0] = va_arg(ap, int);
    80061982:	02e10423          	sb	a4,40(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:933
          if ((flags & FL_LPAD) == 0)
    80061986:	008d7793          	andi	a5,s10,8
    8006198a:	89a2                	mv	s3,s0
    8006198c:	e39d                	bnez	a5,800619b2 <vsprintf_internal.constprop.0+0x61e>
    8006198e:	4901                	li	s2,0
    80061990:	a801                	j	800619a0 <vsprintf_internal.constprop.0+0x60c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:937
                  stream_putc(' ', stream);
    80061992:	008c3783          	ld	a5,8(s8)
    80061996:	02000593          	li	a1,32
    8006199a:	8562                	mv	a0,s8
    8006199c:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:938
                  width--;
    8006199e:	0905                	addi	s2,s2,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:935
              while (size < width)
    800619a0:	412c8733          	sub	a4,s9,s2
    800619a4:	412c87bb          	subw	a5,s9,s2
    800619a8:	008909bb          	addw	s3,s2,s0
    800619ac:	fee4e3e3          	bltu	s1,a4,80061992 <vsprintf_internal.constprop.0+0x5fe>
    800619b0:	8cbe                	mv	s9,a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:942
          stream_puts(pnt, size, stream);
    800619b2:	010c3783          	ld	a5,16(s8)
    800619b6:	0004841b          	sext.w	s0,s1
    800619ba:	8622                	mv	a2,s0
    800619bc:	85d2                	mv	a1,s4
    800619be:	8562                	mv	a0,s8
    800619c0:	013489bb          	addw	s3,s1,s3
    800619c4:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:943
          width = width >= size ? width - size : 0;
    800619c6:	4901                	li	s2,0
    800619c8:	ba9ce8e3          	bltu	s9,s1,80061578 <vsprintf_internal.constprop.0+0x1e4>
    800619cc:	408c893b          	subw	s2,s9,s0
    800619d0:	b665                	j	80061578 <vsprintf_internal.constprop.0+0x1e4>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:949
      if (c == 'd' || c == 'i')
    800619d2:	06400693          	li	a3,100
    800619d6:	017d7733          	and	a4,s10,s7
    800619da:	00d90663          	beq	s2,a3,800619e6 <vsprintf_internal.constprop.0+0x652>
    800619de:	06900693          	li	a3,105
    800619e2:	10d91563          	bne	s2,a3,80061aec <vsprintf_internal.constprop.0+0x758>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:956
          if ((flags & FL_LONG) != 0 && (flags & FL_REPD_TYPE) != 0)
    800619e6:	0d771b63          	bne	a4,s7,80061abc <vsprintf_internal.constprop.0+0x728>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:985
                x = va_arg(ap, long);
    800619ea:	0009b503          	ld	a0,0(s3)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1015
          flags &= ~(FL_NEGATIVE | FL_ALT);
    800619ee:	79fd                	lui	s3,0xfffff
    800619f0:	19bd                	addi	s3,s3,-17
    800619f2:	013d79b3          	and	s3,s10,s3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1016
          if (x < 0)
    800619f6:	00055a63          	bgez	a0,80061a0a <vsprintf_internal.constprop.0+0x676>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1019
              flags |= FL_NEGATIVE;
    800619fa:	6785                	lui	a5,0x1
    800619fc:	00f9e9b3          	or	s3,s3,a5
    80061a00:	19c2                	slli	s3,s3,0x30
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1018
              x = -x;
    80061a02:	40a00533          	neg	a0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1019
              flags |= FL_NEGATIVE;
    80061a06:	0309d993          	srli	s3,s3,0x30
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1022
          if ((flags & FL_PREC) != 0 && prec == 0 && x == 0)
    80061a0a:	1009f793          	andi	a5,s3,256
    80061a0e:	c781                	beqz	a5,80061a16 <vsprintf_internal.constprop.0+0x682>
    80061a10:	e099                	bnez	s1,80061a16 <vsprintf_internal.constprop.0+0x682>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1024
              c = 0;
    80061a12:	4a01                	li	s4,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1022
          if ((flags & FL_PREC) != 0 && prec == 0 && x == 0)
    80061a14:	c919                	beqz	a0,80061a2a <vsprintf_internal.constprop.0+0x696>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1031
              c = __ultoa_invert(x, buf, 10) - buf;
    80061a16:	02810a13          	addi	s4,sp,40
    80061a1a:	4629                	li	a2,10
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1207
              c = __ultoa_invert(x, buf, base) - buf;
    80061a1c:	85d2                	mv	a1,s4
    80061a1e:	35e000ef          	jal	ra,80061d7c <__ultoa_invert>
    80061a22:	41450533          	sub	a0,a0,s4
    80061a26:	0ff57a13          	zext.b	s4,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1215
      if ((flags & FL_PREC) != 0)
    80061a2a:	1009f793          	andi	a5,s3,256
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1218
          if (len < prec)
    80061a2e:	000a0a9b          	sext.w	s5,s4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1215
      if ((flags & FL_PREC) != 0)
    80061a32:	1a078b63          	beqz	a5,80061be8 <vsprintf_internal.constprop.0+0x854>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1217
          flags &= ~FL_ZFILL;
    80061a36:	ffe9f793          	andi	a5,s3,-2
    80061a3a:	03079d93          	slli	s11,a5,0x30
    80061a3e:	030ddd93          	srli	s11,s11,0x30
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1213
      len = c;
    80061a42:	87d2                	mv	a5,s4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1218
          if (len < prec)
    80061a44:	029ad063          	bge	s5,s1,80061a64 <vsprintf_internal.constprop.0+0x6d0>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1221
              if ((flags & FL_ALT) != 0 && (flags & FL_ALTHEX) == 0)
    80061a48:	6762                	ld	a4,24(sp)
    80061a4a:	46c1                	li	a3,16
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1220
              len = prec;
    80061a4c:	0ff4f793          	zext.b	a5,s1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1221
              if ((flags & FL_ALT) != 0 && (flags & FL_ALTHEX) == 0)
    80061a50:	00e9f733          	and	a4,s3,a4
    80061a54:	00d71863          	bne	a4,a3,80061a64 <vsprintf_internal.constprop.0+0x6d0>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1223
                  flags &= ~FL_ALT;
    80061a58:	fee9f993          	andi	s3,s3,-18
    80061a5c:	03099d93          	slli	s11,s3,0x30
    80061a60:	030ddd93          	srli	s11,s11,0x30
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1228
      if ((flags & FL_ALT) != 0)
    80061a64:	010df713          	andi	a4,s11,16
    80061a68:	18070d63          	beqz	a4,80061c02 <vsprintf_internal.constprop.0+0x86e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1230
          if (buf[c - 1] == '0')
    80061a6c:	0094                	addi	a3,sp,64
    80061a6e:	fffa871b          	addiw	a4,s5,-1
    80061a72:	9736                	add	a4,a4,a3
    80061a74:	fe874683          	lbu	a3,-24(a4)
    80061a78:	03000713          	li	a4,48
    80061a7c:	16e69963          	bne	a3,a4,80061bee <vsprintf_internal.constprop.0+0x85a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1232
              flags &= ~(FL_ALT | FL_ALTHEX | FL_ALTUPP);
    80061a80:	6742                	ld	a4,16(sp)
    80061a82:	00edfdb3          	and	s11,s11,a4
    80061a86:	1dc2                	slli	s11,s11,0x30
    80061a88:	030ddd93          	srli	s11,s11,0x30
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1248
      if ((flags & FL_LPAD) == 0)
    80061a8c:	008df713          	andi	a4,s11,8
    80061a90:	89a2                	mv	s3,s0
    80061a92:	18071c63          	bnez	a4,80061c2a <vsprintf_internal.constprop.0+0x896>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1250
          if ((flags & FL_ZFILL) != 0)
    80061a96:	001df713          	andi	a4,s11,1
    80061a9a:	cf01                	beqz	a4,80061ab2 <vsprintf_internal.constprop.0+0x71e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1253
              if (len < width)
    80061a9c:	0007871b          	sext.w	a4,a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1218
          if (len < prec)
    80061aa0:	84d6                	mv	s1,s5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1253
              if (len < width)
    80061aa2:	01975863          	bge	a4,s9,80061ab2 <vsprintf_internal.constprop.0+0x71e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1255
                  prec += width - len;
    80061aa6:	40ec873b          	subw	a4,s9,a4
    80061aaa:	015704bb          	addw	s1,a4,s5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1256
                  len = width;
    80061aae:	0ffcf793          	zext.b	a5,s9
    80061ab2:	9f81                	subw	a5,a5,s0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1218
          if (len < prec)
    80061ab4:	89a2                	mv	s3,s0
    80061ab6:	0ff7f413          	zext.b	s0,a5
    80061aba:	a295                	j	80061c1e <vsprintf_internal.constprop.0+0x88a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:973
          if ((flags & FL_LONG) != 0)
    80061abc:	200d7713          	andi	a4,s10,512
    80061ac0:	f70d                	bnez	a4,800619ea <vsprintf_internal.constprop.0+0x656>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1002
              if ((flags & FL_SHORT) != 0)
    80061ac2:	400d7713          	andi	a4,s10,1024
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1000
                x = va_arg(ap, int);
    80061ac6:	0009a503          	lw	a0,0(s3) # fffffffffffff000 <_ebss+0xffffffff7fefde9a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1002
              if ((flags & FL_SHORT) != 0)
    80061aca:	d315                	beqz	a4,800619ee <vsprintf_internal.constprop.0+0x65a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1004
                  if ((flags & FL_REPD_TYPE) == 0)
    80061acc:	6785                	lui	a5,0x1
    80061ace:	80078793          	addi	a5,a5,-2048 # 800 <asinh-0x7ffff800>
    80061ad2:	00fd7733          	and	a4,s10,a5
    80061ad6:	e711                	bnez	a4,80061ae2 <vsprintf_internal.constprop.0+0x74e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1006
                      x = (short)x;
    80061ad8:	0105151b          	slliw	a0,a0,0x10
    80061adc:	4105551b          	sraiw	a0,a0,0x10
    80061ae0:	b739                	j	800619ee <vsprintf_internal.constprop.0+0x65a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1010
                      x = (signed char)x;
    80061ae2:	0185151b          	slliw	a0,a0,0x18
    80061ae6:	4185551b          	sraiw	a0,a0,0x18
    80061aea:	b711                	j	800619ee <vsprintf_internal.constprop.0+0x65a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1042
          if ((flags & FL_LONG) != 0 && (flags & FL_REPD_TYPE) != 0)
    80061aec:	05771563          	bne	a4,s7,80061b36 <vsprintf_internal.constprop.0+0x7a2>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1071
                x = va_arg(ap, unsigned long);
    80061af0:	0009b503          	ld	a0,0(s3)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1101
          flags &= ~(FL_PLUS | FL_SPACE);
    80061af4:	ff9d7993          	andi	s3,s10,-7
    80061af8:	19c2                	slli	s3,s3,0x30
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1103
          switch (c)
    80061afa:	07000713          	li	a4,112
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1101
          flags &= ~(FL_PLUS | FL_SPACE);
    80061afe:	0309d993          	srli	s3,s3,0x30
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1103
          switch (c)
    80061b02:	0ae90363          	beq	s2,a4,80061ba8 <vsprintf_internal.constprop.0+0x814>
    80061b06:	07276063          	bltu	a4,s2,80061b66 <vsprintf_internal.constprop.0+0x7d2>
    80061b0a:	05800713          	li	a4,88
    80061b0e:	0ce90663          	beq	s2,a4,80061bda <vsprintf_internal.constprop.0+0x846>
    80061b12:	06f00793          	li	a5,111
    80061b16:	4621                	li	a2,8
    80061b18:	06f90e63          	beq	s2,a5,80061b94 <vsprintf_internal.constprop.0+0x800>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1193
              stream_putc('%', stream);
    80061b1c:	008c3783          	ld	a5,8(s8)
    80061b20:	8562                	mv	a0,s8
    80061b22:	02500593          	li	a1,37
    80061b26:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1194
              stream_putc(c, stream);
    80061b28:	008c3783          	ld	a5,8(s8)
    80061b2c:	85ca                	mv	a1,s2
    80061b2e:	8562                	mv	a0,s8
    80061b30:	2409                	addiw	s0,s0,2
    80061b32:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1195
              continue;
    80061b34:	a2e9                	j	80061cfe <vsprintf_internal.constprop.0+0x96a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1059
          if ((flags & FL_LONG) != 0)
    80061b36:	200d7713          	andi	a4,s10,512
    80061b3a:	fb5d                	bnez	a4,80061af0 <vsprintf_internal.constprop.0+0x75c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1088
              if ((flags & FL_SHORT) != 0)
    80061b3c:	400d7693          	andi	a3,s10,1024
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1086
                x = va_arg(ap, unsigned int);
    80061b40:	0009a703          	lw	a4,0(s3)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1088
              if ((flags & FL_SHORT) != 0)
    80061b44:	e689                	bnez	a3,80061b4e <vsprintf_internal.constprop.0+0x7ba>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1086
                x = va_arg(ap, unsigned int);
    80061b46:	02071513          	slli	a0,a4,0x20
    80061b4a:	9101                	srli	a0,a0,0x20
    80061b4c:	b765                	j	80061af4 <vsprintf_internal.constprop.0+0x760>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1090
                  if ((flags & FL_REPD_TYPE) == 0)
    80061b4e:	6785                	lui	a5,0x1
    80061b50:	80078793          	addi	a5,a5,-2048 # 800 <asinh-0x7ffff800>
    80061b54:	00fd76b3          	and	a3,s10,a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1096
                      x = (unsigned char)x;
    80061b58:	0ff77513          	zext.b	a0,a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1090
                  if ((flags & FL_REPD_TYPE) == 0)
    80061b5c:	fec1                	bnez	a3,80061af4 <vsprintf_internal.constprop.0+0x760>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1092
                      x = (unsigned short)x;
    80061b5e:	03071513          	slli	a0,a4,0x30
    80061b62:	9141                	srli	a0,a0,0x30
    80061b64:	bf41                	j	80061af4 <vsprintf_internal.constprop.0+0x760>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1103
          switch (c)
    80061b66:	07500713          	li	a4,117
    80061b6a:	00e90e63          	beq	s2,a4,80061b86 <vsprintf_internal.constprop.0+0x7f2>
    80061b6e:	07800793          	li	a5,120
    80061b72:	faf915e3          	bne	s2,a5,80061b1c <vsprintf_internal.constprop.0+0x788>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1175
              if ((flags & FL_ALT) != 0)
    80061b76:	0109f793          	andi	a5,s3,16
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1180
              base = 16;
    80061b7a:	4641                	li	a2,16
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1175
              if ((flags & FL_ALT) != 0)
    80061b7c:	cf81                	beqz	a5,80061b94 <vsprintf_internal.constprop.0+0x800>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1177
                  flags |= FL_ALTHEX;
    80061b7e:	6791                	lui	a5,0x4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1186
                  flags |= (FL_ALTHEX | FL_ALTUPP);
    80061b80:	00f9e9b3          	or	s3,s3,a5
    80061b84:	a801                	j	80061b94 <vsprintf_internal.constprop.0+0x800>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1106
              flags &= ~FL_ALT;
    80061b86:	fe9d7793          	andi	a5,s10,-23
    80061b8a:	03079993          	slli	s3,a5,0x30
    80061b8e:	0309d993          	srli	s3,s3,0x30
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1107
              base = 10;
    80061b92:	4629                	li	a2,10
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1198
          if ((flags & FL_PREC) != 0 && prec == 0 && x == 0)
    80061b94:	1009f793          	andi	a5,s3,256
    80061b98:	c789                	beqz	a5,80061ba2 <vsprintf_internal.constprop.0+0x80e>
    80061b9a:	e481                	bnez	s1,80061ba2 <vsprintf_internal.constprop.0+0x80e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1200
              c = 0;
    80061b9c:	4a01                	li	s4,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1198
          if ((flags & FL_PREC) != 0 && prec == 0 && x == 0)
    80061b9e:	e80506e3          	beqz	a0,80061a2a <vsprintf_internal.constprop.0+0x696>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1207
              c = __ultoa_invert(x, buf, base) - buf;
    80061ba2:	02810a13          	addi	s4,sp,40
    80061ba6:	bd9d                	j	80061a1c <vsprintf_internal.constprop.0+0x688>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1115
              c = fmt_char(fmt);
    80061ba8:	000b4783          	lbu	a5,0(s6)
    80061bac:	05600713          	li	a4,86
    80061bb0:	001b0a13          	addi	s4,s6,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1116
              switch (c)
    80061bb4:	00e78c63          	beq	a5,a4,80061bcc <vsprintf_internal.constprop.0+0x838>
    80061bb8:	0df7f793          	andi	a5,a5,223
    80061bbc:	05300713          	li	a4,83
    80061bc0:	00e79363          	bne	a5,a4,80061bc6 <vsprintf_internal.constprop.0+0x832>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1115
              c = fmt_char(fmt);
    80061bc4:	8b52                	mv	s6,s4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1170
              flags |= FL_ALT;
    80061bc6:	0109e993          	ori	s3,s3,16
    80061bca:	b775                	j	80061b76 <vsprintf_internal.constprop.0+0x7e2>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1124
                      va_copy(copy, *vaf->va);
    80061bcc:	651c                	ld	a5,8(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1125
                      lib_vsprintf(stream, vaf->fmt, copy);
    80061bce:	610c                	ld	a1,0(a0)
    80061bd0:	8562                	mv	a0,s8
    80061bd2:	6390                	ld	a2,0(a5)
    80061bd4:	fb2ff0ef          	jal	ra,80061386 <lib_vsprintf_internal>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1130
                      continue;
    80061bd8:	a225                	j	80061d00 <vsprintf_internal.constprop.0+0x96c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1184
              if ((flags & FL_ALT) != 0)
    80061bda:	010d7793          	andi	a5,s10,16
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1189
              base = 16 | XTOA_UPPER;
    80061bde:	21000613          	li	a2,528
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1184
              if ((flags & FL_ALT) != 0)
    80061be2:	dbcd                	beqz	a5,80061b94 <vsprintf_internal.constprop.0+0x800>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1186
                  flags |= (FL_ALTHEX | FL_ALTUPP);
    80061be4:	6799                	lui	a5,0x6
    80061be6:	bf69                	j	80061b80 <vsprintf_internal.constprop.0+0x7ec>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1213
      len = c;
    80061be8:	87d2                	mv	a5,s4
    80061bea:	8dce                	mv	s11,s3
    80061bec:	bda5                	j	80061a64 <vsprintf_internal.constprop.0+0x6d0>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1237
              if ((flags & FL_ALTHEX) != 0)
    80061bee:	6711                	lui	a4,0x4
    80061bf0:	00edf733          	and	a4,s11,a4
    80061bf4:	e319                	bnez	a4,80061bfa <vsprintf_internal.constprop.0+0x866>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1245
          len += 1;
    80061bf6:	2785                	addiw	a5,a5,1
    80061bf8:	a011                	j	80061bfc <vsprintf_internal.constprop.0+0x868>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1239
                  len += 1;
    80061bfa:	2789                	addiw	a5,a5,2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1245
          len += 1;
    80061bfc:	0ff7f793          	zext.b	a5,a5
    80061c00:	b571                	j	80061a8c <vsprintf_internal.constprop.0+0x6f8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1243
      else if ((flags & (FL_NEGATIVE | FL_PLUS | FL_SPACE)) != 0)
    80061c02:	6705                	lui	a4,0x1
    80061c04:	0719                	addi	a4,a4,6
    80061c06:	00edf733          	and	a4,s11,a4
    80061c0a:	e80701e3          	beqz	a4,80061a8c <vsprintf_internal.constprop.0+0x6f8>
    80061c0e:	b7e5                	j	80061bf6 <vsprintf_internal.constprop.0+0x862>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1262
              stream_putc(' ', stream);
    80061c10:	008c3783          	ld	a5,8(s8)
    80061c14:	02000593          	li	a1,32
    80061c18:	8562                	mv	a0,s8
    80061c1a:	2985                	addiw	s3,s3,1
    80061c1c:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1263
              len++;
    80061c1e:	0089873b          	addw	a4,s3,s0
    80061c22:	0ff77793          	zext.b	a5,a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1260
          while (len < width)
    80061c26:	ff97c5e3          	blt	a5,s9,80061c10 <vsprintf_internal.constprop.0+0x87c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1267
      width = (len < width) ? width - len : 0;
    80061c2a:	0007871b          	sext.w	a4,a5
    80061c2e:	4901                	li	s2,0
    80061c30:	01975463          	bge	a4,s9,80061c38 <vsprintf_internal.constprop.0+0x8a4>
    80061c34:	40ec893b          	subw	s2,s9,a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1269
      if ((flags & FL_ALT) != 0)
    80061c38:	010df793          	andi	a5,s11,16
    80061c3c:	cba9                	beqz	a5,80061c8e <vsprintf_internal.constprop.0+0x8fa>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1271
          stream_putc('0', stream);
    80061c3e:	008c3783          	ld	a5,8(s8)
    80061c42:	03000593          	li	a1,48
    80061c46:	8562                	mv	a0,s8
    80061c48:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1272
          if ((flags & FL_ALTHEX) != 0)
    80061c4a:	6791                	lui	a5,0x4
    80061c4c:	00fdf7b3          	and	a5,s11,a5
    80061c50:	e38d                	bnez	a5,80061c72 <vsprintf_internal.constprop.0+0x8de>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1271
          stream_putc('0', stream);
    80061c52:	2985                	addiw	s3,s3,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1287
              z = '-';
    80061c54:	8426                	mv	s0,s1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1293
      while (prec > c)
    80061c56:	068ac463          	blt	s5,s0,80061cbe <vsprintf_internal.constprop.0+0x92a>
    80061c5a:	4781                	li	a5,0
    80061c5c:	0154c463          	blt	s1,s5,80061c64 <vsprintf_internal.constprop.0+0x8d0>
    80061c60:	414487bb          	subw	a5,s1,s4
    80061c64:	013789bb          	addw	s3,a5,s3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1299
      while (c)
    80061c68:	060a1363          	bnez	s4,80061cce <vsprintf_internal.constprop.0+0x93a>
    80061c6c:	015989bb          	addw	s3,s3,s5
    80061c70:	b221                	j	80061578 <vsprintf_internal.constprop.0+0x1e4>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1274
              stream_putc(flags & FL_ALTUPP ? 'X' : 'x', stream);
    80061c72:	6789                	lui	a5,0x2
    80061c74:	00fdf7b3          	and	a5,s11,a5
    80061c78:	008c3703          	ld	a4,8(s8)
    80061c7c:	2989                	addiw	s3,s3,2
    80061c7e:	05800593          	li	a1,88
    80061c82:	e399                	bnez	a5,80061c88 <vsprintf_internal.constprop.0+0x8f4>
    80061c84:	07800593          	li	a1,120
    80061c88:	8562                	mv	a0,s8
    80061c8a:	9702                	jalr	a4
    80061c8c:	b7e1                	j	80061c54 <vsprintf_internal.constprop.0+0x8c0>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1277
      else if ((flags & (FL_NEGATIVE | FL_PLUS | FL_SPACE)) != 0)
    80061c8e:	6785                	lui	a5,0x1
    80061c90:	0799                	addi	a5,a5,6
    80061c92:	00fdf7b3          	and	a5,s11,a5
    80061c96:	dfdd                	beqz	a5,80061c54 <vsprintf_internal.constprop.0+0x8c0>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1280
          if ((flags & FL_PLUS) != 0)
    80061c98:	002df793          	andi	a5,s11,2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1279
          unsigned char z = ' ';
    80061c9c:	02000593          	li	a1,32
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1280
          if ((flags & FL_PLUS) != 0)
    80061ca0:	c399                	beqz	a5,80061ca6 <vsprintf_internal.constprop.0+0x912>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1282
              z = '+';
    80061ca2:	02b00593          	li	a1,43
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1285
          if ((flags & FL_NEGATIVE) != 0)
    80061ca6:	6785                	lui	a5,0x1
    80061ca8:	00fdf7b3          	and	a5,s11,a5
    80061cac:	c399                	beqz	a5,80061cb2 <vsprintf_internal.constprop.0+0x91e>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1287
              z = '-';
    80061cae:	02d00593          	li	a1,45
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1290
          stream_putc(z, stream);
    80061cb2:	008c3783          	ld	a5,8(s8)
    80061cb6:	8562                	mv	a0,s8
    80061cb8:	2985                	addiw	s3,s3,1
    80061cba:	9782                	jalr	a5
    80061cbc:	bf61                	j	80061c54 <vsprintf_internal.constprop.0+0x8c0>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1295
          stream_putc('0', stream);
    80061cbe:	008c3783          	ld	a5,8(s8)
    80061cc2:	03000593          	li	a1,48
    80061cc6:	8562                	mv	a0,s8
    80061cc8:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1296
          prec--;
    80061cca:	347d                	addiw	s0,s0,-1
    80061ccc:	b769                	j	80061c56 <vsprintf_internal.constprop.0+0x8c2>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1301
          stream_putc(buf[--c], stream);
    80061cce:	fffa079b          	addiw	a5,s4,-1
    80061cd2:	0098                	addi	a4,sp,64
    80061cd4:	0ff7fa13          	zext.b	s4,a5
    80061cd8:	014707b3          	add	a5,a4,s4
    80061cdc:	fe87c583          	lbu	a1,-24(a5) # fe8 <asinh-0x7ffff018>
    80061ce0:	008c3703          	ld	a4,8(s8)
    80061ce4:	8562                	mv	a0,s8
    80061ce6:	9702                	jalr	a4
    80061ce8:	b741                	j	80061c68 <vsprintf_internal.constprop.0+0x8d4>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1310
          stream_putc(' ', stream);
    80061cea:	008c3783          	ld	a5,8(s8)
    80061cee:	02000593          	li	a1,32
    80061cf2:	8562                	mv	a0,s8
    80061cf4:	9782                	jalr	a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1311
          width--;
    80061cf6:	347d                	addiw	s0,s0,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1308
      while (width)
    80061cf8:	f86d                	bnez	s0,80061cea <vsprintf_internal.constprop.0+0x956>
    80061cfa:	0139043b          	addw	s0,s2,s3
    80061cfe:	8a5a                	mv	s4,s6
    80061d00:	6982                	ld	s3,0(sp)
    80061d02:	ec8ff06f          	j	800613ca <vsprintf_internal.constprop.0+0x36>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1317
}
    80061d06:	70aa                	ld	ra,168(sp)
    80061d08:	8522                	mv	a0,s0
    80061d0a:	740a                	ld	s0,160(sp)
    80061d0c:	64ea                	ld	s1,152(sp)
    80061d0e:	694a                	ld	s2,144(sp)
    80061d10:	69aa                	ld	s3,136(sp)
    80061d12:	6a0a                	ld	s4,128(sp)
    80061d14:	7ae6                	ld	s5,120(sp)
    80061d16:	7b46                	ld	s6,112(sp)
    80061d18:	7ba6                	ld	s7,104(sp)
    80061d1a:	7c06                	ld	s8,96(sp)
    80061d1c:	6ce6                	ld	s9,88(sp)
    80061d1e:	6d46                	ld	s10,80(sp)
    80061d20:	6da6                	ld	s11,72(sp)
    80061d22:	614d                	addi	sp,sp,176
    80061d24:	8082                	ret

0000000080061d26 <lib_sprintf_internal>:
lib_sprintf_internal():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1380
{
    80061d26:	715d                	addi	sp,sp,-80
    80061d28:	f032                	sd	a2,32(sp)
    80061d2a:	f436                	sd	a3,40(sp)
    80061d2c:	f83a                	sd	a4,48(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1387
  n = vsprintf_internal(stream, NULL, 0, fmt, ap);
    80061d2e:	86ae                	mv	a3,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1386
  va_start(ap, fmt);
    80061d30:	1018                	addi	a4,sp,32
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1387
  n = vsprintf_internal(stream, NULL, 0, fmt, ap);
    80061d32:	4601                	li	a2,0
    80061d34:	4581                	li	a1,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1380
{
    80061d36:	ec06                	sd	ra,24(sp)
    80061d38:	fc3e                	sd	a5,56(sp)
    80061d3a:	e0c2                	sd	a6,64(sp)
    80061d3c:	e4c6                	sd	a7,72(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1386
  va_start(ap, fmt);
    80061d3e:	e43a                	sd	a4,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1387
  n = vsprintf_internal(stream, NULL, 0, fmt, ap);
    80061d40:	e54ff0ef          	jal	ra,80061394 <vsprintf_internal.constprop.0>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_libvsprintf.c:1391
}
    80061d44:	60e2                	ld	ra,24(sp)
    80061d46:	6161                	addi	sp,sp,80
    80061d48:	8082                	ret

0000000080061d4a <remove>:
remove():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_remove.c:53
 *   For returned errno values, see unlink or rmdir.
 *
 ****************************************************************************/

int remove(FAR const char *path)
{
    80061d4a:	1141                	addi	sp,sp,-16
    80061d4c:	e022                	sd	s0,0(sp)
    80061d4e:	e406                	sd	ra,8(sp)
    80061d50:	842a                	mv	s0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_remove.c:58
  /* First try to unlink since this is
   * more frequently the necessary action.
   */

  if (unlink(path) != 0     && /* If it is indeed a directory...  */
    80061d52:	447020ef          	jal	ra,80064998 <unlink>
    80061d56:	cd19                	beqz	a0,80061d74 <remove+0x2a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_remove.c:59 (discriminator 1)
      (get_errno() != EPERM || /* ...try to remove it.  */
    80061d58:	cc1fe0ef          	jal	ra,80060a18 <__errno>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_remove.c:58 (discriminator 1)
  if (unlink(path) != 0     && /* If it is indeed a directory...  */
    80061d5c:	4118                	lw	a4,0(a0)
    80061d5e:	4785                	li	a5,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_remove.c:64 (discriminator 1)
       rmdir(path) != 0))
    {
      /* Cannot remove the object for whatever reason. */

      return -1;
    80061d60:	557d                	li	a0,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_remove.c:58 (discriminator 1)
  if (unlink(path) != 0     && /* If it is indeed a directory...  */
    80061d62:	00f71963          	bne	a4,a5,80061d74 <remove+0x2a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_remove.c:60
       rmdir(path) != 0))
    80061d66:	8522                	mv	a0,s0
    80061d68:	3a5020ef          	jal	ra,8006490c <rmdir>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_remove.c:59
      (get_errno() != EPERM || /* ...try to remove it.  */
    80061d6c:	00a03533          	snez	a0,a0
    80061d70:	40a00533          	neg	a0,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_remove.c:68
    }

  return 0;
}
    80061d74:	60a2                	ld	ra,8(sp)
    80061d76:	6402                	ld	s0,0(sp)
    80061d78:	0141                	addi	sp,sp,16
    80061d7a:	8082                	ret

0000000080061d7c <__ultoa_invert>:
__ultoa_invert():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ultoa_invert.c:54
FAR char *__ultoa_invert(unsigned long val, FAR char *str, int base)
#endif
{
  int upper = 0;

  if (base & XTOA_UPPER)
    80061d7c:	20067693          	andi	a3,a2,512
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ultoa_invert.c:51
{
    80061d80:	872a                	mv	a4,a0
    80061d82:	852e                	mv	a0,a1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ultoa_invert.c:54
  if (base & XTOA_UPPER)
    80061d84:	c681                	beqz	a3,80061d8c <__ultoa_invert+0x10>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ultoa_invert.c:57
    {
      upper = 1;
      base &= ~XTOA_UPPER;
    80061d86:	dff67613          	andi	a2,a2,-513
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ultoa_invert.c:56
      upper = 1;
    80061d8a:	4685                	li	a3,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ultoa_invert.c:67
      int v;

      v   = val % base;
      val = val / base;

      if (v <= 9)
    80061d8c:	4825                	li	a6,9
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ultoa_invert.c:64
      v   = val % base;
    80061d8e:	02c777b3          	remu	a5,a4,a2
    80061d92:	85ba                	mv	a1,a4
    80061d94:	2781                	sext.w	a5,a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ultoa_invert.c:65
      val = val / base;
    80061d96:	02c75733          	divu	a4,a4,a2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ultoa_invert.c:67
      if (v <= 9)
    80061d9a:	00f84a63          	blt	a6,a5,80061dae <__ultoa_invert+0x32>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ultoa_invert.c:69
        {
          v += '0';
    80061d9e:	0307879b          	addiw	a5,a5,48
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ultoa_invert.c:79
            v += 'A' - 10;
          else
            v += 'a' - 10;
        }

      *str++ = v;
    80061da2:	00f50023          	sb	a5,0(a0)
    80061da6:	0505                	addi	a0,a0,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ultoa_invert.c:81
    }
  while (val);
    80061da8:	fec5f3e3          	bgeu	a1,a2,80061d8e <__ultoa_invert+0x12>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ultoa_invert.c:84

  return str;
}
    80061dac:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ultoa_invert.c:73
          if (upper)
    80061dae:	c681                	beqz	a3,80061db6 <__ultoa_invert+0x3a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ultoa_invert.c:74
            v += 'A' - 10;
    80061db0:	0377879b          	addiw	a5,a5,55
    80061db4:	b7fd                	j	80061da2 <__ultoa_invert+0x26>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_ultoa_invert.c:76
            v += 'a' - 10;
    80061db6:	0577879b          	addiw	a5,a5,87
    80061dba:	b7e5                	j	80061da2 <__ultoa_invert+0x26>

0000000080061dbc <__dtoa_engine>:
__dtoa_engine():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:67
 * Public Functions
 ****************************************************************************/

int __dtoa_engine(double x, FAR struct dtoa_s *dtoa, int max_digits,
                  int max_decimals)
{
    80061dbc:	7179                	addi	sp,sp,-48
    80061dbe:	a42a                	fsd	fa0,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:72
  int32_t exp = 0;
  uint8_t flags = 0;
  int i;

  if (__builtin_signbit(x))
    80061dc0:	67a2                	ld	a5,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:67
{
    80061dc2:	f022                	sd	s0,32(sp)
    80061dc4:	ec26                	sd	s1,24(sp)
    80061dc6:	e84a                	sd	s2,16(sp)
    80061dc8:	f406                	sd	ra,40(sp)
    80061dca:	892a                	mv	s2,a0
    80061dcc:	842e                	mv	s0,a1
    80061dce:	4481                	li	s1,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:72
  if (__builtin_signbit(x))
    80061dd0:	0007d663          	bgez	a5,80061ddc <__dtoa_engine+0x20>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:75
    {
      flags |= DTOA_MINUS;
      x = -x;
    80061dd4:	22a517d3          	fneg.d	fa5,fa0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:74
      flags |= DTOA_MINUS;
    80061dd8:	4485                	li	s1,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:75
      x = -x;
    80061dda:	a43e                	fsd	fa5,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:78
    }

  if (x == 0)
    80061ddc:	f20007d3          	fmv.d.x	fa5,zero
    80061de0:	2722                	fld	fa4,8(sp)
    80061de2:	a2f727d3          	feq.d	a5,fa4,fa5
    80061de6:	cf95                	beqz	a5,80061e22 <__dtoa_engine+0x66>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:80
    {
      flags |= DTOA_ZERO;
    80061de8:	0024e493          	ori	s1,s1,2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:82
      for (i = 0; i < max_digits; i++)
        dtoa->digits[i] = '0';
    80061dec:	0004061b          	sext.w	a2,s0
    80061df0:	00045363          	bgez	s0,80061df6 <__dtoa_engine+0x3a>
    80061df4:	4601                	li	a2,0
    80061df6:	03000593          	li	a1,48
    80061dfa:	00590513          	addi	a0,s2,5
    80061dfe:	645010ef          	jal	ra,80063c42 <memset>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:68
  int32_t exp = 0;
    80061e02:	4781                	li	a5,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:165
          mant %= decimal;
          decimal /= 10;
        }
    }

  dtoa->digits[max_digits] = '\0';
    80061e04:	00890733          	add	a4,s2,s0
    80061e08:	000702a3          	sb	zero,5(a4) # 1005 <asinh-0x7fffeffb>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:169
  dtoa->flags = flags;
  dtoa->exp = exp;
  return max_digits;
}
    80061e0c:	70a2                	ld	ra,40(sp)
    80061e0e:	8522                	mv	a0,s0
    80061e10:	7402                	ld	s0,32(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:166
  dtoa->flags = flags;
    80061e12:	00990223          	sb	s1,4(s2)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:167
  dtoa->exp = exp;
    80061e16:	00f92023          	sw	a5,0(s2)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:169
}
    80061e1a:	64e2                	ld	s1,24(sp)
    80061e1c:	6942                	ld	s2,16(sp)
    80061e1e:	6145                	addi	sp,sp,48
    80061e20:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:84
  else if (isnan(x))
    80061e22:	27a2                	fld	fa5,8(sp)
    80061e24:	a2f7a7d3          	feq.d	a5,fa5,fa5
    80061e28:	e781                	bnez	a5,80061e30 <__dtoa_engine+0x74>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:86
      flags |= DTOA_NAN;
    80061e2a:	0084e493          	ori	s1,s1,8
    80061e2e:	bfd1                	j	80061e02 <__dtoa_engine+0x46>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:88
  else if (isinf(x))
    80061e30:	27a2                	fld	fa5,8(sp)
    80061e32:	00032797          	auipc	a5,0x32
    80061e36:	eee7b707          	fld	fa4,-274(a5) # 80093d20 <_erodata+0x1ae>
    80061e3a:	22f7a7d3          	fabs.d	fa5,fa5
    80061e3e:	00102773          	frflags	a4
    80061e42:	a2f717d3          	flt.d	a5,fa4,fa5
    80061e46:	00171073          	fsflags	a4
    80061e4a:	c781                	beqz	a5,80061e52 <__dtoa_engine+0x96>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:90
      flags |= DTOA_INF;
    80061e4c:	0044e493          	ori	s1,s1,4
    80061e50:	bf4d                	j	80061e02 <__dtoa_engine+0x46>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:102
      if (x < MIN_MANT)
    80061e52:	27a2                	fld	fa5,8(sp)
    80061e54:	00032797          	auipc	a5,0x32
    80061e58:	ed47b707          	fld	fa4,-300(a5) # 80093d28 <_erodata+0x1b6>
    80061e5c:	a2e797d3          	flt.d	a5,fa5,fa4
    80061e60:	cfd5                	beqz	a5,80061f1c <__dtoa_engine+0x160>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:107
              if (y < MAX_MANT)
    80061e62:	00032597          	auipc	a1,0x32
    80061e66:	ece5b707          	fld	fa4,-306(a1) # 80093d30 <_erodata+0x1be>
    80061e6a:	00030697          	auipc	a3,0x30
    80061e6e:	2ce68693          	addi	a3,a3,718 # 80092138 <g_dtoa_scale_up>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:104
          for (i = DTOA_SCALE_UP_NUM - 1; i >= 0; i--)
    80061e72:	4721                	li	a4,8
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:96
      exp = MIN_MANT_EXP;
    80061e74:	47bd                	li	a5,15
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:110
                  exp -= (1 << i);
    80061e76:	4505                	li	a0,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:104
          for (i = DTOA_SCALE_UP_NUM - 1; i >= 0; i--)
    80061e78:	55fd                	li	a1,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:106
              y = x * g_dtoa_scale_up[i];
    80061e7a:	22bc                	fld	fa5,64(a3)
    80061e7c:	26a2                	fld	fa3,8(sp)
    80061e7e:	12f6f7d3          	fmul.d	fa5,fa3,fa5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:107
              if (y < MAX_MANT)
    80061e82:	a2e79853          	flt.d	a6,fa5,fa4
    80061e86:	00080763          	beqz	a6,80061e94 <__dtoa_engine+0xd8>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:110
                  exp -= (1 << i);
    80061e8a:	00e5183b          	sllw	a6,a0,a4
    80061e8e:	410787bb          	subw	a5,a5,a6
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:109
                  x = y;
    80061e92:	a43e                	fsd	fa5,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:104 (discriminator 2)
          for (i = DTOA_SCALE_UP_NUM - 1; i >= 0; i--)
    80061e94:	377d                	addiw	a4,a4,-1
    80061e96:	16e1                	addi	a3,a3,-8
    80061e98:	feb711e3          	bne	a4,a1,80061e7a <__dtoa_engine+0xbe>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:133
      if (max_decimals != 0)
    80061e9c:	ce09                	beqz	a2,80061eb6 <__dtoa_engine+0xfa>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:135
          max_digits = MIN(max_digits, max_decimals + MAX(exp + 1, 0));
    80061e9e:	873e                	mv	a4,a5
    80061ea0:	0007d363          	bgez	a5,80061ea6 <__dtoa_engine+0xea>
    80061ea4:	577d                	li	a4,-1
    80061ea6:	2705                	addiw	a4,a4,1
    80061ea8:	9f31                	addw	a4,a4,a2
    80061eaa:	863a                	mv	a2,a4
    80061eac:	00e45363          	bge	s0,a4,80061eb2 <__dtoa_engine+0xf6>
    80061eb0:	8622                	mv	a2,s0
    80061eb2:	0006041b          	sext.w	s0,a2
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:142
      x = x + g_dtoa_round[max_digits];
    80061eb6:	00341693          	slli	a3,s0,0x3
    80061eba:	00030717          	auipc	a4,0x30
    80061ebe:	1b670713          	addi	a4,a4,438 # 80092070 <g_dtoa_round>
    80061ec2:	9736                	add	a4,a4,a3
    80061ec4:	231c                	fld	fa5,0(a4)
    80061ec6:	2722                	fld	fa4,8(sp)
    80061ec8:	02f777d3          	fadd.d	fa5,fa4,fa5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:144
      if (x >= MAX_MANT)
    80061ecc:	00032717          	auipc	a4,0x32
    80061ed0:	e6473707          	fld	fa4,-412(a4) # 80093d30 <_erodata+0x1be>
    80061ed4:	a2f70753          	fle.d	a4,fa4,fa5
    80061ed8:	cb01                	beqz	a4,80061ee8 <__dtoa_engine+0x12c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:146
          x /= 10.0;
    80061eda:	00032717          	auipc	a4,0x32
    80061ede:	e5e73707          	fld	fa4,-418(a4) # 80093d38 <_erodata+0x1c6>
    80061ee2:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:147
          exp++;
    80061ee6:	2785                	addiw	a5,a5,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:152
      uint64_t mant = (uint64_t)x;
    80061ee8:	c2379653          	fcvt.lu.d	a2,fa5,rtz
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:157
      for (i = 0; i < max_digits; i++)
    80061eec:	4701                	li	a4,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:153
      uint64_t decimal = MIN_MANT_INT;
    80061eee:	00032697          	auipc	a3,0x32
    80061ef2:	e2a6b683          	ld	a3,-470(a3) # 80093d18 <_erodata+0x1a6>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:161
          decimal /= 10;
    80061ef6:	4529                	li	a0,10
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:157 (discriminator 1)
      for (i = 0; i < max_digits; i++)
    80061ef8:	0007059b          	sext.w	a1,a4
    80061efc:	f085d4e3          	bge	a1,s0,80061e04 <__dtoa_engine+0x48>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:159 (discriminator 3)
          dtoa->digits[i] = mant / decimal + '0';
    80061f00:	02d655b3          	divu	a1,a2,a3
    80061f04:	00e90833          	add	a6,s2,a4
    80061f08:	0705                	addi	a4,a4,1
    80061f0a:	0305859b          	addiw	a1,a1,48
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:160 (discriminator 3)
          mant %= decimal;
    80061f0e:	02d67633          	remu	a2,a2,a3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:159 (discriminator 3)
          dtoa->digits[i] = mant / decimal + '0';
    80061f12:	00b802a3          	sb	a1,5(a6)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:161 (discriminator 3)
          decimal /= 10;
    80061f16:	02a6d6b3          	divu	a3,a3,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:157 (discriminator 3)
      for (i = 0; i < max_digits; i++)
    80061f1a:	bff9                	j	80061ef8 <__dtoa_engine+0x13c>
    80061f1c:	00030697          	auipc	a3,0x30
    80061f20:	1d468693          	addi	a3,a3,468 # 800920f0 <g_dtoa_scale_down>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:116
          for (i = DTOA_SCALE_DOWN_NUM - 1; i >= 0; i--)
    80061f24:	4721                	li	a4,8
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:96
      exp = MIN_MANT_EXP;
    80061f26:	47bd                	li	a5,15
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:122
                  exp += (1 << i);
    80061f28:	4505                	li	a0,1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:116
          for (i = DTOA_SCALE_DOWN_NUM - 1; i >= 0; i--)
    80061f2a:	55fd                	li	a1,-1
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:118
              y = x * g_dtoa_scale_down[i];
    80061f2c:	22bc                	fld	fa5,64(a3)
    80061f2e:	26a2                	fld	fa3,8(sp)
    80061f30:	12f6f7d3          	fmul.d	fa5,fa3,fa5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:119
              if (y >= MIN_MANT)
    80061f34:	a2f70853          	fle.d	a6,fa4,fa5
    80061f38:	00080763          	beqz	a6,80061f46 <__dtoa_engine+0x18a>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:122
                  exp += (1 << i);
    80061f3c:	00e5183b          	sllw	a6,a0,a4
    80061f40:	00f807bb          	addw	a5,a6,a5
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:121
                  x = y;
    80061f44:	a43e                	fsd	fa5,8(sp)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_dtoa_engine.c:116 (discriminator 2)
          for (i = DTOA_SCALE_DOWN_NUM - 1; i >= 0; i--)
    80061f46:	377d                	addiw	a4,a4,-1
    80061f48:	16e1                	addi	a3,a3,-8
    80061f4a:	feb711e3          	bne	a4,a1,80061f2c <__dtoa_engine+0x170>
    80061f4e:	b7b9                	j	80061e9c <__dtoa_engine+0xe0>

0000000080061f50 <lib_mode2oflags>:
lib_mode2oflags():
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:215
/****************************************************************************
 * Name: lib_mode2oflags
 ****************************************************************************/

int lib_mode2oflags(FAR const char *mode)
{
    80061f50:	1141                	addi	sp,sp,-16
    80061f52:	e406                	sd	ra,8(sp)
    80061f54:	86aa                	mv	a3,a0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:221
  unsigned int state;
  int oflags;

  /* Verify that a mode string was provided.  */

  DEBUGASSERT(mode);
    80061f56:	c11d                	beqz	a0,80061f7c <lib_mode2oflags+0x2c>
    80061f58:	4501                	li	a0,0
    80061f5a:	4781                	li	a5,0
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:230
  state  = MODE_NONE;
  oflags = 0;

  for (; *mode; mode++)
    {
      switch (*mode)
    80061f5c:	02b00813          	li	a6,43
    80061f60:	4889                	li	a7,2
    80061f62:	4311                	li	t1,4
    80061f64:	4605                	li	a2,1
    80061f66:	4e5d                	li	t3,23
    80061f68:	00030597          	auipc	a1,0x30
    80061f6c:	22c58593          	addi	a1,a1,556 # 80092194 <g_dtoa_scale_up+0x5c>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:228
  for (; *mode; mode++)
    80061f70:	0006c703          	lbu	a4,0(a3)
    80061f74:	e305                	bnez	a4,80061f94 <lib_mode2oflags+0x44>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:415
 */

errout:
  set_errno(EINVAL);
  return ERROR;
}
    80061f76:	60a2                	ld	ra,8(sp)
    80061f78:	0141                	addi	sp,sp,16
    80061f7a:	8082                	ret
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:221 (discriminator 1)
  DEBUGASSERT(mode);
    80061f7c:	0000a617          	auipc	a2,0xa
    80061f80:	b2c60613          	addi	a2,a2,-1236 # 8006baa8 <qjsc_repl+0x64f8>
    80061f84:	0dd00593          	li	a1,221
    80061f88:	00030517          	auipc	a0,0x30
    80061f8c:	1f850513          	addi	a0,a0,504 # 80092180 <g_dtoa_scale_up+0x48>
    80061f90:	9cdfe0ef          	jal	ra,8006095c <__assert>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:230
      switch (*mode)
    80061f94:	03070e63          	beq	a4,a6,80061fd0 <lib_mode2oflags+0x80>
    80061f98:	f9f7071b          	addiw	a4,a4,-97
    80061f9c:	0ff77713          	zext.b	a4,a4
    80061fa0:	00ee6863          	bltu	t3,a4,80061fb0 <lib_mode2oflags+0x60>
    80061fa4:	070a                	slli	a4,a4,0x2
    80061fa6:	972e                	add	a4,a4,a1
    80061fa8:	4318                	lw	a4,0(a4)
    80061faa:	972e                	add	a4,a4,a1
    80061fac:	8702                	jr	a4
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:235
            if (state == MODE_NONE)
    80061fae:	cbb5                	beqz	a5,80062022 <lib_mode2oflags+0xd2>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:413
  set_errno(EINVAL);
    80061fb0:	a69fe0ef          	jal	ra,80060a18 <__errno>
    80061fb4:	47d9                	li	a5,22
    80061fb6:	c11c                	sw	a5,0(a0)
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:414
  return ERROR;
    80061fb8:	557d                	li	a0,-1
    80061fba:	bf75                	j	80061f76 <lib_mode2oflags+0x26>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:251
            if (state == MODE_NONE)
    80061fbc:	fbf5                	bnez	a5,80061fb0 <lib_mode2oflags+0x60>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:255
                oflags = O_WROK | O_CREAT | O_TRUNC | O_TEXT;
    80061fbe:	12600513          	li	a0,294
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:256
                state  = MODE_W;
    80061fc2:	4789                	li	a5,2
    80061fc4:	a005                	j	80061fe4 <lib_mode2oflags+0x94>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:267
            if (state == MODE_NONE)
    80061fc6:	f7ed                	bnez	a5,80061fb0 <lib_mode2oflags+0x60>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:271
                oflags = O_WROK | O_CREAT | O_APPEND | O_TEXT;
    80061fc8:	11600513          	li	a0,278
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:272
                state  = MODE_A;
    80061fcc:	4791                	li	a5,4
    80061fce:	a819                	j	80061fe4 <lib_mode2oflags+0x94>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:283
            switch (state & MODE_MASK)
    80061fd0:	01178c63          	beq	a5,a7,80061fe8 <lib_mode2oflags+0x98>
    80061fd4:	00678f63          	beq	a5,t1,80061ff2 <lib_mode2oflags+0xa2>
    80061fd8:	fcc79ce3          	bne	a5,a2,80061fb0 <lib_mode2oflags+0x60>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:289
                    oflags &= FLAG_KEEP;
    80061fdc:	50857513          	andi	a0,a0,1288
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:293
                    oflags |= O_RDWR;
    80061fe0:	00356513          	ori	a0,a0,3
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:228
  for (; *mode; mode++)
    80061fe4:	0685                	addi	a3,a3,1
    80061fe6:	b769                	j	80061f70 <lib_mode2oflags+0x20>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:301
                    oflags &= FLAG_KEEP;
    80061fe8:	50857513          	andi	a0,a0,1288
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:307
                    oflags |= O_RDWR | O_CREAT | O_TRUNC;
    80061fec:	02756513          	ori	a0,a0,39
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:309
                  break;
    80061ff0:	bfd5                	j	80061fe4 <lib_mode2oflags+0x94>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:315
                    oflags &= FLAG_KEEP;
    80061ff2:	50857513          	andi	a0,a0,1288
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:321
                    oflags |= O_RDWR | O_CREAT | O_APPEND;
    80061ff6:	01756513          	ori	a0,a0,23
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:323
                  break;
    80061ffa:	b7ed                	j	80061fe4 <lib_mode2oflags+0x94>
/Users/Luppy/ox64/nuttx/libs/libc/stdio/lib_fopen.c:333
            if (state != MODE_R)
    80061ffc:	fec784e3          	beq	a5,a2,80061fe4 <lib_mode2oflags+0x94>
