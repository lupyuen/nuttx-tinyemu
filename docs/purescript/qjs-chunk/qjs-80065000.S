    80064000:	03000713          	li	a4,48
    80064004:	02a74763          	blt	a4,a0,80064032 <sysconf+0x3c>
    80064008:	4759                	li	a4,22
nuttx/libs/libc/unistd/lib_sysconf.c:239

      case _SC_OPEN_MAX:
        return OPEN_MAX;

      case _SC_ATEXIT_MAX:
        return ATEXIT_MAX;
    8006400a:	4501                	li	a0,0
nuttx/libs/libc/unistd/lib_sysconf.c:216
  switch (name)
    8006400c:	0ae78463          	beq	a5,a4,800640b4 <sysconf+0xbe>
    80064010:	04f74463          	blt	a4,a5,80064058 <sysconf+0x62>
    80064014:	4749                	li	a4,18
    80064016:	4505                	li	a0,1
    80064018:	08e78e63          	beq	a5,a4,800640b4 <sysconf+0xbe>
nuttx/libs/libc/unistd/lib_sysconf.c:207
{
    8006401c:	1141                	addi	sp,sp,-16
    8006401e:	e406                	sd	ra,8(sp)
nuttx/libs/libc/unistd/lib_sysconf.c:268
        errcode = ENOSYS;
#endif
        break;
    }

  set_errno(errcode);
    80064020:	9f9fc0ef          	jal	ra,80060a18 <__errno>
    80064024:	02600793          	li	a5,38
    80064028:	c11c                	sw	a5,0(a0)
nuttx/libs/libc/unistd/lib_sysconf.c:270
  return ERROR;
}
    8006402a:	60a2                	ld	ra,8(sp)
nuttx/libs/libc/unistd/lib_sysconf.c:269
  return ERROR;
    8006402c:	557d                	li	a0,-1
nuttx/libs/libc/unistd/lib_sysconf.c:270
}
    8006402e:	0141                	addi	sp,sp,16
    80064030:	8082                	ret
    80064032:	fcf5079b          	addiw	a5,a0,-49
    80064036:	0007869b          	sext.w	a3,a5
    8006403a:	472d                	li	a4,11
    8006403c:	fed760e3          	bltu	a4,a3,8006401c <sysconf+0x26>
    80064040:	02079713          	slli	a4,a5,0x20
    80064044:	01e75793          	srli	a5,a4,0x1e
    80064048:	00030717          	auipc	a4,0x30
    8006404c:	aa070713          	addi	a4,a4,-1376 # 80093ae8 <g_errnomap+0x8b0>
    80064050:	97ba                	add	a5,a5,a4
    80064052:	439c                	lw	a5,0(a5)
    80064054:	97ba                	add	a5,a5,a4
    80064056:	8782                	jr	a5
nuttx/libs/libc/unistd/lib_sysconf.c:216
  switch (name)
    80064058:	4775                	li	a4,29
nuttx/libs/libc/unistd/lib_sysconf.c:233
        return CLOCKS_PER_SEC;
    8006405a:	3e800513          	li	a0,1000
nuttx/libs/libc/unistd/lib_sysconf.c:216
  switch (name)
    8006405e:	04e78b63          	beq	a5,a4,800640b4 <sysconf+0xbe>
nuttx/libs/libc/unistd/lib_sysconf.c:223
        return _POSIX_PRIORITIZED_IO;
    80064062:	00031537          	lui	a0,0x31
nuttx/libs/libc/unistd/lib_sysconf.c:216
  switch (name)
    80064066:	02000713          	li	a4,32
nuttx/libs/libc/unistd/lib_sysconf.c:223
        return _POSIX_PRIORITIZED_IO;
    8006406a:	3f050513          	addi	a0,a0,1008 # 313f0 <asinh-0x7ffcec10>
    8006406e:	b76d                	j	80064018 <sysconf+0x22>
nuttx/libs/libc/unistd/lib_sysconf.c:216
  switch (name)
    80064070:	05900713          	li	a4,89
nuttx/libs/libc/unistd/lib_sysconf.c:257
        return UINT8_MAX;
    80064074:	0ff00513          	li	a0,255
nuttx/libs/libc/unistd/lib_sysconf.c:216
  switch (name)
    80064078:	02e78e63          	beq	a5,a4,800640b4 <sysconf+0xbe>
    8006407c:	00f74b63          	blt	a4,a5,80064092 <sysconf+0x9c>
    80064080:	04f00713          	li	a4,79
    80064084:	02e78363          	beq	a5,a4,800640aa <sysconf+0xb4>
    80064088:	05800713          	li	a4,88
nuttx/libs/libc/unistd/lib_sysconf.c:236
        return OPEN_MAX;
    8006408c:	10000513          	li	a0,256
    80064090:	b761                	j	80064018 <sysconf+0x22>
nuttx/libs/libc/unistd/lib_sysconf.c:216
  switch (name)
    80064092:	f837879b          	addiw	a5,a5,-125
    80064096:	4705                	li	a4,1
    80064098:	f8f762e3          	bltu	a4,a5,8006401c <sysconf+0x26>
    8006409c:	4505                	li	a0,1
    8006409e:	8082                	ret
nuttx/libs/libc/unistd/lib_sysconf.c:236
        return OPEN_MAX;
    800640a0:	10000513          	li	a0,256
    800640a4:	8082                	ret
nuttx/libs/libc/unistd/lib_sysconf.c:249
        return DEFAULT_MM_PGSIZE;
    800640a6:	6505                	lui	a0,0x1
    800640a8:	8082                	ret
nuttx/libs/libc/unistd/lib_sysconf.c:223
        return _POSIX_PRIORITIZED_IO;
    800640aa:	00031537          	lui	a0,0x31
    800640ae:	3f050513          	addi	a0,a0,1008 # 313f0 <asinh-0x7ffcec10>
    800640b2:	8082                	ret
nuttx/libs/libc/unistd/lib_sysconf.c:270
}
    800640b4:	8082                	ret

00000000800640b6 <getoptindp>:
getoptindp():
nuttx/libs/libc/unistd/lib_getoptindp.c:45
 *   modules that need to access the base, global variable, optind.
 *
 ****************************************************************************/

int *getoptindp(void)
{
    800640b6:	1141                	addi	sp,sp,-16
    800640b8:	e406                	sd	ra,8(sp)
nuttx/libs/libc/unistd/lib_getoptindp.c:46
  FAR struct getopt_s *go = getoptvars();
    800640ba:	53e000ef          	jal	ra,800645f8 <getoptvars>
nuttx/libs/libc/unistd/lib_getoptindp.c:48
  return &go->go_optind;
}
    800640be:	60a2                	ld	ra,8(sp)
    800640c0:	0531                	addi	a0,a0,12
    800640c2:	0141                	addi	sp,sp,16
    800640c4:	8082                	ret

00000000800640c6 <utimes>:
utimes():
nuttx/libs/libc/unistd/lib_utimes.c:39

int utimes(FAR const char *path, const struct timeval tv[2])
{
  struct timespec times[2];

  if (tv == NULL)
    800640c6:	e199                	bnez	a1,800640cc <utimes+0x6>
nuttx/libs/libc/unistd/lib_utimes.c:41
    {
      return utimens(path, NULL);
    800640c8:	0ff0006f          	j	800649c6 <utimens>
nuttx/libs/libc/unistd/lib_utimes.c:36
{
    800640cc:	7179                	addi	sp,sp,-48
    800640ce:	f406                	sd	ra,40(sp)
nuttx/libs/libc/unistd/lib_utimes.c:44
    }

  times[0].tv_sec  = tv[0].tv_sec;
    800640d0:	4198                	lw	a4,0(a1)
nuttx/libs/libc/unistd/lib_utimes.c:45
  times[0].tv_nsec = tv[0].tv_usec * 1000;
    800640d2:	3e800693          	li	a3,1000
nuttx/libs/libc/unistd/lib_utimes.c:47
  times[1].tv_sec  = tv[1].tv_sec;
  times[1].tv_nsec = tv[1].tv_usec * 1000;
    800640d6:	6d9c                	ld	a5,24(a1)
nuttx/libs/libc/unistd/lib_utimes.c:44
  times[0].tv_sec  = tv[0].tv_sec;
    800640d8:	c03a                	sw	a4,0(sp)
nuttx/libs/libc/unistd/lib_utimes.c:45
  times[0].tv_nsec = tv[0].tv_usec * 1000;
    800640da:	6598                	ld	a4,8(a1)
nuttx/libs/libc/unistd/lib_utimes.c:47
  times[1].tv_nsec = tv[1].tv_usec * 1000;
    800640dc:	02d787b3          	mul	a5,a5,a3
nuttx/libs/libc/unistd/lib_utimes.c:45
  times[0].tv_nsec = tv[0].tv_usec * 1000;
    800640e0:	02d70733          	mul	a4,a4,a3
nuttx/libs/libc/unistd/lib_utimes.c:47
  times[1].tv_nsec = tv[1].tv_usec * 1000;
    800640e4:	ec3e                	sd	a5,24(sp)
nuttx/libs/libc/unistd/lib_utimes.c:45
  times[0].tv_nsec = tv[0].tv_usec * 1000;
    800640e6:	e43a                	sd	a4,8(sp)
nuttx/libs/libc/unistd/lib_utimes.c:46
  times[1].tv_sec  = tv[1].tv_sec;
    800640e8:	4998                	lw	a4,16(a1)
nuttx/libs/libc/unistd/lib_utimes.c:49

  return utimens(path, times);
    800640ea:	858a                	mv	a1,sp
nuttx/libs/libc/unistd/lib_utimes.c:46
  times[1].tv_sec  = tv[1].tv_sec;
    800640ec:	c83a                	sw	a4,16(sp)
nuttx/libs/libc/unistd/lib_utimes.c:49
  return utimens(path, times);
    800640ee:	0d9000ef          	jal	ra,800649c6 <utimens>
nuttx/libs/libc/unistd/lib_utimes.c:50
}
    800640f2:	70a2                	ld	ra,40(sp)
    800640f4:	6145                	addi	sp,sp,48
    800640f6:	8082                	ret

00000000800640f8 <futimesat>:
futimesat():
nuttx/libs/libc/unistd/lib_utimes.c:53

int futimesat(int dirfd, FAR const char *path, const struct timeval tv[2])
{
    800640f8:	712d                	addi	sp,sp,-288
    800640fa:	e626                	sd	s1,264(sp)
nuttx/libs/libc/unistd/lib_utimes.c:57
  char fullpath[PATH_MAX];
  int ret;

  ret = lib_getfullpath(dirfd, path, fullpath, sizeof(fullpath));
    800640fc:	10000693          	li	a3,256
nuttx/libs/libc/unistd/lib_utimes.c:53
{
    80064100:	84b2                	mv	s1,a2
nuttx/libs/libc/unistd/lib_utimes.c:57
  ret = lib_getfullpath(dirfd, path, fullpath, sizeof(fullpath));
    80064102:	860a                	mv	a2,sp
nuttx/libs/libc/unistd/lib_utimes.c:53
{
    80064104:	ee06                	sd	ra,280(sp)
    80064106:	ea22                	sd	s0,272(sp)
nuttx/libs/libc/unistd/lib_utimes.c:57
  ret = lib_getfullpath(dirfd, path, fullpath, sizeof(fullpath));
    80064108:	1a6000ef          	jal	ra,800642ae <lib_getfullpath>
nuttx/libs/libc/unistd/lib_utimes.c:58
  if (ret < 0)
    8006410c:	00055e63          	bgez	a0,80064128 <futimesat+0x30>
    80064110:	842a                	mv	s0,a0
nuttx/libs/libc/unistd/lib_utimes.c:60
    {
      set_errno(-ret);
    80064112:	4080043b          	negw	s0,s0
    80064116:	903fc0ef          	jal	ra,80060a18 <__errno>
    8006411a:	c100                	sw	s0,0(a0)
nuttx/libs/libc/unistd/lib_utimes.c:61
      return ERROR;
    8006411c:	557d                	li	a0,-1
nuttx/libs/libc/unistd/lib_utimes.c:65
    }

  return utimes(fullpath, tv);
}
    8006411e:	60f2                	ld	ra,280(sp)
    80064120:	6452                	ld	s0,272(sp)
    80064122:	64b2                	ld	s1,264(sp)
    80064124:	6115                	addi	sp,sp,288
    80064126:	8082                	ret
nuttx/libs/libc/unistd/lib_utimes.c:64
  return utimes(fullpath, tv);
    80064128:	85a6                	mv	a1,s1
    8006412a:	850a                	mv	a0,sp
    8006412c:	f9bff0ef          	jal	ra,800640c6 <utimes>
    80064130:	b7fd                	j	8006411e <futimesat+0x26>

0000000080064132 <setuid>:
setuid():
nuttx/libs/libc/unistd/lib_setuid.c:55

int setuid(uid_t uid)
{
  /* NuttX only supports the user identity 'root' with a uid value of 0. */

  if (uid == 0)
    80064132:	c919                	beqz	a0,80064148 <setuid+0x16>
nuttx/libs/libc/unistd/lib_setuid.c:52
{
    80064134:	1141                	addi	sp,sp,-16
    80064136:	e406                	sd	ra,8(sp)
nuttx/libs/libc/unistd/lib_setuid.c:64

  /* All other uid values are considered invalid and not supported by the
   * implementation.
   */

  set_errno(EINVAL);
    80064138:	8e1fc0ef          	jal	ra,80060a18 <__errno>
    8006413c:	47d9                	li	a5,22
    8006413e:	c11c                	sw	a5,0(a0)
nuttx/libs/libc/unistd/lib_setuid.c:66
  return -1;
}
    80064140:	60a2                	ld	ra,8(sp)
nuttx/libs/libc/unistd/lib_setuid.c:65
  return -1;
    80064142:	557d                	li	a0,-1
nuttx/libs/libc/unistd/lib_setuid.c:66
}
    80064144:	0141                	addi	sp,sp,16
    80064146:	8082                	ret
nuttx/libs/libc/unistd/lib_setuid.c:57
      return 0;
    80064148:	4501                	li	a0,0
nuttx/libs/libc/unistd/lib_setuid.c:66
}
    8006414a:	8082                	ret

000000008006414c <setgid>:
setgid():
nuttx/libs/libc/unistd/lib_setgid.c:56

int setgid(gid_t gid)
{
  /* NuttX only supports the group identity 'root' with a gid value of 0. */

  if (gid == 0)
    8006414c:	c919                	beqz	a0,80064162 <setgid+0x16>
nuttx/libs/libc/unistd/lib_setgid.c:53
{
    8006414e:	1141                	addi	sp,sp,-16
    80064150:	e406                	sd	ra,8(sp)
nuttx/libs/libc/unistd/lib_setgid.c:65

  /* All other gid values are considered invalid and not supported by the
   * implementation.
   */

  set_errno(EINVAL);
    80064152:	8c7fc0ef          	jal	ra,80060a18 <__errno>
    80064156:	47d9                	li	a5,22
    80064158:	c11c                	sw	a5,0(a0)
nuttx/libs/libc/unistd/lib_setgid.c:67
  return -1;
}
    8006415a:	60a2                	ld	ra,8(sp)
nuttx/libs/libc/unistd/lib_setgid.c:66
  return -1;
    8006415c:	557d                	li	a0,-1
nuttx/libs/libc/unistd/lib_setgid.c:67
}
    8006415e:	0141                	addi	sp,sp,16
    80064160:	8082                	ret
nuttx/libs/libc/unistd/lib_setgid.c:58
      return 0;
    80064162:	4501                	li	a0,0
nuttx/libs/libc/unistd/lib_setgid.c:67
}
    80064164:	8082                	ret

0000000080064166 <chdir>:
chdir():
nuttx/libs/libc/unistd/lib_chdir.c:74
 *     A component of the pathname is not a directory.
 *
 ****************************************************************************/

int chdir(FAR const char *path)
{
    80064166:	7119                	addi	sp,sp,-128
nuttx/libs/libc/unistd/lib_chdir.c:82
  FAR char *abspath;
  int ret;

  /* Verify that 'path' refers to a directory */

  ret = stat(path, &buf);
    80064168:	002c                	addi	a1,sp,8
nuttx/libs/libc/unistd/lib_chdir.c:74
{
    8006416a:	f8a2                	sd	s0,112(sp)
    8006416c:	f4a6                	sd	s1,104(sp)
    8006416e:	fc86                	sd	ra,120(sp)
    80064170:	84aa                	mv	s1,a0
nuttx/libs/libc/unistd/lib_chdir.c:82
  ret = stat(path, &buf);
    80064172:	013000ef          	jal	ra,80064984 <stat>
    80064176:	842a                	mv	s0,a0
nuttx/libs/libc/unistd/lib_chdir.c:83
  if (ret < 0)
    80064178:	00054d63          	bltz	a0,80064192 <chdir+0x2c>
nuttx/libs/libc/unistd/lib_chdir.c:90
      return ret;
    }

  /* Something exists here... is it a directory? */

  if (!S_ISDIR(buf.st_mode))
    8006417c:	47c2                	lw	a5,16(sp)
    8006417e:	673d                	lui	a4,0xf
    80064180:	8ff9                	and	a5,a5,a4
    80064182:	6711                	lui	a4,0x4
    80064184:	00e78d63          	beq	a5,a4,8006419e <chdir+0x38>
nuttx/libs/libc/unistd/lib_chdir.c:92
    {
      set_errno(ENOTDIR);
    80064188:	891fc0ef          	jal	ra,80060a18 <__errno>
    8006418c:	47d1                	li	a5,20
    8006418e:	c11c                	sw	a5,0(a0)
nuttx/libs/libc/unistd/lib_chdir.c:93
      return ERROR;
    80064190:	547d                	li	s0,-1
nuttx/libs/libc/unistd/lib_chdir.c:126
  ret = setenv("PWD", abspath, TRUE);
  lib_free(abspath);
  sched_unlock();

  return ret;
}
    80064192:	70e6                	ld	ra,120(sp)
    80064194:	8522                	mv	a0,s0
    80064196:	7446                	ld	s0,112(sp)
    80064198:	74a6                	ld	s1,104(sp)
    8006419a:	6109                	addi	sp,sp,128
    8006419c:	8082                	ret
nuttx/libs/libc/unistd/lib_chdir.c:100
  abspath = realpath(path, NULL);
    8006419e:	8526                	mv	a0,s1
    800641a0:	4581                	li	a1,0
    800641a2:	a39fe0ef          	jal	ra,80062bda <realpath>
    800641a6:	84aa                	mv	s1,a0
nuttx/libs/libc/unistd/lib_chdir.c:103
      return ERROR;
    800641a8:	547d                	li	s0,-1
nuttx/libs/libc/unistd/lib_chdir.c:101
  if (abspath == NULL)
    800641aa:	d565                	beqz	a0,80064192 <chdir+0x2c>
nuttx/libs/libc/unistd/lib_chdir.c:110
  sched_lock();
    800641ac:	770000ef          	jal	ra,8006491c <sched_lock>
nuttx/libs/libc/unistd/lib_chdir.c:111
  oldpwd = getenv("PWD");
    800641b0:	00030517          	auipc	a0,0x30
    800641b4:	96850513          	addi	a0,a0,-1688 # 80093b18 <g_errnomap+0x8e0>
    800641b8:	534000ef          	jal	ra,800646ec <getenv>
    800641bc:	85aa                	mv	a1,a0
nuttx/libs/libc/unistd/lib_chdir.c:112
  if (!oldpwd)
    800641be:	e509                	bnez	a0,800641c8 <chdir+0x62>
nuttx/libs/libc/unistd/lib_chdir.c:114
      oldpwd = CONFIG_LIBC_HOMEDIR;
    800641c0:	00006597          	auipc	a1,0x6
    800641c4:	70058593          	addi	a1,a1,1792 # 8006a8c0 <qjsc_repl+0x5310>
nuttx/libs/libc/unistd/lib_chdir.c:117
  setenv("OLDPWD", oldpwd, TRUE);
    800641c8:	4605                	li	a2,1
    800641ca:	00030517          	auipc	a0,0x30
    800641ce:	95650513          	addi	a0,a0,-1706 # 80093b20 <g_errnomap+0x8e8>
    800641d2:	782000ef          	jal	ra,80064954 <setenv>
nuttx/libs/libc/unistd/lib_chdir.c:121
  ret = setenv("PWD", abspath, TRUE);
    800641d6:	4605                	li	a2,1
    800641d8:	85a6                	mv	a1,s1
    800641da:	00030517          	auipc	a0,0x30
    800641de:	93e50513          	addi	a0,a0,-1730 # 80093b18 <g_errnomap+0x8e0>
    800641e2:	772000ef          	jal	ra,80064954 <setenv>
    800641e6:	842a                	mv	s0,a0
nuttx/libs/libc/unistd/lib_chdir.c:122
  lib_free(abspath);
    800641e8:	8526                	mv	a0,s1
    800641ea:	acdfb0ef          	jal	ra,8005fcb6 <free>
nuttx/libs/libc/unistd/lib_chdir.c:123
  sched_unlock();
    800641ee:	73a000ef          	jal	ra,80064928 <sched_unlock>
nuttx/libs/libc/unistd/lib_chdir.c:125
  return ret;
    800641f2:	b745                	j	80064192 <chdir+0x2c>

00000000800641f4 <getcwd>:
getcwd():
nuttx/libs/libc/unistd/lib_getcwd.c:80
 *     Insufficient storage space is available.
 *
 ****************************************************************************/

FAR char *getcwd(FAR char *buf, size_t size)
{
    800641f4:	1101                	addi	sp,sp,-32
    800641f6:	e822                	sd	s0,16(sp)
    800641f8:	e426                	sd	s1,8(sp)
    800641fa:	ec06                	sd	ra,24(sp)
    800641fc:	e04a                	sd	s2,0(sp)
    800641fe:	842a                	mv	s0,a0
    80064200:	84ae                	mv	s1,a1
nuttx/libs/libc/unistd/lib_getcwd.c:85
  char *pwd;

  /* Verify input parameters */

  if (buf && size == 0)
    80064202:	cd11                	beqz	a0,8006421e <getcwd+0x2a>
nuttx/libs/libc/unistd/lib_getcwd.c:85 (discriminator 1)
    80064204:	e185                	bnez	a1,80064224 <getcwd+0x30>
nuttx/libs/libc/unistd/lib_getcwd.c:87
    {
      set_errno(EINVAL);
    80064206:	813fc0ef          	jal	ra,80060a18 <__errno>
    8006420a:	47d9                	li	a5,22
nuttx/libs/libc/unistd/lib_getcwd.c:108

  /* Verify that the cwd will fit into the user-provided buffer */

  if (strlen(pwd) + 1 > size)
    {
      set_errno(ERANGE);
    8006420c:	c11c                	sw	a5,0(a0)
nuttx/libs/libc/unistd/lib_getcwd.c:109
      return NULL;
    8006420e:	4401                	li	s0,0
nuttx/libs/libc/unistd/lib_getcwd.c:126

  /* Copy the cwd to the user buffer */

  strlcpy(buf, pwd, size);
  return buf;
}
    80064210:	60e2                	ld	ra,24(sp)
    80064212:	8522                	mv	a0,s0
    80064214:	6442                	ld	s0,16(sp)
    80064216:	64a2                	ld	s1,8(sp)
    80064218:	6902                	ld	s2,0(sp)
    8006421a:	6105                	addi	sp,sp,32
    8006421c:	8082                	ret
nuttx/libs/libc/unistd/lib_getcwd.c:91
  if (size == 0)
    8006421e:	e199                	bnez	a1,80064224 <getcwd+0x30>
nuttx/libs/libc/unistd/lib_getcwd.c:93
      size = PATH_MAX + 1;
    80064220:	10100493          	li	s1,257
nuttx/libs/libc/unistd/lib_getcwd.c:98
  pwd = getenv("PWD");
    80064224:	00030517          	auipc	a0,0x30
    80064228:	8f450513          	addi	a0,a0,-1804 # 80093b18 <g_errnomap+0x8e0>
    8006422c:	4c0000ef          	jal	ra,800646ec <getenv>
    80064230:	892a                	mv	s2,a0
nuttx/libs/libc/unistd/lib_getcwd.c:99
  if (pwd == NULL)
    80064232:	e509                	bnez	a0,8006423c <getcwd+0x48>
nuttx/libs/libc/unistd/lib_getcwd.c:101
      pwd = CONFIG_LIBC_HOMEDIR;
    80064234:	00006917          	auipc	s2,0x6
    80064238:	68c90913          	addi	s2,s2,1676 # 8006a8c0 <qjsc_repl+0x5310>
nuttx/libs/libc/unistd/lib_getcwd.c:106
  if (strlen(pwd) + 1 > size)
    8006423c:	854a                	mv	a0,s2
    8006423e:	b45ff0ef          	jal	ra,80063d82 <strlen>
    80064242:	0505                	addi	a0,a0,1
    80064244:	00a4f763          	bgeu	s1,a0,80064252 <getcwd+0x5e>
nuttx/libs/libc/unistd/lib_getcwd.c:108
      set_errno(ERANGE);
    80064248:	fd0fc0ef          	jal	ra,80060a18 <__errno>
    8006424c:	02200793          	li	a5,34
    80064250:	bf75                	j	8006420c <getcwd+0x18>
nuttx/libs/libc/unistd/lib_getcwd.c:112
  if (buf == NULL)
    80064252:	e819                	bnez	s0,80064268 <getcwd+0x74>
nuttx/libs/libc/unistd/lib_getcwd.c:114
      buf = lib_malloc(size);
    80064254:	8526                	mv	a0,s1
    80064256:	a6dfb0ef          	jal	ra,8005fcc2 <malloc>
    8006425a:	842a                	mv	s0,a0
nuttx/libs/libc/unistd/lib_getcwd.c:115
      if (!buf)
    8006425c:	e511                	bnez	a0,80064268 <getcwd+0x74>
nuttx/libs/libc/unistd/lib_getcwd.c:117
          set_errno(ENOMEM);
    8006425e:	fbafc0ef          	jal	ra,80060a18 <__errno>
    80064262:	47b1                	li	a5,12
    80064264:	c11c                	sw	a5,0(a0)
nuttx/libs/libc/unistd/lib_getcwd.c:118
          return NULL;
    80064266:	b76d                	j	80064210 <getcwd+0x1c>
nuttx/libs/libc/unistd/lib_getcwd.c:124
  strlcpy(buf, pwd, size);
    80064268:	8626                	mv	a2,s1
    8006426a:	85ca                	mv	a1,s2
    8006426c:	8522                	mv	a0,s0
    8006426e:	addff0ef          	jal	ra,80063d4a <strlcpy>
nuttx/libs/libc/unistd/lib_getcwd.c:125
  return buf;
    80064272:	bf79                	j	80064210 <getcwd+0x1c>

0000000080064274 <fork>:
fork():
nuttx/libs/libc/unistd/lib_fork.c:155
  pid_t pid;

#ifdef CONFIG_PTHREAD_ATFORK
  atfork_prepare();
#endif
  pid = up_fork();
    80064274:	a791                	j	800649b8 <up_fork>

0000000080064276 <isspace>:
isspace():
nuttx/libs/libc/ctype/lib_isspace.c:34
 ****************************************************************************/

int isspace(int c)
{
  return c == ' ' || c == '\t' || c == '\n' || c == '\r' ||
         c == '\f' || c == '\v';
    80064276:	02000793          	li	a5,32
    8006427a:	00f50663          	beq	a0,a5,80064286 <isspace+0x10>
nuttx/libs/libc/ctype/lib_isspace.c:33
  return c == ' ' || c == '\t' || c == '\n' || c == '\r' ||
    8006427e:	355d                	addiw	a0,a0,-9
nuttx/libs/libc/ctype/lib_isspace.c:34
         c == '\f' || c == '\v';
    80064280:	00553513          	sltiu	a0,a0,5
    80064284:	8082                	ret
    80064286:	4505                	li	a0,1
nuttx/libs/libc/ctype/lib_isspace.c:35
}
    80064288:	8082                	ret

000000008006428a <isspace_l>:
isspace_l():
nuttx/libs/libc/ctype/lib_isspace.c:39

int isspace_l(int c, locale_t locale)
{
  return isspace(c);
    8006428a:	fedff06f          	j	80064276 <isspace>

000000008006428e <isxdigit>:
isxdigit():
nuttx/libs/libc/ctype/lib_isxdigit.c:34
 ****************************************************************************/

int isxdigit(int c)
{
  return (c >= '0' && c <= '9') ||
         (c >= 'a' && c <= 'f') ||
    8006428e:	fd05071b          	addiw	a4,a0,-48
    80064292:	47a5                	li	a5,9
    80064294:	00e7f963          	bgeu	a5,a4,800642a6 <isxdigit+0x18>
nuttx/libs/libc/ctype/lib_isxdigit.c:34 (discriminator 2)
    80064298:	fdf57513          	andi	a0,a0,-33
    8006429c:	fbf5051b          	addiw	a0,a0,-65
    800642a0:	00653513          	sltiu	a0,a0,6
    800642a4:	8082                	ret
nuttx/libs/libc/ctype/lib_isxdigit.c:34
    800642a6:	4505                	li	a0,1
nuttx/libs/libc/ctype/lib_isxdigit.c:36
         (c >= 'A' && c <= 'F');
}
    800642a8:	8082                	ret

00000000800642aa <isxdigit_l>:
isxdigit_l():
nuttx/libs/libc/ctype/lib_isxdigit.c:40

int isxdigit_l(int c, locale_t locale)
{
  return isxdigit(c);
    800642aa:	fe5ff06f          	j	8006428e <isxdigit>

00000000800642ae <lib_getfullpath>:
lib_getfullpath():
nuttx/libs/libc/misc/lib_getfullpath.c:47
 *
 ****************************************************************************/

int lib_getfullpath(int dirfd, FAR const char *path,
                    FAR char *fullpath, size_t fulllen)
{
    800642ae:	7179                	addi	sp,sp,-48
    800642b0:	e84a                	sd	s2,16(sp)
    800642b2:	f406                	sd	ra,40(sp)
    800642b4:	f022                	sd	s0,32(sp)
    800642b6:	ec26                	sd	s1,24(sp)
    800642b8:	e44e                	sd	s3,8(sp)
nuttx/libs/libc/misc/lib_getfullpath.c:50
  if (path == NULL || fullpath == NULL)
    {
      return -EINVAL;
    800642ba:	5929                	li	s2,-22
nuttx/libs/libc/misc/lib_getfullpath.c:48
  if (path == NULL || fullpath == NULL)
    800642bc:	c18d                	beqz	a1,800642de <lib_getfullpath+0x30>
    800642be:	8432                	mv	s0,a2
nuttx/libs/libc/misc/lib_getfullpath.c:50 (discriminator 1)
      return -EINVAL;
    800642c0:	5929                	li	s2,-22
nuttx/libs/libc/misc/lib_getfullpath.c:48 (discriminator 1)
  if (path == NULL || fullpath == NULL)
    800642c2:	ce11                	beqz	a2,800642de <lib_getfullpath+0x30>
    800642c4:	89b6                	mv	s3,a3
nuttx/libs/libc/misc/lib_getfullpath.c:52
    }
  else if (path[0] == '/')
    800642c6:	0005c683          	lbu	a3,0(a1)
    800642ca:	02f00713          	li	a4,47
    800642ce:	84ae                	mv	s1,a1
    800642d0:	00e69f63          	bne	a3,a4,800642ee <lib_getfullpath+0x40>
nuttx/libs/libc/misc/lib_getfullpath.c:56
    {
      /* The path is absolute, then dirfd is ignored. */

      strlcpy(fullpath, path, fulllen);
    800642d4:	864e                	mv	a2,s3
    800642d6:	8522                	mv	a0,s0
    800642d8:	a73ff0ef          	jal	ra,80063d4a <strlcpy>
nuttx/libs/libc/misc/lib_getfullpath.c:78
          pwd = CONFIG_LIBC_HOMEDIR;
        }
#endif

      snprintf(fullpath, fulllen, "%s/%s", pwd, path);
      return 0;
    800642dc:	4901                	li	s2,0
nuttx/libs/libc/misc/lib_getfullpath.c:94
          strlcat(fullpath, path, fulllen);
        }

      return 0;
    }
}
    800642de:	70a2                	ld	ra,40(sp)
    800642e0:	7402                	ld	s0,32(sp)
    800642e2:	64e2                	ld	s1,24(sp)
    800642e4:	69a2                	ld	s3,8(sp)
    800642e6:	854a                	mv	a0,s2
    800642e8:	6942                	ld	s2,16(sp)
    800642ea:	6145                	addi	sp,sp,48
    800642ec:	8082                	ret
nuttx/libs/libc/misc/lib_getfullpath.c:60
  if (dirfd == AT_FDCWD)
    800642ee:	f9c00713          	li	a4,-100
    800642f2:	02e51863          	bne	a0,a4,80064322 <lib_getfullpath+0x74>
nuttx/libs/libc/misc/lib_getfullpath.c:70
      pwd = getenv("PWD");
    800642f6:	00030517          	auipc	a0,0x30
    800642fa:	82250513          	addi	a0,a0,-2014 # 80093b18 <g_errnomap+0x8e0>
    800642fe:	3ee000ef          	jal	ra,800646ec <getenv>
    80064302:	86aa                	mv	a3,a0
nuttx/libs/libc/misc/lib_getfullpath.c:71
      if (pwd == NULL)
    80064304:	e509                	bnez	a0,8006430e <lib_getfullpath+0x60>
nuttx/libs/libc/misc/lib_getfullpath.c:73
          pwd = CONFIG_LIBC_HOMEDIR;
    80064306:	00006697          	auipc	a3,0x6
    8006430a:	5ba68693          	addi	a3,a3,1466 # 8006a8c0 <qjsc_repl+0x5310>
nuttx/libs/libc/misc/lib_getfullpath.c:77
      snprintf(fullpath, fulllen, "%s/%s", pwd, path);
    8006430e:	8726                	mv	a4,s1
    80064310:	00030617          	auipc	a2,0x30
    80064314:	81860613          	addi	a2,a2,-2024 # 80093b28 <g_errnomap+0x8f0>
    80064318:	85ce                	mv	a1,s3
    8006431a:	8522                	mv	a0,s0
    8006431c:	f25fc0ef          	jal	ra,80061240 <snprintf>
    80064320:	bf75                	j	800642dc <lib_getfullpath+0x2e>
nuttx/libs/libc/misc/lib_getfullpath.c:86
      ret = fcntl(dirfd, F_GETPATH, fullpath);
    80064322:	45bd                	li	a1,15
    80064324:	38c000ef          	jal	ra,800646b0 <fcntl>
nuttx/libs/libc/misc/lib_getfullpath.c:92
      return 0;
    80064328:	4901                	li	s2,0
nuttx/libs/libc/misc/lib_getfullpath.c:87
      if (ret >= 0)
    8006432a:	fa054ae3          	bltz	a0,800642de <lib_getfullpath+0x30>
nuttx/libs/libc/misc/lib_getfullpath.c:89
          strlcat(fullpath, path, fulllen);
    8006432e:	864e                	mv	a2,s3
    80064330:	85a6                	mv	a1,s1
    80064332:	8522                	mv	a0,s0
    80064334:	1d6000ef          	jal	ra,8006450a <strlcat>
    80064338:	b75d                	j	800642de <lib_getfullpath+0x30>

000000008006433a <nxsig_addset>:
nxsig_addset():
nuttx/libs/libc/signal/sig_addset.c:59

int nxsig_addset(FAR sigset_t *set, int signo)
{
  /* Verify the signal */

  if (!GOOD_SIGNO(signo))
    8006433a:	03f00793          	li	a5,63
    8006433e:	00b7ee63          	bltu	a5,a1,8006435a <nxsig_addset+0x20>
nuttx/libs/libc/signal/sig_addset.c:67
    }
  else
    {
      /* Add the signal to the set */

      set->_elem[_SIGSET_NDX(signo)] |= _SIGNO2SET(signo);
    80064342:	4055d793          	srai	a5,a1,0x5
    80064346:	078a                	slli	a5,a5,0x2
    80064348:	953e                	add	a0,a0,a5
    8006434a:	4785                	li	a5,1
    8006434c:	00b795bb          	sllw	a1,a5,a1
    80064350:	411c                	lw	a5,0(a0)
    80064352:	8ddd                	or	a1,a1,a5
    80064354:	c10c                	sw	a1,0(a0)
nuttx/libs/libc/signal/sig_addset.c:68
      return OK;
    80064356:	4501                	li	a0,0
    80064358:	8082                	ret
nuttx/libs/libc/signal/sig_addset.c:61
      return -EINVAL;
    8006435a:	5529                	li	a0,-22
nuttx/libs/libc/signal/sig_addset.c:70
    }
}
    8006435c:	8082                	ret

000000008006435e <sigaddset>:
sigaddset():
nuttx/libs/libc/signal/sig_addset.c:91
 * Assumptions:
 *
 ****************************************************************************/

int sigaddset(FAR sigset_t *set, int signo)
{
    8006435e:	1141                	addi	sp,sp,-16
    80064360:	e406                	sd	ra,8(sp)
nuttx/libs/libc/signal/sig_addset.c:96
  int ret;

  /* Let nxsig_addset do all the work. */

  ret = nxsig_addset(set, signo);
    80064362:	fd9ff0ef          	jal	ra,8006433a <nxsig_addset>
nuttx/libs/libc/signal/sig_addset.c:97
  if (ret < 0)
    80064366:	00055763          	bgez	a0,80064374 <sigaddset+0x16>
nuttx/libs/libc/signal/sig_addset.c:99
    {
      set_errno(EINVAL);
    8006436a:	eaefc0ef          	jal	ra,80060a18 <__errno>
    8006436e:	47d9                	li	a5,22
    80064370:	c11c                	sw	a5,0(a0)
nuttx/libs/libc/signal/sig_addset.c:100
      ret = ERROR;
    80064372:	557d                	li	a0,-1
nuttx/libs/libc/signal/sig_addset.c:104
    }

  return ret;
}
    80064374:	60a2                	ld	ra,8(sp)
    80064376:	0141                	addi	sp,sp,16
    80064378:	8082                	ret

000000008006437a <sigemptyset>:
sigemptyset():
nuttx/libs/libc/signal/sig_emptyset.c:57

  /* Remove all signals from the set */

  for (ndx = 0; ndx < _SIGSET_NELEM; ndx++)
    {
      set->_elem[ndx] = _NO_SIGNALS;
    8006437a:	00052023          	sw	zero,0(a0)
    8006437e:	00052223          	sw	zero,4(a0)
nuttx/libs/libc/signal/sig_emptyset.c:61
    }

  return OK;
}
    80064382:	4501                	li	a0,0
    80064384:	8082                	ret

0000000080064386 <mktemp>:
mktemp():
nuttx/libs/libc/stdlib/lib_mktemp.c:180
 *   declared as a character array.
 *
 ****************************************************************************/

FAR char *mktemp(FAR char *path_template)
{
    80064386:	7171                	addi	sp,sp,-176
    80064388:	ed26                	sd	s1,152(sp)
    8006438a:	f0e2                	sd	s8,96(sp)
    8006438c:	84aa                	mv	s1,a0
    8006438e:	f506                	sd	ra,168(sp)
    80064390:	f122                	sd	s0,160(sp)
    80064392:	e94a                	sd	s2,144(sp)
    80064394:	e54e                	sd	s3,136(sp)
    80064396:	e152                	sd	s4,128(sp)
    80064398:	fcd6                	sd	s5,120(sp)
    8006439a:	f8da                	sd	s6,112(sp)
    8006439c:	f4de                	sd	s7,104(sp)
nuttx/libs/libc/stdlib/lib_mktemp.c:191
  int ret;
  int i;

  /* Count the number of X's at the end of the template */

  xptr = &path_template[strlen(path_template)];
    8006439e:	9e5ff0ef          	jal	ra,80063d82 <strlen>
    800643a2:	9526                	add	a0,a0,s1
nuttx/libs/libc/stdlib/lib_mktemp.c:192
  for (xlen = 0; xlen < MAX_XS && path_template < xptr && *(xptr - 1) == 'X';
    800643a4:	ffa50613          	addi	a2,a0,-6
nuttx/libs/libc/stdlib/lib_mktemp.c:191
  xptr = &path_template[strlen(path_template)];
    800643a8:	8c2a                	mv	s8,a0
nuttx/libs/libc/stdlib/lib_mktemp.c:192
  for (xlen = 0; xlen < MAX_XS && path_template < xptr && *(xptr - 1) == 'X';
    800643aa:	05800713          	li	a4,88
    800643ae:	418507bb          	subw	a5,a0,s8
nuttx/libs/libc/stdlib/lib_mktemp.c:192 (discriminator 2)
    800643b2:	0184f663          	bgeu	s1,s8,800643be <mktemp+0x38>
nuttx/libs/libc/stdlib/lib_mktemp.c:192 (discriminator 3)
    800643b6:	fffc4683          	lbu	a3,-1(s8) # 3fff <asinh-0x7fffc001>
    800643ba:	04e68b63          	beq	a3,a4,80064410 <mktemp+0x8a>
nuttx/libs/libc/stdlib/lib_mktemp.c:195
       xlen++, xptr--);

  if (xlen == 0)
    800643be:	0e078a63          	beqz	a5,800644b2 <mktemp+0x12c>
nuttx/libs/libc/stdlib/lib_mktemp.c:214

  /* If xlen is small, then we need to determine the maximum number of
   * retries before the values will repeat.
   */

  if (xlen >= BIG_XS)
    800643c2:	4711                	li	a4,4
nuttx/libs/libc/stdlib/lib_mktemp.c:216
    {
      retries = UINT32_MAX;
    800643c4:	5bfd                	li	s7,-1
nuttx/libs/libc/stdlib/lib_mktemp.c:214
  if (xlen >= BIG_XS)
    800643c6:	00f74963          	blt	a4,a5,800643d8 <mktemp+0x52>
nuttx/libs/libc/stdlib/lib_mktemp.c:220
    }
  else
    {
      for (i = 1, retries = 62; i < xlen; i++, retries *= 62);
    800643ca:	4705                	li	a4,1
    800643cc:	03e00b93          	li	s7,62
    800643d0:	03e00693          	li	a3,62
nuttx/libs/libc/stdlib/lib_mktemp.c:220 (discriminator 1)
    800643d4:	04f71463          	bne	a4,a5,8006441c <mktemp+0x96>
copy_base62():
nuttx/libs/libc/stdlib/lib_mktemp.c:154
      src += MAX_XS - len;
    800643d8:	4419                	li	s0,6
    800643da:	9c1d                	subw	s0,s0,a5
    800643dc:	1402                	slli	s0,s0,0x20
    800643de:	9001                	srli	s0,s0,0x20
    800643e0:	4719                	li	a4,6
    800643e2:	0007899b          	sext.w	s3,a5
    800643e6:	940a                	add	s0,s0,sp
    800643e8:	00e79363          	bne	a5,a4,800643ee <mktemp+0x68>
    800643ec:	840a                	mv	s0,sp
get_base62():
nuttx/libs/libc/stdlib/lib_mktemp.c:136
  memcpy(ptr, g_base62, MAX_XS);
    800643ee:	0009d917          	auipc	s2,0x9d
    800643f2:	d7290913          	addi	s2,s2,-654 # 80101160 <g_base62>
incr_base62():
nuttx/libs/libc/stdlib/lib_mktemp.c:111
  for (i = MAX_XS - 1; i >= 0; i--)
    800643f6:	5a7d                	li	s4,-1
base62_to_char():
nuttx/libs/libc/stdlib/lib_mktemp.c:88
  else if (base62 <= MAX_UPPERCASE)
    800643f8:	02300a93          	li	s5,35
nuttx/libs/libc/stdlib/lib_mktemp.c:94
      DEBUGASSERT(base62 <= MAX_LOWERCASE);
    800643fc:	03d00b13          	li	s6,61
mktemp():
nuttx/libs/libc/stdlib/lib_mktemp.c:225
    }

  /* Then loop until we find a unique file name */

  while (retries > 0)
    80064400:	020b9263          	bnez	s7,80064424 <mktemp+0x9e>
nuttx/libs/libc/stdlib/lib_mktemp.c:251
      retries--;
    }

  /* We could not find an unique filename */

  set_errno(EINVAL);
    80064404:	e14fc0ef          	jal	ra,80060a18 <__errno>
    80064408:	47d9                	li	a5,22
    8006440a:	c11c                	sw	a5,0(a0)
nuttx/libs/libc/stdlib/lib_mktemp.c:253

  return NULL;
    8006440c:	4481                	li	s1,0
    8006440e:	a055                	j	800644b2 <mktemp+0x12c>
nuttx/libs/libc/stdlib/lib_mktemp.c:193
       xlen++, xptr--);
    80064410:	1c7d                	addi	s8,s8,-1
nuttx/libs/libc/stdlib/lib_mktemp.c:192
  for (xlen = 0; xlen < MAX_XS && path_template < xptr && *(xptr - 1) == 'X';
    80064412:	f8cc1ee3          	bne	s8,a2,800643ae <mktemp+0x28>
    80064416:	4799                	li	a5,6
nuttx/libs/libc/stdlib/lib_mktemp.c:216
      retries = UINT32_MAX;
    80064418:	5bfd                	li	s7,-1
    8006441a:	bf7d                	j	800643d8 <mktemp+0x52>
nuttx/libs/libc/stdlib/lib_mktemp.c:220 (discriminator 3)
      for (i = 1, retries = 62; i < xlen; i++, retries *= 62);
    8006441c:	03768bbb          	mulw	s7,a3,s7
    80064420:	2705                	addiw	a4,a4,1
    80064422:	bf4d                	j	800643d4 <mktemp+0x4e>
get_base62():
nuttx/libs/libc/stdlib/lib_mktemp.c:135
  nxmutex_lock(&g_b62lock);
    80064424:	0009d517          	auipc	a0,0x9d
    80064428:	c8c50513          	addi	a0,a0,-884 # 801010b0 <g_b62lock>
    8006442c:	e88fc0ef          	jal	ra,80060ab4 <nxmutex_lock>
nuttx/libs/libc/stdlib/lib_mktemp.c:136
  memcpy(ptr, g_base62, MAX_XS);
    80064430:	00092783          	lw	a5,0(s2)
    80064434:	0009d717          	auipc	a4,0x9d
    80064438:	d2c70713          	addi	a4,a4,-724 # 80101160 <g_base62>
incr_base62():
nuttx/libs/libc/stdlib/lib_mktemp.c:113
      if (g_base62[i] < MAX_LOWERCASE)
    8006443c:	03c00613          	li	a2,60
get_base62():
nuttx/libs/libc/stdlib/lib_mktemp.c:136
  memcpy(ptr, g_base62, MAX_XS);
    80064440:	c03e                	sw	a5,0(sp)
    80064442:	00495783          	lhu	a5,4(s2)
    80064446:	00f11223          	sh	a5,4(sp)
incr_base62():
nuttx/libs/libc/stdlib/lib_mktemp.c:111
  for (i = MAX_XS - 1; i >= 0; i--)
    8006444a:	4795                	li	a5,5
nuttx/libs/libc/stdlib/lib_mktemp.c:113
      if (g_base62[i] < MAX_LOWERCASE)
    8006444c:	00574683          	lbu	a3,5(a4)
    80064450:	06d66e63          	bltu	a2,a3,800644cc <mktemp+0x146>
nuttx/libs/libc/stdlib/lib_mktemp.c:115
          g_base62[i]++;
    80064454:	97ca                	add	a5,a5,s2
    80064456:	2685                	addiw	a3,a3,1
    80064458:	00d78023          	sb	a3,0(a5) # 1000 <asinh-0x7ffff000>
get_base62():
nuttx/libs/libc/stdlib/lib_mktemp.c:138
  nxmutex_unlock(&g_b62lock);
    8006445c:	0009d517          	auipc	a0,0x9d
    80064460:	c5450513          	addi	a0,a0,-940 # 801010b0 <g_b62lock>
    80064464:	f52fc0ef          	jal	ra,80060bb6 <nxmutex_unlock>
copy_base62():
nuttx/libs/libc/stdlib/lib_mktemp.c:152
  if (len < MAX_XS)
    80064468:	4701                	li	a4,0
base62_to_char():
nuttx/libs/libc/stdlib/lib_mktemp.c:84
  if (base62 <= MAX_NUMERIC)
    8006446a:	4625                	li	a2,9
copy_base62():
nuttx/libs/libc/stdlib/lib_mktemp.c:159
      *dest++ = base62_to_char(*src++);
    8006446c:	00e407b3          	add	a5,s0,a4
    80064470:	0007c783          	lbu	a5,0(a5)
base62_to_char():
nuttx/libs/libc/stdlib/lib_mktemp.c:84
  if (base62 <= MAX_NUMERIC)
    80064474:	06f66363          	bltu	a2,a5,800644da <mktemp+0x154>
nuttx/libs/libc/stdlib/lib_mktemp.c:86
      return '0' + base62;
    80064478:	0307879b          	addiw	a5,a5,48
nuttx/libs/libc/stdlib/lib_mktemp.c:95
      return 'a' + base62 - MIN_LOWERCASE;
    8006447c:	0ff7f793          	zext.b	a5,a5
copy_base62():
nuttx/libs/libc/stdlib/lib_mktemp.c:159
      *dest++ = base62_to_char(*src++);
    80064480:	00ec06b3          	add	a3,s8,a4
nuttx/libs/libc/stdlib/lib_mktemp.c:157
  for (; len > 0; len--)
    80064484:	0705                	addi	a4,a4,1
nuttx/libs/libc/stdlib/lib_mktemp.c:159
      *dest++ = base62_to_char(*src++);
    80064486:	00f68023          	sb	a5,0(a3)
nuttx/libs/libc/stdlib/lib_mktemp.c:157
  for (; len > 0; len--)
    8006448a:	0007079b          	sext.w	a5,a4
    8006448e:	fcf99fe3          	bne	s3,a5,8006446c <mktemp+0xe6>
mktemp():
nuttx/libs/libc/stdlib/lib_mktemp.c:237
      ret = stat(path_template, &buf);
    80064492:	002c                	addi	a1,sp,8
    80064494:	8526                	mv	a0,s1
    80064496:	4ee000ef          	jal	ra,80064984 <stat>
nuttx/libs/libc/stdlib/lib_mktemp.c:238
      if (ret < 0 && get_errno() == ENOENT)
    8006449a:	06055663          	bgez	a0,80064506 <mktemp+0x180>
nuttx/libs/libc/stdlib/lib_mktemp.c:238 (discriminator 1)
    8006449e:	d7afc0ef          	jal	ra,80060a18 <__errno>
    800644a2:	4118                	lw	a4,0(a0)
    800644a4:	4789                	li	a5,2
    800644a6:	06f71063          	bne	a4,a5,80064506 <mktemp+0x180>
nuttx/libs/libc/stdlib/lib_mktemp.c:242
          set_errno(0);
    800644aa:	d6efc0ef          	jal	ra,80060a18 <__errno>
    800644ae:	00052023          	sw	zero,0(a0)
nuttx/libs/libc/stdlib/lib_mktemp.c:254
}
    800644b2:	70aa                	ld	ra,168(sp)
    800644b4:	740a                	ld	s0,160(sp)
    800644b6:	694a                	ld	s2,144(sp)
    800644b8:	69aa                	ld	s3,136(sp)
    800644ba:	6a0a                	ld	s4,128(sp)
    800644bc:	7ae6                	ld	s5,120(sp)
    800644be:	7b46                	ld	s6,112(sp)
    800644c0:	7ba6                	ld	s7,104(sp)
    800644c2:	7c06                	ld	s8,96(sp)
    800644c4:	8526                	mv	a0,s1
    800644c6:	64ea                	ld	s1,152(sp)
    800644c8:	614d                	addi	sp,sp,176
    800644ca:	8082                	ret
incr_base62():
nuttx/libs/libc/stdlib/lib_mktemp.c:120
          g_base62[i] = 0;
    800644cc:	000702a3          	sb	zero,5(a4)
nuttx/libs/libc/stdlib/lib_mktemp.c:111
  for (i = MAX_XS - 1; i >= 0; i--)
    800644d0:	37fd                	addiw	a5,a5,-1
    800644d2:	177d                	addi	a4,a4,-1
    800644d4:	f7479ce3          	bne	a5,s4,8006444c <mktemp+0xc6>
    800644d8:	b751                	j	8006445c <mktemp+0xd6>
base62_to_char():
nuttx/libs/libc/stdlib/lib_mktemp.c:88
  else if (base62 <= MAX_UPPERCASE)
    800644da:	00fae563          	bltu	s5,a5,800644e4 <mktemp+0x15e>
nuttx/libs/libc/stdlib/lib_mktemp.c:90
      return 'A' + base62 - MIN_UPPERCASE;
    800644de:	0377879b          	addiw	a5,a5,55
    800644e2:	bf69                	j	8006447c <mktemp+0xf6>
nuttx/libs/libc/stdlib/lib_mktemp.c:94
      DEBUGASSERT(base62 <= MAX_LOWERCASE);
    800644e4:	00fb7e63          	bgeu	s6,a5,80064500 <mktemp+0x17a>
    800644e8:	0002f617          	auipc	a2,0x2f
    800644ec:	64860613          	addi	a2,a2,1608 # 80093b30 <g_errnomap+0x8f8>
    800644f0:	05e00593          	li	a1,94
    800644f4:	0002f517          	auipc	a0,0x2f
    800644f8:	64c50513          	addi	a0,a0,1612 # 80093b40 <g_errnomap+0x908>
    800644fc:	c60fc0ef          	jal	ra,8006095c <__assert>
nuttx/libs/libc/stdlib/lib_mktemp.c:95
      return 'a' + base62 - MIN_LOWERCASE;
    80064500:	03d7879b          	addiw	a5,a5,61
    80064504:	bfa5                	j	8006447c <mktemp+0xf6>
mktemp():
nuttx/libs/libc/stdlib/lib_mktemp.c:246
      retries--;
    80064506:	3bfd                	addiw	s7,s7,-1
    80064508:	bde5                	j	80064400 <mktemp+0x7a>

000000008006450a <strlcat>:
strlcat():
nuttx/libs/libc/string/lib_strlcat.c:52
 ****************************************************************************/

#if !defined(CONFIG_LIBC_ARCH_STRLCAT) && defined(LIBC_BUILD_STRLCAT)
#undef strlcat /* See mm/README.txt */
size_t strlcat(FAR char *dst, FAR const char *src, size_t dsize)
{
    8006450a:	1141                	addi	sp,sp,-16
    8006450c:	e022                	sd	s0,0(sp)
    8006450e:	842a                	mv	s0,a0
    80064510:	e406                	sd	ra,8(sp)
    80064512:	852e                	mv	a0,a1
nuttx/libs/libc/string/lib_strlcat.c:60
  size_t n = dsize;
  size_t dlen;

  /* Find the end of dst and adjust bytes left but don't go past end. */

  while (n-- != 0 && *dst != '\0')
    80064514:	00c406b3          	add	a3,s0,a2
    80064518:	87a2                	mv	a5,s0
    8006451a:	00d79f63          	bne	a5,a3,80064538 <strlcat+0x2e>
nuttx/libs/libc/string/lib_strlcat.c:65
    {
      dst++;
    }

  dlen = dst - odst;
    8006451e:	40878433          	sub	s0,a5,s0
nuttx/libs/libc/string/lib_strlcat.c:66
  n = dsize - dlen;
    80064522:	408606b3          	sub	a3,a2,s0
nuttx/libs/libc/string/lib_strlcat.c:68

  if (n-- == 0)
    80064526:	00861e63          	bne	a2,s0,80064542 <strlcat+0x38>
nuttx/libs/libc/string/lib_strlcat.c:70
    {
      return dlen + strlen(src);
    8006452a:	859ff0ef          	jal	ra,80063d82 <strlen>
nuttx/libs/libc/string/lib_strlcat.c:89
  *dst = '\0';

  /* Count does not include NUL */

  return dlen + (src - osrc);
}
    8006452e:	60a2                	ld	ra,8(sp)
nuttx/libs/libc/string/lib_strlcat.c:88
  return dlen + (src - osrc);
    80064530:	9522                	add	a0,a0,s0
nuttx/libs/libc/string/lib_strlcat.c:89
}
    80064532:	6402                	ld	s0,0(sp)
    80064534:	0141                	addi	sp,sp,16
    80064536:	8082                	ret
nuttx/libs/libc/string/lib_strlcat.c:60 (discriminator 1)
  while (n-- != 0 && *dst != '\0')
    80064538:	0007c703          	lbu	a4,0(a5)
    8006453c:	d36d                	beqz	a4,8006451e <strlcat+0x14>
nuttx/libs/libc/string/lib_strlcat.c:62
      dst++;
    8006453e:	0785                	addi	a5,a5,1
    80064540:	bfe9                	j	8006451a <strlcat+0x10>
nuttx/libs/libc/string/lib_strlcat.c:68
  if (n-- == 0)
    80064542:	16fd                	addi	a3,a3,-1
    80064544:	872a                	mv	a4,a0
nuttx/libs/libc/string/lib_strlcat.c:73
  while (*src != '\0')
    80064546:	00074603          	lbu	a2,0(a4)
    8006454a:	e611                	bnez	a2,80064556 <strlcat+0x4c>
nuttx/libs/libc/string/lib_strlcat.c:84
  *dst = '\0';
    8006454c:	00078023          	sb	zero,0(a5)
nuttx/libs/libc/string/lib_strlcat.c:88
  return dlen + (src - osrc);
    80064550:	40a70533          	sub	a0,a4,a0
    80064554:	bfe9                	j	8006452e <strlcat+0x24>
nuttx/libs/libc/string/lib_strlcat.c:75
      if (n != 0)
    80064556:	c689                	beqz	a3,80064560 <strlcat+0x56>
nuttx/libs/libc/string/lib_strlcat.c:77
          *dst++ = *src;
    80064558:	00c78023          	sb	a2,0(a5)
nuttx/libs/libc/string/lib_strlcat.c:78
          n--;
    8006455c:	16fd                	addi	a3,a3,-1
nuttx/libs/libc/string/lib_strlcat.c:77
          *dst++ = *src;
    8006455e:	0785                	addi	a5,a5,1
nuttx/libs/libc/string/lib_strlcat.c:81
      src++;
    80064560:	0705                	addi	a4,a4,1
    80064562:	b7d5                	j	80064546 <strlcat+0x3c>

0000000080064564 <tcflush>:
tcflush():
nuttx/libs/libc/termios/lib_tcflush.c:56
 *   errno is set to indicate the error.
 *
 ****************************************************************************/

int tcflush(int fd, int cmd)
{
    80064564:	862e                	mv	a2,a1
nuttx/libs/libc/termios/lib_tcflush.c:57
  return ioctl(fd, TCFLSH, (unsigned long)cmd);
    80064566:	11400593          	li	a1,276
    8006456a:	a265                	j	80064712 <ioctl>

000000008006456c <tcdrain>:
tcdrain():
nuttx/libs/libc/termios/lib_tcdrain.c:56
 *
 ****************************************************************************/

int tcdrain(int fd)
{
  return ioctl(fd, TCDRN, (unsigned long)0);
    8006456c:	4601                	li	a2,0
    8006456e:	11500593          	li	a1,277
    80064572:	a245                	j	80064712 <ioctl>

0000000080064574 <clock_daysbeforemonth>:
clock_daysbeforemonth():
nuttx/libs/libc/time/lib_daysbeforemonth.c:64
 *
 ****************************************************************************/

int clock_daysbeforemonth(int month, bool leapyear)
{
  int retval = g_daysbeforemonth[month];
    80064574:	00151693          	slli	a3,a0,0x1
    80064578:	0002f717          	auipc	a4,0x2f
    8006457c:	5e070713          	addi	a4,a4,1504 # 80093b58 <g_daysbeforemonth>
    80064580:	9736                	add	a4,a4,a3
nuttx/libs/libc/time/lib_daysbeforemonth.c:63
{
    80064582:	87aa                	mv	a5,a0
nuttx/libs/libc/time/lib_daysbeforemonth.c:65
  if (month >= 2 && leapyear)
    80064584:	4685                	li	a3,1
nuttx/libs/libc/time/lib_daysbeforemonth.c:64
  int retval = g_daysbeforemonth[month];
    80064586:	00075503          	lhu	a0,0(a4)
nuttx/libs/libc/time/lib_daysbeforemonth.c:65
  if (month >= 2 && leapyear)
    8006458a:	00f6d463          	bge	a3,a5,80064592 <clock_daysbeforemonth+0x1e>
nuttx/libs/libc/time/lib_daysbeforemonth.c:65 (discriminator 1)
    8006458e:	c191                	beqz	a1,80064592 <clock_daysbeforemonth+0x1e>
nuttx/libs/libc/time/lib_daysbeforemonth.c:67
    {
      retval++;
    80064590:	2505                	addiw	a0,a0,1
nuttx/libs/libc/time/lib_daysbeforemonth.c:71
    }

  return retval;
}
    80064592:	8082                	ret

0000000080064594 <clock_isleapyear>:
clock_isleapyear():
nuttx/libs/libc/time/lib_isleapyear.c:71
 *
 ****************************************************************************/

int clock_isleapyear(int year)
{
  return (year % 400) ? ((year % 100) ? ((year % 4) ? 0 : 1) : 0) : 1;
    80064594:	19000713          	li	a4,400
    80064598:	02e5673b          	remw	a4,a0,a4
nuttx/libs/libc/time/lib_isleapyear.c:70
{
    8006459c:	87aa                	mv	a5,a0
nuttx/libs/libc/time/lib_isleapyear.c:71
  return (year % 400) ? ((year % 100) ? ((year % 4) ? 0 : 1) : 0) : 1;
    8006459e:	cb11                	beqz	a4,800645b2 <clock_isleapyear+0x1e>
nuttx/libs/libc/time/lib_isleapyear.c:71 (discriminator 2)
    800645a0:	06400513          	li	a0,100
    800645a4:	02a7e53b          	remw	a0,a5,a0
    800645a8:	c511                	beqz	a0,800645b4 <clock_isleapyear+0x20>
nuttx/libs/libc/time/lib_isleapyear.c:71 (discriminator 3)
    800645aa:	8b8d                	andi	a5,a5,3
    800645ac:	0017b513          	seqz	a0,a5
    800645b0:	8082                	ret
nuttx/libs/libc/time/lib_isleapyear.c:71
    800645b2:	4505                	li	a0,1
nuttx/libs/libc/time/lib_isleapyear.c:72 (discriminator 8)
}
    800645b4:	8082                	ret

00000000800645b6 <clock_dayoftheweek>:
clock_dayoftheweek():
nuttx/libs/libc/time/lib_dayofweek.c:82
 *
 ****************************************************************************/

int clock_dayoftheweek(int mday, int month, int year)
{
  if (month <= 2)
    800645b6:	4789                	li	a5,2
    800645b8:	00b7c463          	blt	a5,a1,800645c0 <clock_dayoftheweek+0xa>
nuttx/libs/libc/time/lib_dayofweek.c:84
    {
      year--;
    800645bc:	367d                	addiw	a2,a2,-1
nuttx/libs/libc/time/lib_dayofweek.c:85
      month += 12;
    800645be:	25b1                	addiw	a1,a1,12
nuttx/libs/libc/time/lib_dayofweek.c:89
    }

  month -= 2;
  return (mday + year + year / 4 - year / 100 + year / 400 +
    800645c0:	4791                	li	a5,4
    800645c2:	02f647bb          	divw	a5,a2,a5
    800645c6:	9d31                	addw	a0,a0,a2
    800645c8:	9fa9                	addw	a5,a5,a0
    800645ca:	f9c00513          	li	a0,-100
    800645ce:	02a6453b          	divw	a0,a2,a0
    800645d2:	9fa9                	addw	a5,a5,a0
    800645d4:	19000513          	li	a0,400
    800645d8:	02a6463b          	divw	a2,a2,a0
nuttx/libs/libc/time/lib_dayofweek.c:88
  month -= 2;
    800645dc:	ffe5851b          	addiw	a0,a1,-2
nuttx/libs/libc/time/lib_dayofweek.c:90
         (31 * month) / 12) % 7;
    800645e0:	45fd                	li	a1,31
    800645e2:	02b5053b          	mulw	a0,a0,a1
    800645e6:	45b1                	li	a1,12
nuttx/libs/libc/time/lib_dayofweek.c:89
  return (mday + year + year / 4 - year / 100 + year / 400 +
    800645e8:	9fb1                	addw	a5,a5,a2
nuttx/libs/libc/time/lib_dayofweek.c:90
         (31 * month) / 12) % 7;
    800645ea:	02b5453b          	divw	a0,a0,a1
nuttx/libs/libc/time/lib_dayofweek.c:89
  return (mday + year + year / 4 - year / 100 + year / 400 +
    800645ee:	9fa9                	addw	a5,a5,a0
nuttx/libs/libc/time/lib_dayofweek.c:91
}
    800645f0:	451d                	li	a0,7
    800645f2:	02a7e53b          	remw	a0,a5,a0
    800645f6:	8082                	ret

00000000800645f8 <getoptvars>:
getoptvars():
nuttx/libs/libc/unistd/lib_getoptvars.c:75
  DEBUGASSERT(info != NULL);
  return &info->ta_getopt;
#else
  return &g_getopt_vars;
#endif
}
    800645f8:	0009d517          	auipc	a0,0x9d
    800645fc:	ad850513          	addi	a0,a0,-1320 # 801010d0 <g_getopt_vars>
    80064600:	8082                	ret

0000000080064602 <_assert>:
_assert():
nuttx/syscall/proxies/PROXY__assert.c:8
#include <nuttx/config.h>
#include <assert.h>
#include <syscall.h>

void _assert(FAR const char * parm1, int parm2, FAR const char * parm3, FAR void * parm4)
{
    80064602:	88aa                	mv	a7,a0
    80064604:	882e                	mv	a6,a1
    80064606:	87b2                	mv	a5,a2
    80064608:	8736                	mv	a4,a3
sys_call4():
nuttx/include/arch/syscall.h:281

static inline uintptr_t sys_call4(unsigned int nbr, uintptr_t parm1,
                                  uintptr_t parm2, uintptr_t parm3,
                                  uintptr_t parm4)
{
  register long r0 asm("a0") = (long)(nbr);
    8006460a:	4525                	li	a0,9
nuttx/include/arch/syscall.h:282
  register long r1 asm("a1") = (long)(parm1);
    8006460c:	85c6                	mv	a1,a7
nuttx/include/arch/syscall.h:283
  register long r2 asm("a2") = (long)(parm2);
    8006460e:	8642                	mv	a2,a6
nuttx/include/arch/syscall.h:284
  register long r3 asm("a3") = (long)(parm3);
    80064610:	86be                	mv	a3,a5
nuttx/include/arch/syscall.h:287
  register long r4 asm("a4") = (long)(parm4);

  asm volatile
    80064612:	00000073          	ecall
nuttx/include/arch/syscall.h:294
     "ecall"
     :: "r"(r0), "r"(r1), "r"(r2), "r"(r3), "r"(r4)
     : "memory"
     );

  asm volatile("nop" : "=r"(r0));
    80064616:	0001                	nop
_assert():
nuttx/syscall/proxies/PROXY__assert.c:10
  sys_call4((unsigned int)SYS__assert, (uintptr_t)parm1, (uintptr_t)parm2, (uintptr_t)parm3, (uintptr_t)parm4);
}
    80064618:	8082                	ret

000000008006461a <_exit>:
_exit():
nuttx/syscall/proxies/PROXY__exit.c:8
#include <nuttx/config.h>
#include <unistd.h>
#include <syscall.h>

void _exit(int parm1)
{
    8006461a:	85aa                	mv	a1,a0
sys_call1():
nuttx/include/arch/syscall.h:199
  register long r0 asm("a0") = (long)(nbr);
    8006461c:	4521                	li	a0,8
nuttx/include/arch/syscall.h:202
  asm volatile
    8006461e:	00000073          	ecall
nuttx/include/arch/syscall.h:209
  asm volatile("nop" : "=r"(r0));
    80064622:	0001                	nop
_exit():
nuttx/syscall/proxies/PROXY__exit.c:10 (discriminator 1)
  sys_call1((unsigned int)SYS__exit, (uintptr_t)parm1);
  while(1);
    80064624:	a001                	j	80064624 <_exit+0xa>

0000000080064626 <clock>:
sys_call0():
nuttx/include/arch/syscall.h:175
  register long r0 asm("a0") = (long)(nbr);
    80064626:	02f00513          	li	a0,47
nuttx/include/arch/syscall.h:177
  asm volatile
    8006462a:	00000073          	ecall
nuttx/include/arch/syscall.h:184
  asm volatile("nop" : "=r"(r0));
    8006462e:	0001                	nop
clock():
nuttx/syscall/proxies/PROXY_clock.c:10
#include <syscall.h>

clock_t clock(void)
{
  return (clock_t)sys_call0((unsigned int)SYS_clock);
}
    80064630:	2501                	sext.w	a0,a0
    80064632:	8082                	ret

0000000080064634 <clock_gettime>:
clock_gettime():
nuttx/syscall/proxies/PROXY_clock_gettime.c:8
#include <nuttx/config.h>
#include <time.h>
#include <syscall.h>

int clock_gettime(clockid_t parm1, FAR struct timespec * parm2)
{
    80064634:	87aa                	mv	a5,a0
    80064636:	862e                	mv	a2,a1
sys_call2():
nuttx/include/arch/syscall.h:225
  register long r0 asm("a0") = (long)(nbr);
    80064638:	03000513          	li	a0,48
nuttx/include/arch/syscall.h:226
  register long r1 asm("a1") = (long)(parm1);
    8006463c:	85be                	mv	a1,a5
nuttx/include/arch/syscall.h:229
  asm volatile
    8006463e:	00000073          	ecall
nuttx/include/arch/syscall.h:236
  asm volatile("nop" : "=r"(r0));
    80064642:	0001                	nop
clock_gettime():
nuttx/syscall/proxies/PROXY_clock_gettime.c:10
  return (int)sys_call2((unsigned int)SYS_clock_gettime, (uintptr_t)parm1, (uintptr_t)parm2);
}
    80064644:	2501                	sext.w	a0,a0
    80064646:	8082                	ret

0000000080064648 <clock_nanosleep>:
clock_nanosleep():
nuttx/syscall/proxies/PROXY_clock_nanosleep.c:8
#include <nuttx/config.h>
#include <time.h>
#include <syscall.h>

int clock_nanosleep(clockid_t parm1, int parm2, FAR const struct timespec * parm3, FAR struct timespec * parm4)
{
    80064648:	88aa                	mv	a7,a0
    8006464a:	882e                	mv	a6,a1
    8006464c:	87b2                	mv	a5,a2
    8006464e:	8736                	mv	a4,a3
sys_call4():
nuttx/include/arch/syscall.h:281
  register long r0 asm("a0") = (long)(nbr);
    80064650:	02e00513          	li	a0,46
nuttx/include/arch/syscall.h:282
  register long r1 asm("a1") = (long)(parm1);
    80064654:	85c6                	mv	a1,a7
nuttx/include/arch/syscall.h:283
  register long r2 asm("a2") = (long)(parm2);
    80064656:	8642                	mv	a2,a6
nuttx/include/arch/syscall.h:284
  register long r3 asm("a3") = (long)(parm3);
    80064658:	86be                	mv	a3,a5
nuttx/include/arch/syscall.h:287
  asm volatile
    8006465a:	00000073          	ecall
nuttx/include/arch/syscall.h:294
  asm volatile("nop" : "=r"(r0));
    8006465e:	0001                	nop
clock_nanosleep():
nuttx/syscall/proxies/PROXY_clock_nanosleep.c:10
  return (int)sys_call4((unsigned int)SYS_clock_nanosleep, (uintptr_t)parm1, (uintptr_t)parm2, (uintptr_t)parm3, (uintptr_t)parm4);
}
    80064660:	2501                	sext.w	a0,a0
    80064662:	8082                	ret

0000000080064664 <close>:
close():
nuttx/syscall/proxies/PROXY_close.c:8
#include <nuttx/config.h>
#include <unistd.h>
#include <syscall.h>

int close(int parm1)
{
    80064664:	85aa                	mv	a1,a0
sys_call1():
nuttx/include/arch/syscall.h:199
  register long r0 asm("a0") = (long)(nbr);
    80064666:	03a00513          	li	a0,58
nuttx/include/arch/syscall.h:202
  asm volatile
    8006466a:	00000073          	ecall
nuttx/include/arch/syscall.h:209
  asm volatile("nop" : "=r"(r0));
    8006466e:	0001                	nop
close():
nuttx/syscall/proxies/PROXY_close.c:10
  return (int)sys_call1((unsigned int)SYS_close, (uintptr_t)parm1);
}
    80064670:	2501                	sext.w	a0,a0
    80064672:	8082                	ret

0000000080064674 <dup>:
dup():
nuttx/syscall/proxies/PROXY_dup.c:8
#include <nuttx/config.h>
#include <unistd.h>
#include <syscall.h>

int dup(int parm1)
{
    80064674:	85aa                	mv	a1,a0
sys_call1():
nuttx/include/arch/syscall.h:199
  register long r0 asm("a0") = (long)(nbr);
    80064676:	04500513          	li	a0,69
nuttx/include/arch/syscall.h:202
  asm volatile
    8006467a:	00000073          	ecall
nuttx/include/arch/syscall.h:209
  asm volatile("nop" : "=r"(r0));
    8006467e:	0001                	nop
dup():
nuttx/syscall/proxies/PROXY_dup.c:10
  return (int)sys_call1((unsigned int)SYS_dup, (uintptr_t)parm1);
}
    80064680:	2501                	sext.w	a0,a0
    80064682:	8082                	ret

0000000080064684 <dup2>:
dup2():
nuttx/syscall/proxies/PROXY_dup2.c:8
#include <nuttx/config.h>
#include <unistd.h>
#include <syscall.h>

int dup2(int parm1, int parm2)
{
    80064684:	87aa                	mv	a5,a0
    80064686:	862e                	mv	a2,a1
sys_call2():
nuttx/include/arch/syscall.h:225
  register long r0 asm("a0") = (long)(nbr);
    80064688:	04600513          	li	a0,70
nuttx/include/arch/syscall.h:226
  register long r1 asm("a1") = (long)(parm1);
    8006468c:	85be                	mv	a1,a5
nuttx/include/arch/syscall.h:229
  asm volatile
    8006468e:	00000073          	ecall
nuttx/include/arch/syscall.h:236
  asm volatile("nop" : "=r"(r0));
    80064692:	0001                	nop
dup2():
nuttx/syscall/proxies/PROXY_dup2.c:10
  return (int)sys_call2((unsigned int)SYS_dup2, (uintptr_t)parm1, (uintptr_t)parm2);
}
    80064694:	2501                	sext.w	a0,a0
    80064696:	8082                	ret

0000000080064698 <execve>:
execve():
nuttx/syscall/proxies/PROXY_execve.c:10
#include <syscall.h>

#if !defined(CONFIG_BINFMT_DISABLE) && defined(CONFIG_LIBC_EXECFUNCS)

int execve(FAR const char * parm1, FAR char * const parm2[], FAR char * const parm3[])
{
    80064698:	872a                	mv	a4,a0
    8006469a:	87ae                	mv	a5,a1
    8006469c:	86b2                	mv	a3,a2
sys_call3():
nuttx/include/arch/syscall.h:252
  register long r0 asm("a0") = (long)(nbr);
    8006469e:	02400513          	li	a0,36
nuttx/include/arch/syscall.h:253
  register long r1 asm("a1") = (long)(parm1);
    800646a2:	85ba                	mv	a1,a4
nuttx/include/arch/syscall.h:254
  register long r2 asm("a2") = (long)(parm2);
    800646a4:	863e                	mv	a2,a5
nuttx/include/arch/syscall.h:257
  asm volatile
    800646a6:	00000073          	ecall
nuttx/include/arch/syscall.h:264
  asm volatile("nop" : "=r"(r0));
    800646aa:	0001                	nop
execve():
nuttx/syscall/proxies/PROXY_execve.c:12
  return (int)sys_call3((unsigned int)SYS_execve, (uintptr_t)parm1, (uintptr_t)parm2, (uintptr_t)parm3);
}
    800646ac:	2501                	sext.w	a0,a0
    800646ae:	8082                	ret

00000000800646b0 <fcntl>:
fcntl():
nuttx/syscall/proxies/PROXY_fcntl.c:9
#include <stdarg.h>
#include <fcntl.h>
#include <syscall.h>

int fcntl(int parm1, int parm2, ...)
{
    800646b0:	7139                	addi	sp,sp,-64
    800646b2:	8eaa                	mv	t4,a0
    800646b4:	8e2e                	mv	t3,a1
    800646b6:	8332                	mv	t1,a2
    800646b8:	f43e                	sd	a5,40(sp)
nuttx/syscall/proxies/PROXY_fcntl.c:13
  va_list ap;
  int parm3;

  va_start(ap, parm2);
    800646ba:	081c                	addi	a5,sp,16
nuttx/syscall/proxies/PROXY_fcntl.c:9
{
    800646bc:	e832                	sd	a2,16(sp)
    800646be:	ec36                	sd	a3,24(sp)
    800646c0:	f03a                	sd	a4,32(sp)
    800646c2:	f842                	sd	a6,48(sp)
    800646c4:	fc46                	sd	a7,56(sp)
nuttx/syscall/proxies/PROXY_fcntl.c:13
  va_start(ap, parm2);
    800646c6:	e43e                	sd	a5,8(sp)
sys_call3():
nuttx/include/arch/syscall.h:252
  register long r0 asm("a0") = (long)(nbr);
    800646c8:	04700513          	li	a0,71
nuttx/include/arch/syscall.h:253
  register long r1 asm("a1") = (long)(parm1);
    800646cc:	85f6                	mv	a1,t4
nuttx/include/arch/syscall.h:254
  register long r2 asm("a2") = (long)(parm2);
    800646ce:	8672                	mv	a2,t3
nuttx/include/arch/syscall.h:255
  register long r3 asm("a3") = (long)(parm3);
    800646d0:	0003069b          	sext.w	a3,t1
nuttx/include/arch/syscall.h:257
  asm volatile
    800646d4:	00000073          	ecall
nuttx/include/arch/syscall.h:264
  asm volatile("nop" : "=r"(r0));
    800646d8:	0001                	nop
fcntl():
nuttx/syscall/proxies/PROXY_fcntl.c:18
  parm3 = va_arg(ap, int);
  va_end(ap);

  return (int)sys_call3((unsigned int)SYS_fcntl, (uintptr_t)parm1, (uintptr_t)parm2, (uintptr_t)parm3);
}
    800646da:	2501                	sext.w	a0,a0
    800646dc:	6121                	addi	sp,sp,64
    800646de:	8082                	ret

00000000800646e0 <get_environ_ptr>:
sys_call0():
nuttx/include/arch/syscall.h:175
  register long r0 asm("a0") = (long)(nbr);
    800646e0:	08200513          	li	a0,130
nuttx/include/arch/syscall.h:177
  asm volatile
    800646e4:	00000073          	ecall
nuttx/include/arch/syscall.h:184
  asm volatile("nop" : "=r"(r0));
    800646e8:	0001                	nop
get_environ_ptr():
nuttx/syscall/proxies/PROXY_get_environ_ptr.c:12
#if !defined(CONFIG_DISABLE_ENVIRON)

FAR char ** get_environ_ptr(void)
{
  return (FAR char **)sys_call0((unsigned int)SYS_get_environ_ptr);
}
    800646ea:	8082                	ret

00000000800646ec <getenv>:
getenv():
nuttx/syscall/proxies/PROXY_getenv.c:10
#include <syscall.h>

#if !defined(CONFIG_DISABLE_ENVIRON)

FAR char * getenv(FAR const char * parm1)
{
    800646ec:	85aa                	mv	a1,a0
sys_call1():
nuttx/include/arch/syscall.h:199
  register long r0 asm("a0") = (long)(nbr);
    800646ee:	08400513          	li	a0,132
nuttx/include/arch/syscall.h:202
  asm volatile
    800646f2:	00000073          	ecall
nuttx/include/arch/syscall.h:209
  asm volatile("nop" : "=r"(r0));
    800646f6:	0001                	nop
getenv():
nuttx/syscall/proxies/PROXY_getenv.c:12
  return (FAR char *)sys_call1((unsigned int)SYS_getenv, (uintptr_t)parm1);
}
    800646f8:	8082                	ret

00000000800646fa <getpid>:
sys_call0():
nuttx/include/arch/syscall.h:175
  register long r0 asm("a0") = (long)(nbr);
    800646fa:	4529                	li	a0,10
nuttx/include/arch/syscall.h:177
  asm volatile
    800646fc:	00000073          	ecall
nuttx/include/arch/syscall.h:184
  asm volatile("nop" : "=r"(r0));
    80064700:	0001                	nop
getpid():
nuttx/syscall/proxies/PROXY_getpid.c:10
#include <syscall.h>

pid_t getpid(void)
{
  return (pid_t)sys_call0((unsigned int)SYS_getpid);
}
    80064702:	2501                	sext.w	a0,a0
    80064704:	8082                	ret

0000000080064706 <gettid>:
sys_call0():
nuttx/include/arch/syscall.h:175
  register long r0 asm("a0") = (long)(nbr);
    80064706:	452d                	li	a0,11
nuttx/include/arch/syscall.h:177
  asm volatile
    80064708:	00000073          	ecall
nuttx/include/arch/syscall.h:184
  asm volatile("nop" : "=r"(r0));
    8006470c:	0001                	nop
gettid():
nuttx/syscall/proxies/PROXY_gettid.c:10
#include <syscall.h>

pid_t gettid(void)
{
  return (pid_t)sys_call0((unsigned int)SYS_gettid);
}
    8006470e:	2501                	sext.w	a0,a0
    80064710:	8082                	ret

0000000080064712 <ioctl>:
ioctl():
nuttx/syscall/proxies/PROXY_ioctl.c:9
#include <stdarg.h>
#include <sys/ioctl.h>
#include <syscall.h>

int ioctl(int parm1, int parm2, ...)
{
    80064712:	7139                	addi	sp,sp,-64
    80064714:	8e2a                	mv	t3,a0
    80064716:	832e                	mv	t1,a1
    80064718:	f43e                	sd	a5,40(sp)
nuttx/syscall/proxies/PROXY_ioctl.c:13
  va_list ap;
  unsigned long parm3;

  va_start(ap, parm2);
    8006471a:	081c                	addi	a5,sp,16
nuttx/syscall/proxies/PROXY_ioctl.c:9
{
    8006471c:	e832                	sd	a2,16(sp)
    8006471e:	ec36                	sd	a3,24(sp)
    80064720:	f03a                	sd	a4,32(sp)
nuttx/syscall/proxies/PROXY_ioctl.c:14
  parm3 = va_arg(ap, unsigned long);
    80064722:	86b2                	mv	a3,a2
nuttx/syscall/proxies/PROXY_ioctl.c:9
{
    80064724:	f842                	sd	a6,48(sp)
    80064726:	fc46                	sd	a7,56(sp)
nuttx/syscall/proxies/PROXY_ioctl.c:13
  va_start(ap, parm2);
    80064728:	e43e                	sd	a5,8(sp)
sys_call3():
nuttx/include/arch/syscall.h:252
  register long r0 asm("a0") = (long)(nbr);
    8006472a:	03b00513          	li	a0,59
nuttx/include/arch/syscall.h:253
  register long r1 asm("a1") = (long)(parm1);
    8006472e:	85f2                	mv	a1,t3
nuttx/include/arch/syscall.h:254
  register long r2 asm("a2") = (long)(parm2);
    80064730:	861a                	mv	a2,t1
nuttx/include/arch/syscall.h:257
  asm volatile
    80064732:	00000073          	ecall
nuttx/include/arch/syscall.h:264
  asm volatile("nop" : "=r"(r0));
    80064736:	0001                	nop
ioctl():
nuttx/syscall/proxies/PROXY_ioctl.c:18
  va_end(ap);

  return (int)sys_call3((unsigned int)SYS_ioctl, (uintptr_t)parm1, (uintptr_t)parm2, (uintptr_t)parm3);
}
    80064738:	2501                	sext.w	a0,a0
    8006473a:	6121                	addi	sp,sp,64
    8006473c:	8082                	ret

000000008006473e <kill>:
kill():
nuttx/syscall/proxies/PROXY_kill.c:8
#include <nuttx/config.h>
#include <signal.h>
#include <syscall.h>

int kill(pid_t parm1, int parm2)
{
    8006473e:	87aa                	mv	a5,a0
    80064740:	862e                	mv	a2,a1
sys_call2():
nuttx/include/arch/syscall.h:225
  register long r0 asm("a0") = (long)(nbr);
    80064742:	02500513          	li	a0,37
nuttx/include/arch/syscall.h:226
  register long r1 asm("a1") = (long)(parm1);
    80064746:	85be                	mv	a1,a5
nuttx/include/arch/syscall.h:229
  asm volatile
    80064748:	00000073          	ecall
nuttx/include/arch/syscall.h:236
  asm volatile("nop" : "=r"(r0));
    8006474c:	0001                	nop
kill():
nuttx/syscall/proxies/PROXY_kill.c:10
  return (int)sys_call2((unsigned int)SYS_kill, (uintptr_t)parm1, (uintptr_t)parm2);
}
    8006474e:	2501                	sext.w	a0,a0
    80064750:	8082                	ret

0000000080064752 <lseek>:
lseek():
nuttx/syscall/proxies/PROXY_lseek.c:8
#include <nuttx/config.h>
#include <unistd.h>
#include <syscall.h>

off_t lseek(int parm1, off_t parm2, int parm3)
{
    80064752:	872a                	mv	a4,a0
    80064754:	87ae                	mv	a5,a1
    80064756:	86b2                	mv	a3,a2
sys_call3():
nuttx/include/arch/syscall.h:252
  register long r0 asm("a0") = (long)(nbr);
    80064758:	04900513          	li	a0,73
nuttx/include/arch/syscall.h:253
  register long r1 asm("a1") = (long)(parm1);
    8006475c:	85ba                	mv	a1,a4
nuttx/include/arch/syscall.h:254
  register long r2 asm("a2") = (long)(parm2);
    8006475e:	863e                	mv	a2,a5
nuttx/include/arch/syscall.h:257
  asm volatile
    80064760:	00000073          	ecall
nuttx/include/arch/syscall.h:264
  asm volatile("nop" : "=r"(r0));
    80064764:	0001                	nop
lseek():
nuttx/syscall/proxies/PROXY_lseek.c:10
  return (off_t)sys_call3((unsigned int)SYS_lseek, (uintptr_t)parm1, (uintptr_t)parm2, (uintptr_t)parm3);
}
    80064766:	2501                	sext.w	a0,a0
    80064768:	8082                	ret

000000008006476a <lstat>:
lstat():
nuttx/syscall/proxies/PROXY_lstat.c:8
#include <nuttx/config.h>
#include <sys/stat.h>
#include <syscall.h>

int lstat(FAR const char * parm1, FAR struct stat * parm2)
{
    8006476a:	87aa                	mv	a5,a0
    8006476c:	862e                	mv	a2,a1
sys_call2():
nuttx/include/arch/syscall.h:225
  register long r0 asm("a0") = (long)(nbr);
    8006476e:	04e00513          	li	a0,78
nuttx/include/arch/syscall.h:226
  register long r1 asm("a1") = (long)(parm1);
    80064772:	85be                	mv	a1,a5
nuttx/include/arch/syscall.h:229
  asm volatile
    80064774:	00000073          	ecall
nuttx/include/arch/syscall.h:236
  asm volatile("nop" : "=r"(r0));
    80064778:	0001                	nop
lstat():
nuttx/syscall/proxies/PROXY_lstat.c:10
  return (int)sys_call2((unsigned int)SYS_lstat, (uintptr_t)parm1, (uintptr_t)parm2);
}
    8006477a:	2501                	sext.w	a0,a0
    8006477c:	8082                	ret

000000008006477e <mkdir>:
mkdir():
nuttx/syscall/proxies/PROXY_mkdir.c:10
#include <syscall.h>

#if !defined(CONFIG_DISABLE_MOUNTPOINT)

int mkdir(FAR const char * parm1, mode_t parm2)
{
    8006477e:	862e                	mv	a2,a1
    80064780:	87aa                	mv	a5,a0
sys_call2():
nuttx/include/arch/syscall.h:227
  register long r2 asm("a2") = (long)(parm2);
    80064782:	1602                	slli	a2,a2,0x20
nuttx/include/arch/syscall.h:225
  register long r0 asm("a0") = (long)(nbr);
    80064784:	06000513          	li	a0,96
nuttx/include/arch/syscall.h:226
  register long r1 asm("a1") = (long)(parm1);
    80064788:	85be                	mv	a1,a5
nuttx/include/arch/syscall.h:227
  register long r2 asm("a2") = (long)(parm2);
    8006478a:	9201                	srli	a2,a2,0x20
nuttx/include/arch/syscall.h:229
  asm volatile
    8006478c:	00000073          	ecall
nuttx/include/arch/syscall.h:236
  asm volatile("nop" : "=r"(r0));
    80064790:	0001                	nop
mkdir():
nuttx/syscall/proxies/PROXY_mkdir.c:12
  return (int)sys_call2((unsigned int)SYS_mkdir, (uintptr_t)parm1, (uintptr_t)parm2);
}
    80064792:	2501                	sext.w	a0,a0
    80064794:	8082                	ret

0000000080064796 <nx_pthread_create>:
nx_pthread_create():
nuttx/syscall/proxies/PROXY_nx_pthread_create.c:10
#include <syscall.h>

#if !defined(CONFIG_DISABLE_PTHREAD)

int nx_pthread_create(pthread_trampoline_t parm1, FAR pthread_t * parm2, FAR const pthread_attr_t * parm3, pthread_startroutine_t parm4, pthread_addr_t parm5)
{
    80064796:	8e2a                	mv	t3,a0
    80064798:	832e                	mv	t1,a1
    8006479a:	88b2                	mv	a7,a2
    8006479c:	8836                	mv	a6,a3
    8006479e:	87ba                	mv	a5,a4
sys_call5():
nuttx/include/arch/syscall.h:311

static inline uintptr_t sys_call5(unsigned int nbr, uintptr_t parm1,
                                  uintptr_t parm2, uintptr_t parm3,
                                  uintptr_t parm4, uintptr_t parm5)
{
  register long r0 asm("a0") = (long)(nbr);
    800647a0:	06900513          	li	a0,105
nuttx/include/arch/syscall.h:312
  register long r1 asm("a1") = (long)(parm1);
    800647a4:	85f2                	mv	a1,t3
nuttx/include/arch/syscall.h:313
  register long r2 asm("a2") = (long)(parm2);
    800647a6:	861a                	mv	a2,t1
nuttx/include/arch/syscall.h:314
  register long r3 asm("a3") = (long)(parm3);
    800647a8:	86c6                	mv	a3,a7
nuttx/include/arch/syscall.h:315
  register long r4 asm("a4") = (long)(parm4);
    800647aa:	8742                	mv	a4,a6
nuttx/include/arch/syscall.h:318
  register long r5 asm("a5") = (long)(parm5);

  asm volatile
    800647ac:	00000073          	ecall
nuttx/include/arch/syscall.h:325
     "ecall"
     :: "r"(r0), "r"(r1), "r"(r2), "r"(r3), "r"(r4), "r"(r5)
     : "memory"
     );

  asm volatile("nop" : "=r"(r0));
    800647b0:	0001                	nop
nx_pthread_create():
nuttx/syscall/proxies/PROXY_nx_pthread_create.c:12
  return (int)sys_call5((unsigned int)SYS_nx_pthread_create, (uintptr_t)parm1, (uintptr_t)parm2, (uintptr_t)parm3, (uintptr_t)parm4, (uintptr_t)parm5);
}
    800647b2:	2501                	sext.w	a0,a0
    800647b4:	8082                	ret

00000000800647b6 <nx_pthread_exit>:
nx_pthread_exit():
nuttx/syscall/proxies/PROXY_nx_pthread_exit.c:10
#include <syscall.h>

#if !defined(CONFIG_DISABLE_PTHREAD)

void nx_pthread_exit(pthread_addr_t parm1)
{
    800647b6:	85aa                	mv	a1,a0
sys_call1():
nuttx/include/arch/syscall.h:199
  register long r0 asm("a0") = (long)(nbr);
    800647b8:	06b00513          	li	a0,107
nuttx/include/arch/syscall.h:202
  asm volatile
    800647bc:	00000073          	ecall
nuttx/include/arch/syscall.h:209
  asm volatile("nop" : "=r"(r0));
    800647c0:	0001                	nop
nx_pthread_exit():
nuttx/syscall/proxies/PROXY_nx_pthread_exit.c:12 (discriminator 1)
  sys_call1((unsigned int)SYS_nx_pthread_exit, (uintptr_t)parm1);
  while(1);
    800647c2:	a001                	j	800647c2 <nx_pthread_exit+0xc>

00000000800647c4 <nxsem_clockwait>:
nxsem_clockwait():
nuttx/syscall/proxies/PROXY_nxsem_clockwait.c:8
#include <nuttx/config.h>
#include <nuttx/semaphore.h>
#include <syscall.h>

int nxsem_clockwait(FAR sem_t * parm1, clockid_t parm2, FAR const struct timespec * parm3)
{
    800647c4:	872a                	mv	a4,a0
    800647c6:	87ae                	mv	a5,a1
    800647c8:	86b2                	mv	a3,a2
sys_call3():
nuttx/include/arch/syscall.h:252
  register long r0 asm("a0") = (long)(nbr);
    800647ca:	4571                	li	a0,28
nuttx/include/arch/syscall.h:253
  register long r1 asm("a1") = (long)(parm1);
    800647cc:	85ba                	mv	a1,a4
nuttx/include/arch/syscall.h:254
  register long r2 asm("a2") = (long)(parm2);
    800647ce:	863e                	mv	a2,a5
nuttx/include/arch/syscall.h:257
  asm volatile
    800647d0:	00000073          	ecall
nuttx/include/arch/syscall.h:264
  asm volatile("nop" : "=r"(r0));
    800647d4:	0001                	nop
nxsem_clockwait():
nuttx/syscall/proxies/PROXY_nxsem_clockwait.c:10
  return (int)sys_call3((unsigned int)SYS_nxsem_clockwait, (uintptr_t)parm1, (uintptr_t)parm2, (uintptr_t)parm3);
}
    800647d6:	2501                	sext.w	a0,a0
    800647d8:	8082                	ret

00000000800647da <nxsem_destroy>:
nxsem_destroy():
nuttx/syscall/proxies/PROXY_nxsem_destroy.c:8
#include <nuttx/config.h>
#include <nuttx/semaphore.h>
#include <syscall.h>

int nxsem_destroy(FAR sem_t * parm1)
{
    800647da:	85aa                	mv	a1,a0
sys_call1():
nuttx/include/arch/syscall.h:199
  register long r0 asm("a0") = (long)(nbr);
    800647dc:	4569                	li	a0,26
nuttx/include/arch/syscall.h:202
  asm volatile
    800647de:	00000073          	ecall
nuttx/include/arch/syscall.h:209
  asm volatile("nop" : "=r"(r0));
    800647e2:	0001                	nop
nxsem_destroy():
nuttx/syscall/proxies/PROXY_nxsem_destroy.c:10
  return (int)sys_call1((unsigned int)SYS_nxsem_destroy, (uintptr_t)parm1);
}
    800647e4:	2501                	sext.w	a0,a0
    800647e6:	8082                	ret

00000000800647e8 <nxsem_post>:
nxsem_post():
nuttx/syscall/proxies/PROXY_nxsem_post.c:8
#include <nuttx/config.h>
#include <nuttx/semaphore.h>
#include <syscall.h>

int nxsem_post(FAR sem_t * parm1)
{
    800647e8:	85aa                	mv	a1,a0
sys_call1():
nuttx/include/arch/syscall.h:199
  register long r0 asm("a0") = (long)(nbr);
    800647ea:	456d                	li	a0,27
nuttx/include/arch/syscall.h:202
  asm volatile
    800647ec:	00000073          	ecall
nuttx/include/arch/syscall.h:209
  asm volatile("nop" : "=r"(r0));
    800647f0:	0001                	nop
nxsem_post():
nuttx/syscall/proxies/PROXY_nxsem_post.c:10
  return (int)sys_call1((unsigned int)SYS_nxsem_post, (uintptr_t)parm1);
}
    800647f2:	2501                	sext.w	a0,a0
    800647f4:	8082                	ret

00000000800647f6 <nxsem_trywait>:
nxsem_trywait():
nuttx/syscall/proxies/PROXY_nxsem_trywait.c:8
#include <nuttx/config.h>
#include <nuttx/semaphore.h>
#include <syscall.h>

int nxsem_trywait(FAR sem_t * parm1)
{
    800647f6:	85aa                	mv	a1,a0
sys_call1():
nuttx/include/arch/syscall.h:199
  register long r0 asm("a0") = (long)(nbr);
    800647f8:	4579                	li	a0,30
nuttx/include/arch/syscall.h:202
  asm volatile
    800647fa:	00000073          	ecall
nuttx/include/arch/syscall.h:209
  asm volatile("nop" : "=r"(r0));
    800647fe:	0001                	nop
nxsem_trywait():
nuttx/syscall/proxies/PROXY_nxsem_trywait.c:10
  return (int)sys_call1((unsigned int)SYS_nxsem_trywait, (uintptr_t)parm1);
}
    80064800:	2501                	sext.w	a0,a0
    80064802:	8082                	ret

0000000080064804 <nxsem_wait>:
nxsem_wait():
nuttx/syscall/proxies/PROXY_nxsem_wait.c:8
#include <nuttx/config.h>
#include <nuttx/semaphore.h>
#include <syscall.h>

int nxsem_wait(FAR sem_t * parm1)
{
    80064804:	85aa                	mv	a1,a0
sys_call1():
nuttx/include/arch/syscall.h:199
  register long r0 asm("a0") = (long)(nbr);
    80064806:	457d                	li	a0,31
nuttx/include/arch/syscall.h:202
  asm volatile
    80064808:	00000073          	ecall
nuttx/include/arch/syscall.h:209
  asm volatile("nop" : "=r"(r0));
    8006480c:	0001                	nop
nxsem_wait():
nuttx/syscall/proxies/PROXY_nxsem_wait.c:10
  return (int)sys_call1((unsigned int)SYS_nxsem_wait, (uintptr_t)parm1);
}
    8006480e:	2501                	sext.w	a0,a0
    80064810:	8082                	ret

0000000080064812 <open>:
open():
nuttx/syscall/proxies/PROXY_open.c:9
#include <stdarg.h>
#include <fcntl.h>
#include <syscall.h>

int open(FAR const char * parm1, int parm2, ...)
{
    80064812:	7139                	addi	sp,sp,-64
    80064814:	8332                	mv	t1,a2
    80064816:	8eaa                	mv	t4,a0
    80064818:	8e2e                	mv	t3,a1
    8006481a:	ec36                	sd	a3,24(sp)
    8006481c:	f43e                	sd	a5,40(sp)
sys_call3():
nuttx/include/arch/syscall.h:255
  register long r3 asm("a3") = (long)(parm3);
    8006481e:	02031693          	slli	a3,t1,0x20
open():
nuttx/syscall/proxies/PROXY_open.c:13
  va_list ap;
  mode_t parm3;

  va_start(ap, parm2);
    80064822:	081c                	addi	a5,sp,16
nuttx/syscall/proxies/PROXY_open.c:9
{
    80064824:	e832                	sd	a2,16(sp)
    80064826:	f03a                	sd	a4,32(sp)
    80064828:	f842                	sd	a6,48(sp)
    8006482a:	fc46                	sd	a7,56(sp)
nuttx/syscall/proxies/PROXY_open.c:13
  va_start(ap, parm2);
    8006482c:	e43e                	sd	a5,8(sp)
sys_call3():
nuttx/include/arch/syscall.h:252
  register long r0 asm("a0") = (long)(nbr);
    8006482e:	04b00513          	li	a0,75
nuttx/include/arch/syscall.h:253
  register long r1 asm("a1") = (long)(parm1);
    80064832:	85f6                	mv	a1,t4
nuttx/include/arch/syscall.h:254
  register long r2 asm("a2") = (long)(parm2);
    80064834:	8672                	mv	a2,t3
nuttx/include/arch/syscall.h:255
  register long r3 asm("a3") = (long)(parm3);
    80064836:	9281                	srli	a3,a3,0x20
nuttx/include/arch/syscall.h:257
  asm volatile
    80064838:	00000073          	ecall
nuttx/include/arch/syscall.h:264
  asm volatile("nop" : "=r"(r0));
    8006483c:	0001                	nop
open():
nuttx/syscall/proxies/PROXY_open.c:18
  parm3 = va_arg(ap, mode_t);
  va_end(ap);

  return (int)sys_call3((unsigned int)SYS_open, (uintptr_t)parm1, (uintptr_t)parm2, (uintptr_t)parm3);
}
    8006483e:	2501                	sext.w	a0,a0
    80064840:	6121                	addi	sp,sp,64
    80064842:	8082                	ret

0000000080064844 <pgalloc>:
pgalloc():
nuttx/syscall/proxies/PROXY_pgalloc.c:10
#include <syscall.h>

#if defined(CONFIG_BUILD_KERNEL)

uintptr_t pgalloc(uintptr_t parm1, unsigned int parm2)
{
    80064844:	862e                	mv	a2,a1
    80064846:	87aa                	mv	a5,a0
sys_call2():
nuttx/include/arch/syscall.h:227
  register long r2 asm("a2") = (long)(parm2);
    80064848:	1602                	slli	a2,a2,0x20
nuttx/include/arch/syscall.h:225
  register long r0 asm("a0") = (long)(nbr);
    8006484a:	02000513          	li	a0,32
nuttx/include/arch/syscall.h:226
  register long r1 asm("a1") = (long)(parm1);
    8006484e:	85be                	mv	a1,a5
nuttx/include/arch/syscall.h:227
  register long r2 asm("a2") = (long)(parm2);
    80064850:	9201                	srli	a2,a2,0x20
nuttx/include/arch/syscall.h:229
  asm volatile
    80064852:	00000073          	ecall
nuttx/include/arch/syscall.h:236
  asm volatile("nop" : "=r"(r0));
    80064856:	0001                	nop
pgalloc():
nuttx/syscall/proxies/PROXY_pgalloc.c:12
  return (uintptr_t)sys_call2((unsigned int)SYS_pgalloc, (uintptr_t)parm1, (uintptr_t)parm2);
}
    80064858:	8082                	ret

000000008006485a <pthread_cond_clockwait>:
pthread_cond_clockwait():
nuttx/syscall/proxies/PROXY_pthread_cond_clockwait.c:10
#include <syscall.h>

#if !defined(CONFIG_DISABLE_PTHREAD)

int pthread_cond_clockwait(FAR pthread_cond_t * parm1, FAR pthread_mutex_t * parm2, clockid_t parm3, FAR const struct timespec * parm4)
{
    8006485a:	88aa                	mv	a7,a0
    8006485c:	882e                	mv	a6,a1
    8006485e:	87b2                	mv	a5,a2
    80064860:	8736                	mv	a4,a3
sys_call4():
nuttx/include/arch/syscall.h:281
  register long r0 asm("a0") = (long)(nbr);
    80064862:	07600513          	li	a0,118
nuttx/include/arch/syscall.h:282
  register long r1 asm("a1") = (long)(parm1);
    80064866:	85c6                	mv	a1,a7
nuttx/include/arch/syscall.h:283
  register long r2 asm("a2") = (long)(parm2);
    80064868:	8642                	mv	a2,a6
nuttx/include/arch/syscall.h:284
  register long r3 asm("a3") = (long)(parm3);
    8006486a:	86be                	mv	a3,a5
nuttx/include/arch/syscall.h:287
  asm volatile
    8006486c:	00000073          	ecall
nuttx/include/arch/syscall.h:294
  asm volatile("nop" : "=r"(r0));
    80064870:	0001                	nop
pthread_cond_clockwait():
nuttx/syscall/proxies/PROXY_pthread_cond_clockwait.c:12
  return (int)sys_call4((unsigned int)SYS_pthread_cond_clockwait, (uintptr_t)parm1, (uintptr_t)parm2, (uintptr_t)parm3, (uintptr_t)parm4);
}
    80064872:	2501                	sext.w	a0,a0
    80064874:	8082                	ret

0000000080064876 <pthread_cond_signal>:
pthread_cond_signal():
nuttx/syscall/proxies/PROXY_pthread_cond_signal.c:10
#include <syscall.h>

#if !defined(CONFIG_DISABLE_PTHREAD)

int pthread_cond_signal(FAR pthread_cond_t * parm1)
{
    80064876:	85aa                	mv	a1,a0
sys_call1():
nuttx/include/arch/syscall.h:199
  register long r0 asm("a0") = (long)(nbr);
    80064878:	06700513          	li	a0,103
nuttx/include/arch/syscall.h:202
  asm volatile
    8006487c:	00000073          	ecall
nuttx/include/arch/syscall.h:209
  asm volatile("nop" : "=r"(r0));
    80064880:	0001                	nop
pthread_cond_signal():
nuttx/syscall/proxies/PROXY_pthread_cond_signal.c:12
  return (int)sys_call1((unsigned int)SYS_pthread_cond_signal, (uintptr_t)parm1);
}
    80064882:	2501                	sext.w	a0,a0
    80064884:	8082                	ret

0000000080064886 <pthread_cond_wait>:
pthread_cond_wait():
nuttx/syscall/proxies/PROXY_pthread_cond_wait.c:10
#include <syscall.h>

#if !defined(CONFIG_DISABLE_PTHREAD)

int pthread_cond_wait(FAR pthread_cond_t * parm1, FAR pthread_mutex_t * parm2)
{
    80064886:	87aa                	mv	a5,a0
    80064888:	862e                	mv	a2,a1
sys_call2():
nuttx/include/arch/syscall.h:225
  register long r0 asm("a0") = (long)(nbr);
    8006488a:	06800513          	li	a0,104
nuttx/include/arch/syscall.h:226
  register long r1 asm("a1") = (long)(parm1);
    8006488e:	85be                	mv	a1,a5
nuttx/include/arch/syscall.h:229
  asm volatile
    80064890:	00000073          	ecall
nuttx/include/arch/syscall.h:236
  asm volatile("nop" : "=r"(r0));
    80064894:	0001                	nop
pthread_cond_wait():
nuttx/syscall/proxies/PROXY_pthread_cond_wait.c:12
  return (int)sys_call2((unsigned int)SYS_pthread_cond_wait, (uintptr_t)parm1, (uintptr_t)parm2);
}
    80064896:	2501                	sext.w	a0,a0
    80064898:	8082                	ret

000000008006489a <pthread_mutex_destroy>:
pthread_mutex_destroy():
nuttx/syscall/proxies/PROXY_pthread_mutex_destroy.c:10
#include <syscall.h>

#if !defined(CONFIG_DISABLE_PTHREAD)

int pthread_mutex_destroy(FAR pthread_mutex_t * parm1)
{
    8006489a:	85aa                	mv	a1,a0
sys_call1():
nuttx/include/arch/syscall.h:199
  register long r0 asm("a0") = (long)(nbr);
    8006489c:	06e00513          	li	a0,110
nuttx/include/arch/syscall.h:202
  asm volatile
    800648a0:	00000073          	ecall
nuttx/include/arch/syscall.h:209
  asm volatile("nop" : "=r"(r0));
    800648a4:	0001                	nop
pthread_mutex_destroy():
nuttx/syscall/proxies/PROXY_pthread_mutex_destroy.c:12
  return (int)sys_call1((unsigned int)SYS_pthread_mutex_destroy, (uintptr_t)parm1);
}
    800648a6:	2501                	sext.w	a0,a0
    800648a8:	8082                	ret

00000000800648aa <pthread_mutex_init>:
pthread_mutex_init():
nuttx/syscall/proxies/PROXY_pthread_mutex_init.c:10
#include <syscall.h>

#if !defined(CONFIG_DISABLE_PTHREAD)

int pthread_mutex_init(FAR pthread_mutex_t * parm1, FAR const pthread_mutexattr_t * parm2)
{
    800648aa:	87aa                	mv	a5,a0
    800648ac:	862e                	mv	a2,a1
sys_call2():
nuttx/include/arch/syscall.h:225
  register long r0 asm("a0") = (long)(nbr);
    800648ae:	06f00513          	li	a0,111
nuttx/include/arch/syscall.h:226
  register long r1 asm("a1") = (long)(parm1);
    800648b2:	85be                	mv	a1,a5
nuttx/include/arch/syscall.h:229
  asm volatile
    800648b4:	00000073          	ecall
nuttx/include/arch/syscall.h:236
  asm volatile("nop" : "=r"(r0));
    800648b8:	0001                	nop
pthread_mutex_init():
nuttx/syscall/proxies/PROXY_pthread_mutex_init.c:12
  return (int)sys_call2((unsigned int)SYS_pthread_mutex_init, (uintptr_t)parm1, (uintptr_t)parm2);
}
    800648ba:	2501                	sext.w	a0,a0
    800648bc:	8082                	ret

00000000800648be <pthread_mutex_timedlock>:
pthread_mutex_timedlock():
nuttx/syscall/proxies/PROXY_pthread_mutex_timedlock.c:10
#include <syscall.h>

#if !defined(CONFIG_DISABLE_PTHREAD)

int pthread_mutex_timedlock(FAR pthread_mutex_t * parm1, FAR const struct timespec * parm2)
{
    800648be:	87aa                	mv	a5,a0
    800648c0:	862e                	mv	a2,a1
sys_call2():
nuttx/include/arch/syscall.h:225
  register long r0 asm("a0") = (long)(nbr);
    800648c2:	07000513          	li	a0,112
nuttx/include/arch/syscall.h:226
  register long r1 asm("a1") = (long)(parm1);
    800648c6:	85be                	mv	a1,a5
nuttx/include/arch/syscall.h:229
  asm volatile
    800648c8:	00000073          	ecall
nuttx/include/arch/syscall.h:236
  asm volatile("nop" : "=r"(r0));
    800648cc:	0001                	nop
pthread_mutex_timedlock():
nuttx/syscall/proxies/PROXY_pthread_mutex_timedlock.c:12
  return (int)sys_call2((unsigned int)SYS_pthread_mutex_timedlock, (uintptr_t)parm1, (uintptr_t)parm2);
}
    800648ce:	2501                	sext.w	a0,a0
    800648d0:	8082                	ret

00000000800648d2 <pthread_mutex_unlock>:
pthread_mutex_unlock():
nuttx/syscall/proxies/PROXY_pthread_mutex_unlock.c:10
#include <syscall.h>

#if !defined(CONFIG_DISABLE_PTHREAD)

int pthread_mutex_unlock(FAR pthread_mutex_t * parm1)
{
    800648d2:	85aa                	mv	a1,a0
sys_call1():
nuttx/include/arch/syscall.h:199
  register long r0 asm("a0") = (long)(nbr);
    800648d4:	07200513          	li	a0,114
nuttx/include/arch/syscall.h:202
  asm volatile
    800648d8:	00000073          	ecall
nuttx/include/arch/syscall.h:209
  asm volatile("nop" : "=r"(r0));
    800648dc:	0001                	nop
pthread_mutex_unlock():
nuttx/syscall/proxies/PROXY_pthread_mutex_unlock.c:12
  return (int)sys_call1((unsigned int)SYS_pthread_mutex_unlock, (uintptr_t)parm1);
}
    800648de:	2501                	sext.w	a0,a0
    800648e0:	8082                	ret

00000000800648e2 <read>:
read():
nuttx/syscall/proxies/PROXY_read.c:8
#include <nuttx/config.h>
#include <unistd.h>
#include <syscall.h>

ssize_t read(int parm1, FAR void * parm2, size_t parm3)
{
    800648e2:	872a                	mv	a4,a0
    800648e4:	87ae                	mv	a5,a1
    800648e6:	86b2                	mv	a3,a2
sys_call3():
nuttx/include/arch/syscall.h:252
  register long r0 asm("a0") = (long)(nbr);
    800648e8:	03c00513          	li	a0,60
nuttx/include/arch/syscall.h:253
  register long r1 asm("a1") = (long)(parm1);
    800648ec:	85ba                	mv	a1,a4
nuttx/include/arch/syscall.h:254
  register long r2 asm("a2") = (long)(parm2);
    800648ee:	863e                	mv	a2,a5
nuttx/include/arch/syscall.h:257
  asm volatile
    800648f0:	00000073          	ecall
nuttx/include/arch/syscall.h:264
  asm volatile("nop" : "=r"(r0));
    800648f4:	0001                	nop
read():
nuttx/syscall/proxies/PROXY_read.c:10
  return (ssize_t)sys_call3((unsigned int)SYS_read, (uintptr_t)parm1, (uintptr_t)parm2, (uintptr_t)parm3);
}
    800648f6:	8082                	ret

00000000800648f8 <rename>:
rename():
nuttx/syscall/proxies/PROXY_rename.c:8
#include <nuttx/config.h>
#include <stdio.h>
#include <syscall.h>

int rename(FAR const char * parm1, FAR const char * parm2)
{
    800648f8:	87aa                	mv	a5,a0
    800648fa:	862e                	mv	a2,a1
sys_call2():
nuttx/include/arch/syscall.h:225
  register long r0 asm("a0") = (long)(nbr);
    800648fc:	04c00513          	li	a0,76
nuttx/include/arch/syscall.h:226
  register long r1 asm("a1") = (long)(parm1);
    80064900:	85be                	mv	a1,a5
nuttx/include/arch/syscall.h:229
  asm volatile
    80064902:	00000073          	ecall
nuttx/include/arch/syscall.h:236
  asm volatile("nop" : "=r"(r0));
    80064906:	0001                	nop
rename():
nuttx/syscall/proxies/PROXY_rename.c:10
  return (int)sys_call2((unsigned int)SYS_rename, (uintptr_t)parm1, (uintptr_t)parm2);
}
    80064908:	2501                	sext.w	a0,a0
    8006490a:	8082                	ret

000000008006490c <rmdir>:
rmdir():
nuttx/syscall/proxies/PROXY_rmdir.c:10
#include <syscall.h>

#if !defined(CONFIG_DISABLE_MOUNTPOINT)

int rmdir(FAR const char* parm1)
{
    8006490c:	85aa                	mv	a1,a0
sys_call1():
nuttx/include/arch/syscall.h:199
  register long r0 asm("a0") = (long)(nbr);
    8006490e:	06100513          	li	a0,97
nuttx/include/arch/syscall.h:202
  asm volatile
    80064912:	00000073          	ecall
nuttx/include/arch/syscall.h:209
  asm volatile("nop" : "=r"(r0));
    80064916:	0001                	nop
rmdir():
nuttx/syscall/proxies/PROXY_rmdir.c:12
  return (int)sys_call1((unsigned int)SYS_rmdir, (uintptr_t)parm1);
}
    80064918:	2501                	sext.w	a0,a0
    8006491a:	8082                	ret

000000008006491c <sched_lock>:
sys_call0():
nuttx/include/arch/syscall.h:175
  register long r0 asm("a0") = (long)(nbr);
    8006491c:	453d                	li	a0,15
nuttx/include/arch/syscall.h:177
  asm volatile
    8006491e:	00000073          	ecall
nuttx/include/arch/syscall.h:184
  asm volatile("nop" : "=r"(r0));
    80064922:	0001                	nop
sched_lock():
nuttx/syscall/proxies/PROXY_sched_lock.c:10
#include <syscall.h>

int sched_lock(void)
{
  return (int)sys_call0((unsigned int)SYS_sched_lock);
}
    80064924:	2501                	sext.w	a0,a0
    80064926:	8082                	ret

0000000080064928 <sched_unlock>:
sys_call0():
nuttx/include/arch/syscall.h:175
  register long r0 asm("a0") = (long)(nbr);
    80064928:	4551                	li	a0,20
nuttx/include/arch/syscall.h:177
  asm volatile
    8006492a:	00000073          	ecall
nuttx/include/arch/syscall.h:184
  asm volatile("nop" : "=r"(r0));
    8006492e:	0001                	nop
sched_unlock():
nuttx/syscall/proxies/PROXY_sched_unlock.c:10
#include <syscall.h>

int sched_unlock(void)
{
  return (int)sys_call0((unsigned int)SYS_sched_unlock);
}
    80064930:	2501                	sext.w	a0,a0
    80064932:	8082                	ret

0000000080064934 <select>:
select():
nuttx/syscall/proxies/PROXY_select.c:8
#include <nuttx/config.h>
#include <sys/select.h>
#include <syscall.h>

int select(int parm1, FAR fd_set * parm2, FAR fd_set * parm3, FAR fd_set * parm4, FAR struct timeval * parm5)
{
    80064934:	8e2a                	mv	t3,a0
    80064936:	832e                	mv	t1,a1
    80064938:	88b2                	mv	a7,a2
    8006493a:	8836                	mv	a6,a3
    8006493c:	87ba                	mv	a5,a4
sys_call5():
nuttx/include/arch/syscall.h:311
  register long r0 asm("a0") = (long)(nbr);
    8006493e:	04100513          	li	a0,65
nuttx/include/arch/syscall.h:312
  register long r1 asm("a1") = (long)(parm1);
    80064942:	85f2                	mv	a1,t3
nuttx/include/arch/syscall.h:313
  register long r2 asm("a2") = (long)(parm2);
    80064944:	861a                	mv	a2,t1
nuttx/include/arch/syscall.h:314
  register long r3 asm("a3") = (long)(parm3);
    80064946:	86c6                	mv	a3,a7
nuttx/include/arch/syscall.h:315
  register long r4 asm("a4") = (long)(parm4);
    80064948:	8742                	mv	a4,a6
nuttx/include/arch/syscall.h:318
  asm volatile
    8006494a:	00000073          	ecall
nuttx/include/arch/syscall.h:325
  asm volatile("nop" : "=r"(r0));
    8006494e:	0001                	nop
select():
nuttx/syscall/proxies/PROXY_select.c:10
  return (int)sys_call5((unsigned int)SYS_select, (uintptr_t)parm1, (uintptr_t)parm2, (uintptr_t)parm3, (uintptr_t)parm4, (uintptr_t)parm5);
}
    80064950:	2501                	sext.w	a0,a0
    80064952:	8082                	ret

0000000080064954 <setenv>:
setenv():
nuttx/syscall/proxies/PROXY_setenv.c:10
#include <syscall.h>

#if !defined(CONFIG_DISABLE_ENVIRON)

int setenv(FAR const char * parm1, FAR const char * parm2, int parm3)
{
    80064954:	872a                	mv	a4,a0
    80064956:	87ae                	mv	a5,a1
    80064958:	86b2                	mv	a3,a2
sys_call3():
nuttx/include/arch/syscall.h:252
  register long r0 asm("a0") = (long)(nbr);
    8006495a:	08600513          	li	a0,134
nuttx/include/arch/syscall.h:253
  register long r1 asm("a1") = (long)(parm1);
    8006495e:	85ba                	mv	a1,a4
nuttx/include/arch/syscall.h:254
  register long r2 asm("a2") = (long)(parm2);
    80064960:	863e                	mv	a2,a5
nuttx/include/arch/syscall.h:257
  asm volatile
    80064962:	00000073          	ecall
nuttx/include/arch/syscall.h:264
  asm volatile("nop" : "=r"(r0));
    80064966:	0001                	nop
setenv():
nuttx/syscall/proxies/PROXY_setenv.c:12
  return (int)sys_call3((unsigned int)SYS_setenv, (uintptr_t)parm1, (uintptr_t)parm2, (uintptr_t)parm3);
}
    80064968:	2501                	sext.w	a0,a0
    8006496a:	8082                	ret

000000008006496c <sigaction>:
sigaction():
nuttx/syscall/proxies/PROXY_sigaction.c:8
#include <nuttx/config.h>
#include <signal.h>
#include <syscall.h>

int sigaction(int parm1, FAR const struct sigaction * parm2, FAR struct sigaction * parm3)
{
    8006496c:	872a                	mv	a4,a0
    8006496e:	87ae                	mv	a5,a1
    80064970:	86b2                	mv	a3,a2
sys_call3():
nuttx/include/arch/syscall.h:252
  register long r0 asm("a0") = (long)(nbr);
    80064972:	02700513          	li	a0,39
nuttx/include/arch/syscall.h:253
  register long r1 asm("a1") = (long)(parm1);
    80064976:	85ba                	mv	a1,a4
nuttx/include/arch/syscall.h:254
  register long r2 asm("a2") = (long)(parm2);
    80064978:	863e                	mv	a2,a5
nuttx/include/arch/syscall.h:257
  asm volatile
    8006497a:	00000073          	ecall
nuttx/include/arch/syscall.h:264
  asm volatile("nop" : "=r"(r0));
    8006497e:	0001                	nop
sigaction():
nuttx/syscall/proxies/PROXY_sigaction.c:10
  return (int)sys_call3((unsigned int)SYS_sigaction, (uintptr_t)parm1, (uintptr_t)parm2, (uintptr_t)parm3);
}
    80064980:	2501                	sext.w	a0,a0
    80064982:	8082                	ret

0000000080064984 <stat>:
stat():
nuttx/syscall/proxies/PROXY_stat.c:8
#include <nuttx/config.h>
#include <sys/stat.h>
#include <syscall.h>

int stat(FAR const char * parm1, FAR struct stat * parm2)
{
    80064984:	87aa                	mv	a5,a0
    80064986:	862e                	mv	a2,a1
sys_call2():
nuttx/include/arch/syscall.h:225
  register long r0 asm("a0") = (long)(nbr);
    80064988:	04d00513          	li	a0,77
nuttx/include/arch/syscall.h:226
  register long r1 asm("a1") = (long)(parm1);
    8006498c:	85be                	mv	a1,a5
nuttx/include/arch/syscall.h:229
  asm volatile
    8006498e:	00000073          	ecall
nuttx/include/arch/syscall.h:236
  asm volatile("nop" : "=r"(r0));
    80064992:	0001                	nop
stat():
nuttx/syscall/proxies/PROXY_stat.c:10
  return (int)sys_call2((unsigned int)SYS_stat, (uintptr_t)parm1, (uintptr_t)parm2);
}
    80064994:	2501                	sext.w	a0,a0
    80064996:	8082                	ret

0000000080064998 <unlink>:
unlink():
nuttx/syscall/proxies/PROXY_unlink.c:10
#include <syscall.h>

#if !defined(CONFIG_DISABLE_MOUNTPOINT)

int unlink(FAR const char * parm1)
{
    80064998:	85aa                	mv	a1,a0
sys_call1():
nuttx/include/arch/syscall.h:199
  register long r0 asm("a0") = (long)(nbr);
    8006499a:	06300513          	li	a0,99
nuttx/include/arch/syscall.h:202
  asm volatile
    8006499e:	00000073          	ecall
nuttx/include/arch/syscall.h:209
  asm volatile("nop" : "=r"(r0));
    800649a2:	0001                	nop
unlink():
nuttx/syscall/proxies/PROXY_unlink.c:12
  return (int)sys_call1((unsigned int)SYS_unlink, (uintptr_t)parm1);
}
    800649a4:	2501                	sext.w	a0,a0
    800649a6:	8082                	ret

00000000800649a8 <unsetenv>:
unsetenv():
nuttx/syscall/proxies/PROXY_unsetenv.c:10
#include <syscall.h>

#if !defined(CONFIG_DISABLE_ENVIRON)

int unsetenv(FAR const char * parm1)
{
    800649a8:	85aa                	mv	a1,a0
sys_call1():
nuttx/include/arch/syscall.h:199
  register long r0 asm("a0") = (long)(nbr);
    800649aa:	08700513          	li	a0,135
nuttx/include/arch/syscall.h:202
  asm volatile
    800649ae:	00000073          	ecall
nuttx/include/arch/syscall.h:209
  asm volatile("nop" : "=r"(r0));
    800649b2:	0001                	nop
unsetenv():
nuttx/syscall/proxies/PROXY_unsetenv.c:12
  return (int)sys_call1((unsigned int)SYS_unsetenv, (uintptr_t)parm1);
}
    800649b4:	2501                	sext.w	a0,a0
    800649b6:	8082                	ret

00000000800649b8 <up_fork>:
sys_call0():
nuttx/include/arch/syscall.h:175
  register long r0 asm("a0") = (long)(nbr);
    800649b8:	02100513          	li	a0,33
nuttx/include/arch/syscall.h:177
  asm volatile
    800649bc:	00000073          	ecall
nuttx/include/arch/syscall.h:184
  asm volatile("nop" : "=r"(r0));
    800649c0:	0001                	nop
up_fork():
nuttx/syscall/proxies/PROXY_up_fork.c:12
#if defined(CONFIG_ARCH_HAVE_FORK)

pid_t up_fork(void)
{
  return (pid_t)sys_call0((unsigned int)SYS_up_fork);
}
    800649c2:	2501                	sext.w	a0,a0
    800649c4:	8082                	ret

00000000800649c6 <utimens>:
utimens():
nuttx/syscall/proxies/PROXY_utimens.c:8
#include <nuttx/config.h>
#include <sys/stat.h>
#include <syscall.h>

int utimens(FAR const char * parm1, const struct timespec parm2[2])
{
    800649c6:	87aa                	mv	a5,a0
    800649c8:	862e                	mv	a2,a1
sys_call2():
nuttx/include/arch/syscall.h:225
  register long r0 asm("a0") = (long)(nbr);
    800649ca:	05b00513          	li	a0,91
nuttx/include/arch/syscall.h:226
  register long r1 asm("a1") = (long)(parm1);
    800649ce:	85be                	mv	a1,a5
nuttx/include/arch/syscall.h:229
  asm volatile
    800649d0:	00000073          	ecall
nuttx/include/arch/syscall.h:236
  asm volatile("nop" : "=r"(r0));
    800649d4:	0001                	nop
utimens():
nuttx/syscall/proxies/PROXY_utimens.c:10
  return (int)sys_call2((unsigned int)SYS_utimens, (uintptr_t)parm1, (uintptr_t)parm2);
}
    800649d6:	2501                	sext.w	a0,a0
    800649d8:	8082                	ret

00000000800649da <waitpid>:
waitpid():
nuttx/syscall/proxies/PROXY_waitpid.c:10
#include <syscall.h>

#if defined(CONFIG_SCHED_WAITPID)

pid_t waitpid(pid_t parm1, FAR int * parm2, int parm3)
{
    800649da:	872a                	mv	a4,a0
    800649dc:	87ae                	mv	a5,a1
    800649de:	86b2                	mv	a3,a2
sys_call3():
nuttx/include/arch/syscall.h:252
  register long r0 asm("a0") = (long)(nbr);
    800649e0:	02200513          	li	a0,34
nuttx/include/arch/syscall.h:253
  register long r1 asm("a1") = (long)(parm1);
    800649e4:	85ba                	mv	a1,a4
nuttx/include/arch/syscall.h:254
  register long r2 asm("a2") = (long)(parm2);
    800649e6:	863e                	mv	a2,a5
nuttx/include/arch/syscall.h:257
  asm volatile
    800649e8:	00000073          	ecall
nuttx/include/arch/syscall.h:264
  asm volatile("nop" : "=r"(r0));
    800649ec:	0001                	nop
waitpid():
nuttx/syscall/proxies/PROXY_waitpid.c:12
  return (pid_t)sys_call3((unsigned int)SYS_waitpid, (uintptr_t)parm1, (uintptr_t)parm2, (uintptr_t)parm3);
}
    800649ee:	2501                	sext.w	a0,a0
    800649f0:	8082                	ret

00000000800649f2 <write>:
write():
nuttx/syscall/proxies/PROXY_write.c:8
#include <nuttx/config.h>
#include <unistd.h>
#include <syscall.h>

ssize_t write(int parm1, FAR const void * parm2, size_t parm3)
{
    800649f2:	872a                	mv	a4,a0
    800649f4:	87ae                	mv	a5,a1
    800649f6:	86b2                	mv	a3,a2
sys_call3():
nuttx/include/arch/syscall.h:252
  register long r0 asm("a0") = (long)(nbr);
    800649f8:	03d00513          	li	a0,61
nuttx/include/arch/syscall.h:253
  register long r1 asm("a1") = (long)(parm1);
    800649fc:	85ba                	mv	a1,a4
nuttx/include/arch/syscall.h:254
  register long r2 asm("a2") = (long)(parm2);
    800649fe:	863e                	mv	a2,a5
nuttx/include/arch/syscall.h:257
  asm volatile
    80064a00:	00000073          	ecall
nuttx/include/arch/syscall.h:264
  asm volatile("nop" : "=r"(r0));
    80064a04:	0001                	nop
write():
nuttx/syscall/proxies/PROXY_write.c:10
  return (ssize_t)sys_call3((unsigned int)SYS_write, (uintptr_t)parm1, (uintptr_t)parm2, (uintptr_t)parm3);
}
    80064a06:	8082                	ret

0000000080064a08 <zalloc>:
zalloc():
nuttx/mm/umm_heap/umm_zalloc.c:54
 *
 ****************************************************************************/

#undef zalloc /* See mm/README.txt */
FAR void *zalloc(size_t size)
{
    80064a08:	1101                	addi	sp,sp,-32
    80064a0a:	e822                	sd	s0,16(sp)
    80064a0c:	ec06                	sd	ra,24(sp)
    80064a0e:	e42a                	sd	a0,8(sp)
nuttx/mm/umm_heap/umm_zalloc.c:58
#ifdef CONFIG_ARCH_ADDRENV
  /* Use malloc() because it implements the sbrk() logic */

  FAR void *mem = malloc(size);
    80064a10:	ab2fb0ef          	jal	ra,8005fcc2 <malloc>
    80064a14:	842a                	mv	s0,a0
nuttx/mm/umm_heap/umm_zalloc.c:59
  if (mem)
    80064a16:	c509                	beqz	a0,80064a20 <zalloc+0x18>
nuttx/mm/umm_heap/umm_zalloc.c:61
    {
       memset(mem, 0, size);
    80064a18:	6622                	ld	a2,8(sp)
    80064a1a:	4581                	li	a1,0
    80064a1c:	a26ff0ef          	jal	ra,80063c42 <memset>
nuttx/mm/umm_heap/umm_zalloc.c:78
      set_errno(ENOMEM);
    }

  return ret;
#endif
}
    80064a20:	60e2                	ld	ra,24(sp)
    80064a22:	8522                	mv	a0,s0
    80064a24:	6442                	ld	s0,16(sp)
    80064a26:	6105                	addi	sp,sp,32
    80064a28:	8082                	ret
