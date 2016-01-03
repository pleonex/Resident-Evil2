;; Code extracted from game. Some instruction has been sorted for good reading
;; Use only for learning purpouse
;;
;; THIS IS A MODIFIED VERSION OF THE DEFLATE (RFC 1951) ALGORITHM.
;; The first 4 bytes are discarted. They are the decoded file size XOR 0xFFFFFFFF (that is, a NOT).
;; Function address: 8047feb8
;; Output file at (dynamic): 801BC760
;; Encoded file hard-coded to 0x806321A0
;; Remember to pad the files to 0x20 bytes wihtout taking into account first 4 bytes.

;; Static registers
;; R16-0x7F80: Remaining size (before reading it's set to chunk_size if it's bigger).
;; R16-0x7F7C: File position.
;; R16-0x7F78: File size.
;; R16+0x008C: (set to 0 at init).
;; R16+0x00C8:
;; R16+0x00CC: Huffman root node index (0x200)
;; R16+0x00F0: Cache (size: 0x2000)
;; R16+0x20D8: Huffman tree (size: 0x2000)
;; R16+0x40F0:
;; R16+0x40F4: Output file start pointer.
;; R16+0x40F8: Current decoded position (set to 0 at init).
;; R19: Current position in tree (nodeIndex)
;; R22: Current decoded char.
;; R23: Cache position.
;; R27: Distance in the cache.
;; R31+0x00: (set to 0 at init).
;; R31+0x04: (set to 0 at init).
;; R31+0x08: Current encoded byte (set to 0 at init).
;; R31+0x0C: (set to 0 at init).
;; R31+0x10: Current mask value (set to 0 at init).
;; R31+0x14: (set to 0 at init).
;; R31+0x18: If set use alternative file input (set to 0 at init).
;; R31+0x1C: Alternative input file pointer.
;; R31+0x20: Alternative input file position.
;; R31+0x24: Current encoded position (set to 0 at init).
;; R31+0x28: Current encoded block size.
;; R31+0x2C: File size + File path
;; SP+0x08: Codework huffman tree2 bit.
;; SP+0x0C: Codework huffman tree1 bit.
;; SP+0x14: Current huffman tree2 value
;; SP+0x18: Current huffman tree1 value
;; SP+0x20: Position in encoded block?
;; SP+0x24:
;; SP+0x28: Root tree node.
;; SP+0x2C:
;; SP+0x30:
;; SP+0x34:
;; Node Entry:
;; 0x00: Left child index in tree1.
;; 0x04: Right child index in tree2.
;; 0x08: Left child index in tree2.
;; 0x0C: Right child index in tree1.

start:
8047feb8  stwu    sp, -0x0080 (sp)
8047febc  mflr    r0
8047fec0  stw     r0, 0x0084 (sp)
8047fec4  addi    r11, sp, 128
8047fec8  bl      0x80049D8C
8047fecc  lis     r3, 0x8063                             ; Set R31 to 0x80632120
8047fed0  addi    r31, r3, 8480                          ; ...
8047fed4  addis   r16, r31, 1                            ; Set R16 to 0x80642120
8047fed8  li      r5, 8
8047fedc  stw     r5, 0x00B4 (r16)
8047fee0  li      r3, 16
8047fee4  addi    r4, r16, 180
8047fee8  stw     r3, 0x0004 (r4)
8047feec  lwz     r3, 0x008C (r16)
8047fef0  subi    r0, r16, 32628
8047fef4  add     r5, r0, r3
8047fef8  addi    r3, r16, 180
8047fefc  stw    r5, 0x0010 (r3)
8047ff00  lwz    r4, 0x008C (r16)
8047ff04  addi    r3, r16, 180
8047ff08  lwz    r0, 0x0004 (r3)
8047ff0c  rlwinm    r0, r0, 1, 0, 30 (7fffffff)
8047ff10  rlwinm    r3, r0, 4, 0, 27 (0fffffff)
8047ff14  add    r4, r4, r3
8047ff18  stw    r4, 0x008C (r16)
8047ff1c  lwz    r3, 0x008C (r16)
8047ff20  subi    r5, r16, 32628
8047ff24  add    r4, r5, r3
8047ff28  addi    r3, r16, 180
8047ff2c  stw    r4, 0x000C (r3)
8047ff30  lwz    r5, 0x008C (r16)
8047ff34  addi    r4, r16, 180
8047ff38  lwz    r3, 0x0004 (r4)
8047ff3c  rlwinm    r0, r3, 3, 0, 28 (1fffffff)
8047ff40  add    r7, r5, r0
8047ff44  stw    r7, 0x008C (r16)
8047ff48  lwz    r3, 0x008C (r16)
8047ff4c  subi    r5, r16, 32628
8047ff50  add    r4, r5, r3
8047ff54  addi    r6, r16, 180
8047ff58  stw    r4, 0x0008 (r6)
8047ff5c  lwz    r6, 0x008C (r16)
8047ff60  addi    r3, r16, 180
8047ff64  lwz    r5, 0x0004 (r3)
8047ff68  rlwinm    r4, r5, 2, 0, 29 (3fffffff)
8047ff6c  add    r3, r6, r4
8047ff70  stw    r3, 0x008C (r16)
8047ff74  li    r5, 8
8047ff78  stw    r5, 0x00C8 (r16)
8047ff7c  li    r3, 512
8047ff80  addi    r4, r16, 200
8047ff84  stw    r3, 0x0004 (r4)
8047ff88  lwz    r3, 0x008C (r16)
8047ff8c  subi    r0, r16, 32628
8047ff90  add    r4, r0, r3
8047ff94  addi    r3, r16, 200
8047ff98  stw    r4, 0x0010 (r3)
8047ff9c  lwz    r0, 0x008C (r16)
8047ffa0  addi    r3, r16, 200
8047ffa4  lwz    r4, 0x0004 (r3)
8047ffa8  rlwinm    r3, r4, 1, 0, 30 (7fffffff)
8047ffac  rlwinm    r3, r3, 4, 0, 27 (0fffffff)
8047ffb0  add    r0, r0, r3
8047ffb4  stw    r0, 0x008C (r16)
8047ffb8  lwz    r4, 0x008C (r16)
8047ffbc  subi    r3, r16, 32628
8047ffc0  add    r0, r3, r4
8047ffc4  addi    r3, r16, 200
8047ffc8  stw    r0, 0x000C (r3)
8047ffcc  lwz    r5, 0x008C (r16)
8047ffd0  addi    r4, r16, 200
8047ffd4  lwz    r3, 0x0004 (r4)
8047ffd8  rlwinm    r4, r3, 3, 0, 28 (1fffffff)
8047ffdc  add    r3, r5, r4
8047ffe0  stw    r3, 0x008C (r16)
8047ffe4  lwz    r3, 0x008C (r16)
8047ffe8  subi    r0, r16, 32628
8047ffec  add    r0, r0, r3
8047fff0  addi    r5, r16, 200
8047fff4  stw    r0, 0x0008 (r5)
8047fff8  lwz    r4, 0x008C (r16)
8047fffc  addi    r3, r16, 200
80480000  lwz    r0, 0x0004 (r3)
80480004  rlwinm    r3, r0, 2, 0, 29 (3fffffff)
80480008  add    r0, r4, r3
8048000c  stw    r0, 0x008C (r16)
80480010  li    r3, 8
80480014  stw    r3, 0x00DC (r16)
80480018  li    r5, 16
8048001c  addi    r4, r16, 220
80480020  stw    r5, 0x0004 (r4)
80480024  lwz    r0, 0x008C (r16)
80480028  subi    r3, r16, 32628
8048002c  add    r0, r3, r0
80480030  addi    r3, r16, 220
80480034  stw    r0, 0x0010 (r3)
80480038  lwz    r4, 0x008C (r16)
8048003c  addi    r5, r16, 220
80480040  lwz    r3, 0x0004 (r5)
80480044  rlwinm    r0, r3, 1, 0, 30 (7fffffff)
80480048  rlwinm    r3, r0, 4, 0, 27 (0fffffff)
8048004c  add    r4, r4, r3
80480050  stw    r4, 0x008C (r16)
80480054  lwz    r3, 0x008C (r16)
80480058  subi    r0, r16, 32628
8048005c  add    r4, r0, r3
80480060  addi    r3, r16, 220
80480064  stw    r4, 0x000C (r3)
80480068  lwz    r5, 0x008C (r16)
8048006c  addi    r4, r16, 220
80480070  lwz    r3, 0x0004 (r4)
80480074  rlwinm    r3, r3, 3, 0, 28 (1fffffff)
80480078  add    r0, r5, r3
8048007c  stw    r0, 0x008C (r16)
80480080  lwz    r0, 0x008C (r16)
80480084  subi    r5, r16, 32628
80480088  add    r0, r5, r0
8048008c  addi    r3, r16, 220
80480090  stw    r0, 0x0008 (r3)
80480094  lwz    r4, 0x008C (r16)
80480098  addi    r3, r16, 220
8048009c  lwz    r0, 0x0004 (r3)
804800a0  rlwinm    r0, r0, 2, 0, 29 (3fffffff)
804800a4  add    r6, r4, r0
804800a8  stw    r6, 0x008C (r16)
804800ac  li    r30, 0
804800b0  b    ->0x80480154
804800b4  li    r3, 0
804800b8  addi    r4, r16, 180
804800bc  lwz    r5, 0x0008 (r4)
804800c0  rlwinm    r4, r30, 2, 0, 29 (3fffffff)
804800c4  stwx    r3, r5, r4
804800c8  li    r0, 0
804800cc  addi    r3, r16, 180
804800d0  lwz    r3, 0x000C (r3)
804800d4  rlwinm    r4, r30, 3, 0, 28 (1fffffff)
804800d8  addi    r4, r4, 4
804800dc  stwx    r0, r3, r4
804800e0  li    r0, 0
804800e4  addi    r3, r16, 180
804800e8  lwz    r4, 0x000C (r3)
804800ec  rlwinm    r3, r30, 3, 0, 28 (1fffffff)
804800f0  stwx    r0, r4, r3
804800f4  li    r0, 0
804800f8  addi    r3, r16, 180
804800fc  lwz    r4, 0x0010 (r3)
80480100  rlwinm    r3, r30, 4, 0, 27 (0fffffff)
80480104  stwx    r0, r4, r3
80480108  li    r0, -1
8048010c  addi    r3, r16, 180
80480110  lwz    r5, 0x0010 (r3)
80480114  rlwinm    r4, r30, 4, 0, 27 (0fffffff)
80480118  addi    r4, r4, 8
8048011c  stwx    r0, r5, r4
80480120  li    r0, -1
80480124  addi    r3, r16, 180
80480128  lwz    r3, 0x0010 (r3)
8048012c  rlwinm    r4, r30, 4, 0, 27 (0fffffff)
80480130  addi    r5, r4, 12
80480134  stwx    r0, r3, r5
80480138  li    r5, -1
8048013c  addi    r4, r16, 180
80480140  lwz    r3, 0x0010 (r4)
80480144  rlwinm    r4, r30, 4, 0, 27 (0fffffff)
80480148  addi    r4, r4, 4
8048014c  stwx    r5, r3, r4
80480150  addi    r30, r30, 1
80480154  addi    r3, r16, 180
80480158  lwz    r3, 0x0004 (r3)
8048015c  cmplw    r30, r3
80480160  blt+     ->0x804800B4
80480164  b    ->0x804801C8
80480168  li    r0, 0
8048016c  addi    r3, r16, 180
80480170  lwz    r3, 0x0010 (r3)
80480174  rlwinm    r4, r30, 4, 0, 27 (0fffffff)
80480178  stwx    r0, r3, r4
8048017c  li    r0, -1
80480180  addi    r4, r16, 180
80480184  lwz    r3, 0x0010 (r4)
80480188  rlwinm    r4, r30, 4, 0, 27 (0fffffff)
8048018c  addi    r4, r4, 8
80480190  stwx    r0, r3, r4
80480194  li    r5, -1
80480198  addi    r4, r16, 180
8048019c  lwz    r3, 0x0010 (r4)
804801a0  rlwinm    r6, r30, 4, 0, 27 (0fffffff)
804801a4  addi    r0, r6, 12
804801a8  stwx    r5, r3, r0
804801ac  li    r5, -1
804801b0  addi    r3, r16, 180
804801b4  lwz    r3, 0x0010 (r3)
804801b8  rlwinm    r4, r30, 4, 0, 27 (0fffffff)
804801bc  addi    r0, r4, 4
804801c0  stwx    r5, r3, r0
804801c4  addi    r30, r30, 1
804801c8  addi    r4, r16, 180
804801cc  lwz    r0, 0x0004 (r4)
804801d0  rlwinm    r3, r0, 1, 0, 30 (7fffffff)
804801d4  cmplw    r30, r3
804801d8  blt+     ->0x80480168
804801dc  li    r29, 0
804801e0  b    ->0x80480284
804801e4  li    r0, 0
804801e8  addi    r4, r16, 200
804801ec  lwz    r3, 0x0008 (r4)
804801f0  rlwinm    r4, r29, 2, 0, 29 (3fffffff)
804801f4  stwx    r0, r3, r4
804801f8  li    r4, 0
804801fc  addi    r3, r16, 200
80480200  lwz    r3, 0x000C (r3)
80480204  rlwinm    r5, r29, 3, 0, 28 (1fffffff)
80480208  addi    r0, r5, 4
8048020c  stwx    r4, r3, r0
80480210  li    r4, 0
80480214  addi    r3, r16, 200
80480218  lwz    r3, 0x000C (r3)
8048021c  rlwinm    r0, r29, 3, 0, 28 (1fffffff)
80480220  stwx    r4, r3, r0
80480224  li    r4, 0
80480228  addi    r3, r16, 200
8048022c  lwz    r3, 0x0010 (r3)
80480230  rlwinm    r0, r29, 4, 0, 27 (0fffffff)
80480234  stwx    r4, r3, r0
80480238  li    r5, -1
8048023c  addi    r3, r16, 200
80480240  lwz    r3, 0x0010 (r3)
80480244  rlwinm    r4, r29, 4, 0, 27 (0fffffff)
80480248  addi    r0, r4, 8
8048024c  stwx    r5, r3, r0
80480250  li    r5, -1
80480254  addi    r3, r16, 200
80480258  lwz    r4, 0x0010 (r3)
8048025c  rlwinm    r3, r29, 4, 0, 27 (0fffffff)
80480260  addi    r0, r3, 12
80480264  stwx    r5, r4, r0
80480268  li    r5, -1
8048026c  addi    r3, r16, 200
80480270  lwz    r4, 0x0010 (r3)
80480274  rlwinm    r3, r29, 4, 0, 27 (0fffffff)
80480278  addi    r3, r3, 4
8048027c  stwx    r5, r4, r3
80480280  addi    r29, r29, 1
80480284  addi    r5, r16, 200
80480288  lwz    r0, 0x0004 (r5)
8048028c  cmplw    r29, r0
80480290  blt+     ->0x804801E4
80480294  b    ->0x804802F8
80480298  li    r4, 0
8048029c  addi    r3, r16, 200
804802a0  lwz    r3, 0x0010 (r3)
804802a4  rlwinm    r0, r29, 4, 0, 27 (0fffffff)
804802a8  stwx    r4, r3, r0
804802ac  li    r5, -1
804802b0  addi    r3, r16, 200
804802b4  lwz    r4, 0x0010 (r3)
804802b8  rlwinm    r3, r29, 4, 0, 27 (0fffffff)
804802bc  addi    r0, r3, 8
804802c0  stwx    r5, r4, r0
804802c4  li    r3, -1
804802c8  addi    r4, r16, 200
804802cc  lwz    r5, 0x0010 (r4)
804802d0  rlwinm    r4, r29, 4, 0, 27 (0fffffff)
804802d4  addi    r0, r4, 12
804802d8  stwx    r3, r5, r0
804802dc  li    r5, -1
804802e0  addi    r3, r16, 200
804802e4  lwz    r4, 0x0010 (r3)
804802e8  rlwinm    r3, r29, 4, 0, 27 (0fffffff)
804802ec  addi    r0, r3, 4
804802f0  stwx    r5, r4, r0
804802f4  addi    r29, r29, 1
804802f8  addi    r3, r16, 200
804802fc  lwz    r5, 0x0004 (r3)
80480300  rlwinm    r4, r5, 1, 0, 30 (7fffffff)
80480304  cmplw    r29, r4
80480308  blt+     ->0x80480298
8048030c  li    r28, 0
80480310  b    ->0x804803B4
80480314  li    r4, 0
80480318  addi    r3, r16, 220
8048031c  lwz    r3, 0x0008 (r3)
80480320  rlwinm    r0, r28, 2, 0, 29 (3fffffff)
80480324  stwx    r4, r3, r0
80480328  li    r0, 0
8048032c  addi    r3, r16, 220
80480330  lwz    r5, 0x000C (r3)
80480334  rlwinm    r4, r28, 3, 0, 28 (1fffffff)
80480338  addi    r3, r4, 4
8048033c  stwx    r0, r5, r3
80480340  li    r4, 0
80480344  addi    r3, r16, 220
80480348  lwz    r3, 0x000C (r3)
8048034c  rlwinm    r0, r28, 3, 0, 28 (1fffffff)
80480350  stwx    r4, r3, r0
80480354  li    r5, 0
80480358  addi    r4, r16, 220
8048035c  lwz    r3, 0x0010 (r4)
80480360  rlwinm    r0, r28, 4, 0, 27 (0fffffff)
80480364  stwx    r5, r3, r0
80480368  li    r5, -1
8048036c  addi    r3, r16, 220
80480370  lwz    r4, 0x0010 (r3)
80480374  rlwinm    r3, r28, 4, 0, 27 (0fffffff)
80480378  addi    r0, r3, 8
8048037c  stwx    r5, r4, r0
80480380  li    r5, -1
80480384  addi    r3, r16, 220
80480388  lwz    r4, 0x0010 (r3)
8048038c  rlwinm    r3, r28, 4, 0, 27 (0fffffff)
80480390  addi    r0, r3, 12
80480394  stwx    r5, r4, r0
80480398  li    r0, -1
8048039c  addi    r3, r16, 220
804803a0  lwz    r4, 0x0010 (r3)
804803a4  rlwinm    r3, r28, 4, 0, 27 (0fffffff)
804803a8  addi    r5, r3, 4
804803ac  stwx    r0, r4, r5
804803b0  addi    r28, r28, 1
804803b4  addi    r4, r16, 220
804803b8  lwz    r3, 0x0004 (r4)
804803bc  cmplw    r28, r3
804803c0  blt+     ->0x80480314
804803c4  b    ->0x80480428
804803c8  li    r5, 0
804803cc  addi    r4, r16, 220
804803d0  lwz    r3, 0x0010 (r4)
804803d4  rlwinm    r0, r28, 4, 0, 27 (0fffffff)
804803d8  stwx    r5, r3, r0
804803dc  li    r7, -1
804803e0  addi    r3, r16, 220
804803e4  lwz    r5, 0x0010 (r3)
804803e8  rlwinm    r4, r28, 4, 0, 27 (0fffffff)
804803ec  addi    r6, r4, 8
804803f0  stwx    r7, r5, r6
804803f4  li    r6, -1
804803f8  addi    r3, r16, 220
804803fc  lwz    r5, 0x0010 (r3)
80480400  rlwinm    r4, r28, 4, 0, 27 (0fffffff)
80480404  addi    r3, r4, 12
80480408  stwx    r6, r5, r3
8048040c  li    r5, -1
80480410  addi    r3, r16, 220
80480414  lwz    r4, 0x0010 (r3)
80480418  rlwinm    r3, r28, 4, 0, 27 (0fffffff)
8048041c  addi    r0, r3, 4
80480420  stwx    r5, r4, r0
80480424  addi    r28, r28, 1
80480428  addi    r4, r16, 220
8048042c  lwz    r3, 0x0004 (r4)
80480430  rlwinm    r0, r3, 1, 0, 30 (7fffffff)
80480434  cmplw    r28, r0
80480438  blt+     ->0x804803C8
8048043c  li    r27, 0
80480440  b    ->0x80480454
80480444  li    r3, 0
80480448  addi    r4, r16, 240
8048044c  stbx    r3, r4, r27
80480450  addi    r27, r27, 1
80480454  cmplwi    r27, 16384
80480458  blt+     ->0x80480444
8048045c  li    r3, 0
80480460  stw    r3, 0x0034 (sp)
80480464  li    r23, 0

80480468
    li    r26, 8
8048046c  li    r21, 0
80480470  lwz    r3, 0x0018 (r31)
80480474  cmpwi    r3, 0
80480478  beq-     ->0x804805EC
8048047c  b    ->0x804804CC
80480480  lwz    r0, 0x0010 (r31)
80480484  sub    r26, r26, r0
80480488  lwz    r4, 0x0008 (r31)
8048048c  li    r3, 1
80480490  lwz    r0, 0x0010 (r31)
80480494  slw    r3, r3, r0
80480498  subi    r5, r3, 1
8048049c  and    r4, r4, r5
804804a0  slw    r3, r4, r26
804804a4  or    r21, r21, r3
804804a8  lwz    r4, 0x001C (r31)
804804ac  lwz    r3, 0x0020 (r31)
804804b0  addi    r0, r3, 1
804804b4  stw    r0, 0x0020 (r31)
804804b8  lbzx    r0, r4, r3
804804bc  extsb    r5, r0
804804c0  stw    r5, 0x0008 (r31)
804804c4  li    r4, 8
804804c8  stw    r4, 0x0010 (r31)
804804cc  lwz    r3, 0x0010 (r31)
804804d0  cmpw    r26, r3
804804d4  bgt+     ->0x80480480
804804d8  lwz    r0, 0x0010 (r31)
804804dc  sub    r3, r0, r26
804804e0  stw    r3, 0x0010 (r31)
804804e4  li    r0, 1
804804e8  slw    r3, r0, r26
804804ec  subi    r5, r3, 1
804804f0  lwz    r4, 0x0008 (r31)
804804f4  lwz    r0, 0x0010 (r31)
804804f8  srw    r3, r4, r0
804804fc  and    r0, r5, r3
80480500  or    r3, r21, r0
80480504  stw    r3, 0x0020 (sp)
80480508  b    ->0x80480628
8048050c  lwz    r4, 0x0010 (r31)
80480510  sub    r26, r26, r4
80480514  lwz    r5, 0x0008 (r31)
80480518  li    r3, 1
8048051c  lwz    r0, 0x0010 (r31)
80480520  slw    r3, r3, r0
80480524  subi    r4, r3, 1
80480528  and    r3, r5, r4
8048052c  slw    r0, r3, r26
80480530  or    r21, r21, r0
80480534  lwz    r4, 0x0024 (r31)
80480538  lwz    r3, 0x0028 (r31)
8048053c  cmpw    r4, r3
80480540  blt-     ->0x804805C0
80480544  addi    r3, r31, 44
80480548  lis    r5, 0x8063
8048054c  addi    r4, r5, 8608
80480550  lwz    r5, -0x7F80 (r16)
80480554  lwz    r6, -0x7F7C (r16)
80480558  li    r7, 0
8048055c  bl    ->0x80522458
80480560  stw    r3, 0x0028 (r31)
80480564  cmpwi    r3, 0
80480568  bge-     ->0x80480580
8048056c  addi    r3, r31, 44
80480570  bl    ->0x80069358
80480574  li    r0, 0
80480578  stw    r0, 0x0020 (sp)
8048057c  b    ->0x80480628
80480580  li    r0, 0
80480584  stw    r0, 0x0024 (r31)
80480588  lwz    r5, -0x7F7C (r16)
8048058c  lwz    r0, 0x0028 (r31)
80480590  add    r3, r5, r0
80480594  stw    r3, -0x7F7C (r16)
80480598  lwz    r4, -0x7F78 (r16)
8048059c  lwz    r3, -0x7F7C (r16)
804805a0  lwz    r0, -0x7F80 (r16)
804805a4  add    r0, r3, r0
804805a8  cmpw    r4, r0
804805ac  bge-     ->0x804805C0
804805b0  lwz    r6, -0x7F7C (r16)
804805b4  lwz    r3, -0x7F78 (r16)
804805b8  sub    r4, r3, r6
804805bc  stw    r4, -0x7F80 (r16)
804805c0  lwz    r5, 0x0024 (r31)
804805c4  mr    r4, r5
804805c8  addi    r0, r5, 1
804805cc  stw    r0, 0x0024 (r31)
804805d0  lis    r3, 0x8063
804805d4  addi    r3, r3, 8608
804805d8  add    r4, r3, r4
804805dc  lbz    r4, 0 (r4)
804805e0  stw    r4, 0x0008 (r31)
804805e4  li    r0, 8
804805e8  stw    r0, 0x0010 (r31)
804805ec  lwz    r3, 0x0010 (r31)
804805f0  cmpw    r26, r3
804805f4  bgt+     ->0x8048050C
804805f8  lwz    r4, 0x0010 (r31)
804805fc  sub    r3, r4, r26
80480600  stw    r3, 0x0010 (r31)
80480604  li    r0, 1
80480608  slw    r3, r0, r26
8048060c  subi    r4, r3, 1
80480610  lwz    r3, 0x0008 (r31)
80480614  lwz    r0, 0x0010 (r31)
80480618  srw    r3, r3, r0
8048061c  and    r5, r4, r3
80480620  or    r4, r21, r5
80480624  stw    r4, 0x0020 (sp)
80480628  lwz    r4, 0x0020 (sp)
8048062c  stw    r4, 0x40F0 (r16)
80480630  li    r25, 8
80480634  li    r20, 0
80480638  lwz    r0, 0x0018 (r31)
8048063c  cmpwi    r0, 0
80480640  beq-     ->0x804807B4
80480644  b    ->0x80480694
80480648  lwz    r3, 0x0010 (r31)
8048064c  sub    r25, r25, r3
80480650  lwz    r3, 0x0008 (r31)
80480654  li    r4, 1
80480658  lwz    r5, 0x0010 (r31)
8048065c  slw    r5, r4, r5
80480660  subi    r4, r5, 1
80480664  and    r3, r3, r4
80480668  slw    r4, r3, r25
8048066c  or    r20, r20, r4
80480670  lwz    r4, 0x001C (r31)
80480674  lwz    r3, 0x0020 (r31)
80480678  addi    r0, r3, 1
8048067c  stw    r0, 0x0020 (r31)
80480680  lbzx    r3, r4, r3
80480684  extsb    r3, r3
80480688  stw    r3, 0x0008 (r31)
8048068c  li    r4, 8
80480690  stw    r4, 0x0010 (r31)
80480694  lwz    r0, 0x0010 (r31)
80480698  cmpw    r25, r0
8048069c  bgt+     ->0x80480648
804806a0  lwz    r4, 0x0010 (r31)
804806a4  sub    r3, r4, r25
804806a8  stw    r3, 0x0010 (r31)
804806ac  li    r4, 1
804806b0  slw    r4, r4, r25
804806b4  subi    r5, r4, 1
804806b8  lwz    r4, 0x0008 (r31)
804806bc  lwz    r3, 0x0010 (r31)
804806c0  srw    r6, r4, r3
804806c4  and    r0, r5, r6
804806c8  or    r5, r20, r0
804806cc  stw    r5, 0x001C (sp)
804806d0  b    ->0x804807F0
804806d4  lwz    r3, 0x0010 (r31)
804806d8  sub    r25, r25, r3
804806dc  lwz    r3, 0x0008 (r31)
804806e0  li    r4, 1
804806e4  lwz    r0, 0x0010 (r31)
804806e8  slw    r4, r4, r0
804806ec  subi    r0, r4, 1
804806f0  and    r3, r3, r0
804806f4  slw    r0, r3, r25
804806f8  or    r20, r20, r0
804806fc  lwz    r4, 0x0024 (r31)
80480700  lwz    r3, 0x0028 (r31)
80480704  cmpw    r4, r3
80480708  blt-     ->0x80480788
8048070c  addi    r3, r31, 44
80480710  lis    r4, 0x8063
80480714  addi    r4, r4, 8608
80480718  lwz    r5, -0x7F80 (r16)
8048071c  lwz    r6, -0x7F7C (r16)
80480720  li    r7, 0
80480724  bl    ->0x80522458
80480728  stw    r3, 0x0028 (r31)
8048072c  cmpwi    r3, 0
80480730  bge-     ->0x80480748
80480734  addi    r3, r31, 44
80480738  bl    ->0x80069358
8048073c  li    r5, 0
80480740  stw    r5, 0x001C (sp)
80480744  b    ->0x804807F0
80480748  li    r0, 0
8048074c  stw    r0, 0x0024 (r31)
80480750  lwz    r4, -0x7F7C (r16)
80480754  lwz    r3, 0x0028 (r31)
80480758  add    r3, r4, r3
8048075c  stw    r3, -0x7F7C (r16)
80480760  lwz    r0, -0x7F78 (r16)
80480764  lwz    r4, -0x7F7C (r16)
80480768  lwz    r3, -0x7F80 (r16)
8048076c  add    r3, r4, r3
80480770  cmpw    r0, r3
80480774  bge-     ->0x80480788
80480778  lwz    r0, -0x7F7C (r16)
8048077c  lwz    r5, -0x7F78 (r16)
80480780  sub    r3, r5, r0
80480784  stw    r3, -0x7F80 (r16)
80480788  lwz    r3, 0x0024 (r31)
8048078c  mr    r4, r3
80480790  addi    r0, r3, 1
80480794  stw    r0, 0x0024 (r31)
80480798  lis    r5, 0x8063
8048079c  addi    r3, r5, 8608
804807a0  add    r4, r3, r4
804807a4  lbz    r3, 0 (r4)
804807a8  stw    r3, 0x0008 (r31)
804807ac  li    r0, 8
804807b0  stw    r0, 0x0010 (r31)
804807b4  lwz    r5, 0x0010 (r31)
804807b8  cmpw    r25, r5
804807bc  bgt+     ->0x804806D4
804807c0  lwz    r3, 0x0010 (r31)
804807c4  sub    r4, r3, r25
804807c8  stw    r4, 0x0010 (r31)
804807cc  li    r3, 1
804807d0  slw    r3, r3, r25
804807d4  subi    r5, r3, 1
804807d8  lwz    r0, 0x0008 (r31)
804807dc  lwz    r4, 0x0010 (r31)
804807e0  srw    r3, r0, r4
804807e4  and    r3, r5, r3
804807e8  or    r0, r20, r3
804807ec  stw    r0, 0x001C (sp)
804807f0  lwz    r5, 0x40F0 (r16)
804807f4  lwz    r3, 0x001C (sp)
804807f8  rlwinm    r4, r3, 8, 0, 23 (00ffffff)
804807fc  or    r3, r5, r4
80480800  stw    r3, 0x40F0 (r16)
80480804  lwz    r0, 0x40F0 (r16)
80480808  cmplwi    r0, 0
8048080c  beq-     quit
80480810  bl    ->0x8047E904
80480814  addi    r3, r16, 200
80480818  bl    ->0x8047E6C4
8048081c  stw    r3, 0x0028 (sp)
80480820  addi    r3, r16, 220
80480824  bl    ->0x8047E6C4
80480828  mr    r4, r3
8048082c  stw    r4, 0x0024 (sp)
80480830  li    r5, 0
80480834  stw    r5, 0x002C (sp)
80480838  b    cond_loop

; Set the cursor in the root node (0x200)
start_tree_walk:
    lwz      r19, 0x0028 (sp)

; Walk through the tree to the next node.
tree_next_node:
    ; Update the mask bit for the codework.
    lwz      r4, 0x0010 (r31)
    subi     r0, r4, 1
    stw      r0, 0x0010 (r31)

    ; If have already process the full codework byte, get a new one.
    cmpwi    r0, 0
    blt-     tree_get_codework_byte

    ; Get the codework bit
    lwz      r5, 0x0008 (r31)               ; Get the current codework byte.
    lwz      r3, 0x0010 (r31)               ; Get the current mask value.
    srw      r4, r5, r3                     ; Get the current codework bit.
    rlwinm   r3, r4, 0, 31, 31 (00000001)   ; ... first a shift and now an AND.
    stw      r3, 0x000C (sp)                ; ... store the bit.
    b        tree_walk                      ; Let's walk;

tree_get_codework_byte:
    ; Refill the codework bit mask
    li       r0, 7
    stw      r0, 0x0010 (r31)

    ; If (R31+0x18) is set, get the encoded byte from (R31+0x1C)
    lwz      r3, 0x0018 (r31)
    cmpwi    r3, 0
    beq-     tree_get_codework_byte_file2

    ; Get the encoded byte from the alternative position.
tree_get_codework_byte_file1:
    lwz      r5, 0x001C (r31)
    lwz      r4, 0x0020 (r31)
    lbzx     r3, r5, r4
    addi     r3, r4, 1
    stw      r3, 0x0020 (r31)
    extsb    r0, r3
    stw      r0, 0x0008 (r31)
    b        tree_get_codework_byte_setBit

tree_get_codework_byte_file2:
    ; Check if the block is fully read.
    lwz      r0, 0x0024 (r31)
    lwz      r3, 0x0028 (r31)
    cmpw     r0, r3
    blt-     tree_get_codework_byte_read

    addi     r3, r31, 0x2C
804808b4  lis      r5, 0x8063               ; Get file pointer
804808b8  addi     r4, r5, 0x21A0           ; ...
804808bc  lwz      r5, -0x7F80 (r16)
804808c0  lwz      r6, -0x7F7C (r16)
804808c4  li       r7, 0
804808c8  bl       80522458

804808cc  stw      r3, 0x0028 (r31)
804808d0  cmpwi    r3, 0
804808d4  bge-     804808E4

804808d8  li       r4, 0
804808dc  stw      r4, 0x000C (sp)
804808e0  b        tree_walk

804808e4  li    r3, 0
804808e8  stw    r3, 0x0024 (r31)
804808ec  lwz    r3, -0x7F7C (r16)
804808f0  lwz    r0, 0x0028 (r31)
804808f4  add    r5, r3, r0
804808f8  stw    r5, -0x7F7C (r16)
804808fc  lwz    r4, -0x7F78 (r16)
80480900  lwz    r3, -0x7F7C (r16)
80480904  lwz    r0, -0x7F80 (r16)
80480908  add    r0, r3, r0
8048090c  cmpw    r4, r0
80480910  bge-     tree_get_codework_byte_read
80480914  lwz    r5, -0x7F7C (r16)
80480918  lwz    r3, -0x7F78 (r16)
8048091c  sub    r4, r3, r5
80480920  stw    r4, -0x7F80 (r16)

tree_get_codework_byte_read:
    lwz     r3, 0x0024 (r31)            ; Get current input position
    mr      r0, r3                      ; ...
    addi    r5, r3, 1                   ; Increment input position.
    stw     r5, 0x0024 (r31)            ; ...
    lis     r3, 0x8063                  ; Input file pointer.
    addi    r4, r3, 0x21A0              ; ...
    add     r3, r4, r0                  ; Read next byte.
    lbz     r0, 0 (r3)                  ; ...
    stw     r0, 0x0008 (r31)            ; and store it.

tree_get_codework_byte_setBit:
    lwz      r0, 0x0008 (r31)
    rlwinm   r3, r0, 25, 31, 31 (00000080)
    stw      r3, 0x000C (sp)

tree_walk
    ; Check the value of the codework bit.
    lwz      r4, 0x000C (sp)
    cmplwi   r4, 0
    beq-     tree_walk_toLeft

tree_walk_toRight:
    ; Get the huffman tree table.
    addi     r3, r16, 0xC8
    lwz      r5, 0x0010 (r3)

    ; The next node is at (nodeIndex * 2^4) + 12 (each nodeEntry is 16 bytes).
    rlwinm   r4, r19, 4, 0, 27 (0fffffff)
    addi     r3, r4, 12
    lwzx     r19, r5, r3
    b        tree_walk_checkIfValue

tree_walk_toLeft:
    ; Get the huffman tree table.
    addi     r5, r16, 0xC8
    lwz      r4, 0x0010 (r5)

    ; The next node is at (nodeIndex * 2^4) + 8 (each nodeEntry is 16 bytes).
    rlwinm   r3, r19, 4, 0, 27 (0fffffff)
    addi     r0, r3, 8
    lwzx     r19, r4, r0

tree_walk_checkIfValue:
    ; Check the current node index agains the root node index.
    addi     r7, r16, 0xC8
    lwz      r3, 0x0004 (r7)
    cmpw     r19, r3
    bge+     tree_next_node             ; If it's greater is not a value, jump!

    ; If it's value store.
    stw      r19, 0x0018 (sp)
    lwz      r22, 0x0018 (sp)

    ; If the node value is bigger or equal to 0x100. That is, if the decoded value would be bigger than a byte...
    ; it's not a decoded value.
    cmpwi    r22, 0x100
    bge-    0x804809E0

decode_rawByte:
    ; Store the decoded value in the next position.
    extsb   r5, r22                               ; Set decoded char
    lwz     r4, 0x40F4 (r16)                      ; Get the output file pointer.
    lwz     r6, 0x40F8 (r16)                      ; Get current position.
    stbx    r5, r4, r6                            ; Store the decoded byte in??
    addi    r3, r6, 1                             ; Increment position
    stw     r3, 0x40F8 (r16)                      ; ... and store it.

    ; Write the decoded value in the cache too.
    rlwinm  r5, r22, 0, 24, 31 (000000ff)         ; Set the value again (castings...).
    mr      r4, r23                               ; R4 = cache position.
    addi    r3, r16, 0xF0                         ; Store the decoded byte in...
    stbx    r5, r3, r4                            ; ... the cache.
    addi    r23, r23, 1                           ; Increment the cache pointer.
    rlwinm  r23, r23, 0, 18, 31 (00003fff)        ; Mask the increment
    b       incr_loop                             ; Check EOF.

804809e0
    subi    r5, r22, 253                            ; Get the number of iterations
804809e4  stw     r5, 0x0034 (sp)                         ; And store them

804809e8  lwz     r18, 0x0024 (sp)

; Consume another bit from the input
804809ec  lwz     r3, 0x0010 (r31)                        ; Get mask bit
804809f0  subi    r4, r3, 1                               ; And update it
804809f4  stw     r4, 0x0010 (r31)                        ; ...
804809f8  cmpwi   r4, 0                                   ; If there aren't more bits to consume
804809fc  blt-    0x80480A18                              ; ... load them

80480a00  lwz     r3, 0x0008 (r31)                        ; Get the current encoded byte
80480a04  lwz     r0, 0x0010 (r31)                        ; And the current mask bit
80480a08  srw     r4, r3, r0
80480a0c  rlwinm  r3, r4, 0, 31, 31 (00000001)
80480a10  stw     r3, 0x0008 (sp)
80480a14  b       0x80480B00

; Get more data
80480a18  li      r0, 7
80480a1c  stw     r0, 0x0010 (r31)
80480a20  lwz     r3, 0x0018 (r31)
80480a24  cmpwi   r3, 0
80480a28  beq-    80480A4C
; from file1
80480a2c  lwz     r4, 0x001C (r31)
80480a30  lwz     r3, 0x0020 (r31)
80480a34  addi    r0, r3, 1
80480a38  stw     r0, 0x0020 (r31)
80480a3c  lbzx    r4, r4, r3
80480a40  extsb   r3, r4
80480a44  stw     r3, 0x0008 (r31)
80480a48  b       80480AF4
; from file2
80480a4c  lwz     r0, 0x0024 (r31)
80480a50  lwz     r3, 0x0028 (r31)
80480a54  cmpw    r0, r3
80480a58  blt-    80480AD0
80480a5c  addi    r3, r31, 44
80480a60  lis     r5, 0x8063
80480a64  addi    r4, r5, 8608
80480a68  lwz     r5, -0x7F80 (r16)
80480a6c  lwz     r6, -0x7F7C (r16)
80480a70  li      r7, 0
80480a74  bl    ->0x80522458
80480a78  stw    r3, 0x0028 (r31)
80480a7c  cmpwi    r3, 0
80480a80  bge-     ->0x80480A90
80480a84  li    r4, 0
80480a88  stw    r4, 0x0008 (sp)
80480a8c  b    ->0x80480B00
80480a90  li    r3, 0
80480a94  stw    r3, 0x0024 (r31)
80480a98  lwz    r3, -0x7F7C (r16)
80480a9c  lwz    r0, 0x0028 (r31)
80480aa0  add    r0, r3, r0
80480aa4  stw    r0, -0x7F7C (r16)
80480aa8  lwz    r5, -0x7F78 (r16)
80480aac  lwz    r4, -0x7F7C (r16)
80480ab0  lwz    r3, -0x7F80 (r16)
80480ab4  add    r0, r4, r3
80480ab8  cmpw    r5, r0
80480abc  bge-     ->0x80480AD0
80480ac0  lwz    r3, -0x7F7C (r16)
80480ac4  lwz    r0, -0x7F78 (r16)
80480ac8  sub    r3, r0, r3
80480acc  stw    r3, -0x7F80 (r16)

; byte_read
80480ad0  lwz      r5, 0x0024 (r31)
80480ad4  mr       r4, r5
80480ad8  addi     r0, r5, 1
80480adc  stw      r0, 0x0024 (r31)
80480ae0  lis      r3, 0x8063
80480ae4  addi     r0, r3, 8608
80480ae8  add      r3, r0, r4
80480aec  lbz      r4, 0 (r3)
80480af0  stw      r4, 0x0008 (r31)

; set_bit
80480af4  lwz      r5, 0x0008 (r31)
80480af8  rlwinm   r3, r5, 25, 31, 31 (00000080)
80480afc  stw      r3, 0x0008 (sp)

; tree_walk
80480b00  lwz      r0, 0x0008 (sp)
80480b04  cmplwi   r0, 0
80480b08  beq-     80480B24

; toRight
80480b0c  addi     r3, r16, 0xD8 + 4
80480b10  lwz    r4, 0x0010 (r3)
80480b14  rlwinm    r3, r18, 4, 0, 27 (0fffffff)
80480b18  addi    r0, r3, 12
80480b1c  lwzx    r18, r4, r0
80480b20  b    ->0x80480B38

; toLeft
80480b24  addi    r4, r16, 0xD8 + 4
80480b28  lwz    r3, 0x0010 (r4)
80480b2c  rlwinm    r5, r18, 4, 0, 27 (0fffffff)
80480b30  addi    r4, r5, 8
80480b34  lwzx    r18, r3, r4

; checkIfValue
80480b38  addi    r3, r16, 0xD8 + 4
80480b3c  lwz    r3, 0x0004 (r3)
80480b40  cmpw    r18, r3
80480b44  bge+     ->0x804809EC

80480b48  stw    r18, 0x0014 (sp)
80480b4c  lwz    r22, 0x0014 (sp)

80480b50  mr    r27, r22
80480b54  cmpwi    r27, 0
80480b58  beq-     80480d38

; do something with it
80480b5c  subi    r24, r27, 1
80480b60  li    r17, 0
80480b64  lwz    r0, 0x0018 (r31)
80480b68  cmpwi    r0, 0
80480b6c  beq-     ->0x80480CE8
80480b70  b    ->0x80480BC4
80480b74  lwz    r0, 0x0010 (r31)
80480b78  sub    r24, r24, r0
80480b7c  lwz    r5, 0x0008 (r31)
80480b80  li    r0, 1
80480b84  lwz    r3, 0x0010 (r31)
80480b88  slw    r4, r0, r3
80480b8c  subi    r3, r4, 1
80480b90  and    r0, r5, r3
80480b94  slw    r0, r0, r24
80480b98  or    r17, r17, r0
80480b9c  lwz    r6, 0x001C (r31)
80480ba0  lwz    r3, 0x0020 (r31)
80480ba4  mr    r4, r3
80480ba8  addi    r5, r3, 1
80480bac  stw    r5, 0x0020 (r31)
80480bb0  lbzx    r4, r6, r4
80480bb4  extsb    r0, r4
80480bb8  stw    r0, 0x0008 (r31)
80480bbc  li    r3, 8
80480bc0  stw    r3, 0x0010 (r31)
80480bc4  lwz    r3, 0x0010 (r31)
80480bc8  cmpw    r24, r3
80480bcc  bgt+     ->0x80480B74
80480bd0  lwz    r4, 0x0010 (r31)
80480bd4  sub    r4, r4, r24
80480bd8  stw    r4, 0x0010 (r31)
80480bdc  li    r0, 1
80480be0  slw    r3, r0, r24
80480be4  subi    r4, r3, 1
80480be8  lwz    r3, 0x0008 (r31)
80480bec  lwz    r0, 0x0010 (r31)
80480bf0  srw    r3, r3, r0
80480bf4  and    r4, r4, r3
80480bf8  or    r3, r17, r4
80480bfc  stw    r3, 0x0010 (sp)
80480c00  b    ->0x80480D24
80480c04  lwz    r0, 0x0010 (r31)
80480c08  sub    r24, r24, r0
80480c0c  lwz    r3, 0x0008 (r31)
80480c10  li    r5, 1
80480c14  lwz    r4, 0x0010 (r31)
80480c18  slw    r4, r5, r4
80480c1c  subi    r0, r4, 1
80480c20  and    r3, r3, r0
80480c24  slw    r3, r3, r24
80480c28  or    r17, r17, r3
80480c2c  lwz    r4, 0x0024 (r31)
80480c30  lwz    r5, 0x0028 (r31)
80480c34  cmpw    r4, r5
80480c38  blt-     ->0x80480CBC
80480c3c  addi    r3, r31, 44
80480c40  lis    r5, 0x8063
80480c44  addi    r4, r5, 8608
80480c48  lwz    r5, -0x7F80 (r16)
80480c4c  lwz    r6, -0x7F7C (r16)
80480c50  li    r7, 0
80480c54  bl    ->0x80522458            ; CRASH if no more data to read
80480c58  stw    r3, 0x0028 (r31)
80480c5c  cmpwi    r3, 0
80480c60  bge-     ->0x80480C7C
80480c64  addi    r3, r31, 44
80480c68  bl    ->0x80069358
80480c6c  mr    r4, r3
80480c70  li    r4, 0
80480c74  stw    r4, 0x0010 (sp)
80480c78  b    ->0x80480D24
80480c7c  li    r3, 0
80480c80  stw    r3, 0x0024 (r31)
80480c84  lwz    r3, -0x7F7C (r16)
80480c88  lwz    r0, 0x0028 (r31)
80480c8c  add    r3, r3, r0
80480c90  stw    r3, -0x7F7C (r16)
80480c94  lwz    r3, -0x7F78 (r16)
80480c98  lwz    r4, -0x7F7C (r16)
80480c9c  lwz    r0, -0x7F80 (r16)
80480ca0  add    r4, r4, r0
80480ca4  cmpw    r3, r4
80480ca8  bge-     ->0x80480CBC
80480cac  lwz    r3, -0x7F7C (r16)
80480cb0  lwz    r4, -0x7F78 (r16)
80480cb4  sub    r4, r4, r3
80480cb8  stw    r4, -0x7F80 (r16)
80480cbc  lwz    r5, 0x0024 (r31)
80480cc0  mr    r4, r5
80480cc4  addi    r3, r5, 1
80480cc8  stw    r3, 0x0024 (r31)
80480ccc  lis    r6, 0x8063
80480cd0  addi    r0, r6, 8608
80480cd4  add    r5, r0, r4
80480cd8  lbz    r3, 0 (r5)
80480cdc  stw    r3, 0x0008 (r31)
80480ce0  li    r3, 8
80480ce4  stw    r3, 0x0010 (r31)
80480ce8  lwz    r4, 0x0010 (r31)
80480cec  cmpw    r24, r4
80480cf0  bgt+     ->0x80480C04
80480cf4  lwz    r0, 0x0010 (r31)
80480cf8  sub    r4, r0, r24
80480cfc  stw    r4, 0x0010 (r31)
80480d00  li    r0, 1
80480d04  slw    r3, r0, r24
80480d08  subi    r0, r3, 1
80480d0c  lwz    r4, 0x0008 (r31)
80480d10  lwz    r3, 0x0010 (r31)
80480d14  srw    r4, r4, r3
80480d18  and    r4, r0, r4
80480d1c  or    r3, r17, r4
80480d20  stw    r3, 0x0010 (sp)
80480d24  li    r3, 1
80480d28  subi    r5, r27, 1
80480d2c  slw    r0, r3, r5
80480d30  lwz    r4, 0x0010 (sp)
80480d34  add    r27, r0, r4

80480d38
    sub    r3, r23, r27
80480d3c  subi    r3, r3, 1
80480d40  rlwinm    r27, r3, 0, 18, 31 (00003fff)
80480d44  b       80480d98

80480d48  mr      r0, r27
80480d4c  addi    r27, r27, 1
80480d50  addi    r4, r16, 0xF0
80480d54  lbzx    r3, r4, r0
80480d58  stw     r3, 0x0030 (sp)

    ; Store decoded value in the output file
    lwz     r3, 0x0030 (sp)                     ; Get the decoded value, this should be because an inline function.
    extsb   r0, r3                              ; ..
    lwz     r5, 0x40F4 (r16)                    ; Get output file pointer
    lwz     r3, 0x40F8 (r16)                    ; Get current decoded position.
    stbx    r0, r5, r3                          ; Store the decoded byte in the output file.
    addi    r4, r3, 1                           ; Increment output position.
    stw     r4, 0x40F8 (r16)                    ; ...

    ; Update a node value (Adaptive Huffman)
    lwz     r0, 0x0030 (sp)                     ; Get the decoded value.
    rlwinm  r5, r0, 0, 24, 31 (000000ff)        ; Apply 0xFF AND mask (get a byte).
    mr      r3, r23                             ; Move X
    addi    r4, r16, 0xF0
    stbx    r5, r4, r3
    addi    r23, r23, 1                         ; Increment X
    rlwinm  r23, r23, 0, 18, 31 (00003fff)      ; Make sure R23 is not bigger than 2^14
    rlwinm  r27, r27, 0, 18, 31 (00003fff)      ; Make sure R27 is not bigger than 2^14

; Check loop counter and decrement it
80480d98
    lwz     r3, 0x0034 (sp)
    subi    r0, r3, 1
    stw     r0, 0x0034 (sp)
    cmpwi   r0, 0
    bge+    80480D48

incr_loop:
    ; Increment
    lwz     r5, 0x002C (sp)
    addi    r3, r5, 1
    stw     r3, 0x002C (sp)

cond_loop:
    ; Compare  to other thing.
    lwz     r4, 0x002C (sp)
    lwz     r3, 0x40F0 (r16)
    cmplw   r4, r3
    blt+    start_tree_walk                 ; If less continue
    b       0x80480468                      ; Otherwise

quit:
    addi    r11, sp, 128
    bl    ->0x80049DD8
    lwz    r0, 0x0084 (sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr
