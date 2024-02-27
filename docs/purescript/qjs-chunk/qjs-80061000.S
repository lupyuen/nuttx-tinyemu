    80060000:	ff043503          	ld	a0,-16(s0)
nuttx/mm/mm_heap/mm_free.c:168
      prev = (FAR struct mm_freenode_s *)
    80060004:	8d89                	sub	a1,a1,a0
nuttx/mm/mm_heap/mm_free.c:170
      prevsize = MM_SIZEOF_NODE(prev);
    80060006:	6594                	ld	a3,8(a1)
    80060008:	ffc6f793          	andi	a5,a3,-4
nuttx/mm/mm_heap/mm_free.c:171
      DEBUGASSERT(MM_NODE_IS_FREE(prev) && node->preceding == prevsize);
    8006000c:	8a85                	andi	a3,a3,1
    8006000e:	e299                	bnez	a3,80060014 <mm_delayfree+0xee>
    80060010:	00f50f63          	beq	a0,a5,8006002e <mm_delayfree+0x108>
    80060014:	00029617          	auipc	a2,0x29
    80060018:	f1460613          	addi	a2,a2,-236 # 80088f28 <qjsc_qjscalc+0x8050>
    8006001c:	0ab00593          	li	a1,171
    80060020:	b7b9                	j	8005ff6e <mm_delayfree+0x48>
nuttx/mm/mm_heap/mm_free.c:158
      next->size     |= MM_PREVFREE_BIT;
    80060022:	0027e793          	ori	a5,a5,2
    80060026:	e69c                	sd	a5,8(a3)
nuttx/mm/mm_heap/mm_free.c:159
      next->preceding = nodesize;
    80060028:	e298                	sd	a4,0(a3)
    8006002a:	8636                	mv	a2,a3
    8006002c:	b7f1                	j	8005fff8 <mm_delayfree+0xd2>
nuttx/mm/mm_heap/mm_free.c:177
      DEBUGASSERT(prev->blink);
    8006002e:	6d88                	ld	a0,24(a1)
    80060030:	e901                	bnez	a0,80060040 <mm_delayfree+0x11a>
    80060032:	00029617          	auipc	a2,0x29
    80060036:	02e60613          	addi	a2,a2,46 # 80089060 <qjsc_qjscalc+0x8188>
    8006003a:	0b100593          	li	a1,177
    8006003e:	bf05                	j	8005ff6e <mm_delayfree+0x48>
nuttx/mm/mm_heap/mm_free.c:178
      prev->blink->flink = prev->flink;
    80060040:	6994                	ld	a3,16(a1)
    80060042:	e914                	sd	a3,16(a0)
nuttx/mm/mm_heap/mm_free.c:179
      if (prev->flink)
    80060044:	c299                	beqz	a3,8006004a <mm_delayfree+0x124>
nuttx/mm/mm_heap/mm_free.c:181
          prev->flink->blink = prev->blink;
    80060046:	6d88                	ld	a0,24(a1)
    80060048:	ee88                	sd	a0,24(a3)
nuttx/mm/mm_heap/mm_free.c:186
      prevsize       += nodesize;
    8006004a:	973e                	add	a4,a4,a5
nuttx/mm/mm_heap/mm_free.c:187
      prev->size      = prevsize | (prev->size & MM_MASK_BIT);
    8006004c:	659c                	ld	a5,8(a1)
    8006004e:	8b8d                	andi	a5,a5,3
    80060050:	8fd9                	or	a5,a5,a4
    80060052:	e59c                	sd	a5,8(a1)
nuttx/mm/mm_heap/mm_free.c:188
      next->preceding = prevsize;
    80060054:	e218                	sd	a4,0(a2)
nuttx/mm/mm_heap/mm_free.c:194
  mm_addfreechunk(heap, node);
    80060056:	8526                	mv	a0,s1
    80060058:	656000ef          	jal	ra,800606ae <mm_addfreechunk>
    8006005c:	b5dd                	j	8005ff42 <mm_delayfree+0x1c>
nuttx/mm/mm_heap/mm_free.c:196
}
    8006005e:	60e2                	ld	ra,24(sp)
    80060060:	6442                	ld	s0,16(sp)
    80060062:	64a2                	ld	s1,8(sp)
    80060064:	6902                	ld	s2,0(sp)
    80060066:	6105                	addi	sp,sp,32
    80060068:	8082                	ret

000000008006006a <mm_free>:
mm_free():
nuttx/mm/mm_heap/mm_free.c:213
{
  minfo("Freeing %p\n", mem);

  /* Protect against attempts to free a NULL reference */

  if (mem == NULL)
    8006006a:	cd9d                	beqz	a1,800600a8 <mm_free+0x3e>
nuttx/mm/mm_heap/mm_free.c:208
{
    8006006c:	1101                	addi	sp,sp,-32
    8006006e:	e822                	sd	s0,16(sp)
    80060070:	e426                	sd	s1,8(sp)
    80060072:	ec06                	sd	ra,24(sp)
    80060074:	84aa                	mv	s1,a0
    80060076:	842e                	mv	s0,a1
nuttx/mm/mm_heap/mm_free.c:218
    {
      return;
    }

  DEBUGASSERT(mm_heapmember(heap, mem));
    80060078:	478000ef          	jal	ra,800604f0 <mm_heapmember>
    8006007c:	ed09                	bnez	a0,80060096 <mm_free+0x2c>
nuttx/mm/mm_heap/mm_free.c:218 (discriminator 1)
    8006007e:	00029617          	auipc	a2,0x29
    80060082:	eea60613          	addi	a2,a2,-278 # 80088f68 <qjsc_qjscalc+0x8090>
    80060086:	0da00593          	li	a1,218
    8006008a:	00029517          	auipc	a0,0x29
    8006008e:	e0e50513          	addi	a0,a0,-498 # 80088e98 <qjsc_qjscalc+0x7fc0>
    80060092:	0cb000ef          	jal	ra,8006095c <__assert>
nuttx/mm/mm_heap/mm_free.c:227 (discriminator 2)
    {
      return;
    }
#endif

  mm_delayfree(heap, mem, CONFIG_MM_FREE_DELAYCOUNT_MAX > 0);
    80060096:	85a2                	mv	a1,s0
nuttx/mm/mm_heap/mm_free.c:228 (discriminator 2)
}
    80060098:	6442                	ld	s0,16(sp)
    8006009a:	60e2                	ld	ra,24(sp)
nuttx/mm/mm_heap/mm_free.c:227 (discriminator 2)
  mm_delayfree(heap, mem, CONFIG_MM_FREE_DELAYCOUNT_MAX > 0);
    8006009c:	8526                	mv	a0,s1
nuttx/mm/mm_heap/mm_free.c:228 (discriminator 2)
}
    8006009e:	64a2                	ld	s1,8(sp)
nuttx/mm/mm_heap/mm_free.c:227 (discriminator 2)
  mm_delayfree(heap, mem, CONFIG_MM_FREE_DELAYCOUNT_MAX > 0);
    800600a0:	4601                	li	a2,0
nuttx/mm/mm_heap/mm_free.c:228 (discriminator 2)
}
    800600a2:	6105                	addi	sp,sp,32
nuttx/mm/mm_heap/mm_free.c:227 (discriminator 2)
  mm_delayfree(heap, mem, CONFIG_MM_FREE_DELAYCOUNT_MAX > 0);
    800600a4:	e83ff06f          	j	8005ff26 <mm_delayfree>
    800600a8:	8082                	ret

00000000800600aa <mm_memalign>:
mm_memalign():
nuttx/mm/mm_heap/mm_memalign.c:63
  size_t allocsize;
  size_t newsize;

  /* Make sure that alignment is less than half max size_t */

  if (alignment >= (SIZE_MAX / 2))
    800600aa:	5775                	li	a4,-3
    800600ac:	8305                	srli	a4,a4,0x1
    800600ae:	00b77f63          	bgeu	a4,a1,800600cc <mm_memalign+0x22>
nuttx/mm/mm_heap/mm_memalign.c:65
    {
      return NULL;
    800600b2:	4501                	li	a0,0
nuttx/mm/mm_heap/mm_memalign.c:279
  kasan_unpoison((FAR void *)alignedchunk,
                 mm_malloc_size(heap, (FAR void *)alignedchunk));

  DEBUGASSERT(alignedchunk % alignment == 0);
  return (FAR void *)alignedchunk;
}
    800600b4:	8082                	ret
nuttx/mm/mm_heap/mm_memalign.c:65
      return NULL;
    800600b6:	4501                	li	a0,0
nuttx/mm/mm_heap/mm_memalign.c:279
}
    800600b8:	60a6                	ld	ra,72(sp)
    800600ba:	6406                	ld	s0,64(sp)
    800600bc:	74e2                	ld	s1,56(sp)
    800600be:	7942                	ld	s2,48(sp)
    800600c0:	79a2                	ld	s3,40(sp)
    800600c2:	7a02                	ld	s4,32(sp)
    800600c4:	6ae2                	ld	s5,24(sp)
    800600c6:	6b42                	ld	s6,16(sp)
    800600c8:	6161                	addi	sp,sp,80
    800600ca:	8082                	ret
nuttx/mm/mm_heap/mm_memalign.c:53
{
    800600cc:	715d                	addi	sp,sp,-80
    800600ce:	f84a                	sd	s2,48(sp)
nuttx/mm/mm_heap/mm_memalign.c:70
  if ((alignment & -alignment) != alignment)
    800600d0:	40b00933          	neg	s2,a1
nuttx/mm/mm_heap/mm_memalign.c:53
{
    800600d4:	e486                	sd	ra,72(sp)
    800600d6:	e0a2                	sd	s0,64(sp)
    800600d8:	fc26                	sd	s1,56(sp)
    800600da:	f44e                	sd	s3,40(sp)
    800600dc:	f052                	sd	s4,32(sp)
    800600de:	ec56                	sd	s5,24(sp)
    800600e0:	e85a                	sd	s6,16(sp)
nuttx/mm/mm_heap/mm_memalign.c:70
  if ((alignment & -alignment) != alignment)
    800600e2:	00b97933          	and	s2,s2,a1
    800600e6:	fcb918e3          	bne	s2,a1,800600b6 <mm_memalign+0xc>
nuttx/mm/mm_heap/mm_memalign.c:87
  if (alignment <= MM_ALIGN)
    800600ea:	47c1                	li	a5,16
    800600ec:	85b2                	mv	a1,a2
    800600ee:	0327e463          	bltu	a5,s2,80060116 <mm_memalign+0x6c>
nuttx/mm/mm_heap/mm_memalign.c:89
      FAR void *ptr = mm_malloc(heap, size);
    800600f2:	73e000ef          	jal	ra,80060830 <mm_malloc>
nuttx/mm/mm_heap/mm_memalign.c:90
      DEBUGASSERT(ptr == NULL || ((uintptr_t)ptr) % alignment == 0);
    800600f6:	d161                	beqz	a0,800600b6 <mm_memalign+0xc>
nuttx/mm/mm_heap/mm_memalign.c:90 (discriminator 1)
    800600f8:	032577b3          	remu	a5,a0,s2
    800600fc:	dfd5                	beqz	a5,800600b8 <mm_memalign+0xe>
nuttx/mm/mm_heap/mm_memalign.c:90 (discriminator 3)
    800600fe:	00029617          	auipc	a2,0x29
    80060102:	e8a60613          	addi	a2,a2,-374 # 80088f88 <qjsc_qjscalc+0x80b0>
    80060106:	05a00593          	li	a1,90
    8006010a:	00029517          	auipc	a0,0x29
    8006010e:	eb650513          	addi	a0,a0,-330 # 80088fc0 <qjsc_qjscalc+0x80e8>
    80060112:	04b000ef          	jal	ra,8006095c <__assert>
    80060116:	02000793          	li	a5,32
    8006011a:	89aa                	mv	s3,a0
nuttx/mm/mm_heap/mm_memalign.c:93
  else if (alignment < MM_MIN_CHUNK)
    8006011c:	00f97463          	bgeu	s2,a5,80060124 <mm_memalign+0x7a>
    80060120:	02000913          	li	s2,32
nuttx/mm/mm_heap/mm_memalign.c:112
  if (size < MM_MIN_CHUNK - MM_ALLOCNODE_OVERHEAD)
    80060124:	47e1                	li	a5,24
    80060126:	84ae                	mv	s1,a1
    80060128:	00f5f363          	bgeu	a1,a5,8006012e <mm_memalign+0x84>
    8006012c:	44e1                	li	s1,24
nuttx/mm/mm_heap/mm_memalign.c:117
  newsize = MM_ALIGN_UP(size);         /* Make multiples of our granule size */
    8006012e:	00f48793          	addi	a5,s1,15
    80060132:	9bc1                	andi	a5,a5,-16
nuttx/mm/mm_heap/mm_memalign.c:118
  allocsize = newsize + 2 * alignment; /* Add double full alignment size */
    80060134:	00191b13          	slli	s6,s2,0x1
    80060138:	9b3e                	add	s6,s6,a5
nuttx/mm/mm_heap/mm_memalign.c:120
  if (newsize < size || allocsize < newsize)
    8006013a:	f697eee3          	bltu	a5,s1,800600b6 <mm_memalign+0xc>
nuttx/mm/mm_heap/mm_memalign.c:120 (discriminator 1)
    8006013e:	f6fb6ce3          	bltu	s6,a5,800600b6 <mm_memalign+0xc>
nuttx/mm/mm_heap/mm_memalign.c:129
  rawchunk = (uintptr_t)mm_malloc(heap, allocsize);
    80060142:	85da                	mv	a1,s6
    80060144:	854e                	mv	a0,s3
    80060146:	6ea000ef          	jal	ra,80060830 <mm_malloc>
    8006014a:	8a2a                	mv	s4,a0
nuttx/mm/mm_heap/mm_memalign.c:130
  if (rawchunk == 0)
    8006014c:	d52d                	beqz	a0,800600b6 <mm_memalign+0xc>
nuttx/mm/mm_heap/mm_memalign.c:142
  DEBUGVERIFY(mm_lock(heap));
    8006014e:	854e                	mv	a0,s3
    80060150:	510000ef          	jal	ra,80060660 <mm_lock>
    80060154:	00055e63          	bgez	a0,80060170 <mm_memalign+0xc6>
nuttx/mm/mm_heap/mm_memalign.c:142 (discriminator 1)
    80060158:	00029617          	auipc	a2,0x29
    8006015c:	cc860613          	addi	a2,a2,-824 # 80088e20 <qjsc_qjscalc+0x7f48>
    80060160:	08e00593          	li	a1,142
    80060164:	00029517          	auipc	a0,0x29
    80060168:	e5c50513          	addi	a0,a0,-420 # 80088fc0 <qjsc_qjscalc+0x80e8>
    8006016c:	7f0000ef          	jal	ra,8006095c <__assert>
nuttx/mm/mm_heap/mm_memalign.c:98 (discriminator 2)
  mask = alignment - 1;
    80060170:	fff90413          	addi	s0,s2,-1
nuttx/mm/mm_heap/mm_memalign.c:152 (discriminator 2)
  alignedchunk = (rawchunk + mask) & ~mask;
    80060174:	9452                	add	s0,s0,s4
    80060176:	41200533          	neg	a0,s2
    8006017a:	8c69                	and	s0,s0,a0
nuttx/mm/mm_heap/mm_memalign.c:148 (discriminator 2)
  node = (FAR struct mm_allocnode_s *)(rawchunk - MM_SIZEOF_ALLOCNODE);
    8006017c:	ff0a0593          	addi	a1,s4,-16
nuttx/mm/mm_heap/mm_memalign.c:156 (discriminator 2)
  if (alignedchunk != rawchunk)
    80060180:	068a0e63          	beq	s4,s0,800601fc <mm_memalign+0x152>
nuttx/mm/mm_heap/mm_memalign.c:166
        ((FAR char *)node + MM_SIZEOF_NODE(node));
    80060184:	6594                	ld	a3,8(a1)
nuttx/mm/mm_heap/mm_memalign.c:175
      precedingsize = (uintptr_t)newnode - (uintptr_t)node;
    80060186:	414407b3          	sub	a5,s0,s4
nuttx/mm/mm_heap/mm_memalign.c:185
      if (precedingsize < MM_MIN_CHUNK)
    8006018a:	467d                	li	a2,31
nuttx/mm/mm_heap/mm_memalign.c:166
        ((FAR char *)node + MM_SIZEOF_NODE(node));
    8006018c:	ffc6f713          	andi	a4,a3,-4
nuttx/mm/mm_heap/mm_memalign.c:165
      next = (FAR struct mm_allocnode_s *)
    80060190:	972e                	add	a4,a4,a1
nuttx/mm/mm_heap/mm_memalign.c:169
        (alignedchunk - MM_SIZEOF_ALLOCNODE);
    80060192:	ff040a93          	addi	s5,s0,-16
nuttx/mm/mm_heap/mm_memalign.c:185
      if (precedingsize < MM_MIN_CHUNK)
    80060196:	00f66763          	bltu	a2,a5,800601a4 <mm_memalign+0xfa>
nuttx/mm/mm_heap/mm_memalign.c:187
          alignedchunk += alignment;
    8006019a:	944a                	add	s0,s0,s2
nuttx/mm/mm_heap/mm_memalign.c:189
                          (alignedchunk - MM_SIZEOF_ALLOCNODE);
    8006019c:	ff040a93          	addi	s5,s0,-16
nuttx/mm/mm_heap/mm_memalign.c:190
          precedingsize = (uintptr_t)newnode - (uintptr_t)node;
    800601a0:	414407b3          	sub	a5,s0,s4
nuttx/mm/mm_heap/mm_memalign.c:197
      if (MM_PREVNODE_IS_FREE(node))
    800601a4:	8a89                	andi	a3,a3,2
    800601a6:	ca95                	beqz	a3,800601da <mm_memalign+0x130>
nuttx/mm/mm_heap/mm_memalign.c:199
          FAR struct mm_freenode_s *prev =
    800601a8:	ff0a3683          	ld	a3,-16(s4)
    800601ac:	8d95                	sub	a1,a1,a3
nuttx/mm/mm_heap/mm_memalign.c:206
          DEBUGASSERT(prev->blink);
    800601ae:	6d90                	ld	a2,24(a1)
    800601b0:	ee09                	bnez	a2,800601ca <mm_memalign+0x120>
nuttx/mm/mm_heap/mm_memalign.c:206 (discriminator 1)
    800601b2:	00029617          	auipc	a2,0x29
    800601b6:	eae60613          	addi	a2,a2,-338 # 80089060 <qjsc_qjscalc+0x8188>
    800601ba:	0ce00593          	li	a1,206
    800601be:	00029517          	auipc	a0,0x29
    800601c2:	e0250513          	addi	a0,a0,-510 # 80088fc0 <qjsc_qjscalc+0x80e8>
    800601c6:	796000ef          	jal	ra,8006095c <__assert>
nuttx/mm/mm_heap/mm_memalign.c:207 (discriminator 2)
          prev->blink->flink = prev->flink;
    800601ca:	6994                	ld	a3,16(a1)
    800601cc:	ea14                	sd	a3,16(a2)
nuttx/mm/mm_heap/mm_memalign.c:208 (discriminator 2)
          if (prev->flink)
    800601ce:	c299                	beqz	a3,800601d4 <mm_memalign+0x12a>
nuttx/mm/mm_heap/mm_memalign.c:210
              prev->flink->blink = prev->blink;
    800601d0:	6d90                	ld	a2,24(a1)
    800601d2:	ee90                	sd	a2,24(a3)
nuttx/mm/mm_heap/mm_memalign.c:213
          precedingsize += MM_SIZEOF_NODE(prev);
    800601d4:	6594                	ld	a3,8(a1)
    800601d6:	9af1                	andi	a3,a3,-4
    800601d8:	97b6                	add	a5,a5,a3
nuttx/mm/mm_heap/mm_memalign.c:221
      newnodesize = (uintptr_t)next - (uintptr_t)newnode;
    800601da:	41570b33          	sub	s6,a4,s5
nuttx/mm/mm_heap/mm_memalign.c:217
      node->size = precedingsize;
    800601de:	e59c                	sd	a5,8(a1)
nuttx/mm/mm_heap/mm_memalign.c:222
      newnode->size = newnodesize | MM_ALLOC_BIT | MM_PREVFREE_BIT;
    800601e0:	003b6693          	ori	a3,s6,3
    800601e4:	00dab423          	sd	a3,8(s5)
nuttx/mm/mm_heap/mm_memalign.c:223
      newnode->preceding = precedingsize;
    800601e8:	00fab023          	sd	a5,0(s5)
nuttx/mm/mm_heap/mm_memalign.c:227
      next->size &= ~MM_PREVFREE_BIT;
    800601ec:	671c                	ld	a5,8(a4)
nuttx/mm/mm_heap/mm_memalign.c:237
      mm_addfreechunk(heap, (FAR struct mm_freenode_s *)node);
    800601ee:	854e                	mv	a0,s3
nuttx/mm/mm_heap/mm_memalign.c:233
      allocsize = newnodesize - MM_ALLOCNODE_OVERHEAD;
    800601f0:	1b61                	addi	s6,s6,-8
nuttx/mm/mm_heap/mm_memalign.c:227
      next->size &= ~MM_PREVFREE_BIT;
    800601f2:	9bf5                	andi	a5,a5,-3
    800601f4:	e71c                	sd	a5,8(a4)
nuttx/mm/mm_heap/mm_memalign.c:237
      mm_addfreechunk(heap, (FAR struct mm_freenode_s *)node);
    800601f6:	4b8000ef          	jal	ra,800606ae <mm_addfreechunk>
    800601fa:	85d6                	mv	a1,s5
nuttx/mm/mm_heap/mm_memalign.c:251
  size = MM_ALIGN_UP(size + MM_ALLOCNODE_OVERHEAD);
    800601fc:	01748613          	addi	a2,s1,23
    80060200:	9a41                	andi	a2,a2,-16
nuttx/mm/mm_heap/mm_memalign.c:253
  if (allocsize > size)
    80060202:	01667763          	bgeu	a2,s6,80060210 <mm_memalign+0x166>
nuttx/mm/mm_heap/mm_memalign.c:259
      mm_shrinkchunk(heap, node, size);
    80060206:	854e                	mv	a0,s3
    80060208:	e42e                	sd	a1,8(sp)
    8006020a:	564000ef          	jal	ra,8006076e <mm_shrinkchunk>
    8006020e:	65a2                	ld	a1,8(sp)
nuttx/mm/mm_heap/mm_memalign.c:264
  heap->mm_curused += MM_SIZEOF_NODE(node);
    80060210:	659c                	ld	a5,8(a1)
    80060212:	0309b703          	ld	a4,48(s3)
    80060216:	9bf1                	andi	a5,a5,-4
    80060218:	97ba                	add	a5,a5,a4
nuttx/mm/mm_heap/mm_memalign.c:265
  if (heap->mm_curused > heap->mm_maxused)
    8006021a:	0289b703          	ld	a4,40(s3)
nuttx/mm/mm_heap/mm_memalign.c:264
  heap->mm_curused += MM_SIZEOF_NODE(node);
    8006021e:	02f9b823          	sd	a5,48(s3)
nuttx/mm/mm_heap/mm_memalign.c:265
  if (heap->mm_curused > heap->mm_maxused)
    80060222:	00f77463          	bgeu	a4,a5,8006022a <mm_memalign+0x180>
nuttx/mm/mm_heap/mm_memalign.c:267
      heap->mm_maxused = heap->mm_curused;
    80060226:	02f9b423          	sd	a5,40(s3)
nuttx/mm/mm_heap/mm_memalign.c:270
  mm_unlock(heap);
    8006022a:	854e                	mv	a0,s3
    8006022c:	458000ef          	jal	ra,80060684 <mm_unlock>
nuttx/mm/mm_heap/mm_memalign.c:277
  DEBUGASSERT(alignedchunk % alignment == 0);
    80060230:	03247933          	remu	s2,s0,s2
nuttx/mm/mm_heap/mm_memalign.c:278
  return (FAR void *)alignedchunk;
    80060234:	8522                	mv	a0,s0
nuttx/mm/mm_heap/mm_memalign.c:277
  DEBUGASSERT(alignedchunk % alignment == 0);
    80060236:	e80901e3          	beqz	s2,800600b8 <mm_memalign+0xe>
nuttx/mm/mm_heap/mm_memalign.c:277 (discriminator 1)
    8006023a:	00029617          	auipc	a2,0x29
    8006023e:	d9e60613          	addi	a2,a2,-610 # 80088fd8 <qjsc_qjscalc+0x8100>
    80060242:	11500593          	li	a1,277
    80060246:	00029517          	auipc	a0,0x29
    8006024a:	d7a50513          	addi	a0,a0,-646 # 80088fc0 <qjsc_qjscalc+0x80e8>
    8006024e:	70e000ef          	jal	ra,8006095c <__assert>

0000000080060252 <mm_realloc>:
mm_realloc():
nuttx/mm/mm_heap/mm_realloc.c:67
 *
 ****************************************************************************/

FAR void *mm_realloc(FAR struct mm_heap_s *heap, FAR void *oldmem,
                     size_t size)
{
    80060252:	711d                	addi	sp,sp,-96
    80060254:	f852                	sd	s4,48(sp)
    80060256:	ec86                	sd	ra,88(sp)
    80060258:	e8a2                	sd	s0,80(sp)
    8006025a:	e4a6                	sd	s1,72(sp)
    8006025c:	e0ca                	sd	s2,64(sp)
    8006025e:	fc4e                	sd	s3,56(sp)
    80060260:	f456                	sd	s5,40(sp)
    80060262:	f05a                	sd	s6,32(sp)
    80060264:	ec5e                	sd	s7,24(sp)
    80060266:	e862                	sd	s8,16(sp)
    80060268:	e466                	sd	s9,8(sp)
    8006026a:	8a32                	mv	s4,a2
nuttx/mm/mm_heap/mm_realloc.c:79
  size_t nextsize = 0;
  FAR void *newmem;

  /* If oldmem is NULL, then realloc is equivalent to malloc */

  if (oldmem == NULL)
    8006026c:	ed99                	bnez	a1,8006028a <mm_realloc+0x38>
nuttx/mm/mm_heap/mm_realloc.c:412
          mm_free(heap, oldmem);
        }

      return newmem;
    }
}
    8006026e:	6446                	ld	s0,80(sp)
    80060270:	60e6                	ld	ra,88(sp)
    80060272:	64a6                	ld	s1,72(sp)
    80060274:	6906                	ld	s2,64(sp)
    80060276:	79e2                	ld	s3,56(sp)
    80060278:	7a42                	ld	s4,48(sp)
    8006027a:	7aa2                	ld	s5,40(sp)
    8006027c:	7b02                	ld	s6,32(sp)
    8006027e:	6be2                	ld	s7,24(sp)
    80060280:	6c42                	ld	s8,16(sp)
    80060282:	6ca2                	ld	s9,8(sp)
nuttx/mm/mm_heap/mm_realloc.c:81
      return mm_malloc(heap, size);
    80060284:	85b2                	mv	a1,a2
nuttx/mm/mm_heap/mm_realloc.c:412
}
    80060286:	6125                	addi	sp,sp,96
nuttx/mm/mm_heap/mm_realloc.c:81
      return mm_malloc(heap, size);
    80060288:	a365                	j	80060830 <mm_malloc>
    8006028a:	8aaa                	mv	s5,a0
    8006028c:	89ae                	mv	s3,a1
nuttx/mm/mm_heap/mm_realloc.c:84
  DEBUGASSERT(mm_heapmember(heap, oldmem));
    8006028e:	262000ef          	jal	ra,800604f0 <mm_heapmember>
    80060292:	ed09                	bnez	a0,800602ac <mm_realloc+0x5a>
nuttx/mm/mm_heap/mm_realloc.c:84 (discriminator 1)
    80060294:	00029617          	auipc	a2,0x29
    80060298:	d6460613          	addi	a2,a2,-668 # 80088ff8 <qjsc_qjscalc+0x8120>
    8006029c:	05400593          	li	a1,84
nuttx/mm/mm_heap/mm_realloc.c:121
      DEBUGPANIC();
    800602a0:	00029517          	auipc	a0,0x29
    800602a4:	d7850513          	addi	a0,a0,-648 # 80089018 <qjsc_qjscalc+0x8140>
    800602a8:	6b4000ef          	jal	ra,8006095c <__assert>
nuttx/mm/mm_heap/mm_realloc.c:111 (discriminator 2)
  if (size < MM_MIN_CHUNK - MM_ALLOCNODE_OVERHEAD)
    800602ac:	47e1                	li	a5,24
    800602ae:	00fa7363          	bgeu	s4,a5,800602b4 <mm_realloc+0x62>
    800602b2:	4a61                	li	s4,24
nuttx/mm/mm_heap/mm_realloc.c:116 (discriminator 2)
  newsize = MM_ALIGN_UP(size + MM_ALLOCNODE_OVERHEAD);
    800602b4:	017a0913          	addi	s2,s4,23
    800602b8:	ff097913          	andi	s2,s2,-16
nuttx/mm/mm_heap/mm_realloc.c:117 (discriminator 2)
  if (newsize < size)
    800602bc:	01497963          	bgeu	s2,s4,800602ce <mm_realloc+0x7c>
nuttx/mm/mm_heap/mm_realloc.c:121
      DEBUGPANIC();
    800602c0:	00029617          	auipc	a2,0x29
    800602c4:	d7060613          	addi	a2,a2,-656 # 80089030 <qjsc_qjscalc+0x8158>
    800602c8:	07900593          	li	a1,121
    800602cc:	bfd1                	j	800602a0 <mm_realloc+0x4e>
nuttx/mm/mm_heap/mm_realloc.c:132
  DEBUGVERIFY(mm_lock(heap));
    800602ce:	8556                	mv	a0,s5
nuttx/mm/mm_heap/mm_realloc.c:127
  oldnode = (FAR struct mm_allocnode_s *)
    800602d0:	ff098b13          	addi	s6,s3,-16
nuttx/mm/mm_heap/mm_realloc.c:132
  DEBUGVERIFY(mm_lock(heap));
    800602d4:	38c000ef          	jal	ra,80060660 <mm_lock>
    800602d8:	00055963          	bgez	a0,800602ea <mm_realloc+0x98>
nuttx/mm/mm_heap/mm_realloc.c:132 (discriminator 1)
    800602dc:	00029617          	auipc	a2,0x29
    800602e0:	b4460613          	addi	a2,a2,-1212 # 80088e20 <qjsc_qjscalc+0x7f48>
    800602e4:	08400593          	li	a1,132
    800602e8:	bf65                	j	800602a0 <mm_realloc+0x4e>
nuttx/mm/mm_heap/mm_realloc.c:133 (discriminator 2)
  DEBUGASSERT(MM_NODE_IS_ALLOC(oldnode));
    800602ea:	ff89b783          	ld	a5,-8(s3)
    800602ee:	fff7cb93          	not	s7,a5
    800602f2:	001bfb93          	andi	s7,s7,1
    800602f6:	000b8963          	beqz	s7,80060308 <mm_realloc+0xb6>
nuttx/mm/mm_heap/mm_realloc.c:133 (discriminator 1)
    800602fa:	00029617          	auipc	a2,0x29
    800602fe:	b7e60613          	addi	a2,a2,-1154 # 80088e78 <qjsc_qjscalc+0x7fa0>
    80060302:	08500593          	li	a1,133
    80060306:	bf69                	j	800602a0 <mm_realloc+0x4e>
nuttx/mm/mm_heap/mm_realloc.c:137 (discriminator 2)
  oldsize = MM_SIZEOF_NODE(oldnode);
    80060308:	ffc7fc13          	andi	s8,a5,-4
nuttx/mm/mm_heap/mm_realloc.c:138 (discriminator 2)
  if (newsize <= oldsize)
    8006030c:	032c6b63          	bltu	s8,s2,80060342 <mm_realloc+0xf0>
nuttx/mm/mm_heap/mm_realloc.c:144
      if (newsize < oldsize)
    80060310:	01897763          	bgeu	s2,s8,8006031e <mm_realloc+0xcc>
nuttx/mm/mm_heap/mm_realloc.c:146
          mm_shrinkchunk(heap, oldnode, newsize);
    80060314:	864a                	mv	a2,s2
    80060316:	85da                	mv	a1,s6
    80060318:	8556                	mv	a0,s5
    8006031a:	454000ef          	jal	ra,8006076e <mm_shrinkchunk>
nuttx/mm/mm_heap/mm_realloc.c:153
      mm_unlock(heap);
    8006031e:	8556                	mv	a0,s5
    80060320:	364000ef          	jal	ra,80060684 <mm_unlock>
nuttx/mm/mm_heap/mm_realloc.c:156
      return oldmem;
    80060324:	8a4e                	mv	s4,s3
nuttx/mm/mm_heap/mm_realloc.c:412
}
    80060326:	60e6                	ld	ra,88(sp)
    80060328:	6446                	ld	s0,80(sp)
    8006032a:	64a6                	ld	s1,72(sp)
    8006032c:	6906                	ld	s2,64(sp)
    8006032e:	79e2                	ld	s3,56(sp)
    80060330:	7aa2                	ld	s5,40(sp)
    80060332:	7b02                	ld	s6,32(sp)
    80060334:	6be2                	ld	s7,24(sp)
    80060336:	6c42                	ld	s8,16(sp)
    80060338:	6ca2                	ld	s9,8(sp)
    8006033a:	8552                	mv	a0,s4
    8006033c:	7a42                	ld	s4,48(sp)
    8006033e:	6125                	addi	sp,sp,96
    80060340:	8082                	ret
nuttx/mm/mm_heap/mm_realloc.c:164
  next = (FAR struct mm_freenode_s *)((FAR char *)oldnode + oldsize);
    80060342:	018b0cb3          	add	s9,s6,s8
nuttx/mm/mm_heap/mm_realloc.c:165
  if (MM_NODE_IS_FREE(next))
    80060346:	008cb483          	ld	s1,8(s9)
    8006034a:	0014f713          	andi	a4,s1,1
    8006034e:	ef01                	bnez	a4,80060366 <mm_realloc+0x114>
nuttx/mm/mm_heap/mm_realloc.c:167
      DEBUGASSERT(MM_PREVNODE_IS_ALLOC(next));
    80060350:	0024f713          	andi	a4,s1,2
nuttx/mm/mm_heap/mm_realloc.c:168
      nextsize = MM_SIZEOF_NODE(next);
    80060354:	98f1                	andi	s1,s1,-4
nuttx/mm/mm_heap/mm_realloc.c:167
      DEBUGASSERT(MM_PREVNODE_IS_ALLOC(next));
    80060356:	cb09                	beqz	a4,80060368 <mm_realloc+0x116>
nuttx/mm/mm_heap/mm_realloc.c:167 (discriminator 1)
    80060358:	00029617          	auipc	a2,0x29
    8006035c:	b5860613          	addi	a2,a2,-1192 # 80088eb0 <qjsc_qjscalc+0x7fd8>
    80060360:	0a700593          	li	a1,167
    80060364:	bf35                	j	800602a0 <mm_realloc+0x4e>
nuttx/mm/mm_heap/mm_realloc.c:74
  size_t nextsize = 0;
    80060366:	4481                	li	s1,0
nuttx/mm/mm_heap/mm_realloc.c:171
  if (MM_PREVNODE_IS_FREE(oldnode))
    80060368:	8b89                	andi	a5,a5,2
    8006036a:	c38d                	beqz	a5,8006038c <mm_realloc+0x13a>
nuttx/mm/mm_heap/mm_realloc.c:173
      prev = (FAR struct mm_freenode_s *)
    8006036c:	ff09b703          	ld	a4,-16(s3)
    80060370:	40eb05b3          	sub	a1,s6,a4
nuttx/mm/mm_heap/mm_realloc.c:175
      DEBUGASSERT(MM_NODE_IS_FREE(prev));
    80060374:	659c                	ld	a5,8(a1)
    80060376:	0017f693          	andi	a3,a5,1
nuttx/mm/mm_heap/mm_realloc.c:176
      prevsize = MM_SIZEOF_NODE(prev);
    8006037a:	9bf1                	andi	a5,a5,-4
nuttx/mm/mm_heap/mm_realloc.c:175
      DEBUGASSERT(MM_NODE_IS_FREE(prev));
    8006037c:	ca89                	beqz	a3,8006038e <mm_realloc+0x13c>
nuttx/mm/mm_heap/mm_realloc.c:175 (discriminator 1)
    8006037e:	00029617          	auipc	a2,0x29
    80060382:	cba60613          	addi	a2,a2,-838 # 80089038 <qjsc_qjscalc+0x8160>
    80060386:	0af00593          	li	a1,175
    8006038a:	bf19                	j	800602a0 <mm_realloc+0x4e>
nuttx/mm/mm_heap/mm_realloc.c:69
  FAR struct mm_freenode_s  *prev = NULL;
    8006038c:	4581                	li	a1,0
nuttx/mm/mm_heap/mm_realloc.c:181
  if (nextsize + prevsize + oldsize >= newsize)
    8006038e:	018486b3          	add	a3,s1,s8
    80060392:	96be                	add	a3,a3,a5
    80060394:	1326e563          	bltu	a3,s2,800604be <mm_realloc+0x26c>
nuttx/mm/mm_heap/mm_realloc.c:183
      size_t needed = newsize - oldsize;
    80060398:	41890933          	sub	s2,s2,s8
nuttx/mm/mm_heap/mm_realloc.c:192
      if (nextsize > prevsize)
    8006039c:	0297f563          	bgeu	a5,s1,800603c6 <mm_realloc+0x174>
nuttx/mm/mm_heap/mm_realloc.c:196
          if (needed > prevsize)
    800603a0:	1527f363          	bgeu	a5,s2,800604e6 <mm_realloc+0x294>
nuttx/mm/mm_heap/mm_realloc.c:203
              takenext = needed - prevsize;
    800603a4:	40f90bb3          	sub	s7,s2,a5
nuttx/mm/mm_heap/mm_realloc.c:243
      if (takeprev)
    800603a8:	ef95                	bnez	a5,800603e4 <mm_realloc+0x192>
    800603aa:	8462                	mv	s0,s8
    800603ac:	8a4e                	mv	s4,s3
nuttx/mm/mm_heap/mm_realloc.c:324
          DEBUGASSERT(next->blink);
    800603ae:	018cb703          	ld	a4,24(s9)
nuttx/mm/mm_heap/mm_realloc.c:317
          andbeyond = (FAR struct mm_allocnode_s *)
    800603b2:	009c86b3          	add	a3,s9,s1
nuttx/mm/mm_heap/mm_realloc.c:324
          DEBUGASSERT(next->blink);
    800603b6:	e361                	bnez	a4,80060476 <mm_realloc+0x224>
nuttx/mm/mm_heap/mm_realloc.c:324 (discriminator 1)
    800603b8:	00029617          	auipc	a2,0x29
    800603bc:	b6060613          	addi	a2,a2,-1184 # 80088f18 <qjsc_qjscalc+0x8040>
    800603c0:	14400593          	li	a1,324
    800603c4:	bdf1                	j	800602a0 <mm_realloc+0x4e>
nuttx/mm/mm_heap/mm_realloc.c:222
          if (needed > nextsize)
    800603c6:	0b24f463          	bgeu	s1,s2,8006046e <mm_realloc+0x21c>
nuttx/mm/mm_heap/mm_realloc.c:228
              takeprev = needed - nextsize;
    800603ca:	40990433          	sub	s0,s2,s1
    800603ce:	8ba6                	mv	s7,s1
nuttx/mm/mm_heap/mm_realloc.c:251
          DEBUGASSERT(prev && prev->blink);
    800603d0:	c199                	beqz	a1,800603d6 <mm_realloc+0x184>
nuttx/mm/mm_heap/mm_realloc.c:251 (discriminator 2)
    800603d2:	6d90                	ld	a2,24(a1)
    800603d4:	ea11                	bnez	a2,800603e8 <mm_realloc+0x196>
nuttx/mm/mm_heap/mm_realloc.c:251 (discriminator 3)
    800603d6:	00029617          	auipc	a2,0x29
    800603da:	c8260613          	addi	a2,a2,-894 # 80089058 <qjsc_qjscalc+0x8180>
    800603de:	0fb00593          	li	a1,251
    800603e2:	bd7d                	j	800602a0 <mm_realloc+0x4e>
nuttx/mm/mm_heap/mm_realloc.c:243
      if (takeprev)
    800603e4:	843e                	mv	s0,a5
    800603e6:	b7ed                	j	800603d0 <mm_realloc+0x17e>
nuttx/mm/mm_heap/mm_realloc.c:252 (discriminator 4)
          prev->blink->flink = prev->flink;
    800603e8:	6994                	ld	a3,16(a1)
    800603ea:	ea14                	sd	a3,16(a2)
nuttx/mm/mm_heap/mm_realloc.c:253 (discriminator 4)
          if (prev->flink)
    800603ec:	c299                	beqz	a3,800603f2 <mm_realloc+0x1a0>
nuttx/mm/mm_heap/mm_realloc.c:255
              prev->flink->blink = prev->blink;
    800603ee:	6d90                	ld	a2,24(a1)
    800603f0:	ee90                	sd	a2,24(a3)
nuttx/mm/mm_heap/mm_realloc.c:260
          if (prevsize < takeprev + MM_MIN_CHUNK)
    800603f2:	02040693          	addi	a3,s0,32
    800603f6:	00d7f363          	bgeu	a5,a3,800603fc <mm_realloc+0x1aa>
    800603fa:	843e                	mv	s0,a5
nuttx/mm/mm_heap/mm_realloc.c:267
          newnode = (FAR struct mm_allocnode_s *)
    800603fc:	408b0b33          	sub	s6,s6,s0
nuttx/mm/mm_heap/mm_realloc.c:272
          if (takeprev < prevsize)
    80060400:	04f47c63          	bgeu	s0,a5,80060458 <mm_realloc+0x206>
nuttx/mm/mm_heap/mm_realloc.c:279
              prev->size         = prevsize | (prev->size & MM_MASK_BIT);
    80060404:	6594                	ld	a3,8(a1)
nuttx/mm/mm_heap/mm_realloc.c:278
              prevsize          -= takeprev;
    80060406:	8f81                	sub	a5,a5,s0
nuttx/mm/mm_heap/mm_realloc.c:280
              nodesize          += takeprev;
    80060408:	9462                	add	s0,s0,s8
nuttx/mm/mm_heap/mm_realloc.c:279
              prev->size         = prevsize | (prev->size & MM_MASK_BIT);
    8006040a:	8a8d                	andi	a3,a3,3
    8006040c:	8edd                	or	a3,a3,a5
    8006040e:	e594                	sd	a3,8(a1)
nuttx/mm/mm_heap/mm_realloc.c:281
              newnode->size      = nodesize | MM_ALLOC_BIT | MM_PREVFREE_BIT;
    80060410:	00346693          	ori	a3,s0,3
    80060414:	00db3423          	sd	a3,8(s6)
nuttx/mm/mm_heap/mm_realloc.c:282
              newnode->preceding = prevsize;
    80060418:	00fb3023          	sd	a5,0(s6)
nuttx/mm/mm_heap/mm_realloc.c:288
              mm_addfreechunk(heap, prev);
    8006041c:	8556                	mv	a0,s5
    8006041e:	290000ef          	jal	ra,800606ae <mm_addfreechunk>
nuttx/mm/mm_heap/mm_realloc.c:299
          newmem = (FAR void *)((FAR char *)newnode + MM_SIZEOF_ALLOCNODE);
    80060422:	010b0a13          	addi	s4,s6,16
nuttx/mm/mm_heap/mm_realloc.c:308
      if (takenext)
    80060426:	f80b94e3          	bnez	s7,800603ae <mm_realloc+0x15c>
nuttx/mm/mm_heap/mm_realloc.c:370
      heap->mm_curused += newsize - oldsize;
    8006042a:	030ab603          	ld	a2,48(s5)
nuttx/mm/mm_heap/mm_realloc.c:371
      if (heap->mm_curused > heap->mm_maxused)
    8006042e:	028ab783          	ld	a5,40(s5)
nuttx/mm/mm_heap/mm_realloc.c:370
      heap->mm_curused += newsize - oldsize;
    80060432:	9932                	add	s2,s2,a2
    80060434:	032ab823          	sd	s2,48(s5)
nuttx/mm/mm_heap/mm_realloc.c:371
      if (heap->mm_curused > heap->mm_maxused)
    80060438:	0127f463          	bgeu	a5,s2,80060440 <mm_realloc+0x1ee>
nuttx/mm/mm_heap/mm_realloc.c:373
          heap->mm_maxused = heap->mm_curused;
    8006043c:	032ab423          	sd	s2,40(s5)
nuttx/mm/mm_heap/mm_realloc.c:376
      mm_unlock(heap);
    80060440:	8556                	mv	a0,s5
    80060442:	242000ef          	jal	ra,80060684 <mm_unlock>
nuttx/mm/mm_heap/mm_realloc.c:380
      if (newmem != oldmem)
    80060446:	ef4980e3          	beq	s3,s4,80060326 <mm_realloc+0xd4>
nuttx/mm/mm_heap/mm_realloc.c:386
          memcpy(newmem, oldmem, oldsize - MM_ALLOCNODE_OVERHEAD);
    8006044a:	ff8c0613          	addi	a2,s8,-8
    8006044e:	85ce                	mv	a1,s3
    80060450:	8552                	mv	a0,s4
    80060452:	15b030ef          	jal	ra,80063dac <memcpy>
    80060456:	bdc1                	j	80060326 <mm_realloc+0xd4>
nuttx/mm/mm_heap/mm_realloc.c:294
              nodesize     += prevsize;
    80060458:	01878433          	add	s0,a5,s8
nuttx/mm/mm_heap/mm_realloc.c:296
                              (newnode->size & MM_MASK_BIT);
    8006045c:	008b3783          	ld	a5,8(s6)
    80060460:	8b8d                	andi	a5,a5,3
nuttx/mm/mm_heap/mm_realloc.c:295
              newnode->size = nodesize | MM_ALLOC_BIT |
    80060462:	8fc1                	or	a5,a5,s0
    80060464:	0017e793          	ori	a5,a5,1
    80060468:	00fb3423          	sd	a5,8(s6)
    8006046c:	bf5d                	j	80060422 <mm_realloc+0x1d0>
    8006046e:	8bca                	mv	s7,s2
    80060470:	8462                	mv	s0,s8
    80060472:	8a4e                	mv	s4,s3
    80060474:	bf4d                	j	80060426 <mm_realloc+0x1d4>
nuttx/mm/mm_heap/mm_realloc.c:325 (discriminator 2)
          next->blink->flink = next->flink;
    80060476:	010cb783          	ld	a5,16(s9)
    8006047a:	eb1c                	sd	a5,16(a4)
nuttx/mm/mm_heap/mm_realloc.c:326 (discriminator 2)
          if (next->flink)
    8006047c:	c781                	beqz	a5,80060484 <mm_realloc+0x232>
nuttx/mm/mm_heap/mm_realloc.c:328
              next->flink->blink = next->blink;
    8006047e:	018cb703          	ld	a4,24(s9)
    80060482:	ef98                	sd	a4,24(a5)
nuttx/mm/mm_heap/mm_realloc.c:333
          if (nextsize < takenext + MM_MIN_CHUNK)
    80060484:	020b8793          	addi	a5,s7,32 # 30020 <asinh-0x7ffcffe0>
    80060488:	00f4f363          	bgeu	s1,a5,8006048e <mm_realloc+0x23c>
    8006048c:	8ba6                	mv	s7,s1
nuttx/mm/mm_heap/mm_realloc.c:341
          oldnode->size = nodesize | (oldnode->size & MM_MASK_BIT);
    8006048e:	008b3703          	ld	a4,8(s6)
nuttx/mm/mm_heap/mm_realloc.c:340
          nodesize += takenext;
    80060492:	008b87b3          	add	a5,s7,s0
nuttx/mm/mm_heap/mm_realloc.c:341
          oldnode->size = nodesize | (oldnode->size & MM_MASK_BIT);
    80060496:	8b0d                	andi	a4,a4,3
    80060498:	8f5d                	or	a4,a4,a5
    8006049a:	00eb3423          	sd	a4,8(s6)
nuttx/mm/mm_heap/mm_realloc.c:345
          if (takenext < nextsize)
    8006049e:	009bfc63          	bgeu	s7,s1,800604b6 <mm_realloc+0x264>
nuttx/mm/mm_heap/mm_realloc.c:353
              newnode->size        = nextsize - takenext;
    800604a2:	417484b3          	sub	s1,s1,s7
nuttx/mm/mm_heap/mm_realloc.c:351
              newnode              = (FAR struct mm_freenode_s *)
    800604a6:	00fb05b3          	add	a1,s6,a5
nuttx/mm/mm_heap/mm_realloc.c:353
              newnode->size        = nextsize - takenext;
    800604aa:	e584                	sd	s1,8(a1)
nuttx/mm/mm_heap/mm_realloc.c:354
              andbeyond->preceding = newnode->size;
    800604ac:	e284                	sd	s1,0(a3)
nuttx/mm/mm_heap/mm_realloc.c:358
              mm_addfreechunk(heap, newnode);
    800604ae:	8556                	mv	a0,s5
    800604b0:	1fe000ef          	jal	ra,800606ae <mm_addfreechunk>
    800604b4:	bf9d                	j	8006042a <mm_realloc+0x1d8>
nuttx/mm/mm_heap/mm_realloc.c:364
              andbeyond->size &= ~MM_PREVFREE_BIT;
    800604b6:	669c                	ld	a5,8(a3)
    800604b8:	9bf5                	andi	a5,a5,-3
    800604ba:	e69c                	sd	a5,8(a3)
    800604bc:	b7bd                	j	8006042a <mm_realloc+0x1d8>
nuttx/mm/mm_heap/mm_realloc.c:402
      mm_unlock(heap);
    800604be:	8556                	mv	a0,s5
    800604c0:	1c4000ef          	jal	ra,80060684 <mm_unlock>
nuttx/mm/mm_heap/mm_realloc.c:403
      newmem = mm_malloc(heap, size);
    800604c4:	85d2                	mv	a1,s4
    800604c6:	8556                	mv	a0,s5
    800604c8:	368000ef          	jal	ra,80060830 <mm_malloc>
    800604cc:	8a2a                	mv	s4,a0
nuttx/mm/mm_heap/mm_realloc.c:404
      if (newmem)
    800604ce:	e4050ce3          	beqz	a0,80060326 <mm_realloc+0xd4>
nuttx/mm/mm_heap/mm_realloc.c:406
          memcpy(newmem, oldmem, oldsize - MM_ALLOCNODE_OVERHEAD);
    800604d2:	85ce                	mv	a1,s3
    800604d4:	ff8c0613          	addi	a2,s8,-8
    800604d8:	0d5030ef          	jal	ra,80063dac <memcpy>
nuttx/mm/mm_heap/mm_realloc.c:407
          mm_free(heap, oldmem);
    800604dc:	85ce                	mv	a1,s3
    800604de:	8556                	mv	a0,s5
    800604e0:	b8bff0ef          	jal	ra,8006006a <mm_free>
    800604e4:	b589                	j	80060326 <mm_realloc+0xd4>
nuttx/mm/mm_heap/mm_realloc.c:243
      if (takeprev)
    800604e6:	8a4e                	mv	s4,s3
    800604e8:	f40901e3          	beqz	s2,8006042a <mm_realloc+0x1d8>
    800604ec:	844a                	mv	s0,s2
    800604ee:	b5cd                	j	800603d0 <mm_realloc+0x17e>

00000000800604f0 <mm_heapmember>:
mm_heapmember():
nuttx/mm/mm_heap/mm_heapmember.c:82
#else
  /* A valid address from the heap would have to lie between the
   * two guard nodes.
   */

  if (mem > (FAR void *)heap->mm_heapstart[0] &&
    800604f0:	7d1c                	ld	a5,56(a0)
    800604f2:	00b7f663          	bgeu	a5,a1,800604fe <mm_heapmember+0xe>
nuttx/mm/mm_heap/mm_heapmember.c:82 (discriminator 1)
    800604f6:	6128                	ld	a0,64(a0)
    800604f8:	00a5b533          	sltu	a0,a1,a0
    800604fc:	8082                	ret
nuttx/mm/mm_heap/mm_heapmember.c:90
      return true;
    }

  /* Otherwise, the address does not lie in the heap */

  return false;
    800604fe:	4501                	li	a0,0
nuttx/mm/mm_heap/mm_heapmember.c:93

#endif
}
    80060500:	8082                	ret

0000000080060502 <umm_initialize>:
umm_initialize():
nuttx/mm/umm_heap/umm_initialize.c:85
 *   None
 *
 ****************************************************************************/

void umm_initialize(FAR void *heap_start, size_t heap_size)
{
    80060502:	1141                	addi	sp,sp,-16
    80060504:	862e                	mv	a2,a1
nuttx/mm/umm_heap/umm_initialize.c:87
#ifdef CONFIG_BUILD_KERNEL
  USR_HEAP = mm_initialize(NULL, heap_start, heap_size);
    80060506:	85aa                	mv	a1,a0
    80060508:	4501                	li	a0,0
nuttx/mm/umm_heap/umm_initialize.c:85
{
    8006050a:	e406                	sd	ra,8(sp)
nuttx/mm/umm_heap/umm_initialize.c:87
  USR_HEAP = mm_initialize(NULL, heap_start, heap_size);
    8006050c:	0ca000ef          	jal	ra,800605d6 <mm_initialize>
    80060510:	008017b7          	lui	a5,0x801
    80060514:	07a2                	slli	a5,a5,0x8
    80060516:	e788                	sd	a0,8(a5)
nuttx/mm/umm_heap/umm_initialize.c:91
#else
  USR_HEAP = mm_initialize("Umem", heap_start, heap_size);
#endif
}
    80060518:	60a2                	ld	ra,8(sp)
    8006051a:	0141                	addi	sp,sp,16
    8006051c:	8082                	ret

000000008006051e <umm_try_initialize>:
umm_try_initialize():
nuttx/mm/umm_heap/umm_initialize.c:115
  uintptr_t allocbase;
  size_t npages = 1;

  /* Return if the user heap is already initialized. */

  if (USR_HEAP != NULL)
    8006051e:	008017b7          	lui	a5,0x801
    80060522:	07a2                	slli	a5,a5,0x8
    80060524:	679c                	ld	a5,8(a5)
    80060526:	eb8d                	bnez	a5,80060558 <umm_try_initialize+0x3a>
nuttx/mm/umm_heap/umm_initialize.c:109
{
    80060528:	1141                	addi	sp,sp,-16
nuttx/mm/umm_heap/umm_initialize.c:131
  /* If we provide a zero brkaddr to pgalloc(),
   * it will create the first block in the correct virtual address
   * space and return the start address of that block.
   */

  allocbase = pgalloc(0, npages);
    8006052a:	4585                	li	a1,1
    8006052c:	4501                	li	a0,0
nuttx/mm/umm_heap/umm_initialize.c:109
{
    8006052e:	e406                	sd	ra,8(sp)
nuttx/mm/umm_heap/umm_initialize.c:131
  allocbase = pgalloc(0, npages);
    80060530:	314040ef          	jal	ra,80064844 <pgalloc>
nuttx/mm/umm_heap/umm_initialize.c:132
  DEBUGASSERT(allocbase != 0);
    80060534:	ed09                	bnez	a0,8006054e <umm_try_initialize+0x30>
nuttx/mm/umm_heap/umm_initialize.c:132 (discriminator 1)
    80060536:	00029617          	auipc	a2,0x29
    8006053a:	b3a60613          	addi	a2,a2,-1222 # 80089070 <qjsc_qjscalc+0x8198>
    8006053e:	08400593          	li	a1,132
    80060542:	00029517          	auipc	a0,0x29
    80060546:	b3e50513          	addi	a0,a0,-1218 # 80089080 <qjsc_qjscalc+0x81a8>
    8006054a:	412000ef          	jal	ra,8006095c <__assert>
nuttx/mm/umm_heap/umm_initialize.c:137 (discriminator 2)

  /* Let umm_initialize do the real work. */

  umm_initialize((FAR void *)allocbase, npages * CONFIG_MM_PGSIZE);
}
    8006054e:	60a2                	ld	ra,8(sp)
nuttx/mm/umm_heap/umm_initialize.c:136 (discriminator 2)
  umm_initialize((FAR void *)allocbase, npages * CONFIG_MM_PGSIZE);
    80060550:	6585                	lui	a1,0x1
nuttx/mm/umm_heap/umm_initialize.c:137 (discriminator 2)
}
    80060552:	0141                	addi	sp,sp,16
nuttx/mm/umm_heap/umm_initialize.c:136 (discriminator 2)
  umm_initialize((FAR void *)allocbase, npages * CONFIG_MM_PGSIZE);
    80060554:	fafff06f          	j	80060502 <umm_initialize>
    80060558:	8082                	ret

000000008006055a <mm_addregion>:
mm_addregion():
nuttx/mm/mm_heap/mm_initialize.c:102
 *
 ****************************************************************************/

void mm_addregion(FAR struct mm_heap_s *heap, FAR void *heapstart,
                  size_t heapsize)
{
    8006055a:	1101                	addi	sp,sp,-32
    8006055c:	e822                	sd	s0,16(sp)
    8006055e:	e426                	sd	s1,8(sp)
    80060560:	e04a                	sd	s2,0(sp)
    80060562:	ec06                	sd	ra,24(sp)
    80060564:	84aa                	mv	s1,a0
    80060566:	842e                	mv	s0,a1
    80060568:	8932                	mv	s2,a2
nuttx/mm/mm_heap/mm_initialize.c:136

  /* Register to KASan for access check */

  kasan_register(heapstart, &heapsize);

  DEBUGVERIFY(mm_lock(heap));
    8006056a:	0f6000ef          	jal	ra,80060660 <mm_lock>
    8006056e:	00055e63          	bgez	a0,8006058a <mm_addregion+0x30>
nuttx/mm/mm_heap/mm_initialize.c:136 (discriminator 1)
    80060572:	00029617          	auipc	a2,0x29
    80060576:	8ae60613          	addi	a2,a2,-1874 # 80088e20 <qjsc_qjscalc+0x7f48>
    8006057a:	08800593          	li	a1,136
    8006057e:	00029517          	auipc	a0,0x29
    80060582:	b2250513          	addi	a0,a0,-1246 # 800890a0 <qjsc_qjscalc+0x81c8>
    80060586:	3d6000ef          	jal	ra,8006095c <__assert>
nuttx/mm/mm_heap/mm_initialize.c:145 (discriminator 2)
   * Note: (uintptr_t)node + MM_SIZEOF_ALLOCNODE is what's actually
   * returned to the malloc user, which should have natural alignment.
   * (that is, in this implementation, MM_MIN_CHUNK-alignment.)
   */

  heapbase = MM_ALIGN_UP((uintptr_t)heapstart + 2 * MM_SIZEOF_ALLOCNODE) -
    8006058a:	02f40593          	addi	a1,s0,47
nuttx/mm/mm_heap/mm_initialize.c:161 (discriminator 2)
  minfo("Region %d: base=%p size=%zu\n", IDX + 1, heapstart, heapsize);
#endif

  /* Add the size of this region to the total size of the heap */

  heap->mm_heapsize += heapsize;
    8006058e:	7094                	ld	a3,32(s1)
nuttx/mm/mm_heap/mm_initialize.c:145 (discriminator 2)
  heapbase = MM_ALIGN_UP((uintptr_t)heapstart + 2 * MM_SIZEOF_ALLOCNODE) -
    80060590:	99c1                	andi	a1,a1,-16
nuttx/mm/mm_heap/mm_initialize.c:147 (discriminator 2)
  heapend  = MM_ALIGN_DOWN((uintptr_t)heapstart + (uintptr_t)heapsize);
    80060592:	944a                	add	s0,s0,s2
nuttx/mm/mm_heap/mm_initialize.c:145 (discriminator 2)
  heapbase = MM_ALIGN_UP((uintptr_t)heapstart + 2 * MM_SIZEOF_ALLOCNODE) -
    80060594:	fe058713          	addi	a4,a1,-32 # fe0 <asinh-0x7ffff020>
nuttx/mm/mm_heap/mm_initialize.c:147 (discriminator 2)
  heapend  = MM_ALIGN_DOWN((uintptr_t)heapstart + (uintptr_t)heapsize);
    80060598:	9841                	andi	s0,s0,-16
nuttx/mm/mm_heap/mm_initialize.c:148 (discriminator 2)
  heapsize = heapend - heapbase;
    8006059a:	40e407b3          	sub	a5,s0,a4
nuttx/mm/mm_heap/mm_initialize.c:161 (discriminator 2)
  heap->mm_heapsize += heapsize;
    8006059e:	96be                	add	a3,a3,a5
    800605a0:	f094                	sd	a3,32(s1)
nuttx/mm/mm_heap/mm_initialize.c:171 (discriminator 2)
   *
   * And create one free node between the guard nodes that contains
   * all available memory.
   */

  heap->mm_heapstart[IDX]          = (FAR struct mm_allocnode_s *)heapbase;
    800605a2:	fc98                	sd	a4,56(s1)
nuttx/mm/mm_heap/mm_initialize.c:173 (discriminator 2)
  MM_ADD_BACKTRACE(heap, heap->mm_heapstart[IDX]);
  heap->mm_heapstart[IDX]->size    = MM_SIZEOF_ALLOCNODE | MM_ALLOC_BIT;
    800605a4:	46c5                	li	a3,17
    800605a6:	fed5b423          	sd	a3,-24(a1)
nuttx/mm/mm_heap/mm_initialize.c:177 (discriminator 2)
  node                             = (FAR struct mm_freenode_s *)
                                     (heapbase + MM_SIZEOF_ALLOCNODE);
  DEBUGASSERT((((uintptr_t)node + MM_SIZEOF_ALLOCNODE) % MM_ALIGN) == 0);
  node->size                       = heapsize - 2 * MM_SIZEOF_ALLOCNODE;
    800605aa:	1781                	addi	a5,a5,-32
    800605ac:	fef5bc23          	sd	a5,-8(a1)
nuttx/mm/mm_heap/mm_initialize.c:179 (discriminator 2)
  heap->mm_heapend[IDX]            = (FAR struct mm_allocnode_s *)
                                     (heapend - MM_SIZEOF_ALLOCNODE);
    800605b0:	1441                	addi	s0,s0,-16
nuttx/mm/mm_heap/mm_initialize.c:178 (discriminator 2)
  heap->mm_heapend[IDX]            = (FAR struct mm_allocnode_s *)
    800605b2:	e0a0                	sd	s0,64(s1)
nuttx/mm/mm_heap/mm_initialize.c:180 (discriminator 2)
  heap->mm_heapend[IDX]->size      = MM_SIZEOF_ALLOCNODE | MM_ALLOC_BIT |
    800605b4:	47cd                	li	a5,19
    800605b6:	e41c                	sd	a5,8(s0)
nuttx/mm/mm_heap/mm_initialize.c:182 (discriminator 2)
                                     MM_PREVFREE_BIT;
  heap->mm_heapend[IDX]->preceding = node->size;
    800605b8:	60bc                	ld	a5,64(s1)
    800605ba:	ff85b703          	ld	a4,-8(a1)
nuttx/mm/mm_heap/mm_initialize.c:175 (discriminator 2)
                                     (heapbase + MM_SIZEOF_ALLOCNODE);
    800605be:	15c1                	addi	a1,a1,-16
nuttx/mm/mm_heap/mm_initialize.c:193 (discriminator 2)
  heap->mm_nregions++;
#endif

  /* Add the single, large free node to the nodelist */

  mm_addfreechunk(heap, node);
    800605c0:	8526                	mv	a0,s1
nuttx/mm/mm_heap/mm_initialize.c:182 (discriminator 2)
  heap->mm_heapend[IDX]->preceding = node->size;
    800605c2:	e398                	sd	a4,0(a5)
nuttx/mm/mm_heap/mm_initialize.c:193 (discriminator 2)
  mm_addfreechunk(heap, node);
    800605c4:	0ea000ef          	jal	ra,800606ae <mm_addfreechunk>
nuttx/mm/mm_heap/mm_initialize.c:195 (discriminator 2)
  mm_unlock(heap);
}
    800605c8:	6442                	ld	s0,16(sp)
    800605ca:	60e2                	ld	ra,24(sp)
    800605cc:	6902                	ld	s2,0(sp)
nuttx/mm/mm_heap/mm_initialize.c:194 (discriminator 2)
  mm_unlock(heap);
    800605ce:	8526                	mv	a0,s1
nuttx/mm/mm_heap/mm_initialize.c:195 (discriminator 2)
}
    800605d0:	64a2                	ld	s1,8(sp)
    800605d2:	6105                	addi	sp,sp,32
nuttx/mm/mm_heap/mm_initialize.c:194 (discriminator 2)
  mm_unlock(heap);
    800605d4:	a845                	j	80060684 <mm_unlock>

00000000800605d6 <mm_initialize>:
mm_initialize():
nuttx/mm/mm_heap/mm_initialize.c:219
 *
 ****************************************************************************/

FAR struct mm_heap_s *mm_initialize(FAR const char *name,
                                    FAR void *heapstart, size_t heapsize)
{
    800605d6:	1101                	addi	sp,sp,-32
    800605d8:	e822                	sd	s0,16(sp)
nuttx/mm/mm_heap/mm_initialize.c:231

  minfo("Heap: name=%s, start=%p size=%zu\n", name, heapstart, heapsize);

  /* First ensure the memory to be used is aligned */

  heap_adj  = MM_ALIGN_UP((uintptr_t)heapstart);
    800605da:	00f58413          	addi	s0,a1,15
    800605de:	9841                	andi	s0,s0,-16
nuttx/mm/mm_heap/mm_initialize.c:232
  heapsize -= heap_adj - (uintptr_t)heapstart;
    800605e0:	95b2                	add	a1,a1,a2
nuttx/mm/mm_heap/mm_initialize.c:219
{
    800605e2:	ec06                	sd	ra,24(sp)
    800605e4:	e426                	sd	s1,8(sp)
    800605e6:	e04a                	sd	s2,0(sp)
nuttx/mm/mm_heap/mm_initialize.c:232
  heapsize -= heap_adj - (uintptr_t)heapstart;
    800605e8:	40858633          	sub	a2,a1,s0
nuttx/mm/mm_heap/mm_initialize.c:236

  /* Reserve a block space for mm_heap_s context */

  DEBUGASSERT(heapsize > sizeof(struct mm_heap_s));
    800605ec:	2a800793          	li	a5,680
    800605f0:	00c7ee63          	bltu	a5,a2,8006060c <mm_initialize+0x36>
nuttx/mm/mm_heap/mm_initialize.c:236 (discriminator 1)
    800605f4:	00029617          	auipc	a2,0x29
    800605f8:	ac460613          	addi	a2,a2,-1340 # 800890b8 <qjsc_qjscalc+0x81e0>
    800605fc:	0ec00593          	li	a1,236
    80060600:	00029517          	auipc	a0,0x29
    80060604:	aa050513          	addi	a0,a0,-1376 # 800890a0 <qjsc_qjscalc+0x81c8>
    80060608:	354000ef          	jal	ra,8006095c <__assert>
nuttx/mm/mm_heap/mm_initialize.c:238 (discriminator 2)
  heap = (FAR struct mm_heap_s *)heap_adj;
  heapsize -= sizeof(struct mm_heap_s);
    8006060c:	d5860493          	addi	s1,a2,-680
nuttx/mm/mm_heap/mm_initialize.c:245 (discriminator 2)

  DEBUGASSERT(MM_MIN_CHUNK >= MM_SIZEOF_ALLOCNODE);

  /* Set up global variables */

  memset(heap, 0, sizeof(struct mm_heap_s));
    80060610:	4581                	li	a1,0
    80060612:	2a800613          	li	a2,680
    80060616:	8522                	mv	a0,s0
    80060618:	62a030ef          	jal	ra,80063c42 <memset>
nuttx/mm/mm_heap/mm_initialize.c:239 (discriminator 2)
  heapstart = (FAR char *)heap_adj + sizeof(struct mm_heap_s);
    8006061c:	2a840913          	addi	s2,s0,680
nuttx/mm/mm_heap/mm_initialize.c:249 (discriminator 2)

  /* Initialize the node array */

  for (i = 1; i < MM_NNODES; i++)
    80060620:	06840713          	addi	a4,s0,104
    80060624:	05840793          	addi	a5,s0,88
    80060628:	27840693          	addi	a3,s0,632
nuttx/mm/mm_heap/mm_initialize.c:252 (discriminator 3)
    {
      heap->mm_nodelist[i - 1].flink = &heap->mm_nodelist[i];
      heap->mm_nodelist[i].blink     = &heap->mm_nodelist[i - 1];
    8006062c:	fe070613          	addi	a2,a4,-32
nuttx/mm/mm_heap/mm_initialize.c:251 (discriminator 3)
      heap->mm_nodelist[i - 1].flink = &heap->mm_nodelist[i];
    80060630:	e398                	sd	a4,0(a5)
nuttx/mm/mm_heap/mm_initialize.c:252 (discriminator 3)
      heap->mm_nodelist[i].blink     = &heap->mm_nodelist[i - 1];
    80060632:	f790                	sd	a2,40(a5)
nuttx/mm/mm_heap/mm_initialize.c:249 (discriminator 3)
  for (i = 1; i < MM_NNODES; i++)
    80060634:	02078793          	addi	a5,a5,32 # 801020 <asinh-0x7f7fefe0>
    80060638:	02070713          	addi	a4,a4,32
    8006063c:	fed798e3          	bne	a5,a3,8006062c <mm_initialize+0x56>
nuttx/mm/mm_heap/mm_initialize.c:259

  /* Initialize the malloc mutex to one (to support one-at-
   * a-time access to private data sets).
   */

  nxmutex_init(&heap->mm_lock);
    80060640:	8522                	mv	a0,s0
    80060642:	3ec000ef          	jal	ra,80060a2e <nxmutex_init>
nuttx/mm/mm_heap/mm_initialize.c:273
#  endif
#endif

  /* Add the initial region of memory to the heap */

  mm_addregion(heap, heapstart, heapsize);
    80060646:	8522                	mv	a0,s0
    80060648:	8626                	mv	a2,s1
    8006064a:	85ca                	mv	a1,s2
    8006064c:	f0fff0ef          	jal	ra,8006055a <mm_addregion>
nuttx/mm/mm_heap/mm_initialize.c:299
                              CONFIG_MM_HEAP_MEMPOOL_EXPAND_SIZE,
                              CONFIG_MM_HEAP_MEMPOOL_DICTIONARY_EXPAND_SIZE);
#endif

  return heap;
}
    80060650:	60e2                	ld	ra,24(sp)
    80060652:	8522                	mv	a0,s0
    80060654:	6442                	ld	s0,16(sp)
    80060656:	64a2                	ld	s1,8(sp)
    80060658:	6902                	ld	s2,0(sp)
    8006065a:	6105                	addi	sp,sp,32
    8006065c:	8082                	ret

000000008006065e <mm_uninitialize>:
mm_uninitialize():
nuttx/mm/mm_heap/mm_initialize.c:326
#if defined(CONFIG_FS_PROCFS) && !defined(CONFIG_FS_PROCFS_EXCLUDE_MEMINFO)
#  if defined(CONFIG_BUILD_FLAT) || defined(__KERNEL__)
  procfs_unregister_meminfo(&heap->mm_procfs);
#  endif
#endif
  nxmutex_destroy(&heap->mm_lock);
    8006065e:	a101                	j	80060a5e <nxmutex_destroy>

0000000080060660 <mm_lock>:
mm_lock():
nuttx/mm/mm_heap/mm_lock.c:59
 *   0 if the lock can be taken, otherwise negative errno.
 *
 ****************************************************************************/

int mm_lock(FAR struct mm_heap_s *heap)
{
    80060660:	1141                	addi	sp,sp,-16
    80060662:	e022                	sd	s0,0(sp)
    80060664:	e406                	sd	ra,8(sp)
    80060666:	842a                	mv	s0,a0
nuttx/mm/mm_heap/mm_lock.c:89
   *
   * This is handled by _SCHED_GETTID() to return the special value -ESRCH
   * to indicate this special situation.
   */

  if (_SCHED_GETTID() < 0)
    80060668:	09e040ef          	jal	ra,80064706 <gettid>
    8006066c:	00054763          	bltz	a0,8006067a <mm_lock+0x1a>
nuttx/mm/mm_heap/mm_lock.c:95
    {
      return -ESRCH;
    }
  else
    {
      return nxmutex_lock(&heap->mm_lock);
    80060670:	8522                	mv	a0,s0
nuttx/mm/mm_heap/mm_lock.c:97
    }
}
    80060672:	6402                	ld	s0,0(sp)
    80060674:	60a2                	ld	ra,8(sp)
    80060676:	0141                	addi	sp,sp,16
nuttx/mm/mm_heap/mm_lock.c:95
      return nxmutex_lock(&heap->mm_lock);
    80060678:	a935                	j	80060ab4 <nxmutex_lock>
nuttx/mm/mm_heap/mm_lock.c:97
}
    8006067a:	60a2                	ld	ra,8(sp)
    8006067c:	6402                	ld	s0,0(sp)
    8006067e:	5575                	li	a0,-3
    80060680:	0141                	addi	sp,sp,16
    80060682:	8082                	ret

0000000080060684 <mm_unlock>:
mm_unlock():
nuttx/mm/mm_heap/mm_lock.c:108
 *   Release the MM mutex when it is not longer needed.
 *
 ****************************************************************************/

void mm_unlock(FAR struct mm_heap_s *heap)
{
    80060684:	1141                	addi	sp,sp,-16
    80060686:	e406                	sd	ra,8(sp)
nuttx/mm/mm_heap/mm_lock.c:116
    {
      return;
    }
#endif

  DEBUGVERIFY(nxmutex_unlock(&heap->mm_lock));
    80060688:	52e000ef          	jal	ra,80060bb6 <nxmutex_unlock>
    8006068c:	00055e63          	bgez	a0,800606a8 <mm_unlock+0x24>
nuttx/mm/mm_heap/mm_lock.c:116 (discriminator 1)
    80060690:	00029617          	auipc	a2,0x29
    80060694:	a5060613          	addi	a2,a2,-1456 # 800890e0 <qjsc_qjscalc+0x8208>
    80060698:	07400593          	li	a1,116
    8006069c:	00029517          	auipc	a0,0x29
    800606a0:	a6450513          	addi	a0,a0,-1436 # 80089100 <qjsc_qjscalc+0x8228>
    800606a4:	2b8000ef          	jal	ra,8006095c <__assert>
nuttx/mm/mm_heap/mm_lock.c:117
}
    800606a8:	60a2                	ld	ra,8(sp)
    800606aa:	0141                	addi	sp,sp,16
    800606ac:	8082                	ret

00000000800606ae <mm_addfreechunk>:
mm_addfreechunk():
nuttx/mm/mm_heap/mm_addfreechunk.c:48
 *
 ****************************************************************************/

void mm_addfreechunk(FAR struct mm_heap_s *heap,
                     FAR struct mm_freenode_s *node)
{
    800606ae:	1101                	addi	sp,sp,-32
    800606b0:	e04a                	sd	s2,0(sp)
    800606b2:	ec06                	sd	ra,24(sp)
    800606b4:	e822                	sd	s0,16(sp)
    800606b6:	e426                	sd	s1,8(sp)
nuttx/mm/mm_heap/mm_addfreechunk.c:51
  FAR struct mm_freenode_s *next;
  FAR struct mm_freenode_s *prev;
  size_t nodesize = MM_SIZEOF_NODE(node);
    800606b8:	659c                	ld	a5,8(a1)
nuttx/mm/mm_heap/mm_addfreechunk.c:54
  int ndx;

  DEBUGASSERT(nodesize >= MM_MIN_CHUNK);
    800606ba:	477d                	li	a4,31
nuttx/mm/mm_heap/mm_addfreechunk.c:51
  size_t nodesize = MM_SIZEOF_NODE(node);
    800606bc:	ffc7f913          	andi	s2,a5,-4
nuttx/mm/mm_heap/mm_addfreechunk.c:54
  DEBUGASSERT(nodesize >= MM_MIN_CHUNK);
    800606c0:	01276e63          	bltu	a4,s2,800606dc <mm_addfreechunk+0x2e>
nuttx/mm/mm_heap/mm_addfreechunk.c:54 (discriminator 1)
    800606c4:	00029617          	auipc	a2,0x29
    800606c8:	a5460613          	addi	a2,a2,-1452 # 80089118 <qjsc_qjscalc+0x8240>
    800606cc:	03600593          	li	a1,54
nuttx/mm/mm_heap/mm_addfreechunk.c:55 (discriminator 1)
  DEBUGASSERT(MM_NODE_IS_FREE(node));
    800606d0:	0002d517          	auipc	a0,0x2d
    800606d4:	03050513          	addi	a0,a0,48 # 8008d700 <qjsc_qjscalc+0xc828>
    800606d8:	284000ef          	jal	ra,8006095c <__assert>
nuttx/mm/mm_heap/mm_addfreechunk.c:55 (discriminator 2)
    800606dc:	8b85                	andi	a5,a5,1
    800606de:	cb81                	beqz	a5,800606ee <mm_addfreechunk+0x40>
nuttx/mm/mm_heap/mm_addfreechunk.c:55 (discriminator 1)
    800606e0:	0002d617          	auipc	a2,0x2d
    800606e4:	04060613          	addi	a2,a2,64 # 8008d720 <qjsc_qjscalc+0xc848>
    800606e8:	03700593          	li	a1,55
    800606ec:	b7d5                	j	800606d0 <mm_addfreechunk+0x22>
    800606ee:	84aa                	mv	s1,a0
nuttx/mm/mm_heap/mm_addfreechunk.c:59 (discriminator 2)

  /* Convert the size to a nodelist index */

  ndx = mm_size2ndx(nodesize);
    800606f0:	854a                	mv	a0,s2
    800606f2:	842e                	mv	s0,a1
    800606f4:	03c000ef          	jal	ra,80060730 <mm_size2ndx>
nuttx/mm/mm_heap/mm_addfreechunk.c:63 (discriminator 2)

  /* Now put the new node into the next */

  for (prev = &heap->mm_nodelist[ndx],
    800606f8:	00551713          	slli	a4,a0,0x5
    800606fc:	04870713          	addi	a4,a4,72
nuttx/mm/mm_heap/mm_addfreechunk.c:64 (discriminator 2)
       next = heap->mm_nodelist[ndx].flink;
    80060700:	0516                	slli	a0,a0,0x5
nuttx/mm/mm_heap/mm_addfreechunk.c:63 (discriminator 2)
  for (prev = &heap->mm_nodelist[ndx],
    80060702:	9726                	add	a4,a4,s1
nuttx/mm/mm_heap/mm_addfreechunk.c:64 (discriminator 2)
       next = heap->mm_nodelist[ndx].flink;
    80060704:	94aa                	add	s1,s1,a0
    80060706:	6cbc                	ld	a5,88(s1)
nuttx/mm/mm_heap/mm_addfreechunk.c:63
  for (prev = &heap->mm_nodelist[ndx],
    80060708:	c791                	beqz	a5,80060714 <mm_addfreechunk+0x66>
nuttx/mm/mm_heap/mm_addfreechunk.c:65
       next && next->size && MM_SIZEOF_NODE(next) < nodesize;
    8006070a:	6794                	ld	a3,8(a5)
    8006070c:	c681                	beqz	a3,80060714 <mm_addfreechunk+0x66>
nuttx/mm/mm_heap/mm_addfreechunk.c:65 (discriminator 1)
    8006070e:	9af1                	andi	a3,a3,-4
    80060710:	0126ed63          	bltu	a3,s2,8006072a <mm_addfreechunk+0x7c>
nuttx/mm/mm_heap/mm_addfreechunk.c:70
       prev = next, next = next->flink);

  /* Does it go in mid next or at the end? */

  prev->flink = node;
    80060714:	eb00                	sd	s0,16(a4)
nuttx/mm/mm_heap/mm_addfreechunk.c:71
  node->blink = prev;
    80060716:	ec18                	sd	a4,24(s0)
nuttx/mm/mm_heap/mm_addfreechunk.c:72
  node->flink = next;
    80060718:	e81c                	sd	a5,16(s0)
nuttx/mm/mm_heap/mm_addfreechunk.c:74

  if (next)
    8006071a:	c391                	beqz	a5,8006071e <mm_addfreechunk+0x70>
nuttx/mm/mm_heap/mm_addfreechunk.c:78
    {
      /* The new node goes between prev and next */

      next->blink = node;
    8006071c:	ef80                	sd	s0,24(a5)
nuttx/mm/mm_heap/mm_addfreechunk.c:80
    }
}
    8006071e:	60e2                	ld	ra,24(sp)
    80060720:	6442                	ld	s0,16(sp)
    80060722:	64a2                	ld	s1,8(sp)
    80060724:	6902                	ld	s2,0(sp)
    80060726:	6105                	addi	sp,sp,32
    80060728:	8082                	ret
nuttx/mm/mm_heap/mm_addfreechunk.c:66
       prev = next, next = next->flink);
    8006072a:	873e                	mv	a4,a5
    8006072c:	6b9c                	ld	a5,16(a5)
    8006072e:	bfe9                	j	80060708 <mm_addfreechunk+0x5a>

0000000080060730 <mm_size2ndx>:
mm_size2ndx():
nuttx/mm/mm_heap/mm_size2ndx.c:46
 *    Convert the size to a nodelist index.
 *
 ****************************************************************************/

int mm_size2ndx(size_t size)
{
    80060730:	1141                	addi	sp,sp,-16
    80060732:	e406                	sd	ra,8(sp)
nuttx/mm/mm_heap/mm_size2ndx.c:47
  DEBUGASSERT(size >= MM_MIN_CHUNK);
    80060734:	477d                	li	a4,31
    80060736:	00a76e63          	bltu	a4,a0,80060752 <mm_size2ndx+0x22>
nuttx/mm/mm_heap/mm_size2ndx.c:47 (discriminator 1)
    8006073a:	0002d617          	auipc	a2,0x2d
    8006073e:	00660613          	addi	a2,a2,6 # 8008d740 <qjsc_qjscalc+0xc868>
    80060742:	02f00593          	li	a1,47
    80060746:	00031517          	auipc	a0,0x31
    8006074a:	5e250513          	addi	a0,a0,1506 # 80091d28 <qjsc_qjscalc+0x10e50>
    8006074e:	20e000ef          	jal	ra,8006095c <__assert>
    80060752:	87aa                	mv	a5,a0
nuttx/mm/mm_heap/mm_size2ndx.c:48 (discriminator 2)
  if (size >= MM_MAX_CHUNK)
    80060754:	00400737          	lui	a4,0x400
nuttx/mm/mm_heap/mm_size2ndx.c:50 (discriminator 2)
    {
      return MM_NNODES - 1;
    80060758:	4545                	li	a0,17
nuttx/mm/mm_heap/mm_size2ndx.c:48 (discriminator 2)
  if (size >= MM_MAX_CHUNK)
    8006075a:	00e7f763          	bgeu	a5,a4,80060768 <mm_size2ndx+0x38>
nuttx/mm/mm_heap/mm_size2ndx.c:54
    }

  size >>= MM_MIN_SHIFT;
  return flsl(size) - 1;
    8006075e:	0057d513          	srli	a0,a5,0x5
    80060762:	2c2030ef          	jal	ra,80063a24 <flsl>
    80060766:	357d                	addiw	a0,a0,-1
nuttx/mm/mm_heap/mm_size2ndx.c:55
}
    80060768:	60a2                	ld	ra,8(sp)
    8006076a:	0141                	addi	sp,sp,16
    8006076c:	8082                	ret

000000008006076e <mm_shrinkchunk>:
mm_shrinkchunk():
nuttx/mm/mm_heap/mm_shrinkchunk.c:54
 *
 ****************************************************************************/

void mm_shrinkchunk(FAR struct mm_heap_s *heap,
                    FAR struct mm_allocnode_s *node, size_t size)
{
    8006076e:	1141                	addi	sp,sp,-16
    80060770:	e406                	sd	ra,8(sp)
nuttx/mm/mm_heap/mm_shrinkchunk.c:58
  FAR struct mm_freenode_s *next;
  size_t nodesize = MM_SIZEOF_NODE(node);

  DEBUGASSERT((size & MM_GRAN_MASK) == 0);
    80060772:	00f67693          	andi	a3,a2,15
nuttx/mm/mm_heap/mm_shrinkchunk.c:56
  size_t nodesize = MM_SIZEOF_NODE(node);
    80060776:	659c                	ld	a5,8(a1)
nuttx/mm/mm_heap/mm_shrinkchunk.c:58
  DEBUGASSERT((size & MM_GRAN_MASK) == 0);
    80060778:	ce89                	beqz	a3,80060792 <mm_shrinkchunk+0x24>
nuttx/mm/mm_heap/mm_shrinkchunk.c:58 (discriminator 1)
    8006077a:	00031617          	auipc	a2,0x31
    8006077e:	5c660613          	addi	a2,a2,1478 # 80091d40 <qjsc_qjscalc+0x10e68>
    80060782:	03a00593          	li	a1,58
nuttx/mm/mm_heap/mm_shrinkchunk.c:81 (discriminator 1)

      /* Remove the next node.  There must be a predecessor, but there may
       * not be a successor node.
       */

      DEBUGASSERT(next->blink);
    80060786:	00031517          	auipc	a0,0x31
    8006078a:	5ea50513          	addi	a0,a0,1514 # 80091d70 <qjsc_qjscalc+0x10e98>
    8006078e:	1ce000ef          	jal	ra,8006095c <__assert>
    80060792:	9bf1                	andi	a5,a5,-4
nuttx/mm/mm_heap/mm_shrinkchunk.c:62 (discriminator 2)
  next = (FAR struct mm_freenode_s *)((FAR char *)node + nodesize);
    80060794:	00f586b3          	add	a3,a1,a5
nuttx/mm/mm_heap/mm_shrinkchunk.c:66 (discriminator 2)
  if (MM_NODE_IS_FREE(next))
    80060798:	872e                	mv	a4,a1
    8006079a:	668c                	ld	a1,8(a3)
    8006079c:	0015f813          	andi	a6,a1,1
    800607a0:	06081263          	bnez	a6,80060804 <mm_shrinkchunk+0x96>
nuttx/mm/mm_heap/mm_shrinkchunk.c:70
      size_t nextsize = MM_SIZEOF_NODE(next);
    800607a4:	ffc5f813          	andi	a6,a1,-4
    800607a8:	88aa                	mv	a7,a0
nuttx/mm/mm_heap/mm_shrinkchunk.c:74
      andbeyond = (FAR struct mm_allocnode_s *)((FAR char *)next + nextsize);
    800607aa:	01068533          	add	a0,a3,a6
nuttx/mm/mm_heap/mm_shrinkchunk.c:75
      DEBUGASSERT(MM_PREVNODE_IS_FREE(andbeyond));
    800607ae:	650c                	ld	a1,8(a0)
    800607b0:	8989                	andi	a1,a1,2
    800607b2:	e981                	bnez	a1,800607c2 <mm_shrinkchunk+0x54>
nuttx/mm/mm_heap/mm_shrinkchunk.c:75 (discriminator 1)
    800607b4:	00031617          	auipc	a2,0x31
    800607b8:	5dc60613          	addi	a2,a2,1500 # 80091d90 <qjsc_qjscalc+0x10eb8>
    800607bc:	04b00593          	li	a1,75
    800607c0:	b7d9                	j	80060786 <mm_shrinkchunk+0x18>
nuttx/mm/mm_heap/mm_shrinkchunk.c:81 (discriminator 2)
      DEBUGASSERT(next->blink);
    800607c2:	0186b303          	ld	t1,24(a3)
    800607c6:	00031963          	bnez	t1,800607d8 <mm_shrinkchunk+0x6a>
nuttx/mm/mm_heap/mm_shrinkchunk.c:81 (discriminator 1)
    800607ca:	00028617          	auipc	a2,0x28
    800607ce:	74e60613          	addi	a2,a2,1870 # 80088f18 <qjsc_qjscalc+0x8040>
    800607d2:	05100593          	li	a1,81
    800607d6:	bf45                	j	80060786 <mm_shrinkchunk+0x18>
nuttx/mm/mm_heap/mm_shrinkchunk.c:82 (discriminator 2)
      next->blink->flink = next->flink;
    800607d8:	6a8c                	ld	a1,16(a3)
    800607da:	00b33823          	sd	a1,16(t1)
nuttx/mm/mm_heap/mm_shrinkchunk.c:83 (discriminator 2)
      if (next->flink)
    800607de:	c199                	beqz	a1,800607e4 <mm_shrinkchunk+0x76>
nuttx/mm/mm_heap/mm_shrinkchunk.c:85
        {
          next->flink->blink = next->blink;
    800607e0:	6e94                	ld	a3,24(a3)
    800607e2:	ed94                	sd	a3,24(a1)
nuttx/mm/mm_heap/mm_shrinkchunk.c:96

      newnode = (FAR struct mm_freenode_s *)((FAR char *)node + size);

      /* Set up the size of the new node */

      newnode->size        = nextsize + nodesize - size;
    800607e4:	8f91                	sub	a5,a5,a2
nuttx/mm/mm_heap/mm_shrinkchunk.c:92
      newnode = (FAR struct mm_freenode_s *)((FAR char *)node + size);
    800607e6:	00c705b3          	add	a1,a4,a2
nuttx/mm/mm_heap/mm_shrinkchunk.c:96
      newnode->size        = nextsize + nodesize - size;
    800607ea:	97c2                	add	a5,a5,a6
    800607ec:	e59c                	sd	a5,8(a1)
nuttx/mm/mm_heap/mm_shrinkchunk.c:97
      node->size           = size | (node->size & MM_MASK_BIT);
    800607ee:	671c                	ld	a5,8(a4)
    800607f0:	8b8d                	andi	a5,a5,3
    800607f2:	8e5d                	or	a2,a2,a5
    800607f4:	e710                	sd	a2,8(a4)
nuttx/mm/mm_heap/mm_shrinkchunk.c:98
      andbeyond->preceding = newnode->size;
    800607f6:	659c                	ld	a5,8(a1)
    800607f8:	e11c                	sd	a5,0(a0)
nuttx/mm/mm_heap/mm_shrinkchunk.c:102

      /* Add the new node to the freenodelist */

      mm_addfreechunk(heap, newnode);
    800607fa:	8546                	mv	a0,a7
nuttx/mm/mm_heap/mm_shrinkchunk.c:130

      /* Add the new node to the freenodelist */

      mm_addfreechunk(heap, newnode);
    }
}
    800607fc:	60a2                	ld	ra,8(sp)
    800607fe:	0141                	addi	sp,sp,16
nuttx/mm/mm_heap/mm_shrinkchunk.c:128
      mm_addfreechunk(heap, newnode);
    80060800:	eafff06f          	j	800606ae <mm_addfreechunk>
nuttx/mm/mm_heap/mm_shrinkchunk.c:109
  else if (nodesize >= size + MM_MIN_CHUNK)
    80060804:	02060593          	addi	a1,a2,32
    80060808:	02b7e163          	bltu	a5,a1,8006082a <mm_shrinkchunk+0xbc>
nuttx/mm/mm_heap/mm_shrinkchunk.c:117
      newnode = (FAR struct mm_freenode_s *)((FAR char *)node + size);
    8006080c:	00c705b3          	add	a1,a4,a2
nuttx/mm/mm_heap/mm_shrinkchunk.c:121
      newnode->size   = nodesize - size;
    80060810:	8f91                	sub	a5,a5,a2
    80060812:	e59c                	sd	a5,8(a1)
nuttx/mm/mm_heap/mm_shrinkchunk.c:122
      node->size      = size | (node->size & MM_MASK_BIT);
    80060814:	671c                	ld	a5,8(a4)
    80060816:	8b8d                	andi	a5,a5,3
    80060818:	8e5d                	or	a2,a2,a5
    8006081a:	e710                	sd	a2,8(a4)
nuttx/mm/mm_heap/mm_shrinkchunk.c:123
      next->size     |= MM_PREVFREE_BIT;
    8006081c:	669c                	ld	a5,8(a3)
    8006081e:	0027e793          	ori	a5,a5,2
    80060822:	e69c                	sd	a5,8(a3)
nuttx/mm/mm_heap/mm_shrinkchunk.c:124
      next->preceding = newnode->size;
    80060824:	659c                	ld	a5,8(a1)
    80060826:	e29c                	sd	a5,0(a3)
    80060828:	bfd1                	j	800607fc <mm_shrinkchunk+0x8e>
nuttx/mm/mm_heap/mm_shrinkchunk.c:130
}
    8006082a:	60a2                	ld	ra,8(sp)
    8006082c:	0141                	addi	sp,sp,16
    8006082e:	8082                	ret

0000000080060830 <mm_malloc>:
mm_malloc():
nuttx/mm/mm_heap/mm_malloc.c:152
 *  8-byte alignment of the allocated data is assured.
 *
 ****************************************************************************/

FAR void *mm_malloc(FAR struct mm_heap_s *heap, size_t size)
{
    80060830:	1101                	addi	sp,sp,-32
    80060832:	e426                	sd	s1,8(sp)
    80060834:	ec06                	sd	ra,24(sp)
    80060836:	e822                	sd	s0,16(sp)
    80060838:	e04a                	sd	s2,0(sp)
    8006083a:	47e1                	li	a5,24
    8006083c:	84aa                	mv	s1,a0
nuttx/mm/mm_heap/mm_malloc.c:176
  /* Adjust the size to account for (1) the size of the allocated node and
   * (2) to make sure that it is aligned with MM_ALIGN and its size is at
   * least MM_MIN_CHUNK.
   */

  if (size < MM_MIN_CHUNK - MM_ALLOCNODE_OVERHEAD)
    8006083e:	00f5f363          	bgeu	a1,a5,80060844 <mm_malloc+0x14>
    80060842:	45e1                	li	a1,24
nuttx/mm/mm_heap/mm_malloc.c:181
    {
      size = MM_MIN_CHUNK - MM_ALLOCNODE_OVERHEAD;
    }

  alignsize = MM_ALIGN_UP(size + MM_ALLOCNODE_OVERHEAD);
    80060844:	01758913          	addi	s2,a1,23
    80060848:	ff097913          	andi	s2,s2,-16
nuttx/mm/mm_heap/mm_malloc.c:182
  if (alignsize < size)
    8006084c:	0cb96a63          	bltu	s2,a1,80060920 <mm_malloc+0xf0>
nuttx/mm/mm_heap/mm_malloc.c:193 (discriminator 2)

  DEBUGASSERT(alignsize >= MM_ALIGN);

  /* We need to hold the MM mutex while we muck with the nodelist. */

  DEBUGVERIFY(mm_lock(heap));
    80060850:	8526                	mv	a0,s1
    80060852:	e0fff0ef          	jal	ra,80060660 <mm_lock>
    80060856:	00055e63          	bgez	a0,80060872 <mm_malloc+0x42>
nuttx/mm/mm_heap/mm_malloc.c:193 (discriminator 1)
    8006085a:	00028617          	auipc	a2,0x28
    8006085e:	5c660613          	addi	a2,a2,1478 # 80088e20 <qjsc_qjscalc+0x7f48>
    80060862:	0c100593          	li	a1,193
nuttx/mm/mm_heap/mm_malloc.c:206 (discriminator 1)
   * other mm_nodelist[] entries.
   */

  for (node = heap->mm_nodelist[ndx].flink; node; node = node->flink)
    {
      DEBUGASSERT(node->blink->flink == node);
    80060866:	00031517          	auipc	a0,0x31
    8006086a:	55250513          	addi	a0,a0,1362 # 80091db8 <qjsc_qjscalc+0x10ee0>
    8006086e:	0ee000ef          	jal	ra,8006095c <__assert>
nuttx/mm/mm_heap/mm_malloc.c:197 (discriminator 2)
  ndx = mm_size2ndx(alignsize);
    80060872:	854a                	mv	a0,s2
    80060874:	ebdff0ef          	jal	ra,80060730 <mm_size2ndx>
nuttx/mm/mm_heap/mm_malloc.c:204 (discriminator 2)
  for (node = heap->mm_nodelist[ndx].flink; node; node = node->flink)
    80060878:	0516                	slli	a0,a0,0x5
    8006087a:	9526                	add	a0,a0,s1
    8006087c:	6d20                	ld	s0,88(a0)
nuttx/mm/mm_heap/mm_malloc.c:204 (discriminator 1)
    8006087e:	ec19                	bnez	s0,8006089c <mm_malloc+0x6c>
nuttx/mm/mm_heap/mm_malloc.c:301 (discriminator 4)
      node->size |= MM_ALLOC_BIT;
      ret = (FAR void *)((FAR char *)node + MM_SIZEOF_ALLOCNODE);
    }

  DEBUGASSERT(ret == NULL || mm_heapmember(heap, ret));
  mm_unlock(heap);
    80060880:	8526                	mv	a0,s1
    80060882:	e03ff0ef          	jal	ra,80060684 <mm_unlock>
nuttx/mm/mm_heap/mm_malloc.c:364 (discriminator 4)
      PANIC();
#endif
    }
#endif

  DEBUGASSERT(ret == NULL || ((uintptr_t)ret) % MM_ALIGN == 0);
    80060886:	cc49                	beqz	s0,80060920 <mm_malloc+0xf0>
nuttx/mm/mm_heap/mm_malloc.c:364 (discriminator 1)
    80060888:	00f47793          	andi	a5,s0,15
    8006088c:	cbd9                	beqz	a5,80060922 <mm_malloc+0xf2>
nuttx/mm/mm_heap/mm_malloc.c:364 (discriminator 3)
    8006088e:	00031617          	auipc	a2,0x31
    80060892:	5f260613          	addi	a2,a2,1522 # 80091e80 <qjsc_qjscalc+0x10fa8>
    80060896:	16c00593          	li	a1,364
    8006089a:	b7f1                	j	80060866 <mm_malloc+0x36>
nuttx/mm/mm_heap/mm_malloc.c:206
      DEBUGASSERT(node->blink->flink == node);
    8006089c:	6c14                	ld	a3,24(s0)
    8006089e:	6a9c                	ld	a5,16(a3)
    800608a0:	00878963          	beq	a5,s0,800608b2 <mm_malloc+0x82>
nuttx/mm/mm_heap/mm_malloc.c:206 (discriminator 1)
    800608a4:	00031617          	auipc	a2,0x31
    800608a8:	52c60613          	addi	a2,a2,1324 # 80091dd0 <qjsc_qjscalc+0x10ef8>
    800608ac:	0ce00593          	li	a1,206
    800608b0:	bf5d                	j	80060866 <mm_malloc+0x36>
nuttx/mm/mm_heap/mm_malloc.c:207 (discriminator 2)
      nodesize = MM_SIZEOF_NODE(node);
    800608b2:	641c                	ld	a5,8(s0)
nuttx/mm/mm_heap/mm_malloc.c:204 (discriminator 2)
  for (node = heap->mm_nodelist[ndx].flink; node; node = node->flink)
    800608b4:	6818                	ld	a4,16(s0)
nuttx/mm/mm_heap/mm_malloc.c:207 (discriminator 2)
      nodesize = MM_SIZEOF_NODE(node);
    800608b6:	9bf1                	andi	a5,a5,-4
nuttx/mm/mm_heap/mm_malloc.c:208 (discriminator 2)
      if (nodesize >= alignsize)
    800608b8:	0727fc63          	bgeu	a5,s2,80060930 <mm_malloc+0x100>
nuttx/mm/mm_heap/mm_malloc.c:204
  for (node = heap->mm_nodelist[ndx].flink; node; node = node->flink)
    800608bc:	843a                	mv	s0,a4
    800608be:	b7c1                	j	8006087e <mm_malloc+0x4e>
nuttx/mm/mm_heap/mm_malloc.c:255 (discriminator 4)
      remaining = nodesize - alignsize;
    800608c0:	412787b3          	sub	a5,a5,s2
nuttx/mm/mm_heap/mm_malloc.c:256 (discriminator 4)
      if (remaining >= MM_MIN_CHUNK)
    800608c4:	467d                	li	a2,31
    800608c6:	04f67a63          	bgeu	a2,a5,8006091a <mm_malloc+0xea>
nuttx/mm/mm_heap/mm_malloc.c:260
          remainder = (FAR struct mm_freenode_s *)
    800608ca:	012405b3          	add	a1,s0,s2
nuttx/mm/mm_heap/mm_malloc.c:263
          remainder->size = remaining;
    800608ce:	e59c                	sd	a5,8(a1)
nuttx/mm/mm_heap/mm_malloc.c:267
          node->size = alignsize | (node->size & MM_MASK_BIT);
    800608d0:	6418                	ld	a4,8(s0)
nuttx/mm/mm_heap/mm_malloc.c:275
          mm_addfreechunk(heap, remainder);
    800608d2:	8526                	mv	a0,s1
nuttx/mm/mm_heap/mm_malloc.c:267
          node->size = alignsize | (node->size & MM_MASK_BIT);
    800608d4:	8b0d                	andi	a4,a4,3
    800608d6:	01276933          	or	s2,a4,s2
    800608da:	01243423          	sd	s2,8(s0)
nuttx/mm/mm_heap/mm_malloc.c:271
          next->preceding = remaining;
    800608de:	e29c                	sd	a5,0(a3)
nuttx/mm/mm_heap/mm_malloc.c:275
          mm_addfreechunk(heap, remainder);
    800608e0:	dcfff0ef          	jal	ra,800606ae <mm_addfreechunk>
nuttx/mm/mm_heap/mm_malloc.c:288
      heap->mm_curused += MM_SIZEOF_NODE(node);
    800608e4:	641c                	ld	a5,8(s0)
    800608e6:	7898                	ld	a4,48(s1)
    800608e8:	9bf1                	andi	a5,a5,-4
    800608ea:	97ba                	add	a5,a5,a4
nuttx/mm/mm_heap/mm_malloc.c:289
      if (heap->mm_curused > heap->mm_maxused)
    800608ec:	7498                	ld	a4,40(s1)
nuttx/mm/mm_heap/mm_malloc.c:288
      heap->mm_curused += MM_SIZEOF_NODE(node);
    800608ee:	f89c                	sd	a5,48(s1)
nuttx/mm/mm_heap/mm_malloc.c:289
      if (heap->mm_curused > heap->mm_maxused)
    800608f0:	00f77363          	bgeu	a4,a5,800608f6 <mm_malloc+0xc6>
nuttx/mm/mm_heap/mm_malloc.c:291
          heap->mm_maxused = heap->mm_curused;
    800608f4:	f49c                	sd	a5,40(s1)
nuttx/mm/mm_heap/mm_malloc.c:296
      node->size |= MM_ALLOC_BIT;
    800608f6:	641c                	ld	a5,8(s0)
nuttx/mm/mm_heap/mm_malloc.c:297
      ret = (FAR void *)((FAR char *)node + MM_SIZEOF_ALLOCNODE);
    800608f8:	0441                	addi	s0,s0,16
nuttx/mm/mm_heap/mm_malloc.c:300
  DEBUGASSERT(ret == NULL || mm_heapmember(heap, ret));
    800608fa:	8526                	mv	a0,s1
nuttx/mm/mm_heap/mm_malloc.c:296
      node->size |= MM_ALLOC_BIT;
    800608fc:	0017e793          	ori	a5,a5,1
    80060900:	fef43c23          	sd	a5,-8(s0)
nuttx/mm/mm_heap/mm_malloc.c:300
  DEBUGASSERT(ret == NULL || mm_heapmember(heap, ret));
    80060904:	85a2                	mv	a1,s0
    80060906:	bebff0ef          	jal	ra,800604f0 <mm_heapmember>
    8006090a:	f93d                	bnez	a0,80060880 <mm_malloc+0x50>
nuttx/mm/mm_heap/mm_malloc.c:300 (discriminator 3)
    8006090c:	00031617          	auipc	a2,0x31
    80060910:	54460613          	addi	a2,a2,1348 # 80091e50 <qjsc_qjscalc+0x10f78>
    80060914:	12c00593          	li	a1,300
    80060918:	b7b9                	j	80060866 <mm_malloc+0x36>
nuttx/mm/mm_heap/mm_malloc.c:283
          next->size &= ~MM_PREVFREE_BIT;
    8006091a:	9b75                	andi	a4,a4,-3
    8006091c:	e698                	sd	a4,8(a3)
    8006091e:	b7d9                	j	800608e4 <mm_malloc+0xb4>
nuttx/mm/mm_heap/mm_malloc.c:186
      return NULL;
    80060920:	4401                	li	s0,0
nuttx/mm/mm_heap/mm_malloc.c:366
  return ret;
}
    80060922:	60e2                	ld	ra,24(sp)
    80060924:	8522                	mv	a0,s0
    80060926:	6442                	ld	s0,16(sp)
    80060928:	64a2                	ld	s1,8(sp)
    8006092a:	6902                	ld	s2,0(sp)
    8006092c:	6105                	addi	sp,sp,32
    8006092e:	8082                	ret
nuttx/mm/mm_heap/mm_malloc.c:230
      node->blink->flink = node->flink;
    80060930:	ea98                	sd	a4,16(a3)
nuttx/mm/mm_heap/mm_malloc.c:231
      if (node->flink)
    80060932:	c319                	beqz	a4,80060938 <mm_malloc+0x108>
nuttx/mm/mm_heap/mm_malloc.c:233
          node->flink->blink = node->blink;
    80060934:	6c14                	ld	a3,24(s0)
    80060936:	ef14                	sd	a3,24(a4)
nuttx/mm/mm_heap/mm_malloc.c:238
      next = (FAR struct mm_freenode_s *)(((FAR char *)node) + nodesize);
    80060938:	00f406b3          	add	a3,s0,a5
nuttx/mm/mm_heap/mm_malloc.c:245
      DEBUGASSERT(MM_NODE_IS_ALLOC(next) && MM_PREVNODE_IS_FREE(next) &&
    8006093c:	6698                	ld	a4,8(a3)
    8006093e:	460d                	li	a2,3
    80060940:	00377593          	andi	a1,a4,3
    80060944:	00c59563          	bne	a1,a2,8006094e <mm_malloc+0x11e>
nuttx/mm/mm_heap/mm_malloc.c:245 (discriminator 2)
    80060948:	6290                	ld	a2,0(a3)
    8006094a:	f6f60be3          	beq	a2,a5,800608c0 <mm_malloc+0x90>
nuttx/mm/mm_heap/mm_malloc.c:245 (discriminator 3)
    8006094e:	00031617          	auipc	a2,0x31
    80060952:	4a260613          	addi	a2,a2,1186 # 80091df0 <qjsc_qjscalc+0x10f18>
    80060956:	0f500593          	li	a1,245
    8006095a:	b731                	j	80060866 <mm_malloc+0x36>

000000008006095c <__assert>:
__assert():
nuttx/libs/libc/assert/lib_assert.c:35
/****************************************************************************
 * Public Functions
 ****************************************************************************/

void __assert(FAR const char *filename, int linenum, FAR const char *msg)
{
    8006095c:	1141                	addi	sp,sp,-16
nuttx/libs/libc/assert/lib_assert.c:36
  _assert(filename, linenum, msg, NULL);
    8006095e:	4681                	li	a3,0
nuttx/libs/libc/assert/lib_assert.c:35
{
    80060960:	e406                	sd	ra,8(sp)
nuttx/libs/libc/assert/lib_assert.c:36
  _assert(filename, linenum, msg, NULL);
    80060962:	4a1030ef          	jal	ra,80064602 <_assert>
nuttx/libs/libc/assert/lib_assert.c:37
  abort();
    80060966:	21c020ef          	jal	ra,80062b82 <abort>

000000008006096a <opendir>:
opendir():
nuttx/libs/libc/dirent/lib_opendir.c:72
 *   ENOTDIR - 'path' is not a directory.
 *
 ****************************************************************************/

FAR DIR *opendir(FAR const char *path)
{
    8006096a:	1101                	addi	sp,sp,-32
    8006096c:	e426                	sd	s1,8(sp)
    8006096e:	84aa                	mv	s1,a0
nuttx/libs/libc/dirent/lib_opendir.c:76
  FAR DIR *dir;
  int fd;

  dir = lib_malloc(sizeof(*dir));
    80060970:	02800513          	li	a0,40
nuttx/libs/libc/dirent/lib_opendir.c:72
{
    80060974:	e822                	sd	s0,16(sp)
    80060976:	ec06                	sd	ra,24(sp)
nuttx/libs/libc/dirent/lib_opendir.c:76
  dir = lib_malloc(sizeof(*dir));
    80060978:	b4aff0ef          	jal	ra,8005fcc2 <malloc>
    8006097c:	842a                	mv	s0,a0
nuttx/libs/libc/dirent/lib_opendir.c:77
  if (dir == NULL)
    8006097e:	e919                	bnez	a0,80060994 <opendir+0x2a>
nuttx/libs/libc/dirent/lib_opendir.c:79
    {
      set_errno(ENOMEM);
    80060980:	098000ef          	jal	ra,80060a18 <__errno>
    80060984:	47b1                	li	a5,12
    80060986:	c11c                	sw	a5,0(a0)
nuttx/libs/libc/dirent/lib_opendir.c:99
    android_fdsan_create_owner_tag(ANDROID_FDSAN_OWNER_TYPE_DIR,
                                       (uintptr_t)dir));
#endif

  return dir;
}
    80060988:	60e2                	ld	ra,24(sp)
    8006098a:	8522                	mv	a0,s0
    8006098c:	6442                	ld	s0,16(sp)
    8006098e:	64a2                	ld	s1,8(sp)
    80060990:	6105                	addi	sp,sp,32
    80060992:	8082                	ret
nuttx/libs/libc/dirent/lib_opendir.c:83
  fd = open(path, O_RDONLY | O_DIRECTORY | O_CLOEXEC);
    80060994:	6585                	lui	a1,0x1
    80060996:	c0158593          	addi	a1,a1,-1023 # c01 <asinh-0x7ffff3ff>
    8006099a:	8526                	mv	a0,s1
    8006099c:	677030ef          	jal	ra,80064812 <open>
nuttx/libs/libc/dirent/lib_opendir.c:84
  if (fd < 0)
    800609a0:	00055763          	bgez	a0,800609ae <opendir+0x44>
nuttx/libs/libc/dirent/lib_opendir.c:86
      lib_free(dir);
    800609a4:	8522                	mv	a0,s0
    800609a6:	b10ff0ef          	jal	ra,8005fcb6 <free>
nuttx/libs/libc/dirent/lib_opendir.c:87
      return NULL;
    800609aa:	4401                	li	s0,0
    800609ac:	bff1                	j	80060988 <opendir+0x1e>
nuttx/libs/libc/dirent/lib_opendir.c:90
  dir->fd = fd;
    800609ae:	c008                	sw	a0,0(s0)
nuttx/libs/libc/dirent/lib_opendir.c:98
  return dir;
    800609b0:	bfe1                	j	80060988 <opendir+0x1e>

00000000800609b2 <closedir>:
closedir():
nuttx/libs/libc/dirent/lib_closedir.c:62
 *   returned, and errno is set appropriately.
 *
 ****************************************************************************/

int closedir(FAR DIR *dirp)
{
    800609b2:	1101                	addi	sp,sp,-32
    800609b4:	ec06                	sd	ra,24(sp)
    800609b6:	e822                	sd	s0,16(sp)
    800609b8:	e426                	sd	s1,8(sp)
nuttx/libs/libc/dirent/lib_closedir.c:68
  int ret;
#ifdef CONFIG_FDSAN
  uint64_t tag;
#endif

  if (dirp == NULL)
    800609ba:	ed01                	bnez	a0,800609d2 <closedir+0x20>
nuttx/libs/libc/dirent/lib_closedir.c:70
    {
      set_errno(EBADF);
    800609bc:	05c000ef          	jal	ra,80060a18 <__errno>
    800609c0:	47a5                	li	a5,9
    800609c2:	c11c                	sw	a5,0(a0)
nuttx/libs/libc/dirent/lib_closedir.c:71
      return -1;
    800609c4:	54fd                	li	s1,-1
nuttx/libs/libc/dirent/lib_closedir.c:84
  ret = close(dirp->fd);
#endif

  lib_free(dirp);
  return ret;
}
    800609c6:	60e2                	ld	ra,24(sp)
    800609c8:	6442                	ld	s0,16(sp)
    800609ca:	8526                	mv	a0,s1
    800609cc:	64a2                	ld	s1,8(sp)
    800609ce:	6105                	addi	sp,sp,32
    800609d0:	8082                	ret
    800609d2:	842a                	mv	s0,a0
nuttx/libs/libc/dirent/lib_closedir.c:79
  ret = close(dirp->fd);
    800609d4:	4108                	lw	a0,0(a0)
    800609d6:	48f030ef          	jal	ra,80064664 <close>
    800609da:	84aa                	mv	s1,a0
nuttx/libs/libc/dirent/lib_closedir.c:82
  lib_free(dirp);
    800609dc:	8522                	mv	a0,s0
    800609de:	ad8ff0ef          	jal	ra,8005fcb6 <free>
nuttx/libs/libc/dirent/lib_closedir.c:83
  return ret;
    800609e2:	b7d5                	j	800609c6 <closedir+0x14>

00000000800609e4 <readdir>:
readdir():
nuttx/libs/libc/dirent/lib_readdir.c:59
 *   EBADF   - Invalid directory stream descriptor dir
 *
 ****************************************************************************/

FAR struct dirent *readdir(DIR *dirp)
{
    800609e4:	1141                	addi	sp,sp,-16
    800609e6:	e022                	sd	s0,0(sp)
    800609e8:	e406                	sd	ra,8(sp)
    800609ea:	842a                	mv	s0,a0
nuttx/libs/libc/dirent/lib_readdir.c:62
  int ret;

  if (!dirp)
    800609ec:	e911                	bnez	a0,80060a00 <readdir+0x1c>
nuttx/libs/libc/dirent/lib_readdir.c:64
    {
      set_errno(EBADF);
    800609ee:	02a000ef          	jal	ra,80060a18 <__errno>
    800609f2:	47a5                	li	a5,9
    800609f4:	c11c                	sw	a5,0(a0)
nuttx/libs/libc/dirent/lib_readdir.c:75
    {
      return NULL;
    }

  return &dirp->entry;
}
    800609f6:	60a2                	ld	ra,8(sp)
    800609f8:	8522                	mv	a0,s0
    800609fa:	6402                	ld	s0,0(sp)
    800609fc:	0141                	addi	sp,sp,16
    800609fe:	8082                	ret
nuttx/libs/libc/dirent/lib_readdir.c:68
  ret = read(dirp->fd, &dirp->entry, sizeof(struct dirent));
    80060a00:	4108                	lw	a0,0(a0)
    80060a02:	0411                	addi	s0,s0,4
    80060a04:	02200613          	li	a2,34
    80060a08:	85a2                	mv	a1,s0
    80060a0a:	6d9030ef          	jal	ra,800648e2 <read>
nuttx/libs/libc/dirent/lib_readdir.c:69
  if (ret <= 0)
    80060a0e:	2501                	sext.w	a0,a0
    80060a10:	fea043e3          	bgtz	a0,800609f6 <readdir+0x12>
nuttx/libs/libc/dirent/lib_readdir.c:71
      return NULL;
    80060a14:	4401                	li	s0,0
    80060a16:	b7c5                	j	800609f6 <readdir+0x12>

0000000080060a18 <__errno>:
__errno():
nuttx/libs/libc/errno/lib_errno.c:59

FAR int *__errno(void)
{
  /* Get the TLS tls_info_s structure instance for this thread */

  FAR struct tls_info_s *tlsinfo = tls_get_info();
    80060a18:	7779                	lui	a4,0xffffe
up_getsp():
nuttx/include/arch/irq.h:601
/* Return the current value of the stack pointer */

static inline uintptr_t up_getsp(void)
{
  register uintptr_t sp;
  __asm__
    80060a1a:	878a                	mv	a5,sp
__errno():
nuttx/libs/libc/errno/lib_errno.c:59
    80060a1c:	8ff9                	and	a5,a5,a4
nuttx/libs/libc/errno/lib_errno.c:63

  /* And return the return reference to the error number */

  return tlsinfo ? &tlsinfo->tl_errno : &g_errno;
    80060a1e:	000a0517          	auipc	a0,0xa0
    80060a22:	73a50513          	addi	a0,a0,1850 # 80101158 <g_errno>
    80060a26:	c399                	beqz	a5,80060a2c <__errno+0x14>
nuttx/libs/libc/errno/lib_errno.c:63 (discriminator 1)
    80060a28:	00c78513          	addi	a0,a5,12
nuttx/libs/libc/errno/lib_errno.c:64
}
    80060a2c:	8082                	ret

0000000080060a2e <nxmutex_init>:
nxmutex_init():
nuttx/libs/libc/misc/lib_mutex.c:84
 *   returned on success.  A negated errno value is returned on failure.
 *
 ****************************************************************************/

int nxmutex_init(FAR mutex_t *mutex)
{
    80060a2e:	1101                	addi	sp,sp,-32
nuttx/libs/libc/misc/lib_mutex.c:85
  int ret = nxsem_init(&mutex->sem, 0, 1);
    80060a30:	4605                	li	a2,1
    80060a32:	4581                	li	a1,0
nuttx/libs/libc/misc/lib_mutex.c:84
{
    80060a34:	e822                	sd	s0,16(sp)
    80060a36:	e426                	sd	s1,8(sp)
    80060a38:	ec06                	sd	ra,24(sp)
    80060a3a:	84aa                	mv	s1,a0
nuttx/libs/libc/misc/lib_mutex.c:85
  int ret = nxsem_init(&mutex->sem, 0, 1);
    80060a3c:	5a4000ef          	jal	ra,80060fe0 <nxsem_init>
    80060a40:	842a                	mv	s0,a0
nuttx/libs/libc/misc/lib_mutex.c:87

  if (ret < 0)
    80060a42:	00054863          	bltz	a0,80060a52 <nxmutex_init+0x24>
nuttx/libs/libc/misc/lib_mutex.c:92
    {
      return ret;
    }

  mutex->holder = NXMUTEX_NO_HOLDER;
    80060a46:	57fd                	li	a5,-1
    80060a48:	cc9c                	sw	a5,24(s1)
nuttx/libs/libc/misc/lib_mutex.c:96
#ifdef CONFIG_PRIORITY_INHERITANCE
  nxsem_set_protocol(&mutex->sem, SEM_TYPE_MUTEX | SEM_PRIO_INHERIT);
#else
  nxsem_set_protocol(&mutex->sem, SEM_TYPE_MUTEX);
    80060a4a:	4591                	li	a1,4
    80060a4c:	8526                	mv	a0,s1
    80060a4e:	60a000ef          	jal	ra,80061058 <nxsem_set_protocol>
nuttx/libs/libc/misc/lib_mutex.c:99
#endif
  return ret;
}
    80060a52:	60e2                	ld	ra,24(sp)
    80060a54:	8522                	mv	a0,s0
    80060a56:	6442                	ld	s0,16(sp)
    80060a58:	64a2                	ld	s1,8(sp)
    80060a5a:	6105                	addi	sp,sp,32
    80060a5c:	8082                	ret

0000000080060a5e <nxmutex_destroy>:
nxmutex_destroy():
nuttx/libs/libc/misc/lib_mutex.c:121
 *   returned on success.  A negated errno value is returned on failure.
 *
 ****************************************************************************/

int nxmutex_destroy(FAR mutex_t *mutex)
{
    80060a5e:	1141                	addi	sp,sp,-16
    80060a60:	e022                	sd	s0,0(sp)
    80060a62:	e406                	sd	ra,8(sp)
    80060a64:	842a                	mv	s0,a0
nuttx/libs/libc/misc/lib_mutex.c:122
  int ret = nxsem_destroy(&mutex->sem);
    80060a66:	575030ef          	jal	ra,800647da <nxsem_destroy>
nuttx/libs/libc/misc/lib_mutex.c:124

  if (ret < 0)
    80060a6a:	00054463          	bltz	a0,80060a72 <nxmutex_destroy+0x14>
nuttx/libs/libc/misc/lib_mutex.c:129
    {
      return ret;
    }

  mutex->holder = NXMUTEX_NO_HOLDER;
    80060a6e:	57fd                	li	a5,-1
    80060a70:	cc1c                	sw	a5,24(s0)
nuttx/libs/libc/misc/lib_mutex.c:131
  return ret;
}
    80060a72:	60a2                	ld	ra,8(sp)
    80060a74:	6402                	ld	s0,0(sp)
    80060a76:	0141                	addi	sp,sp,16
    80060a78:	8082                	ret

0000000080060a7a <nxmutex_is_hold>:
nxmutex_is_hold():
nuttx/libs/libc/misc/lib_mutex.c:148
 * Return Value:
 *
 ****************************************************************************/

bool nxmutex_is_hold(FAR mutex_t *mutex)
{
    80060a7a:	1141                	addi	sp,sp,-16
    80060a7c:	e406                	sd	ra,8(sp)
    80060a7e:	e022                	sd	s0,0(sp)
nuttx/libs/libc/misc/lib_mutex.c:149
  return mutex->holder == _SCHED_GETTID();
    80060a80:	4d00                	lw	s0,24(a0)
    80060a82:	485030ef          	jal	ra,80064706 <gettid>
nuttx/libs/libc/misc/lib_mutex.c:150
}
    80060a86:	60a2                	ld	ra,8(sp)
nuttx/libs/libc/misc/lib_mutex.c:149
  return mutex->holder == _SCHED_GETTID();
    80060a88:	40a40533          	sub	a0,s0,a0
nuttx/libs/libc/misc/lib_mutex.c:150
}
    80060a8c:	6402                	ld	s0,0(sp)
    80060a8e:	00153513          	seqz	a0,a0
    80060a92:	0141                	addi	sp,sp,16
    80060a94:	8082                	ret

0000000080060a96 <nxmutex_is_locked>:
nxmutex_is_locked():
nuttx/libs/libc/misc/lib_mutex.c:166
 * Return Value:
 *
 ****************************************************************************/

bool nxmutex_is_locked(FAR mutex_t *mutex)
{
    80060a96:	1101                	addi	sp,sp,-32
nuttx/libs/libc/misc/lib_mutex.c:170
  int cnt;
  int ret;

  ret = nxsem_get_value(&mutex->sem, &cnt);
    80060a98:	006c                	addi	a1,sp,12
nuttx/libs/libc/misc/lib_mutex.c:166
{
    80060a9a:	ec06                	sd	ra,24(sp)
nuttx/libs/libc/misc/lib_mutex.c:170
  ret = nxsem_get_value(&mutex->sem, &cnt);
    80060a9c:	620000ef          	jal	ra,800610bc <nxsem_get_value>
nuttx/libs/libc/misc/lib_mutex.c:172

  return ret >= 0 && cnt < 1;
    80060aa0:	00054863          	bltz	a0,80060ab0 <nxmutex_is_locked+0x1a>
nuttx/libs/libc/misc/lib_mutex.c:172 (discriminator 1)
    80060aa4:	4532                	lw	a0,12(sp)
    80060aa6:	00152513          	slti	a0,a0,1
nuttx/libs/libc/misc/lib_mutex.c:173 (discriminator 6)
}
    80060aaa:	60e2                	ld	ra,24(sp)
    80060aac:	6105                	addi	sp,sp,32
    80060aae:	8082                	ret
nuttx/libs/libc/misc/lib_mutex.c:172
  return ret >= 0 && cnt < 1;
    80060ab0:	4501                	li	a0,0
    80060ab2:	bfe5                	j	80060aaa <nxmutex_is_locked+0x14>

0000000080060ab4 <nxmutex_lock>:
nxmutex_lock():
nuttx/libs/libc/misc/lib_mutex.c:196
 *   Possible returned errors:
 *
 ****************************************************************************/

int nxmutex_lock(FAR mutex_t *mutex)
{
    80060ab4:	7179                	addi	sp,sp,-48
    80060ab6:	ec26                	sd	s1,24(sp)
    80060ab8:	f406                	sd	ra,40(sp)
    80060aba:	f022                	sd	s0,32(sp)
    80060abc:	e84a                	sd	s2,16(sp)
    80060abe:	e44e                	sd	s3,8(sp)
    80060ac0:	84aa                	mv	s1,a0
nuttx/libs/libc/misc/lib_mutex.c:199
  int ret;

  DEBUGASSERT(!nxmutex_is_hold(mutex));
    80060ac2:	fb9ff0ef          	jal	ra,80060a7a <nxmutex_is_hold>
    80060ac6:	e50d                	bnez	a0,80060af0 <nxmutex_lock+0x3c>
nuttx/libs/libc/misc/lib_mutex.c:210
      if (ret >= 0)
        {
          mutex->holder = _SCHED_GETTID();
          break;
        }
      else if (ret != -EINTR && ret != -ECANCELED)
    80060ac8:	59f1                	li	s3,-4
    80060aca:	f8300913          	li	s2,-125
nuttx/libs/libc/misc/lib_mutex.c:204 (discriminator 2)
      ret = nxsem_wait(&mutex->sem);
    80060ace:	8526                	mv	a0,s1
    80060ad0:	535030ef          	jal	ra,80064804 <nxsem_wait>
    80060ad4:	842a                	mv	s0,a0
nuttx/libs/libc/misc/lib_mutex.c:205 (discriminator 2)
      if (ret >= 0)
    80060ad6:	02054963          	bltz	a0,80060b08 <nxmutex_lock+0x54>
nuttx/libs/libc/misc/lib_mutex.c:207
          mutex->holder = _SCHED_GETTID();
    80060ada:	42d030ef          	jal	ra,80064706 <gettid>
    80060ade:	cc88                	sw	a0,24(s1)
nuttx/libs/libc/misc/lib_mutex.c:217
          break;
        }
    }

  return ret;
}
    80060ae0:	70a2                	ld	ra,40(sp)
    80060ae2:	8522                	mv	a0,s0
    80060ae4:	7402                	ld	s0,32(sp)
    80060ae6:	64e2                	ld	s1,24(sp)
    80060ae8:	6942                	ld	s2,16(sp)
    80060aea:	69a2                	ld	s3,8(sp)
    80060aec:	6145                	addi	sp,sp,48
    80060aee:	8082                	ret
nuttx/libs/libc/misc/lib_mutex.c:199
  DEBUGASSERT(!nxmutex_is_hold(mutex));
    80060af0:	00031617          	auipc	a2,0x31
    80060af4:	3d860613          	addi	a2,a2,984 # 80091ec8 <qjsc_qjscalc+0x10ff0>
    80060af8:	0c700593          	li	a1,199
    80060afc:	00031517          	auipc	a0,0x31
    80060b00:	3e450513          	addi	a0,a0,996 # 80091ee0 <qjsc_qjscalc+0x11008>
    80060b04:	e59ff0ef          	jal	ra,8006095c <__assert>
nuttx/libs/libc/misc/lib_mutex.c:210
      else if (ret != -EINTR && ret != -ECANCELED)
    80060b08:	fd3503e3          	beq	a0,s3,80060ace <nxmutex_lock+0x1a>
nuttx/libs/libc/misc/lib_mutex.c:210 (discriminator 1)
    80060b0c:	fd2501e3          	beq	a0,s2,80060ace <nxmutex_lock+0x1a>
    80060b10:	bfc1                	j	80060ae0 <nxmutex_lock+0x2c>

0000000080060b12 <nxmutex_trylock>:
nxmutex_trylock():
nuttx/libs/libc/misc/lib_mutex.c:241
 *     -EAGAIN - The mutex is not available.
 *
 ****************************************************************************/

int nxmutex_trylock(FAR mutex_t *mutex)
{
    80060b12:	1101                	addi	sp,sp,-32
    80060b14:	e426                	sd	s1,8(sp)
    80060b16:	ec06                	sd	ra,24(sp)
    80060b18:	e822                	sd	s0,16(sp)
    80060b1a:	84aa                	mv	s1,a0
nuttx/libs/libc/misc/lib_mutex.c:244
  int ret;

  DEBUGASSERT(!nxmutex_is_hold(mutex));
    80060b1c:	f5fff0ef          	jal	ra,80060a7a <nxmutex_is_hold>
    80060b20:	cd09                	beqz	a0,80060b3a <nxmutex_trylock+0x28>
    80060b22:	00031617          	auipc	a2,0x31
    80060b26:	3a660613          	addi	a2,a2,934 # 80091ec8 <qjsc_qjscalc+0x10ff0>
    80060b2a:	0f400593          	li	a1,244
    80060b2e:	00031517          	auipc	a0,0x31
    80060b32:	3b250513          	addi	a0,a0,946 # 80091ee0 <qjsc_qjscalc+0x11008>
    80060b36:	e27ff0ef          	jal	ra,8006095c <__assert>
nuttx/libs/libc/misc/lib_mutex.c:245 (discriminator 2)
  ret = nxsem_trywait(&mutex->sem);
    80060b3a:	8526                	mv	a0,s1
    80060b3c:	4bb030ef          	jal	ra,800647f6 <nxsem_trywait>
    80060b40:	842a                	mv	s0,a0
nuttx/libs/libc/misc/lib_mutex.c:246 (discriminator 2)
  if (ret < 0)
    80060b42:	00054563          	bltz	a0,80060b4c <nxmutex_trylock+0x3a>
nuttx/libs/libc/misc/lib_mutex.c:251
    {
      return ret;
    }

  mutex->holder = _SCHED_GETTID();
    80060b46:	3c1030ef          	jal	ra,80064706 <gettid>
    80060b4a:	cc88                	sw	a0,24(s1)
nuttx/libs/libc/misc/lib_mutex.c:253
  return ret;
}
    80060b4c:	60e2                	ld	ra,24(sp)
    80060b4e:	8522                	mv	a0,s0
    80060b50:	6442                	ld	s0,16(sp)
    80060b52:	64a2                	ld	s1,8(sp)
    80060b54:	6105                	addi	sp,sp,32
    80060b56:	8082                	ret

0000000080060b58 <nxmutex_timedlock>:
nxmutex_timedlock():
nuttx/libs/libc/misc/lib_mutex.c:280
 *   EDEADLK   A deadlock condition was detected.
 *
 ****************************************************************************/

int nxmutex_timedlock(FAR mutex_t *mutex, unsigned int timeout)
{
    80060b58:	711d                	addi	sp,sp,-96
    80060b5a:	e8a2                	sd	s0,80(sp)
    80060b5c:	e4a6                	sd	s1,72(sp)
    80060b5e:	842e                	mv	s0,a1
    80060b60:	84aa                	mv	s1,a0
nuttx/libs/libc/misc/lib_mutex.c:286
  int ret;
  struct timespec now;
  struct timespec delay;
  struct timespec rqtp;

  clock_gettime(CLOCK_MONOTONIC, &now);
    80060b62:	858a                	mv	a1,sp
    80060b64:	4505                	li	a0,1
nuttx/libs/libc/misc/lib_mutex.c:280
{
    80060b66:	ec86                	sd	ra,88(sp)
    80060b68:	e0ca                	sd	s2,64(sp)
    80060b6a:	fc4e                	sd	s3,56(sp)
nuttx/libs/libc/misc/lib_mutex.c:286
  clock_gettime(CLOCK_MONOTONIC, &now);
    80060b6c:	2c9030ef          	jal	ra,80064634 <clock_gettime>
nuttx/libs/libc/misc/lib_mutex.c:287
  clock_ticks2time(MSEC2TICK(timeout), &delay);
    80060b70:	080c                	addi	a1,sp,16
    80060b72:	8522                	mv	a0,s0
    80060b74:	3b4000ef          	jal	ra,80060f28 <clock_ticks2time>
nuttx/libs/libc/misc/lib_mutex.c:288
  clock_timespec_add(&now, &delay, &rqtp);
    80060b78:	1010                	addi	a2,sp,32
    80060b7a:	080c                	addi	a1,sp,16
    80060b7c:	850a                	mv	a0,sp
    80060b7e:	3d0000ef          	jal	ra,80060f4e <clock_timespec_add>
nuttx/libs/libc/misc/lib_mutex.c:296

  do
    {
      ret = nxsem_clockwait(&mutex->sem, CLOCK_MONOTONIC, &rqtp);
    }
  while (ret == -EINTR || ret == -ECANCELED);
    80060b82:	59f1                	li	s3,-4
    80060b84:	f8300913          	li	s2,-125
nuttx/libs/libc/misc/lib_mutex.c:294 (discriminator 3)
      ret = nxsem_clockwait(&mutex->sem, CLOCK_MONOTONIC, &rqtp);
    80060b88:	1010                	addi	a2,sp,32
    80060b8a:	4585                	li	a1,1
    80060b8c:	8526                	mv	a0,s1
    80060b8e:	437030ef          	jal	ra,800647c4 <nxsem_clockwait>
    80060b92:	842a                	mv	s0,a0
nuttx/libs/libc/misc/lib_mutex.c:296 (discriminator 3)
  while (ret == -EINTR || ret == -ECANCELED);
    80060b94:	ff350ae3          	beq	a0,s3,80060b88 <nxmutex_timedlock+0x30>
nuttx/libs/libc/misc/lib_mutex.c:296 (discriminator 2)
    80060b98:	ff2508e3          	beq	a0,s2,80060b88 <nxmutex_timedlock+0x30>
nuttx/libs/libc/misc/lib_mutex.c:298

  if (ret >= 0)
    80060b9c:	00054563          	bltz	a0,80060ba6 <nxmutex_timedlock+0x4e>
nuttx/libs/libc/misc/lib_mutex.c:300
    {
      mutex->holder = _SCHED_GETTID();
    80060ba0:	367030ef          	jal	ra,80064706 <gettid>
    80060ba4:	cc88                	sw	a0,24(s1)
nuttx/libs/libc/misc/lib_mutex.c:304
    }

  return ret;
}
    80060ba6:	60e6                	ld	ra,88(sp)
    80060ba8:	8522                	mv	a0,s0
    80060baa:	6446                	ld	s0,80(sp)
    80060bac:	64a6                	ld	s1,72(sp)
    80060bae:	6906                	ld	s2,64(sp)
    80060bb0:	79e2                	ld	s3,56(sp)
    80060bb2:	6125                	addi	sp,sp,96
    80060bb4:	8082                	ret

0000000080060bb6 <nxmutex_unlock>:
nxmutex_unlock():
nuttx/libs/libc/misc/lib_mutex.c:327
 *   This function may be called from an interrupt handler.
 *
 ****************************************************************************/

int nxmutex_unlock(FAR mutex_t *mutex)
{
    80060bb6:	1101                	addi	sp,sp,-32
    80060bb8:	ec06                	sd	ra,24(sp)
    80060bba:	e822                	sd	s0,16(sp)
    80060bbc:	e426                	sd	s1,8(sp)
nuttx/libs/libc/misc/lib_mutex.c:330
  int ret;

  if (nxmutex_is_reset(mutex))
    80060bbe:	4d18                	lw	a4,24(a0)
    80060bc0:	57f9                	li	a5,-2
    80060bc2:	04f70363          	beq	a4,a5,80060c08 <nxmutex_unlock+0x52>
    80060bc6:	842a                	mv	s0,a0
nuttx/libs/libc/misc/lib_mutex.c:335
    {
      return OK;
    }

  DEBUGASSERT(nxmutex_is_hold(mutex));
    80060bc8:	eb3ff0ef          	jal	ra,80060a7a <nxmutex_is_hold>
    80060bcc:	ed09                	bnez	a0,80060be6 <nxmutex_unlock+0x30>
    80060bce:	00031617          	auipc	a2,0x31
    80060bd2:	32a60613          	addi	a2,a2,810 # 80091ef8 <qjsc_qjscalc+0x11020>
    80060bd6:	14f00593          	li	a1,335
    80060bda:	00031517          	auipc	a0,0x31
    80060bde:	30650513          	addi	a0,a0,774 # 80091ee0 <qjsc_qjscalc+0x11008>
    80060be2:	d7bff0ef          	jal	ra,8006095c <__assert>
nuttx/libs/libc/misc/lib_mutex.c:337 (discriminator 2)

  mutex->holder = NXMUTEX_NO_HOLDER;
    80060be6:	57fd                	li	a5,-1
    80060be8:	cc1c                	sw	a5,24(s0)
nuttx/libs/libc/misc/lib_mutex.c:339 (discriminator 2)

  ret = nxsem_post(&mutex->sem);
    80060bea:	8522                	mv	a0,s0
    80060bec:	3fd030ef          	jal	ra,800647e8 <nxsem_post>
    80060bf0:	84aa                	mv	s1,a0
nuttx/libs/libc/misc/lib_mutex.c:340 (discriminator 2)
  if (ret < 0)
    80060bf2:	00055563          	bgez	a0,80060bfc <nxmutex_unlock+0x46>
nuttx/libs/libc/misc/lib_mutex.c:342
    {
      mutex->holder = _SCHED_GETTID();
    80060bf6:	311030ef          	jal	ra,80064706 <gettid>
    80060bfa:	cc08                	sw	a0,24(s0)
nuttx/libs/libc/misc/lib_mutex.c:346
    }

  return ret;
}
    80060bfc:	60e2                	ld	ra,24(sp)
    80060bfe:	6442                	ld	s0,16(sp)
    80060c00:	8526                	mv	a0,s1
    80060c02:	64a2                	ld	s1,8(sp)
    80060c04:	6105                	addi	sp,sp,32
    80060c06:	8082                	ret
nuttx/libs/libc/misc/lib_mutex.c:332
      return OK;
    80060c08:	4481                	li	s1,0
    80060c0a:	bfcd                	j	80060bfc <nxmutex_unlock+0x46>

0000000080060c0c <nxmutex_breaklock>:
nxmutex_breaklock():
nuttx/libs/libc/misc/lib_mutex.c:387
 *   Possible returned errors:
 *
 ****************************************************************************/

int nxmutex_breaklock(FAR mutex_t *mutex, FAR bool *locked)
{
    80060c0c:	1101                	addi	sp,sp,-32
nuttx/libs/libc/misc/lib_mutex.c:390
  int ret = OK;

  *locked = false;
    80060c0e:	00058023          	sb	zero,0(a1)
nuttx/libs/libc/misc/lib_mutex.c:387
{
    80060c12:	e822                	sd	s0,16(sp)
    80060c14:	e426                	sd	s1,8(sp)
    80060c16:	ec06                	sd	ra,24(sp)
    80060c18:	84aa                	mv	s1,a0
    80060c1a:	842e                	mv	s0,a1
nuttx/libs/libc/misc/lib_mutex.c:391
  if (nxmutex_is_hold(mutex))
    80060c1c:	e5fff0ef          	jal	ra,80060a7a <nxmutex_is_hold>
    80060c20:	cd11                	beqz	a0,80060c3c <nxmutex_breaklock+0x30>
nuttx/libs/libc/misc/lib_mutex.c:393
    {
      ret = nxmutex_unlock(mutex);
    80060c22:	8526                	mv	a0,s1
    80060c24:	f93ff0ef          	jal	ra,80060bb6 <nxmutex_unlock>
nuttx/libs/libc/misc/lib_mutex.c:394
      if (ret >= 0)
    80060c28:	00054563          	bltz	a0,80060c32 <nxmutex_breaklock+0x26>
nuttx/libs/libc/misc/lib_mutex.c:396
        {
          *locked = true;
    80060c2c:	4785                	li	a5,1
    80060c2e:	00f40023          	sb	a5,0(s0)
nuttx/libs/libc/misc/lib_mutex.c:401
        }
    }

  return ret;
}
    80060c32:	60e2                	ld	ra,24(sp)
    80060c34:	6442                	ld	s0,16(sp)
    80060c36:	64a2                	ld	s1,8(sp)
    80060c38:	6105                	addi	sp,sp,32
    80060c3a:	8082                	ret
nuttx/libs/libc/misc/lib_mutex.c:388
  int ret = OK;
    80060c3c:	4501                	li	a0,0
    80060c3e:	bfd5                	j	80060c32 <nxmutex_breaklock+0x26>

0000000080060c40 <nxmutex_restorelock>:
nxmutex_restorelock():
nuttx/libs/libc/misc/lib_mutex.c:422
 *
 ****************************************************************************/

int nxmutex_restorelock(FAR mutex_t *mutex, bool locked)
{
  return locked ? nxmutex_lock(mutex) : OK;
    80060c40:	c199                	beqz	a1,80060c46 <nxmutex_restorelock+0x6>
nuttx/libs/libc/misc/lib_mutex.c:422 (discriminator 1)
    80060c42:	e73ff06f          	j	80060ab4 <nxmutex_lock>
nuttx/libs/libc/misc/lib_mutex.c:423 (discriminator 4)
}
    80060c46:	4501                	li	a0,0
    80060c48:	8082                	ret

0000000080060c4a <nxrmutex_init>:
nxrmutex_init():
nuttx/libs/libc/misc/lib_mutex.c:447
 *
 ****************************************************************************/

int nxrmutex_init(FAR rmutex_t *rmutex)
{
  rmutex->count = 0;
    80060c4a:	02052023          	sw	zero,32(a0)
nuttx/libs/libc/misc/lib_mutex.c:448
  return nxmutex_init(&rmutex->mutex);
    80060c4e:	de1ff06f          	j	80060a2e <nxmutex_init>

0000000080060c52 <nxrmutex_destroy>:
nxrmutex_destroy():
nuttx/libs/libc/misc/lib_mutex.c:468
 *   returned on success.  A negated errno value is returned on failure.
 *
 ****************************************************************************/

int nxrmutex_destroy(FAR rmutex_t *rmutex)
{
    80060c52:	1141                	addi	sp,sp,-16
    80060c54:	e022                	sd	s0,0(sp)
    80060c56:	e406                	sd	ra,8(sp)
    80060c58:	842a                	mv	s0,a0
nuttx/libs/libc/misc/lib_mutex.c:469
  int ret = nxmutex_destroy(&rmutex->mutex);
    80060c5a:	e05ff0ef          	jal	ra,80060a5e <nxmutex_destroy>
nuttx/libs/libc/misc/lib_mutex.c:471

  if (ret >= 0)
    80060c5e:	00054463          	bltz	a0,80060c66 <nxrmutex_destroy+0x14>
nuttx/libs/libc/misc/lib_mutex.c:473
    {
      rmutex->count = 0;
    80060c62:	02042023          	sw	zero,32(s0)
nuttx/libs/libc/misc/lib_mutex.c:477
    }

  return ret;
}
    80060c66:	60a2                	ld	ra,8(sp)
    80060c68:	6402                	ld	s0,0(sp)
    80060c6a:	0141                	addi	sp,sp,16
    80060c6c:	8082                	ret

0000000080060c6e <nxrmutex_is_hold>:
nxrmutex_is_hold():
nuttx/libs/libc/misc/lib_mutex.c:495
 *
 ****************************************************************************/

bool nxrmutex_is_hold(FAR rmutex_t *rmutex)
{
  return nxmutex_is_hold(&rmutex->mutex);
    80060c6e:	e0dff06f          	j	80060a7a <nxmutex_is_hold>

0000000080060c72 <nxrmutex_is_locked>:
nxrmutex_is_locked():
nuttx/libs/libc/misc/lib_mutex.c:514
 *
 ****************************************************************************/

bool nxrmutex_is_locked(FAR rmutex_t *rmutex)
{
  return nxmutex_is_locked(&rmutex->mutex);
    80060c72:	e25ff06f          	j	80060a96 <nxmutex_is_locked>

0000000080060c76 <nxrmutex_lock>:
nxrmutex_lock():
nuttx/libs/libc/misc/lib_mutex.c:537
 *   Possible returned errors:
 *
 ****************************************************************************/

int nxrmutex_lock(FAR rmutex_t *rmutex)
{
    80060c76:	1141                	addi	sp,sp,-16
    80060c78:	e022                	sd	s0,0(sp)
    80060c7a:	e406                	sd	ra,8(sp)
    80060c7c:	842a                	mv	s0,a0
nxrmutex_is_hold():
nuttx/libs/libc/misc/lib_mutex.c:495
  return nxmutex_is_hold(&rmutex->mutex);
    80060c7e:	dfdff0ef          	jal	ra,80060a7a <nxmutex_is_hold>
    80060c82:	87aa                	mv	a5,a0
    80060c84:	4501                	li	a0,0
nxrmutex_lock():
nuttx/libs/libc/misc/lib_mutex.c:540
  int ret = OK;

  if (!nxrmutex_is_hold(rmutex))
    80060c86:	e791                	bnez	a5,80060c92 <nxrmutex_lock+0x1c>
nuttx/libs/libc/misc/lib_mutex.c:542
    {
      ret = nxmutex_lock(&rmutex->mutex);
    80060c88:	8522                	mv	a0,s0
    80060c8a:	e2bff0ef          	jal	ra,80060ab4 <nxmutex_lock>
nuttx/libs/libc/misc/lib_mutex.c:545
    }

  if (ret >= 0)
    80060c8e:	02054463          	bltz	a0,80060cb6 <nxrmutex_lock+0x40>
nuttx/libs/libc/misc/lib_mutex.c:547
    {
      DEBUGASSERT(rmutex->count < UINT_MAX);
    80060c92:	501c                	lw	a5,32(s0)
    80060c94:	577d                	li	a4,-1
    80060c96:	00e79e63          	bne	a5,a4,80060cb2 <nxrmutex_lock+0x3c>
nuttx/libs/libc/misc/lib_mutex.c:547 (discriminator 1)
    80060c9a:	00031617          	auipc	a2,0x31
    80060c9e:	27660613          	addi	a2,a2,630 # 80091f10 <qjsc_qjscalc+0x11038>
    80060ca2:	22300593          	li	a1,547
    80060ca6:	00031517          	auipc	a0,0x31
    80060caa:	23a50513          	addi	a0,a0,570 # 80091ee0 <qjsc_qjscalc+0x11008>
    80060cae:	cafff0ef          	jal	ra,8006095c <__assert>
nuttx/libs/libc/misc/lib_mutex.c:548 (discriminator 2)
      ++rmutex->count;
    80060cb2:	2785                	addiw	a5,a5,1
    80060cb4:	d01c                	sw	a5,32(s0)
nuttx/libs/libc/misc/lib_mutex.c:552
    }

  return ret;
}
    80060cb6:	60a2                	ld	ra,8(sp)
    80060cb8:	6402                	ld	s0,0(sp)
    80060cba:	0141                	addi	sp,sp,16
    80060cbc:	8082                	ret

0000000080060cbe <nxrmutex_trylock>:
nxrmutex_trylock():
nuttx/libs/libc/misc/lib_mutex.c:578
 *     -EAGAIN - The recursive mutex is not available.
 *
 ****************************************************************************/

int nxrmutex_trylock(FAR rmutex_t *rmutex)
{
    80060cbe:	1141                	addi	sp,sp,-16
    80060cc0:	e022                	sd	s0,0(sp)
    80060cc2:	e406                	sd	ra,8(sp)
    80060cc4:	842a                	mv	s0,a0
nxrmutex_is_hold():
nuttx/libs/libc/misc/lib_mutex.c:495
  return nxmutex_is_hold(&rmutex->mutex);
    80060cc6:	db5ff0ef          	jal	ra,80060a7a <nxmutex_is_hold>
    80060cca:	87aa                	mv	a5,a0
    80060ccc:	4501                	li	a0,0
nxrmutex_trylock():
nuttx/libs/libc/misc/lib_mutex.c:581
  int ret = OK;

  if (!nxrmutex_is_hold(rmutex))
    80060cce:	e791                	bnez	a5,80060cda <nxrmutex_trylock+0x1c>
nuttx/libs/libc/misc/lib_mutex.c:583
    {
      ret = nxmutex_trylock(&rmutex->mutex);
    80060cd0:	8522                	mv	a0,s0
    80060cd2:	e41ff0ef          	jal	ra,80060b12 <nxmutex_trylock>
nuttx/libs/libc/misc/lib_mutex.c:586
    }

  if (ret >= 0)
    80060cd6:	02054463          	bltz	a0,80060cfe <nxrmutex_trylock+0x40>
nuttx/libs/libc/misc/lib_mutex.c:588
    {
      DEBUGASSERT(rmutex->count < UINT_MAX);
    80060cda:	501c                	lw	a5,32(s0)
    80060cdc:	577d                	li	a4,-1
    80060cde:	00e79e63          	bne	a5,a4,80060cfa <nxrmutex_trylock+0x3c>
nuttx/libs/libc/misc/lib_mutex.c:588 (discriminator 1)
    80060ce2:	00031617          	auipc	a2,0x31
    80060ce6:	22e60613          	addi	a2,a2,558 # 80091f10 <qjsc_qjscalc+0x11038>
    80060cea:	24c00593          	li	a1,588
    80060cee:	00031517          	auipc	a0,0x31
    80060cf2:	1f250513          	addi	a0,a0,498 # 80091ee0 <qjsc_qjscalc+0x11008>
    80060cf6:	c67ff0ef          	jal	ra,8006095c <__assert>
nuttx/libs/libc/misc/lib_mutex.c:589 (discriminator 2)
      ++rmutex->count;
    80060cfa:	2785                	addiw	a5,a5,1
    80060cfc:	d01c                	sw	a5,32(s0)
nuttx/libs/libc/misc/lib_mutex.c:593
    }

  return ret;
}
    80060cfe:	60a2                	ld	ra,8(sp)
    80060d00:	6402                	ld	s0,0(sp)
    80060d02:	0141                	addi	sp,sp,16
    80060d04:	8082                	ret

0000000080060d06 <nxrmutex_timedlock>:
nxrmutex_timedlock():
nuttx/libs/libc/misc/lib_mutex.c:621
 *   ECANCELED May be returned if the thread is canceled while waiting.
 *
 ****************************************************************************/

int nxrmutex_timedlock(FAR rmutex_t *rmutex, unsigned int timeout)
{
    80060d06:	1101                	addi	sp,sp,-32
    80060d08:	e822                	sd	s0,16(sp)
    80060d0a:	e42e                	sd	a1,8(sp)
    80060d0c:	ec06                	sd	ra,24(sp)
    80060d0e:	842a                	mv	s0,a0
nxrmutex_is_hold():
nuttx/libs/libc/misc/lib_mutex.c:495
  return nxmutex_is_hold(&rmutex->mutex);
    80060d10:	d6bff0ef          	jal	ra,80060a7a <nxmutex_is_hold>
    80060d14:	87aa                	mv	a5,a0
nxrmutex_timedlock():
nuttx/libs/libc/misc/lib_mutex.c:624
  int ret = OK;

  if (!nxrmutex_is_hold(rmutex))
    80060d16:	65a2                	ld	a1,8(sp)
    80060d18:	4501                	li	a0,0
    80060d1a:	e791                	bnez	a5,80060d26 <nxrmutex_timedlock+0x20>
nuttx/libs/libc/misc/lib_mutex.c:626
    {
      ret = nxmutex_timedlock(&rmutex->mutex, timeout);
    80060d1c:	8522                	mv	a0,s0
    80060d1e:	e3bff0ef          	jal	ra,80060b58 <nxmutex_timedlock>
nuttx/libs/libc/misc/lib_mutex.c:629
    }

  if (ret >= 0)
    80060d22:	02054463          	bltz	a0,80060d4a <nxrmutex_timedlock+0x44>
nuttx/libs/libc/misc/lib_mutex.c:631
    {
      DEBUGASSERT(rmutex->count < UINT_MAX);
    80060d26:	501c                	lw	a5,32(s0)
    80060d28:	577d                	li	a4,-1
    80060d2a:	00e79e63          	bne	a5,a4,80060d46 <nxrmutex_timedlock+0x40>
nuttx/libs/libc/misc/lib_mutex.c:631 (discriminator 1)
    80060d2e:	00031617          	auipc	a2,0x31
    80060d32:	1e260613          	addi	a2,a2,482 # 80091f10 <qjsc_qjscalc+0x11038>
    80060d36:	27700593          	li	a1,631
    80060d3a:	00031517          	auipc	a0,0x31
    80060d3e:	1a650513          	addi	a0,a0,422 # 80091ee0 <qjsc_qjscalc+0x11008>
    80060d42:	c1bff0ef          	jal	ra,8006095c <__assert>
nuttx/libs/libc/misc/lib_mutex.c:632 (discriminator 2)
      ++rmutex->count;
    80060d46:	2785                	addiw	a5,a5,1
    80060d48:	d01c                	sw	a5,32(s0)
nuttx/libs/libc/misc/lib_mutex.c:636
    }

  return ret;
}
    80060d4a:	60e2                	ld	ra,24(sp)
    80060d4c:	6442                	ld	s0,16(sp)
    80060d4e:	6105                	addi	sp,sp,32
    80060d50:	8082                	ret

0000000080060d52 <nxrmutex_unlock>:
nxrmutex_unlock():
nuttx/libs/libc/misc/lib_mutex.c:660
 *   This function may be called from an interrupt handler.
 *
 ****************************************************************************/

int nxrmutex_unlock(FAR rmutex_t *rmutex)
{
    80060d52:	1141                	addi	sp,sp,-16
    80060d54:	e406                	sd	ra,8(sp)
    80060d56:	e022                	sd	s0,0(sp)
nuttx/libs/libc/misc/lib_mutex.c:663
  int ret = OK;

  DEBUGASSERT(rmutex->count > 0);
    80060d58:	511c                	lw	a5,32(a0)
    80060d5a:	ef89                	bnez	a5,80060d74 <nxrmutex_unlock+0x22>
nuttx/libs/libc/misc/lib_mutex.c:663 (discriminator 1)
    80060d5c:	00031617          	auipc	a2,0x31
    80060d60:	1d460613          	addi	a2,a2,468 # 80091f30 <qjsc_qjscalc+0x11058>
    80060d64:	29700593          	li	a1,663
    80060d68:	00031517          	auipc	a0,0x31
    80060d6c:	17850513          	addi	a0,a0,376 # 80091ee0 <qjsc_qjscalc+0x11008>
    80060d70:	bedff0ef          	jal	ra,8006095c <__assert>
nuttx/libs/libc/misc/lib_mutex.c:665 (discriminator 2)

  if (--rmutex->count == 0)
    80060d74:	fff7871b          	addiw	a4,a5,-1
    80060d78:	d118                	sw	a4,32(a0)
    80060d7a:	842a                	mv	s0,a0
nuttx/libs/libc/misc/lib_mutex.c:661 (discriminator 2)
  int ret = OK;
    80060d7c:	4781                	li	a5,0
nuttx/libs/libc/misc/lib_mutex.c:665 (discriminator 2)
  if (--rmutex->count == 0)
    80060d7e:	eb09                	bnez	a4,80060d90 <nxrmutex_unlock+0x3e>
nuttx/libs/libc/misc/lib_mutex.c:667
    {
      ret = nxmutex_unlock(&rmutex->mutex);
    80060d80:	e37ff0ef          	jal	ra,80060bb6 <nxmutex_unlock>
    80060d84:	87aa                	mv	a5,a0
nuttx/libs/libc/misc/lib_mutex.c:668
      if (ret < 0)
    80060d86:	00055563          	bgez	a0,80060d90 <nxrmutex_unlock+0x3e>
nuttx/libs/libc/misc/lib_mutex.c:670
        {
          ++rmutex->count;
    80060d8a:	5018                	lw	a4,32(s0)
    80060d8c:	2705                	addiw	a4,a4,1
    80060d8e:	d018                	sw	a4,32(s0)
nuttx/libs/libc/misc/lib_mutex.c:675
        }
    }

  return ret;
}
    80060d90:	60a2                	ld	ra,8(sp)
    80060d92:	6402                	ld	s0,0(sp)
    80060d94:	853e                	mv	a0,a5
    80060d96:	0141                	addi	sp,sp,16
    80060d98:	8082                	ret

0000000080060d9a <nxrmutex_breaklock>:
nxrmutex_breaklock():
nuttx/libs/libc/misc/lib_mutex.c:714
 *   Possible returned errors:
 *
 ****************************************************************************/

int nxrmutex_breaklock(FAR rmutex_t *rmutex, FAR unsigned int *count)
{
    80060d9a:	1101                	addi	sp,sp,-32
nuttx/libs/libc/misc/lib_mutex.c:717
  int ret = OK;

  *count = 0;
    80060d9c:	0005a023          	sw	zero,0(a1)
nuttx/libs/libc/misc/lib_mutex.c:714
{
    80060da0:	e822                	sd	s0,16(sp)
    80060da2:	e426                	sd	s1,8(sp)
    80060da4:	ec06                	sd	ra,24(sp)
    80060da6:	842a                	mv	s0,a0
    80060da8:	84ae                	mv	s1,a1
nxrmutex_is_hold():
nuttx/libs/libc/misc/lib_mutex.c:495
  return nxmutex_is_hold(&rmutex->mutex);
    80060daa:	cd1ff0ef          	jal	ra,80060a7a <nxmutex_is_hold>
nxrmutex_breaklock():
nuttx/libs/libc/misc/lib_mutex.c:718
  if (nxrmutex_is_hold(rmutex))
    80060dae:	c10d                	beqz	a0,80060dd0 <nxrmutex_breaklock+0x36>
nuttx/libs/libc/misc/lib_mutex.c:720
    {
      *count = rmutex->count;
    80060db0:	501c                	lw	a5,32(s0)
nuttx/libs/libc/misc/lib_mutex.c:722
      rmutex->count = 0;
      ret = nxmutex_unlock(&rmutex->mutex);
    80060db2:	8522                	mv	a0,s0
nuttx/libs/libc/misc/lib_mutex.c:720
      *count = rmutex->count;
    80060db4:	c09c                	sw	a5,0(s1)
nuttx/libs/libc/misc/lib_mutex.c:721
      rmutex->count = 0;
    80060db6:	02042023          	sw	zero,32(s0)
nuttx/libs/libc/misc/lib_mutex.c:722
      ret = nxmutex_unlock(&rmutex->mutex);
    80060dba:	dfdff0ef          	jal	ra,80060bb6 <nxmutex_unlock>
nuttx/libs/libc/misc/lib_mutex.c:723
      if (ret < 0)
    80060dbe:	00055463          	bgez	a0,80060dc6 <nxrmutex_breaklock+0x2c>
nuttx/libs/libc/misc/lib_mutex.c:725
        {
          rmutex->count = *count;
    80060dc2:	409c                	lw	a5,0(s1)
    80060dc4:	d01c                	sw	a5,32(s0)
nuttx/libs/libc/misc/lib_mutex.c:730
        }
    }

  return ret;
}
    80060dc6:	60e2                	ld	ra,24(sp)
    80060dc8:	6442                	ld	s0,16(sp)
    80060dca:	64a2                	ld	s1,8(sp)
    80060dcc:	6105                	addi	sp,sp,32
    80060dce:	8082                	ret
nuttx/libs/libc/misc/lib_mutex.c:715
  int ret = OK;
    80060dd0:	4501                	li	a0,0
    80060dd2:	bfd5                	j	80060dc6 <nxrmutex_breaklock+0x2c>

0000000080060dd4 <nxrmutex_restorelock>:
nxrmutex_restorelock():
nuttx/libs/libc/misc/lib_mutex.c:753

int nxrmutex_restorelock(FAR rmutex_t *rmutex, unsigned int count)
{
  int ret = OK;

  if (count != 0)
    80060dd4:	c18d                	beqz	a1,80060df6 <nxrmutex_restorelock+0x22>
nuttx/libs/libc/misc/lib_mutex.c:750
{
    80060dd6:	1101                	addi	sp,sp,-32
    80060dd8:	e822                	sd	s0,16(sp)
    80060dda:	e426                	sd	s1,8(sp)
    80060ddc:	ec06                	sd	ra,24(sp)
    80060dde:	84aa                	mv	s1,a0
    80060de0:	842e                	mv	s0,a1
nuttx/libs/libc/misc/lib_mutex.c:755
    {
      ret = nxmutex_lock(&rmutex->mutex);
    80060de2:	cd3ff0ef          	jal	ra,80060ab4 <nxmutex_lock>
nuttx/libs/libc/misc/lib_mutex.c:756
      if (ret >= 0)
    80060de6:	00054363          	bltz	a0,80060dec <nxrmutex_restorelock+0x18>
nuttx/libs/libc/misc/lib_mutex.c:758
        {
          rmutex->count = count;
    80060dea:	d080                	sw	s0,32(s1)
nuttx/libs/libc/misc/lib_mutex.c:763
        }
    }

  return ret;
}
    80060dec:	60e2                	ld	ra,24(sp)
    80060dee:	6442                	ld	s0,16(sp)
    80060df0:	64a2                	ld	s1,8(sp)
    80060df2:	6105                	addi	sp,sp,32
    80060df4:	8082                	ret
nuttx/libs/libc/misc/lib_mutex.c:751
  int ret = OK;
    80060df6:	4501                	li	a0,0
nuttx/libs/libc/misc/lib_mutex.c:763
}
    80060df8:	8082                	ret

0000000080060dfa <pthread_attr_init>:
pthread_attr_init():
nuttx/libs/libc/pthread/pthread_attr_init.c:75
int pthread_attr_init(FAR pthread_attr_t *attr)
{
  int ret = OK;

  linfo("attr=%p\n", attr);
  if (!attr)
    80060dfa:	cd11                	beqz	a0,80060e16 <pthread_attr_init+0x1c>
nuttx/libs/libc/pthread/pthread_attr_init.c:71
{
    80060dfc:	1141                	addi	sp,sp,-16
nuttx/libs/libc/pthread/pthread_attr_init.c:86
      /* Set the child thread priority to be the default
       * priority. Set the child stack size to some arbitrary
       * default value.
       */

      memcpy(attr, &g_default_pthread_attr, sizeof(pthread_attr_t));
    80060dfe:	4661                	li	a2,24
    80060e00:	00031597          	auipc	a1,0x31
    80060e04:	14858593          	addi	a1,a1,328 # 80091f48 <g_default_pthread_attr>
nuttx/libs/libc/pthread/pthread_attr_init.c:71
{
    80060e08:	e406                	sd	ra,8(sp)
nuttx/libs/libc/pthread/pthread_attr_init.c:86
      memcpy(attr, &g_default_pthread_attr, sizeof(pthread_attr_t));
    80060e0a:	7a3020ef          	jal	ra,80063dac <memcpy>
nuttx/libs/libc/pthread/pthread_attr_init.c:91
    }

  linfo("Returning %d\n", ret);
  return ret;
}
    80060e0e:	60a2                	ld	ra,8(sp)
nuttx/libs/libc/pthread/pthread_attr_init.c:72
  int ret = OK;
    80060e10:	4501                	li	a0,0
nuttx/libs/libc/pthread/pthread_attr_init.c:91
}
    80060e12:	0141                	addi	sp,sp,16
    80060e14:	8082                	ret
nuttx/libs/libc/pthread/pthread_attr_init.c:77
      ret = ENOMEM;
    80060e16:	4531                	li	a0,12
nuttx/libs/libc/pthread/pthread_attr_init.c:91
}
    80060e18:	8082                	ret

0000000080060e1a <pthread_attr_destroy>:
pthread_attr_destroy():
nuttx/libs/libc/pthread/pthread_attr_destroy.c:58
{
  int ret;

  linfo("attr=%p\n", attr);

  if (!attr)
    80060e1a:	c919                	beqz	a0,80060e30 <pthread_attr_destroy+0x16>
nuttx/libs/libc/pthread/pthread_attr_destroy.c:53
{
    80060e1c:	1141                	addi	sp,sp,-16
nuttx/libs/libc/pthread/pthread_attr_destroy.c:64
    {
      ret = EINVAL;
    }
  else
    {
      memset(attr, 0, sizeof(pthread_attr_t));
    80060e1e:	4661                	li	a2,24
    80060e20:	4581                	li	a1,0
nuttx/libs/libc/pthread/pthread_attr_destroy.c:53
{
    80060e22:	e406                	sd	ra,8(sp)
nuttx/libs/libc/pthread/pthread_attr_destroy.c:64
      memset(attr, 0, sizeof(pthread_attr_t));
    80060e24:	61f020ef          	jal	ra,80063c42 <memset>
nuttx/libs/libc/pthread/pthread_attr_destroy.c:70
      ret = OK;
    }

  linfo("Returning %d\n", ret);
  return ret;
}
    80060e28:	60a2                	ld	ra,8(sp)
nuttx/libs/libc/pthread/pthread_attr_destroy.c:65
      ret = OK;
    80060e2a:	4501                	li	a0,0
nuttx/libs/libc/pthread/pthread_attr_destroy.c:70
}
    80060e2c:	0141                	addi	sp,sp,16
    80060e2e:	8082                	ret
nuttx/libs/libc/pthread/pthread_attr_destroy.c:60
      ret = EINVAL;
    80060e30:	4559                	li	a0,22
nuttx/libs/libc/pthread/pthread_attr_destroy.c:70
}
    80060e32:	8082                	ret

0000000080060e34 <pthread_attr_setdetachstate>:
pthread_attr_setdetachstate():
nuttx/libs/libc/pthread/pthread_attr_setdetachstate.c:49
 *
 ****************************************************************************/

int pthread_attr_setdetachstate(FAR pthread_attr_t *attr,
                                int detachstate)
{
    80060e34:	87aa                	mv	a5,a0
nuttx/libs/libc/pthread/pthread_attr_setdetachstate.c:50
  if (!attr || (detachstate != PTHREAD_CREATE_DETACHED &&
    80060e36:	c909                	beqz	a0,80060e48 <pthread_attr_setdetachstate+0x14>
nuttx/libs/libc/pthread/pthread_attr_setdetachstate.c:50 (discriminator 1)
    80060e38:	4705                	li	a4,1
nuttx/libs/libc/pthread/pthread_attr_setdetachstate.c:53 (discriminator 1)
      detachstate != PTHREAD_CREATE_JOINABLE))
    {
      return EINVAL;
    80060e3a:	4559                	li	a0,22
nuttx/libs/libc/pthread/pthread_attr_setdetachstate.c:50 (discriminator 1)
  if (!attr || (detachstate != PTHREAD_CREATE_DETACHED &&
    80060e3c:	00b76763          	bltu	a4,a1,80060e4a <pthread_attr_setdetachstate+0x16>
nuttx/libs/libc/pthread/pthread_attr_setdetachstate.c:56
    }

  attr->detachstate = detachstate;
    80060e40:	00b781a3          	sb	a1,3(a5)
nuttx/libs/libc/pthread/pthread_attr_setdetachstate.c:58

  return OK;
    80060e44:	4501                	li	a0,0
    80060e46:	8082                	ret
nuttx/libs/libc/pthread/pthread_attr_setdetachstate.c:53
      return EINVAL;
    80060e48:	4559                	li	a0,22
nuttx/libs/libc/pthread/pthread_attr_setdetachstate.c:59
}
    80060e4a:	8082                	ret

0000000080060e4c <pthread_cond_init>:
pthread_cond_init():
nuttx/libs/libc/pthread/pthread_condinit.c:59
{
  int ret = OK;

  sinfo("cond=%p attr=%p\n", cond, attr);

  if (cond == NULL)
    80060e4c:	c90d                	beqz	a0,80060e7e <pthread_cond_init+0x32>
nuttx/libs/libc/pthread/pthread_condinit.c:54
{
    80060e4e:	1101                	addi	sp,sp,-32
    80060e50:	e426                	sd	s1,8(sp)
nuttx/libs/libc/pthread/pthread_condinit.c:68

  /* Initialize the semaphore contained in the condition structure with
   * initial count = 0
   */

  else if (sem_init(&cond->sem, 0, 0) != OK)
    80060e52:	4601                	li	a2,0
    80060e54:	84ae                	mv	s1,a1
    80060e56:	4581                	li	a1,0
nuttx/libs/libc/pthread/pthread_condinit.c:54
{
    80060e58:	e822                	sd	s0,16(sp)
    80060e5a:	ec06                	sd	ra,24(sp)
    80060e5c:	842a                	mv	s0,a0
nuttx/libs/libc/pthread/pthread_condinit.c:68
  else if (sem_init(&cond->sem, 0, 0) != OK)
    80060e5e:	1c2000ef          	jal	ra,80061020 <sem_init>
    80060e62:	c909                	beqz	a0,80060e74 <pthread_cond_init+0x28>
nuttx/libs/libc/pthread/pthread_condinit.c:70
    {
      ret = get_errno();
    80060e64:	bb5ff0ef          	jal	ra,80060a18 <__errno>
    80060e68:	4108                	lw	a0,0(a0)
nuttx/libs/libc/pthread/pthread_condinit.c:79 (discriminator 3)
      cond->clockid = attr ? attr->clockid : CLOCK_REALTIME;
    }

  sinfo("Returning %d\n", ret);
  return ret;
}
    80060e6a:	60e2                	ld	ra,24(sp)
    80060e6c:	6442                	ld	s0,16(sp)
    80060e6e:	64a2                	ld	s1,8(sp)
    80060e70:	6105                	addi	sp,sp,32
    80060e72:	8082                	ret
nuttx/libs/libc/pthread/pthread_condinit.c:74
      cond->clockid = attr ? attr->clockid : CLOCK_REALTIME;
    80060e74:	4781                	li	a5,0
    80060e76:	c091                	beqz	s1,80060e7a <pthread_cond_init+0x2e>
nuttx/libs/libc/pthread/pthread_condinit.c:74 (discriminator 1)
    80060e78:	40dc                	lw	a5,4(s1)
nuttx/libs/libc/pthread/pthread_condinit.c:74 (discriminator 4)
    80060e7a:	cc1c                	sw	a5,24(s0)
    80060e7c:	b7fd                	j	80060e6a <pthread_cond_init+0x1e>
nuttx/libs/libc/pthread/pthread_condinit.c:61
      ret = EINVAL;
    80060e7e:	4559                	li	a0,22
nuttx/libs/libc/pthread/pthread_condinit.c:79
}
    80060e80:	8082                	ret

0000000080060e82 <pthread_cond_destroy>:
pthread_cond_destroy():
nuttx/libs/libc/pthread/pthread_conddestroy.c:55
 * Assumptions:
 *
 ****************************************************************************/

int pthread_cond_destroy(FAR pthread_cond_t *cond)
{
    80060e82:	7179                	addi	sp,sp,-48
    80060e84:	f022                	sd	s0,32(sp)
    80060e86:	f406                	sd	ra,40(sp)
    80060e88:	ec26                	sd	s1,24(sp)
nuttx/libs/libc/pthread/pthread_conddestroy.c:57
  int ret = OK;
  int sval = 0;
    80060e8a:	c602                	sw	zero,12(sp)
nuttx/libs/libc/pthread/pthread_conddestroy.c:63

  sinfo("cond=%p\n", cond);

  if (!cond)
    {
      ret = EINVAL;
    80060e8c:	4459                	li	s0,22
nuttx/libs/libc/pthread/pthread_conddestroy.c:61
  if (!cond)
    80060e8e:	c911                	beqz	a0,80060ea2 <pthread_cond_destroy+0x20>
nuttx/libs/libc/pthread/pthread_conddestroy.c:70

  /* Destroy the semaphore contained in the structure */

  else
    {
      ret = sem_getvalue(&cond->sem, &sval);
    80060e90:	006c                	addi	a1,sp,12
    80060e92:	84aa                	mv	s1,a0
    80060e94:	244000ef          	jal	ra,800610d8 <sem_getvalue>
    80060e98:	842a                	mv	s0,a0
nuttx/libs/libc/pthread/pthread_conddestroy.c:71
      if (ret < 0)
    80060e9a:	00055a63          	bgez	a0,80060eae <pthread_cond_destroy+0x2c>
nuttx/libs/libc/pthread/pthread_conddestroy.c:73
        {
          ret = -ret;
    80060e9e:	40a0043b          	negw	s0,a0
nuttx/libs/libc/pthread/pthread_conddestroy.c:90 (discriminator 3)
        }
    }

  sinfo("Returning %d\n", ret);
  return ret;
}
    80060ea2:	70a2                	ld	ra,40(sp)
    80060ea4:	8522                	mv	a0,s0
    80060ea6:	7402                	ld	s0,32(sp)
    80060ea8:	64e2                	ld	s1,24(sp)
    80060eaa:	6145                	addi	sp,sp,48
    80060eac:	8082                	ret
nuttx/libs/libc/pthread/pthread_conddestroy.c:77
          if (sval < 0)
    80060eae:	47b2                	lw	a5,12(sp)
    80060eb0:	0007ca63          	bltz	a5,80060ec4 <pthread_cond_destroy+0x42>
nuttx/libs/libc/pthread/pthread_conddestroy.c:81
          else if (sem_destroy(&cond->sem) != OK)
    80060eb4:	8526                	mv	a0,s1
    80060eb6:	248000ef          	jal	ra,800610fe <sem_destroy>
    80060eba:	d565                	beqz	a0,80060ea2 <pthread_cond_destroy+0x20>
nuttx/libs/libc/pthread/pthread_conddestroy.c:83
              ret = get_errno();
    80060ebc:	b5dff0ef          	jal	ra,80060a18 <__errno>
    80060ec0:	4100                	lw	s0,0(a0)
    80060ec2:	b7c5                	j	80060ea2 <pthread_cond_destroy+0x20>
nuttx/libs/libc/pthread/pthread_conddestroy.c:79
              ret = EBUSY;
    80060ec4:	4441                	li	s0,16
    80060ec6:	bff1                	j	80060ea2 <pthread_cond_destroy+0x20>

0000000080060ec8 <pthread_cond_timedwait>:
pthread_cond_timedwait():
nuttx/libs/libc/pthread/pthread_condtimedwait.c:55
 ****************************************************************************/

int pthread_cond_timedwait(FAR pthread_cond_t *cond,
                           FAR pthread_mutex_t *mutex,
                           FAR const struct timespec *abstime)
{
    80060ec8:	86b2                	mv	a3,a2
nuttx/libs/libc/pthread/pthread_condtimedwait.c:56
  return pthread_cond_clockwait(cond, mutex, cond->clockid, abstime);
    80060eca:	4d10                	lw	a2,24(a0)
    80060ecc:	18f0306f          	j	8006485a <pthread_cond_clockwait>

0000000080060ed0 <pthread_startup>:
pthread_startup():
nuttx/libs/libc/pthread/pthread_create.c:54
 *
 ****************************************************************************/

static void pthread_startup(pthread_startroutine_t entry,
                            pthread_addr_t arg)
{
    80060ed0:	1141                	addi	sp,sp,-16
    80060ed2:	e406                	sd	ra,8(sp)
    80060ed4:	87aa                	mv	a5,a0
nuttx/libs/libc/pthread/pthread_create.c:55
  DEBUGASSERT(entry != NULL);
    80060ed6:	ed09                	bnez	a0,80060ef0 <pthread_startup+0x20>
nuttx/libs/libc/pthread/pthread_create.c:55 (discriminator 1)
    80060ed8:	00031617          	auipc	a2,0x31
    80060edc:	08860613          	addi	a2,a2,136 # 80091f60 <g_default_pthread_attr+0x18>
    80060ee0:	03700593          	li	a1,55
    80060ee4:	00031517          	auipc	a0,0x31
    80060ee8:	09450513          	addi	a0,a0,148 # 80091f78 <g_default_pthread_attr+0x30>
    80060eec:	a71ff0ef          	jal	ra,8006095c <__assert>
    80060ef0:	852e                	mv	a0,a1
nuttx/libs/libc/pthread/pthread_create.c:59 (discriminator 2)

  /* Pass control to the thread entry point.  Handle any returned value. */

  pthread_exit(entry(arg));
    80060ef2:	9782                	jalr	a5
    80060ef4:	018000ef          	jal	ra,80060f0c <pthread_exit>

0000000080060ef8 <pthread_create>:
pthread_create():
nuttx/libs/libc/pthread/pthread_create.c:88
 *
 ****************************************************************************/

int pthread_create(FAR pthread_t *thread, FAR const pthread_attr_t *attr,
                   pthread_startroutine_t pthread_entry, pthread_addr_t arg)
{
    80060ef8:	8736                	mv	a4,a3
nuttx/libs/libc/pthread/pthread_create.c:89
  return nx_pthread_create(pthread_startup, thread, attr, pthread_entry,
    80060efa:	86b2                	mv	a3,a2
    80060efc:	862e                	mv	a2,a1
    80060efe:	85aa                	mv	a1,a0
    80060f00:	00000517          	auipc	a0,0x0
    80060f04:	fd050513          	addi	a0,a0,-48 # 80060ed0 <pthread_startup>
    80060f08:	08f0306f          	j	80064796 <nx_pthread_create>

0000000080060f0c <pthread_exit>:
pthread_exit():
nuttx/libs/libc/pthread/pthread_exit.c:55
 * Assumptions:
 *
 ****************************************************************************/

void pthread_exit(FAR void *exit_value)
{
    80060f0c:	1141                	addi	sp,sp,-16
    80060f0e:	e022                	sd	s0,0(sp)
nuttx/libs/libc/pthread/pthread_exit.c:61
  /* Mark the pthread as non-cancelable to avoid additional calls to
   * pthread_exit() due to any cancellation point logic that might get
   * kicked off by actions taken during pthread_exit processing.
   */

  task_setcancelstate(TASK_CANCEL_DISABLE, NULL);
    80060f10:	4581                	li	a1,0
nuttx/libs/libc/pthread/pthread_exit.c:55
{
    80060f12:	842a                	mv	s0,a0
nuttx/libs/libc/pthread/pthread_exit.c:61
  task_setcancelstate(TASK_CANCEL_DISABLE, NULL);
    80060f14:	4505                	li	a0,1
nuttx/libs/libc/pthread/pthread_exit.c:55
{
    80060f16:	e406                	sd	ra,8(sp)
nuttx/libs/libc/pthread/pthread_exit.c:61
  task_setcancelstate(TASK_CANCEL_DISABLE, NULL);
    80060f18:	064000ef          	jal	ra,80060f7c <task_setcancelstate>
nuttx/libs/libc/pthread/pthread_exit.c:71

#if defined(CONFIG_TLS_NELEM) && CONFIG_TLS_NELEM > 0
  tls_destruct();
#endif

  nx_pthread_exit(exit_value);
    80060f1c:	8522                	mv	a0,s0
    80060f1e:	099030ef          	jal	ra,800647b6 <nx_pthread_exit>

0000000080060f22 <pthread_mutex_lock>:
pthread_mutex_lock():
nuttx/libs/libc/pthread/pthread_mutex_lock.c:89
{
  /* pthread_mutex_lock() is equivalent to pthread_mutex_timedlock() when
   * the absolute time delay is a NULL value.
   */

  return pthread_mutex_timedlock(mutex, NULL);
    80060f22:	4581                	li	a1,0
    80060f24:	19b0306f          	j	800648be <pthread_mutex_timedlock>

0000000080060f28 <clock_ticks2time>:
clock_ticks2time():
nuttx/libs/libc/sched/clock_ticks2time.c:55

int clock_ticks2time(sclock_t ticks, FAR struct timespec *reltime)
{
  sclock_t remainder;

  reltime->tv_sec  = ticks / TICK_PER_SEC;
    80060f28:	3e800793          	li	a5,1000
    80060f2c:	02f5473b          	divw	a4,a0,a5
nuttx/libs/libc/sched/clock_ticks2time.c:56
  remainder        = ticks - TICK_PER_SEC * reltime->tv_sec;
    80060f30:	c1800793          	li	a5,-1000
    80060f34:	02e787bb          	mulw	a5,a5,a4
nuttx/libs/libc/sched/clock_ticks2time.c:55
  reltime->tv_sec  = ticks / TICK_PER_SEC;
    80060f38:	c198                	sw	a4,0(a1)
nuttx/libs/libc/sched/clock_ticks2time.c:56
  remainder        = ticks - TICK_PER_SEC * reltime->tv_sec;
    80060f3a:	9d3d                	addw	a0,a0,a5
nuttx/libs/libc/sched/clock_ticks2time.c:57
  reltime->tv_nsec = remainder * NSEC_PER_TICK;
    80060f3c:	000f47b7          	lui	a5,0xf4
    80060f40:	2407879b          	addiw	a5,a5,576
    80060f44:	02f5053b          	mulw	a0,a0,a5
    80060f48:	e588                	sd	a0,8(a1)
nuttx/libs/libc/sched/clock_ticks2time.c:59
  return OK;
}
    80060f4a:	4501                	li	a0,0
    80060f4c:	8082                	ret

0000000080060f4e <clock_timespec_add>:
clock_timespec_add():
nuttx/libs/libc/sched/clock_timespec_add.c:55

void clock_timespec_add(FAR const struct timespec *ts1,
                        FAR const struct timespec *ts2,
                        FAR struct timespec *ts3)
{
  time_t sec = ts1->tv_sec + ts2->tv_sec;
    80060f4e:	419c                	lw	a5,0(a1)
    80060f50:	4118                	lw	a4,0(a0)
nuttx/libs/libc/sched/clock_timespec_add.c:56
  long nsec  = ts1->tv_nsec + ts2->tv_nsec;
    80060f52:	6594                	ld	a3,8(a1)
nuttx/libs/libc/sched/clock_timespec_add.c:55
  time_t sec = ts1->tv_sec + ts2->tv_sec;
    80060f54:	00f7083b          	addw	a6,a4,a5
nuttx/libs/libc/sched/clock_timespec_add.c:56
  long nsec  = ts1->tv_nsec + ts2->tv_nsec;
    80060f58:	651c                	ld	a5,8(a0)
    80060f5a:	97b6                	add	a5,a5,a3
nuttx/libs/libc/sched/clock_timespec_add.c:58

  if (nsec >= NSEC_PER_SEC)
    80060f5c:	3b9ad6b7          	lui	a3,0x3b9ad
    80060f60:	9ff68693          	addi	a3,a3,-1537 # 3b9ac9ff <asinh-0x44653601>
    80060f64:	00f6d863          	bge	a3,a5,80060f74 <clock_timespec_add+0x26>
nuttx/libs/libc/sched/clock_timespec_add.c:60
    {
      nsec -= NSEC_PER_SEC;
    80060f68:	c46536b7          	lui	a3,0xc4653
    80060f6c:	60068693          	addi	a3,a3,1536 # ffffffffc4653600 <_ebss+0xffffffff4455249a>
    80060f70:	97b6                	add	a5,a5,a3
nuttx/libs/libc/sched/clock_timespec_add.c:61
      sec++;
    80060f72:	2805                	addiw	a6,a6,1
nuttx/libs/libc/sched/clock_timespec_add.c:64
    }

  ts3->tv_sec  = sec;
    80060f74:	01062023          	sw	a6,0(a2)
nuttx/libs/libc/sched/clock_timespec_add.c:65
  ts3->tv_nsec = nsec;
    80060f78:	e61c                	sd	a5,8(a2)
nuttx/libs/libc/sched/clock_timespec_add.c:66
}
    80060f7a:	8082                	ret

0000000080060f7c <task_setcancelstate>:
task_setcancelstate():
nuttx/libs/libc/sched/task_setcancelstate.c:64
 *   errno value set appropriately.
 *
 ****************************************************************************/

int task_setcancelstate(int state, FAR int *oldstate)
{
    80060f7c:	1141                	addi	sp,sp,-16
nuttx/libs/libc/sched/task_setcancelstate.c:65
  FAR struct tls_info_s *tls = tls_get_info();
    80060f7e:	7779                	lui	a4,0xffffe
nuttx/libs/libc/sched/task_setcancelstate.c:64
{
    80060f80:	e406                	sd	ra,8(sp)
up_getsp():
nuttx/include/arch/irq.h:601
    80060f82:	878a                	mv	a5,sp
task_setcancelstate():
nuttx/libs/libc/sched/task_setcancelstate.c:65
  FAR struct tls_info_s *tls = tls_get_info();
    80060f84:	8ff9                	and	a5,a5,a4
nuttx/libs/libc/sched/task_setcancelstate.c:70
  int ret = OK;

  /* Return the current state if so requested */

  if (oldstate != NULL)
    80060f86:	c599                	beqz	a1,80060f94 <task_setcancelstate+0x18>
nuttx/libs/libc/sched/task_setcancelstate.c:72
    {
      if ((tls->tl_cpstate & CANCEL_FLAG_NONCANCELABLE) != 0)
    80060f88:	0087c703          	lbu	a4,8(a5) # f4008 <asinh-0x7ff0bff8>
    80060f8c:	8b05                	andi	a4,a4,1
    80060f8e:	c31d                	beqz	a4,80060fb4 <task_setcancelstate+0x38>
nuttx/libs/libc/sched/task_setcancelstate.c:74
        {
          *oldstate = TASK_CANCEL_DISABLE;
    80060f90:	4705                	li	a4,1
    80060f92:	c198                	sw	a4,0(a1)
nuttx/libs/libc/sched/task_setcancelstate.c:84
        }
    }

  /* Set the new cancellation state */

  if (state == TASK_CANCEL_ENABLE)
    80060f94:	e11d                	bnez	a0,80060fba <task_setcancelstate+0x3e>
nuttx/libs/libc/sched/task_setcancelstate.c:88
    {
      /* Clear the non-cancelable flag */

      tls->tl_cpstate &= ~CANCEL_FLAG_NONCANCELABLE;
    80060f96:	0087c703          	lbu	a4,8(a5)
    80060f9a:	ffe77693          	andi	a3,a4,-2
    80060f9e:	00d78423          	sb	a3,8(a5)
nuttx/libs/libc/sched/task_setcancelstate.c:92

      /* Check if a cancellation was pending */

      if ((tls->tl_cpstate & CANCEL_FLAG_CANCEL_PENDING) != 0)
    80060fa2:	00477693          	andi	a3,a4,4
    80060fa6:	c685                	beqz	a3,80060fce <task_setcancelstate+0x52>
nuttx/libs/libc/sched/task_setcancelstate.c:104
            {
              /* No.. We are using asynchronous cancellation.  If the
               * cancellation was pending in this case, then just exit.
               */

              tls->tl_cpstate &= ~CANCEL_FLAG_CANCEL_PENDING;
    80060fa8:	9b69                	andi	a4,a4,-6
    80060faa:	00e78423          	sb	a4,8(a5)
nuttx/libs/libc/sched/task_setcancelstate.c:107

#ifndef CONFIG_DISABLE_PTHREAD
              pthread_exit(PTHREAD_CANCELED);
    80060fae:	557d                	li	a0,-1
    80060fb0:	f5dff0ef          	jal	ra,80060f0c <pthread_exit>
nuttx/libs/libc/sched/task_setcancelstate.c:78
          *oldstate = TASK_CANCEL_ENABLE;
    80060fb4:	0005a023          	sw	zero,0(a1)
    80060fb8:	bff1                	j	80060f94 <task_setcancelstate+0x18>
nuttx/libs/libc/sched/task_setcancelstate.c:114
              exit(EXIT_FAILURE);
#endif
            }
        }
    }
  else if (state == TASK_CANCEL_DISABLE)
    80060fba:	4705                	li	a4,1
    80060fbc:	00e51c63          	bne	a0,a4,80060fd4 <task_setcancelstate+0x58>
nuttx/libs/libc/sched/task_setcancelstate.c:118
    {
      /* Set the non-cancelable state */

      tls->tl_cpstate |= CANCEL_FLAG_NONCANCELABLE;
    80060fc0:	0087c703          	lbu	a4,8(a5)
nuttx/libs/libc/sched/task_setcancelstate.c:66
  int ret = OK;
    80060fc4:	4501                	li	a0,0
nuttx/libs/libc/sched/task_setcancelstate.c:118
      tls->tl_cpstate |= CANCEL_FLAG_NONCANCELABLE;
    80060fc6:	00176713          	ori	a4,a4,1
    80060fca:	00e78423          	sb	a4,8(a5)
nuttx/libs/libc/sched/task_setcancelstate.c:127
      set_errno(EINVAL);
      ret = ERROR;
    }

  return ret;
}
    80060fce:	60a2                	ld	ra,8(sp)
    80060fd0:	0141                	addi	sp,sp,16
    80060fd2:	8082                	ret
nuttx/libs/libc/sched/task_setcancelstate.c:122
      set_errno(EINVAL);
    80060fd4:	a45ff0ef          	jal	ra,80060a18 <__errno>
    80060fd8:	47d9                	li	a5,22
    80060fda:	c11c                	sw	a5,0(a0)
nuttx/libs/libc/sched/task_setcancelstate.c:123
      ret = ERROR;
    80060fdc:	557d                	li	a0,-1
    80060fde:	bfc5                	j	80060fce <task_setcancelstate+0x52>

0000000080060fe0 <nxsem_init>:
nxsem_init():
nuttx/libs/libc/semaphore/sem_init.c:67

int nxsem_init(FAR sem_t *sem, int pshared, unsigned int value)
{
  UNUSED(pshared);

  DEBUGASSERT(sem != NULL && value <= SEM_VALUE_MAX);
    80060fe0:	c501                	beqz	a0,80060fe8 <nxsem_init+0x8>
nuttx/libs/libc/semaphore/sem_init.c:67 (discriminator 2)
    80060fe2:	67a1                	lui	a5,0x8
    80060fe4:	02f66063          	bltu	a2,a5,80061004 <nxsem_init+0x24>
nuttx/libs/libc/semaphore/sem_init.c:64
{
    80060fe8:	1141                	addi	sp,sp,-16
nuttx/libs/libc/semaphore/sem_init.c:67
  DEBUGASSERT(sem != NULL && value <= SEM_VALUE_MAX);
    80060fea:	00031617          	auipc	a2,0x31
    80060fee:	fae60613          	addi	a2,a2,-82 # 80091f98 <g_default_pthread_attr+0x50>
    80060ff2:	04300593          	li	a1,67
    80060ff6:	00031517          	auipc	a0,0x31
    80060ffa:	fca50513          	addi	a0,a0,-54 # 80091fc0 <g_default_pthread_attr+0x78>
nuttx/libs/libc/semaphore/sem_init.c:64
{
    80060ffe:	e406                	sd	ra,8(sp)
nuttx/libs/libc/semaphore/sem_init.c:67
  DEBUGASSERT(sem != NULL && value <= SEM_VALUE_MAX);
