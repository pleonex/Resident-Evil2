
8047feb8 0 zz_decrypt_               stwu	sp, -0x0080 (sp)
8047febc 0 zz_decrypt_               mflr	r0
8047fec0 0 zz_decrypt_               stw	r0, 0x0084 (sp)
8047fec4 0 zz_decrypt_               addi	r11, sp, 128
8047fec8 0 zz_decrypt_               bl	->0x80049D8C
8047fecc 0 zz_decrypt_               lis	r3, 0x8063
8047fed0 0 zz_decrypt_               addi	r31, r3, 8480
8047fed4 0 zz_decrypt_               addis	r16, r31, 1
8047fed8 0 zz_decrypt_               li	r5, 8
8047fedc 0 zz_decrypt_               stw	r5, 0x00B4 (r16)
8047fee0 0 zz_decrypt_               li	r3, 16
8047fee4 0 zz_decrypt_               addi	r4, r16, 180
8047fee8 0 zz_decrypt_               stw	r3, 0x0004 (r4)
8047feec 0 zz_decrypt_               lwz	r3, 0x008C (r16)
8047fef0 0 zz_decrypt_               subi	r0, r16, 32628
8047fef4 0 zz_decrypt_               add	r5, r0, r3
8047fef8 0 zz_decrypt_               addi	r3, r16, 180
8047fefc 0 zz_decrypt_               stw	r5, 0x0010 (r3)
8047ff00 0 zz_decrypt_               lwz	r4, 0x008C (r16)
8047ff04 0 zz_decrypt_               addi	r3, r16, 180
8047ff08 0 zz_decrypt_               lwz	r0, 0x0004 (r3)
8047ff0c 0 zz_decrypt_               rlwinm	r0, r0, 1, 0, 30 (7fffffff)
8047ff10 0 zz_decrypt_               rlwinm	r3, r0, 4, 0, 27 (0fffffff)
8047ff14 0 zz_decrypt_               add	r4, r4, r3
8047ff18 0 zz_decrypt_               stw	r4, 0x008C (r16)
8047ff1c 0 zz_decrypt_               lwz	r3, 0x008C (r16)
8047ff20 0 zz_decrypt_               subi	r5, r16, 32628
8047ff24 0 zz_decrypt_               add	r4, r5, r3
8047ff28 0 zz_decrypt_               addi	r3, r16, 180
8047ff2c 0 zz_decrypt_               stw	r4, 0x000C (r3)
8047ff30 0 zz_decrypt_               lwz	r5, 0x008C (r16)
8047ff34 0 zz_decrypt_               addi	r4, r16, 180
8047ff38 0 zz_decrypt_               lwz	r3, 0x0004 (r4)
8047ff3c 0 zz_decrypt_               rlwinm	r0, r3, 3, 0, 28 (1fffffff)
8047ff40 0 zz_decrypt_               add	r7, r5, r0
8047ff44 0 zz_decrypt_               stw	r7, 0x008C (r16)
8047ff48 0 zz_decrypt_               lwz	r3, 0x008C (r16)
8047ff4c 0 zz_decrypt_               subi	r5, r16, 32628
8047ff50 0 zz_decrypt_               add	r4, r5, r3
8047ff54 0 zz_decrypt_               addi	r6, r16, 180
8047ff58 0 zz_decrypt_               stw	r4, 0x0008 (r6)
8047ff5c 0 zz_decrypt_               lwz	r6, 0x008C (r16)
8047ff60 0 zz_decrypt_               addi	r3, r16, 180
8047ff64 0 zz_decrypt_               lwz	r5, 0x0004 (r3)
8047ff68 0 zz_decrypt_               rlwinm	r4, r5, 2, 0, 29 (3fffffff)
8047ff6c 0 zz_decrypt_               add	r3, r6, r4
8047ff70 0 zz_decrypt_               stw	r3, 0x008C (r16)
8047ff74 0 zz_decrypt_               li	r5, 8
8047ff78 0 zz_decrypt_               stw	r5, 0x00C8 (r16)
8047ff7c 0 zz_decrypt_               li	r3, 512
8047ff80 0 zz_decrypt_               addi	r4, r16, 200
8047ff84 0 zz_decrypt_               stw	r3, 0x0004 (r4)
8047ff88 0 zz_decrypt_               lwz	r3, 0x008C (r16)
8047ff8c 0 zz_decrypt_               subi	r0, r16, 32628
8047ff90 0 zz_decrypt_               add	r4, r0, r3
8047ff94 0 zz_decrypt_               addi	r3, r16, 200
8047ff98 0 zz_decrypt_               stw	r4, 0x0010 (r3)
8047ff9c 0 zz_decrypt_               lwz	r0, 0x008C (r16)
8047ffa0 0 zz_decrypt_               addi	r3, r16, 200
8047ffa4 0 zz_decrypt_               lwz	r4, 0x0004 (r3)
8047ffa8 0 zz_decrypt_               rlwinm	r3, r4, 1, 0, 30 (7fffffff)
8047ffac 0 zz_decrypt_               rlwinm	r3, r3, 4, 0, 27 (0fffffff)
8047ffb0 0 zz_decrypt_               add	r0, r0, r3
8047ffb4 0 zz_decrypt_               stw	r0, 0x008C (r16)
8047ffb8 0 zz_decrypt_               lwz	r4, 0x008C (r16)
8047ffbc 0 zz_decrypt_               subi	r3, r16, 32628
8047ffc0 0 zz_decrypt_               add	r0, r3, r4
8047ffc4 0 zz_decrypt_               addi	r3, r16, 200
8047ffc8 0 zz_decrypt_               stw	r0, 0x000C (r3)
8047ffcc 0 zz_decrypt_               lwz	r5, 0x008C (r16)
8047ffd0 0 zz_decrypt_               addi	r4, r16, 200
8047ffd4 0 zz_decrypt_               lwz	r3, 0x0004 (r4)
8047ffd8 0 zz_decrypt_               rlwinm	r4, r3, 3, 0, 28 (1fffffff)
8047ffdc 0 zz_decrypt_               add	r3, r5, r4
8047ffe0 0 zz_decrypt_               stw	r3, 0x008C (r16)
8047ffe4 0 zz_decrypt_               lwz	r3, 0x008C (r16)
8047ffe8 0 zz_decrypt_               subi	r0, r16, 32628
8047ffec 0 zz_decrypt_               add	r0, r0, r3
8047fff0 0 zz_decrypt_               addi	r5, r16, 200
8047fff4 0 zz_decrypt_               stw	r0, 0x0008 (r5)
8047fff8 0 zz_decrypt_               lwz	r4, 0x008C (r16)
8047fffc 0 zz_decrypt_               addi	r3, r16, 200
80480000 0 zz_decrypt_               lwz	r0, 0x0004 (r3)
80480004 0 zz_decrypt_               rlwinm	r3, r0, 2, 0, 29 (3fffffff)
80480008 0 zz_decrypt_               add	r0, r4, r3
8048000c 0 zz_decrypt_               stw	r0, 0x008C (r16)
80480010 0 zz_decrypt_               li	r3, 8
80480014 0 zz_decrypt_               stw	r3, 0x00DC (r16)
80480018 0 zz_decrypt_               li	r5, 16
8048001c 0 zz_decrypt_               addi	r4, r16, 220
80480020 0 zz_decrypt_               stw	r5, 0x0004 (r4)
80480024 0 zz_decrypt_               lwz	r0, 0x008C (r16)
80480028 0 zz_decrypt_               subi	r3, r16, 32628
8048002c 0 zz_decrypt_               add	r0, r3, r0
80480030 0 zz_decrypt_               addi	r3, r16, 220
80480034 0 zz_decrypt_               stw	r0, 0x0010 (r3)
80480038 0 zz_decrypt_               lwz	r4, 0x008C (r16)
8048003c 0 zz_decrypt_               addi	r5, r16, 220
80480040 0 zz_decrypt_               lwz	r3, 0x0004 (r5)
80480044 0 zz_decrypt_               rlwinm	r0, r3, 1, 0, 30 (7fffffff)
80480048 0 zz_decrypt_               rlwinm	r3, r0, 4, 0, 27 (0fffffff)
8048004c 0 zz_decrypt_               add	r4, r4, r3
80480050 0 zz_decrypt_               stw	r4, 0x008C (r16)
80480054 0 zz_decrypt_               lwz	r3, 0x008C (r16)
80480058 0 zz_decrypt_               subi	r0, r16, 32628
8048005c 0 zz_decrypt_               add	r4, r0, r3
80480060 0 zz_decrypt_               addi	r3, r16, 220
80480064 0 zz_decrypt_               stw	r4, 0x000C (r3)
80480068 0 zz_decrypt_               lwz	r5, 0x008C (r16)
8048006c 0 zz_decrypt_               addi	r4, r16, 220
80480070 0 zz_decrypt_               lwz	r3, 0x0004 (r4)
80480074 0 zz_decrypt_               rlwinm	r3, r3, 3, 0, 28 (1fffffff)
80480078 0 zz_decrypt_               add	r0, r5, r3
8048007c 0 zz_decrypt_               stw	r0, 0x008C (r16)
80480080 0 zz_decrypt_               lwz	r0, 0x008C (r16)
80480084 0 zz_decrypt_               subi	r5, r16, 32628
80480088 0 zz_decrypt_               add	r0, r5, r0
8048008c 0 zz_decrypt_               addi	r3, r16, 220
80480090 0 zz_decrypt_               stw	r0, 0x0008 (r3)
80480094 0 zz_decrypt_               lwz	r4, 0x008C (r16)
80480098 0 zz_decrypt_               addi	r3, r16, 220
8048009c 0 zz_decrypt_               lwz	r0, 0x0004 (r3)
804800a0 0 zz_decrypt_               rlwinm	r0, r0, 2, 0, 29 (3fffffff)
804800a4 0 zz_decrypt_               add	r6, r4, r0
804800a8 0 zz_decrypt_               stw	r6, 0x008C (r16)
804800ac 0 zz_decrypt_               li	r30, 0
804800b0 0 zz_decrypt_               b	->0x80480154
804800b4 0 zz_decrypt_               li	r3, 0
804800b8 0 zz_decrypt_               addi	r4, r16, 180
804800bc 0 zz_decrypt_               lwz	r5, 0x0008 (r4)
804800c0 0 zz_decrypt_               rlwinm	r4, r30, 2, 0, 29 (3fffffff)
804800c4 0 zz_decrypt_               stwx	r3, r5, r4
804800c8 0 zz_decrypt_               li	r0, 0
804800cc 0 zz_decrypt_               addi	r3, r16, 180
804800d0 0 zz_decrypt_               lwz	r3, 0x000C (r3)
804800d4 0 zz_decrypt_               rlwinm	r4, r30, 3, 0, 28 (1fffffff)
804800d8 0 zz_decrypt_               addi	r4, r4, 4
804800dc 0 zz_decrypt_               stwx	r0, r3, r4
804800e0 0 zz_decrypt_               li	r0, 0
804800e4 0 zz_decrypt_               addi	r3, r16, 180
804800e8 0 zz_decrypt_               lwz	r4, 0x000C (r3)
804800ec 0 zz_decrypt_               rlwinm	r3, r30, 3, 0, 28 (1fffffff)
804800f0 0 zz_decrypt_               stwx	r0, r4, r3
804800f4 0 zz_decrypt_               li	r0, 0
804800f8 0 zz_decrypt_               addi	r3, r16, 180
804800fc 0 zz_decrypt_               lwz	r4, 0x0010 (r3)
80480100 0 zz_decrypt_               rlwinm	r3, r30, 4, 0, 27 (0fffffff)
80480104 0 zz_decrypt_               stwx	r0, r4, r3
80480108 0 zz_decrypt_               li	r0, -1
8048010c 0 zz_decrypt_               addi	r3, r16, 180
80480110 0 zz_decrypt_               lwz	r5, 0x0010 (r3)
80480114 0 zz_decrypt_               rlwinm	r4, r30, 4, 0, 27 (0fffffff)
80480118 0 zz_decrypt_               addi	r4, r4, 8
8048011c 0 zz_decrypt_               stwx	r0, r5, r4
80480120 0 zz_decrypt_               li	r0, -1
80480124 0 zz_decrypt_               addi	r3, r16, 180
80480128 0 zz_decrypt_               lwz	r3, 0x0010 (r3)
8048012c 0 zz_decrypt_               rlwinm	r4, r30, 4, 0, 27 (0fffffff)
80480130 0 zz_decrypt_               addi	r5, r4, 12
80480134 0 zz_decrypt_               stwx	r0, r3, r5
80480138 0 zz_decrypt_               li	r5, -1
8048013c 0 zz_decrypt_               addi	r4, r16, 180
80480140 0 zz_decrypt_               lwz	r3, 0x0010 (r4)
80480144 0 zz_decrypt_               rlwinm	r4, r30, 4, 0, 27 (0fffffff)
80480148 0 zz_decrypt_               addi	r4, r4, 4
8048014c 0 zz_decrypt_               stwx	r5, r3, r4
80480150 0 zz_decrypt_               addi	r30, r30, 1
80480154 0 zz_decrypt_               addi	r3, r16, 180
80480158 0 zz_decrypt_               lwz	r3, 0x0004 (r3)
8048015c 0 zz_decrypt_               cmplw	r30, r3
80480160 0 zz_decrypt_               blt+	 ->0x804800B4
80480164 0 zz_decrypt_               b	->0x804801C8
80480168 0 zz_decrypt_               li	r0, 0
8048016c 0 zz_decrypt_               addi	r3, r16, 180
80480170 0 zz_decrypt_               lwz	r3, 0x0010 (r3)
80480174 0 zz_decrypt_               rlwinm	r4, r30, 4, 0, 27 (0fffffff)
80480178 0 zz_decrypt_               stwx	r0, r3, r4
8048017c 0 zz_decrypt_               li	r0, -1
80480180 0 zz_decrypt_               addi	r4, r16, 180
80480184 0 zz_decrypt_               lwz	r3, 0x0010 (r4)
80480188 0 zz_decrypt_               rlwinm	r4, r30, 4, 0, 27 (0fffffff)
8048018c 0 zz_decrypt_               addi	r4, r4, 8
80480190 0 zz_decrypt_               stwx	r0, r3, r4
80480194 0 zz_decrypt_               li	r5, -1
80480198 0 zz_decrypt_               addi	r4, r16, 180
8048019c 0 zz_decrypt_               lwz	r3, 0x0010 (r4)
804801a0 0 zz_decrypt_               rlwinm	r6, r30, 4, 0, 27 (0fffffff)
804801a4 0 zz_decrypt_               addi	r0, r6, 12
804801a8 0 zz_decrypt_               stwx	r5, r3, r0
804801ac 0 zz_decrypt_               li	r5, -1
804801b0 0 zz_decrypt_               addi	r3, r16, 180
804801b4 0 zz_decrypt_               lwz	r3, 0x0010 (r3)
804801b8 0 zz_decrypt_               rlwinm	r4, r30, 4, 0, 27 (0fffffff)
804801bc 0 zz_decrypt_               addi	r0, r4, 4
804801c0 0 zz_decrypt_               stwx	r5, r3, r0
804801c4 0 zz_decrypt_               addi	r30, r30, 1
804801c8 0 zz_decrypt_               addi	r4, r16, 180
804801cc 0 zz_decrypt_               lwz	r0, 0x0004 (r4)
804801d0 0 zz_decrypt_               rlwinm	r3, r0, 1, 0, 30 (7fffffff)
804801d4 0 zz_decrypt_               cmplw	r30, r3
804801d8 0 zz_decrypt_               blt+	 ->0x80480168
804801dc 0 zz_decrypt_               li	r29, 0
804801e0 0 zz_decrypt_               b	->0x80480284
804801e4 0 zz_decrypt_               li	r0, 0
804801e8 0 zz_decrypt_               addi	r4, r16, 200
804801ec 0 zz_decrypt_               lwz	r3, 0x0008 (r4)
804801f0 0 zz_decrypt_               rlwinm	r4, r29, 2, 0, 29 (3fffffff)
804801f4 0 zz_decrypt_               stwx	r0, r3, r4
804801f8 0 zz_decrypt_               li	r4, 0
804801fc 0 zz_decrypt_               addi	r3, r16, 200
80480200 0 zz_decrypt_               lwz	r3, 0x000C (r3)
80480204 0 zz_decrypt_               rlwinm	r5, r29, 3, 0, 28 (1fffffff)
80480208 0 zz_decrypt_               addi	r0, r5, 4
8048020c 0 zz_decrypt_               stwx	r4, r3, r0
80480210 0 zz_decrypt_               li	r4, 0
80480214 0 zz_decrypt_               addi	r3, r16, 200
80480218 0 zz_decrypt_               lwz	r3, 0x000C (r3)
8048021c 0 zz_decrypt_               rlwinm	r0, r29, 3, 0, 28 (1fffffff)
80480220 0 zz_decrypt_               stwx	r4, r3, r0
80480224 0 zz_decrypt_               li	r4, 0
80480228 0 zz_decrypt_               addi	r3, r16, 200
8048022c 0 zz_decrypt_               lwz	r3, 0x0010 (r3)
80480230 0 zz_decrypt_               rlwinm	r0, r29, 4, 0, 27 (0fffffff)
80480234 0 zz_decrypt_               stwx	r4, r3, r0
80480238 0 zz_decrypt_               li	r5, -1
8048023c 0 zz_decrypt_               addi	r3, r16, 200
80480240 0 zz_decrypt_               lwz	r3, 0x0010 (r3)
80480244 0 zz_decrypt_               rlwinm	r4, r29, 4, 0, 27 (0fffffff)
80480248 0 zz_decrypt_               addi	r0, r4, 8
8048024c 0 zz_decrypt_               stwx	r5, r3, r0
80480250 0 zz_decrypt_               li	r5, -1
80480254 0 zz_decrypt_               addi	r3, r16, 200
80480258 0 zz_decrypt_               lwz	r4, 0x0010 (r3)
8048025c 0 zz_decrypt_               rlwinm	r3, r29, 4, 0, 27 (0fffffff)
80480260 0 zz_decrypt_               addi	r0, r3, 12
80480264 0 zz_decrypt_               stwx	r5, r4, r0
80480268 0 zz_decrypt_               li	r5, -1
8048026c 0 zz_decrypt_               addi	r3, r16, 200
80480270 0 zz_decrypt_               lwz	r4, 0x0010 (r3)
80480274 0 zz_decrypt_               rlwinm	r3, r29, 4, 0, 27 (0fffffff)
80480278 0 zz_decrypt_               addi	r3, r3, 4
8048027c 0 zz_decrypt_               stwx	r5, r4, r3
80480280 0 zz_decrypt_               addi	r29, r29, 1
80480284 0 zz_decrypt_               addi	r5, r16, 200
80480288 0 zz_decrypt_               lwz	r0, 0x0004 (r5)
8048028c 0 zz_decrypt_               cmplw	r29, r0
80480290 0 zz_decrypt_               blt+	 ->0x804801E4
80480294 0 zz_decrypt_               b	->0x804802F8
80480298 0 zz_decrypt_               li	r4, 0
8048029c 0 zz_decrypt_               addi	r3, r16, 200
804802a0 0 zz_decrypt_               lwz	r3, 0x0010 (r3)
804802a4 0 zz_decrypt_               rlwinm	r0, r29, 4, 0, 27 (0fffffff)
804802a8 0 zz_decrypt_               stwx	r4, r3, r0
804802ac 0 zz_decrypt_               li	r5, -1
804802b0 0 zz_decrypt_               addi	r3, r16, 200
804802b4 0 zz_decrypt_               lwz	r4, 0x0010 (r3)
804802b8 0 zz_decrypt_               rlwinm	r3, r29, 4, 0, 27 (0fffffff)
804802bc 0 zz_decrypt_               addi	r0, r3, 8
804802c0 0 zz_decrypt_               stwx	r5, r4, r0
804802c4 0 zz_decrypt_               li	r3, -1
804802c8 0 zz_decrypt_               addi	r4, r16, 200
804802cc 0 zz_decrypt_               lwz	r5, 0x0010 (r4)
804802d0 0 zz_decrypt_               rlwinm	r4, r29, 4, 0, 27 (0fffffff)
804802d4 0 zz_decrypt_               addi	r0, r4, 12
804802d8 0 zz_decrypt_               stwx	r3, r5, r0
804802dc 0 zz_decrypt_               li	r5, -1
804802e0 0 zz_decrypt_               addi	r3, r16, 200
804802e4 0 zz_decrypt_               lwz	r4, 0x0010 (r3)
804802e8 0 zz_decrypt_               rlwinm	r3, r29, 4, 0, 27 (0fffffff)
804802ec 0 zz_decrypt_               addi	r0, r3, 4
804802f0 0 zz_decrypt_               stwx	r5, r4, r0
804802f4 0 zz_decrypt_               addi	r29, r29, 1
804802f8 0 zz_decrypt_               addi	r3, r16, 200
804802fc 0 zz_decrypt_               lwz	r5, 0x0004 (r3)
80480300 0 zz_decrypt_               rlwinm	r4, r5, 1, 0, 30 (7fffffff)
80480304 0 zz_decrypt_               cmplw	r29, r4
80480308 0 zz_decrypt_               blt+	 ->0x80480298
8048030c 0 zz_decrypt_               li	r28, 0
80480310 0 zz_decrypt_               b	->0x804803B4
80480314 0 zz_decrypt_               li	r4, 0
80480318 0 zz_decrypt_               addi	r3, r16, 220
8048031c 0 zz_decrypt_               lwz	r3, 0x0008 (r3)
80480320 0 zz_decrypt_               rlwinm	r0, r28, 2, 0, 29 (3fffffff)
80480324 0 zz_decrypt_               stwx	r4, r3, r0
80480328 0 zz_decrypt_               li	r0, 0
8048032c 0 zz_decrypt_               addi	r3, r16, 220
80480330 0 zz_decrypt_               lwz	r5, 0x000C (r3)
80480334 0 zz_decrypt_               rlwinm	r4, r28, 3, 0, 28 (1fffffff)
80480338 0 zz_decrypt_               addi	r3, r4, 4
8048033c 0 zz_decrypt_               stwx	r0, r5, r3
80480340 0 zz_decrypt_               li	r4, 0
80480344 0 zz_decrypt_               addi	r3, r16, 220
80480348 0 zz_decrypt_               lwz	r3, 0x000C (r3)
8048034c 0 zz_decrypt_               rlwinm	r0, r28, 3, 0, 28 (1fffffff)
80480350 0 zz_decrypt_               stwx	r4, r3, r0
80480354 0 zz_decrypt_               li	r5, 0
80480358 0 zz_decrypt_               addi	r4, r16, 220
8048035c 0 zz_decrypt_               lwz	r3, 0x0010 (r4)
80480360 0 zz_decrypt_               rlwinm	r0, r28, 4, 0, 27 (0fffffff)
80480364 0 zz_decrypt_               stwx	r5, r3, r0
80480368 0 zz_decrypt_               li	r5, -1
8048036c 0 zz_decrypt_               addi	r3, r16, 220
80480370 0 zz_decrypt_               lwz	r4, 0x0010 (r3)
80480374 0 zz_decrypt_               rlwinm	r3, r28, 4, 0, 27 (0fffffff)
80480378 0 zz_decrypt_               addi	r0, r3, 8
8048037c 0 zz_decrypt_               stwx	r5, r4, r0
80480380 0 zz_decrypt_               li	r5, -1
80480384 0 zz_decrypt_               addi	r3, r16, 220
80480388 0 zz_decrypt_               lwz	r4, 0x0010 (r3)
8048038c 0 zz_decrypt_               rlwinm	r3, r28, 4, 0, 27 (0fffffff)
80480390 0 zz_decrypt_               addi	r0, r3, 12
80480394 0 zz_decrypt_               stwx	r5, r4, r0
80480398 0 zz_decrypt_               li	r0, -1
8048039c 0 zz_decrypt_               addi	r3, r16, 220
804803a0 0 zz_decrypt_               lwz	r4, 0x0010 (r3)
804803a4 0 zz_decrypt_               rlwinm	r3, r28, 4, 0, 27 (0fffffff)
804803a8 0 zz_decrypt_               addi	r5, r3, 4
804803ac 0 zz_decrypt_               stwx	r0, r4, r5
804803b0 0 zz_decrypt_               addi	r28, r28, 1
804803b4 0 zz_decrypt_               addi	r4, r16, 220
804803b8 0 zz_decrypt_               lwz	r3, 0x0004 (r4)
804803bc 0 zz_decrypt_               cmplw	r28, r3
804803c0 0 zz_decrypt_               blt+	 ->0x80480314
804803c4 0 zz_decrypt_               b	->0x80480428
804803c8 0 zz_decrypt_               li	r5, 0
804803cc 0 zz_decrypt_               addi	r4, r16, 220
804803d0 0 zz_decrypt_               lwz	r3, 0x0010 (r4)
804803d4 0 zz_decrypt_               rlwinm	r0, r28, 4, 0, 27 (0fffffff)
804803d8 0 zz_decrypt_               stwx	r5, r3, r0
804803dc 0 zz_decrypt_               li	r7, -1
804803e0 0 zz_decrypt_               addi	r3, r16, 220
804803e4 0 zz_decrypt_               lwz	r5, 0x0010 (r3)
804803e8 0 zz_decrypt_               rlwinm	r4, r28, 4, 0, 27 (0fffffff)
804803ec 0 zz_decrypt_               addi	r6, r4, 8
804803f0 0 zz_decrypt_               stwx	r7, r5, r6
804803f4 0 zz_decrypt_               li	r6, -1
804803f8 0 zz_decrypt_               addi	r3, r16, 220
804803fc 0 zz_decrypt_               lwz	r5, 0x0010 (r3)
80480400 0 zz_decrypt_               rlwinm	r4, r28, 4, 0, 27 (0fffffff)
80480404 0 zz_decrypt_               addi	r3, r4, 12
80480408 0 zz_decrypt_               stwx	r6, r5, r3
8048040c 0 zz_decrypt_               li	r5, -1
80480410 0 zz_decrypt_               addi	r3, r16, 220
80480414 0 zz_decrypt_               lwz	r4, 0x0010 (r3)
80480418 0 zz_decrypt_               rlwinm	r3, r28, 4, 0, 27 (0fffffff)
8048041c 0 zz_decrypt_               addi	r0, r3, 4
80480420 0 zz_decrypt_               stwx	r5, r4, r0
80480424 0 zz_decrypt_               addi	r28, r28, 1
80480428 0 zz_decrypt_               addi	r4, r16, 220
8048042c 0 zz_decrypt_               lwz	r3, 0x0004 (r4)
80480430 0 zz_decrypt_               rlwinm	r0, r3, 1, 0, 30 (7fffffff)
80480434 0 zz_decrypt_               cmplw	r28, r0
80480438 0 zz_decrypt_               blt+	 ->0x804803C8
8048043c 0 zz_decrypt_               li	r27, 0
80480440 0 zz_decrypt_               b	->0x80480454
80480444 0 zz_decrypt_               li	r3, 0
80480448 0 zz_decrypt_               addi	r4, r16, 240
8048044c 0 zz_decrypt_               stbx	r3, r4, r27
80480450 0 zz_decrypt_               addi	r27, r27, 1
80480454 0 zz_decrypt_               cmplwi	r27, 16384
80480458 0 zz_decrypt_               blt+	 ->0x80480444
8048045c 0 zz_decrypt_               li	r3, 0
80480460 0 zz_decrypt_               stw	r3, 0x0034 (sp)
80480464 0 zz_decrypt_               li	r23, 0
80480468 0 zz_decrypt_               li	r26, 8
8048046c 0 zz_decrypt_               li	r21, 0
80480470 0 zz_decrypt_               lwz	r3, 0x0018 (r31)
80480474 0 zz_decrypt_               cmpwi	r3, 0
80480478 0 zz_decrypt_               beq-	 ->0x804805EC
8048047c 0 zz_decrypt_               b	->0x804804CC
80480480 0 zz_decrypt_               lwz	r0, 0x0010 (r31)
80480484 0 zz_decrypt_               sub	r26, r26, r0
80480488 0 zz_decrypt_               lwz	r4, 0x0008 (r31)
8048048c 0 zz_decrypt_               li	r3, 1
80480490 0 zz_decrypt_               lwz	r0, 0x0010 (r31)
80480494 0 zz_decrypt_               slw	r3, r3, r0
80480498 0 zz_decrypt_               subi	r5, r3, 1
8048049c 0 zz_decrypt_               and	r4, r4, r5
804804a0 0 zz_decrypt_               slw	r3, r4, r26
804804a4 0 zz_decrypt_               or	r21, r21, r3
804804a8 0 zz_decrypt_               lwz	r4, 0x001C (r31)
804804ac 0 zz_decrypt_               lwz	r3, 0x0020 (r31)
804804b0 0 zz_decrypt_               addi	r0, r3, 1
804804b4 0 zz_decrypt_               stw	r0, 0x0020 (r31)
804804b8 0 zz_decrypt_               lbzx	r0, r4, r3
804804bc 0 zz_decrypt_               extsb	r5, r0
804804c0 0 zz_decrypt_               stw	r5, 0x0008 (r31)
804804c4 0 zz_decrypt_               li	r4, 8
804804c8 0 zz_decrypt_               stw	r4, 0x0010 (r31)
804804cc 0 zz_decrypt_               lwz	r3, 0x0010 (r31)
804804d0 0 zz_decrypt_               cmpw	r26, r3
804804d4 0 zz_decrypt_               bgt+	 ->0x80480480
804804d8 0 zz_decrypt_               lwz	r0, 0x0010 (r31)
804804dc 0 zz_decrypt_               sub	r3, r0, r26
804804e0 0 zz_decrypt_               stw	r3, 0x0010 (r31)
804804e4 0 zz_decrypt_               li	r0, 1
804804e8 0 zz_decrypt_               slw	r3, r0, r26
804804ec 0 zz_decrypt_               subi	r5, r3, 1
804804f0 0 zz_decrypt_               lwz	r4, 0x0008 (r31)
804804f4 0 zz_decrypt_               lwz	r0, 0x0010 (r31)
804804f8 0 zz_decrypt_               srw	r3, r4, r0
804804fc 0 zz_decrypt_               and	r0, r5, r3
80480500 0 zz_decrypt_               or	r3, r21, r0
80480504 0 zz_decrypt_               stw	r3, 0x0020 (sp)
80480508 0 zz_decrypt_               b	->0x80480628
8048050c 0 zz_decrypt_               lwz	r4, 0x0010 (r31)
80480510 0 zz_decrypt_               sub	r26, r26, r4
80480514 0 zz_decrypt_               lwz	r5, 0x0008 (r31)
80480518 0 zz_decrypt_               li	r3, 1
8048051c 0 zz_decrypt_               lwz	r0, 0x0010 (r31)
80480520 0 zz_decrypt_               slw	r3, r3, r0
80480524 0 zz_decrypt_               subi	r4, r3, 1
80480528 0 zz_decrypt_               and	r3, r5, r4
8048052c 0 zz_decrypt_               slw	r0, r3, r26
80480530 0 zz_decrypt_               or	r21, r21, r0
80480534 0 zz_decrypt_               lwz	r4, 0x0024 (r31)
80480538 0 zz_decrypt_               lwz	r3, 0x0028 (r31)
8048053c 0 zz_decrypt_               cmpw	r4, r3
80480540 0 zz_decrypt_               blt-	 ->0x804805C0
80480544 0 zz_decrypt_               addi	r3, r31, 44
80480548 0 zz_decrypt_               lis	r5, 0x8063
8048054c 0 zz_decrypt_               addi	r4, r5, 8608
80480550 0 zz_decrypt_               lwz	r5, -0x7F80 (r16)
80480554 0 zz_decrypt_               lwz	r6, -0x7F7C (r16)
80480558 0 zz_decrypt_               li	r7, 0
8048055c 0 zz_decrypt_               bl	->0x80522458
80480560 0 zz_decrypt_               stw	r3, 0x0028 (r31)
80480564 0 zz_decrypt_               cmpwi	r3, 0
80480568 0 zz_decrypt_               bge-	 ->0x80480580
8048056c 0 zz_decrypt_               addi	r3, r31, 44
80480570 0 zz_decrypt_               bl	->0x80069358
80480574 0 zz_decrypt_               li	r0, 0
80480578 0 zz_decrypt_               stw	r0, 0x0020 (sp)
8048057c 0 zz_decrypt_               b	->0x80480628
80480580 0 zz_decrypt_               li	r0, 0
80480584 0 zz_decrypt_               stw	r0, 0x0024 (r31)
80480588 0 zz_decrypt_               lwz	r5, -0x7F7C (r16)
8048058c 0 zz_decrypt_               lwz	r0, 0x0028 (r31)
80480590 0 zz_decrypt_               add	r3, r5, r0
80480594 0 zz_decrypt_               stw	r3, -0x7F7C (r16)
80480598 0 zz_decrypt_               lwz	r4, -0x7F78 (r16)
8048059c 0 zz_decrypt_               lwz	r3, -0x7F7C (r16)
804805a0 0 zz_decrypt_               lwz	r0, -0x7F80 (r16)
804805a4 0 zz_decrypt_               add	r0, r3, r0
804805a8 0 zz_decrypt_               cmpw	r4, r0
804805ac 0 zz_decrypt_               bge-	 ->0x804805C0
804805b0 0 zz_decrypt_               lwz	r6, -0x7F7C (r16)
804805b4 0 zz_decrypt_               lwz	r3, -0x7F78 (r16)
804805b8 0 zz_decrypt_               sub	r4, r3, r6
804805bc 0 zz_decrypt_               stw	r4, -0x7F80 (r16)
804805c0 0 zz_decrypt_               lwz	r5, 0x0024 (r31)
804805c4 0 zz_decrypt_               mr	r4, r5
804805c8 0 zz_decrypt_               addi	r0, r5, 1
804805cc 0 zz_decrypt_               stw	r0, 0x0024 (r31)
804805d0 0 zz_decrypt_               lis	r3, 0x8063
804805d4 0 zz_decrypt_               addi	r3, r3, 8608
804805d8 0 zz_decrypt_               add	r4, r3, r4
804805dc 0 zz_decrypt_               lbz	r4, 0 (r4)
804805e0 0 zz_decrypt_               stw	r4, 0x0008 (r31)
804805e4 0 zz_decrypt_               li	r0, 8
804805e8 0 zz_decrypt_               stw	r0, 0x0010 (r31)
804805ec 0 zz_decrypt_               lwz	r3, 0x0010 (r31)
804805f0 0 zz_decrypt_               cmpw	r26, r3
804805f4 0 zz_decrypt_               bgt+	 ->0x8048050C
804805f8 0 zz_decrypt_               lwz	r4, 0x0010 (r31)
804805fc 0 zz_decrypt_               sub	r3, r4, r26
80480600 0 zz_decrypt_               stw	r3, 0x0010 (r31)
80480604 0 zz_decrypt_               li	r0, 1
80480608 0 zz_decrypt_               slw	r3, r0, r26
8048060c 0 zz_decrypt_               subi	r4, r3, 1
80480610 0 zz_decrypt_               lwz	r3, 0x0008 (r31)
80480614 0 zz_decrypt_               lwz	r0, 0x0010 (r31)
80480618 0 zz_decrypt_               srw	r3, r3, r0
8048061c 0 zz_decrypt_               and	r5, r4, r3
80480620 0 zz_decrypt_               or	r4, r21, r5
80480624 0 zz_decrypt_               stw	r4, 0x0020 (sp)
80480628 0 zz_decrypt_               lwz	r4, 0x0020 (sp)
8048062c 0 zz_decrypt_               stw	r4, 0x40F0 (r16)
80480630 0 zz_decrypt_               li	r25, 8
80480634 0 zz_decrypt_               li	r20, 0
80480638 0 zz_decrypt_               lwz	r0, 0x0018 (r31)
8048063c 0 zz_decrypt_               cmpwi	r0, 0
80480640 0 zz_decrypt_               beq-	 ->0x804807B4
80480644 0 zz_decrypt_               b	->0x80480694
80480648 0 zz_decrypt_               lwz	r3, 0x0010 (r31)
8048064c 0 zz_decrypt_               sub	r25, r25, r3
80480650 0 zz_decrypt_               lwz	r3, 0x0008 (r31)
80480654 0 zz_decrypt_               li	r4, 1
80480658 0 zz_decrypt_               lwz	r5, 0x0010 (r31)
8048065c 0 zz_decrypt_               slw	r5, r4, r5
80480660 0 zz_decrypt_               subi	r4, r5, 1
80480664 0 zz_decrypt_               and	r3, r3, r4
80480668 0 zz_decrypt_               slw	r4, r3, r25
8048066c 0 zz_decrypt_               or	r20, r20, r4
80480670 0 zz_decrypt_               lwz	r4, 0x001C (r31)
80480674 0 zz_decrypt_               lwz	r3, 0x0020 (r31)
80480678 0 zz_decrypt_               addi	r0, r3, 1
8048067c 0 zz_decrypt_               stw	r0, 0x0020 (r31)
80480680 0 zz_decrypt_               lbzx	r3, r4, r3
80480684 0 zz_decrypt_               extsb	r3, r3
80480688 0 zz_decrypt_               stw	r3, 0x0008 (r31)
8048068c 0 zz_decrypt_               li	r4, 8
80480690 0 zz_decrypt_               stw	r4, 0x0010 (r31)
80480694 0 zz_decrypt_               lwz	r0, 0x0010 (r31)
80480698 0 zz_decrypt_               cmpw	r25, r0
8048069c 0 zz_decrypt_               bgt+	 ->0x80480648
804806a0 0 zz_decrypt_               lwz	r4, 0x0010 (r31)
804806a4 0 zz_decrypt_               sub	r3, r4, r25
804806a8 0 zz_decrypt_               stw	r3, 0x0010 (r31)
804806ac 0 zz_decrypt_               li	r4, 1
804806b0 0 zz_decrypt_               slw	r4, r4, r25
804806b4 0 zz_decrypt_               subi	r5, r4, 1
804806b8 0 zz_decrypt_               lwz	r4, 0x0008 (r31)
804806bc 0 zz_decrypt_               lwz	r3, 0x0010 (r31)
804806c0 0 zz_decrypt_               srw	r6, r4, r3
804806c4 0 zz_decrypt_               and	r0, r5, r6
804806c8 0 zz_decrypt_               or	r5, r20, r0
804806cc 0 zz_decrypt_               stw	r5, 0x001C (sp)
804806d0 0 zz_decrypt_               b	->0x804807F0
804806d4 0 zz_decrypt_               lwz	r3, 0x0010 (r31)
804806d8 0 zz_decrypt_               sub	r25, r25, r3
804806dc 0 zz_decrypt_               lwz	r3, 0x0008 (r31)
804806e0 0 zz_decrypt_               li	r4, 1
804806e4 0 zz_decrypt_               lwz	r0, 0x0010 (r31)
804806e8 0 zz_decrypt_               slw	r4, r4, r0
804806ec 0 zz_decrypt_               subi	r0, r4, 1
804806f0 0 zz_decrypt_               and	r3, r3, r0
804806f4 0 zz_decrypt_               slw	r0, r3, r25
804806f8 0 zz_decrypt_               or	r20, r20, r0
804806fc 0 zz_decrypt_               lwz	r4, 0x0024 (r31)
80480700 0 zz_decrypt_               lwz	r3, 0x0028 (r31)
80480704 0 zz_decrypt_               cmpw	r4, r3
80480708 0 zz_decrypt_               blt-	 ->0x80480788
8048070c 0 zz_decrypt_               addi	r3, r31, 44
80480710 0 zz_decrypt_               lis	r4, 0x8063
80480714 0 zz_decrypt_               addi	r4, r4, 8608
80480718 0 zz_decrypt_               lwz	r5, -0x7F80 (r16)
8048071c 0 zz_decrypt_               lwz	r6, -0x7F7C (r16)
80480720 0 zz_decrypt_               li	r7, 0
80480724 0 zz_decrypt_               bl	->0x80522458
80480728 0 zz_decrypt_               stw	r3, 0x0028 (r31)
8048072c 0 zz_decrypt_               cmpwi	r3, 0
80480730 0 zz_decrypt_               bge-	 ->0x80480748
80480734 0 zz_decrypt_               addi	r3, r31, 44
80480738 0 zz_decrypt_               bl	->0x80069358
8048073c 0 zz_decrypt_               li	r5, 0
80480740 0 zz_decrypt_               stw	r5, 0x001C (sp)
80480744 0 zz_decrypt_               b	->0x804807F0
80480748 0 zz_decrypt_               li	r0, 0
8048074c 0 zz_decrypt_               stw	r0, 0x0024 (r31)
80480750 0 zz_decrypt_               lwz	r4, -0x7F7C (r16)
80480754 0 zz_decrypt_               lwz	r3, 0x0028 (r31)
80480758 0 zz_decrypt_               add	r3, r4, r3
8048075c 0 zz_decrypt_               stw	r3, -0x7F7C (r16)
80480760 0 zz_decrypt_               lwz	r0, -0x7F78 (r16)
80480764 0 zz_decrypt_               lwz	r4, -0x7F7C (r16)
80480768 0 zz_decrypt_               lwz	r3, -0x7F80 (r16)
8048076c 0 zz_decrypt_               add	r3, r4, r3
80480770 0 zz_decrypt_               cmpw	r0, r3
80480774 0 zz_decrypt_               bge-	 ->0x80480788
80480778 0 zz_decrypt_               lwz	r0, -0x7F7C (r16)
8048077c 0 zz_decrypt_               lwz	r5, -0x7F78 (r16)
80480780 0 zz_decrypt_               sub	r3, r5, r0
80480784 0 zz_decrypt_               stw	r3, -0x7F80 (r16)
80480788 0 zz_decrypt_               lwz	r3, 0x0024 (r31)
8048078c 0 zz_decrypt_               mr	r4, r3
80480790 0 zz_decrypt_               addi	r0, r3, 1
80480794 0 zz_decrypt_               stw	r0, 0x0024 (r31)
80480798 0 zz_decrypt_               lis	r5, 0x8063
8048079c 0 zz_decrypt_               addi	r3, r5, 8608
804807a0 0 zz_decrypt_               add	r4, r3, r4
804807a4 0 zz_decrypt_               lbz	r3, 0 (r4)
804807a8 0 zz_decrypt_               stw	r3, 0x0008 (r31)
804807ac 0 zz_decrypt_               li	r0, 8
804807b0 0 zz_decrypt_               stw	r0, 0x0010 (r31)
804807b4 0 zz_decrypt_               lwz	r5, 0x0010 (r31)
804807b8 0 zz_decrypt_               cmpw	r25, r5
804807bc 0 zz_decrypt_               bgt+	 ->0x804806D4
804807c0 0 zz_decrypt_               lwz	r3, 0x0010 (r31)
804807c4 0 zz_decrypt_               sub	r4, r3, r25
804807c8 0 zz_decrypt_               stw	r4, 0x0010 (r31)
804807cc 0 zz_decrypt_               li	r3, 1
804807d0 0 zz_decrypt_               slw	r3, r3, r25
804807d4 0 zz_decrypt_               subi	r5, r3, 1
804807d8 0 zz_decrypt_               lwz	r0, 0x0008 (r31)
804807dc 0 zz_decrypt_               lwz	r4, 0x0010 (r31)
804807e0 0 zz_decrypt_               srw	r3, r0, r4
804807e4 0 zz_decrypt_               and	r3, r5, r3
804807e8 0 zz_decrypt_               or	r0, r20, r3
804807ec 0 zz_decrypt_               stw	r0, 0x001C (sp)
804807f0 0 zz_decrypt_               lwz	r5, 0x40F0 (r16)
804807f4 0 zz_decrypt_               lwz	r3, 0x001C (sp)
804807f8 0 zz_decrypt_               rlwinm	r4, r3, 8, 0, 23 (00ffffff)
804807fc 0 zz_decrypt_               or	r3, r5, r4
80480800 0 zz_decrypt_               stw	r3, 0x40F0 (r16)
80480804 0 zz_decrypt_               lwz	r0, 0x40F0 (r16)
80480808 0 zz_decrypt_               cmplwi	r0, 0
8048080c 0 zz_decrypt_               beq-	 ->0x80480DCC
80480810 0 zz_decrypt_               bl	->0x8047E904
80480814 0 zz_decrypt_               addi	r3, r16, 200
80480818 0 zz_decrypt_               bl	->0x8047E6C4
8048081c 0 zz_decrypt_               stw	r3, 0x0028 (sp)
80480820 0 zz_decrypt_               addi	r3, r16, 220
80480824 0 zz_decrypt_               bl	->0x8047E6C4
80480828 0 zz_decrypt_               mr	r4, r3
8048082c 0 zz_decrypt_               stw	r4, 0x0024 (sp)
80480830 0 zz_decrypt_               li	r5, 0
80480834 0 zz_decrypt_               stw	r5, 0x002C (sp)
80480838 0 zz_decrypt_               b	->0x80480DB8
8048083c 0 zz_decrypt_               lwz	r19, 0x0028 (sp)   <-- Iter
80480840 0 zz_decrypt_               lwz	r4, 0x0010 (r31)
80480844 0 zz_decrypt_               subi	r0, r4, 1
80480848 0 zz_decrypt_               stw	r0, 0x0010 (r31)
8048084c 0 zz_decrypt_               cmpwi	r0, 0
80480850 0 zz_decrypt_               blt-	 ->0x8048086C
80480854 0 zz_decrypt_               lwz	r5, 0x0008 (r31)
80480858 0 zz_decrypt_               lwz	r3, 0x0010 (r31)
8048085c 0 zz_decrypt_               srw	r4, r5, r3
80480860 0 zz_decrypt_               rlwinm	r3, r4, 0, 31, 31 (00000001)
80480864 0 zz_decrypt_               stw	r3, 0x000C (sp)
80480868 0 zz_decrypt_               b	->0x80480954
8048086c 0 zz_decrypt_               li	r0, 7
80480870 0 zz_decrypt_               stw	r0, 0x0010 (r31)
80480874 0 zz_decrypt_               lwz	r3, 0x0018 (r31)
80480878 0 zz_decrypt_               cmpwi	r3, 0
8048087c 0 zz_decrypt_               beq-	 ->0x804808A0
80480880 0 zz_decrypt_               lwz	r5, 0x001C (r31)
80480884 0 zz_decrypt_               lwz	r4, 0x0020 (r31)
80480888 0 zz_decrypt_               addi	r3, r4, 1
8048088c 0 zz_decrypt_               stw	r3, 0x0020 (r31)
80480890 0 zz_decrypt_               lbzx	r3, r5, r4
80480894 0 zz_decrypt_               extsb	r0, r3
80480898 0 zz_decrypt_               stw	r0, 0x0008 (r31)
8048089c 0 zz_decrypt_               b	->0x80480948
804808a0 0 zz_decrypt_               lwz	r0, 0x0024 (r31)
804808a4 0 zz_decrypt_               lwz	r3, 0x0028 (r31)
804808a8 0 zz_decrypt_               cmpw	r0, r3
804808ac 0 zz_decrypt_               blt-	 ->0x80480924
804808b0 0 zz_decrypt_               addi	r3, r31, 44
804808b4 0 zz_decrypt_               lis	r5, 0x8063
804808b8 0 zz_decrypt_               addi	r4, r5, 8608
804808bc 0 zz_decrypt_               lwz	r5, -0x7F80 (r16)
804808c0 0 zz_decrypt_               lwz	r6, -0x7F7C (r16)
804808c4 0 zz_decrypt_               li	r7, 0
804808c8 0 zz_decrypt_               bl	->0x80522458
804808cc 0 zz_decrypt_               stw	r3, 0x0028 (r31)
804808d0 0 zz_decrypt_               cmpwi	r3, 0
804808d4 0 zz_decrypt_               bge-	 ->0x804808E4
804808d8 0 zz_decrypt_               li	r4, 0
804808dc 0 zz_decrypt_               stw	r4, 0x000C (sp)
804808e0 0 zz_decrypt_               b	->0x80480954
804808e4 0 zz_decrypt_               li	r3, 0
804808e8 0 zz_decrypt_               stw	r3, 0x0024 (r31)
804808ec 0 zz_decrypt_               lwz	r3, -0x7F7C (r16)
804808f0 0 zz_decrypt_               lwz	r0, 0x0028 (r31)
804808f4 0 zz_decrypt_               add	r5, r3, r0
804808f8 0 zz_decrypt_               stw	r5, -0x7F7C (r16)
804808fc 0 zz_decrypt_               lwz	r4, -0x7F78 (r16)
80480900 0 zz_decrypt_               lwz	r3, -0x7F7C (r16)
80480904 0 zz_decrypt_               lwz	r0, -0x7F80 (r16)
80480908 0 zz_decrypt_               add	r0, r3, r0
8048090c 0 zz_decrypt_               cmpw	r4, r0
80480910 0 zz_decrypt_               bge-	 ->0x80480924
80480914 0 zz_decrypt_               lwz	r5, -0x7F7C (r16)
80480918 0 zz_decrypt_               lwz	r3, -0x7F78 (r16)
8048091c 0 zz_decrypt_               sub	r4, r3, r5
80480920 0 zz_decrypt_               stw	r4, -0x7F80 (r16)
80480924 0 zz_decrypt_               lwz	r3, 0x0024 (r31)
80480928 0 zz_decrypt_               mr	r0, r3
8048092c 0 zz_decrypt_               addi	r5, r3, 1
80480930 0 zz_decrypt_               stw	r5, 0x0024 (r31)
80480934 0 zz_decrypt_               lis	r3, 0x8063
80480938 0 zz_decrypt_               addi	r4, r3, 8608
8048093c 0 zz_decrypt_               add	r3, r4, r0
80480940 0 zz_decrypt_               lbz	r0, 0 (r3)
80480944 0 zz_decrypt_               stw	r0, 0x0008 (r31)
80480948 0 zz_decrypt_               lwz	r0, 0x0008 (r31)
8048094c 0 zz_decrypt_               rlwinm	r3, r0, 25, 31, 31 (00000080)
80480950 0 zz_decrypt_               stw	r3, 0x000C (sp)
80480954 0 zz_decrypt_               lwz	r4, 0x000C (sp)
80480958 0 zz_decrypt_               cmplwi	r4, 0
8048095c 0 zz_decrypt_               beq-	 ->0x80480978
80480960 0 zz_decrypt_               addi	r3, r16, 200
80480964 0 zz_decrypt_               lwz	r5, 0x0010 (r3)
80480968 0 zz_decrypt_               rlwinm	r4, r19, 4, 0, 27 (0fffffff)
8048096c 0 zz_decrypt_               addi	r3, r4, 12
80480970 0 zz_decrypt_               lwzx	r19, r5, r3
80480974 0 zz_decrypt_               b	->0x8048098C
80480978 0 zz_decrypt_               addi	r5, r16, 200
8048097c 0 zz_decrypt_               lwz	r4, 0x0010 (r5)
80480980 0 zz_decrypt_               rlwinm	r3, r19, 4, 0, 27 (0fffffff)
80480984 0 zz_decrypt_               addi	r0, r3, 8
80480988 0 zz_decrypt_               lwzx	r19, r4, r0
8048098c 0 zz_decrypt_               addi	r7, r16, 200
80480990 0 zz_decrypt_               lwz	r3, 0x0004 (r7)
80480994 0 zz_decrypt_               cmpw	r19, r3
80480998 0 zz_decrypt_               bge+	 ->0x80480840
8048099c 0 zz_decrypt_               stw	r19, 0x0018 (sp)
804809a0 0 zz_decrypt_               lwz	r22, 0x0018 (sp)
804809a4 0 zz_decrypt_               cmpwi	r22, 256
804809a8 0 zz_decrypt_               bge-	 ->0x804809E0
804809ac 0 zz_decrypt_               extsb	r5, r22           <-- Stop
804809b0 0 zz_decrypt_               lwz	r4, 0x40F4 (r16)
804809b4 0 zz_decrypt_               lwz	r6, 0x40F8 (r16)
804809b8 0 zz_decrypt_               addi	r3, r6, 1           <--- HERE
804809bc 0 zz_decrypt_               stw	r3, 0x40F8 (r16)
804809c0 0 zz_decrypt_               stbx	r5, r4, r6
804809c4 0 zz_decrypt_               rlwinm	r5, r22, 0, 24, 31 (000000ff)
804809c8 0 zz_decrypt_               mr	r4, r23
804809cc 0 zz_decrypt_               addi	r23, r23, 1
804809d0 0 zz_decrypt_               addi	r3, r16, 240
804809d4 0 zz_decrypt_               stbx	r5, r3, r4
804809d8 0 zz_decrypt_               rlwinm	r23, r23, 0, 18, 31 (00003fff)
804809dc 0 zz_decrypt_               b	->0x80480DAC
804809e0 0 zz_decrypt_               subi	r5, r22, 253
804809e4 0 zz_decrypt_               stw	r5, 0x0034 (sp)
804809e8 0 zz_decrypt_               lwz	r18, 0x0024 (sp)
804809ec 0 zz_decrypt_               lwz	r3, 0x0010 (r31)
804809f0 0 zz_decrypt_               subi	r4, r3, 1
804809f4 0 zz_decrypt_               stw	r4, 0x0010 (r31)
804809f8 0 zz_decrypt_               cmpwi	r4, 0
804809fc 0 zz_decrypt_               blt-	 ->0x80480A18
80480a00 0 zz_decrypt_               lwz	r3, 0x0008 (r31)
80480a04 0 zz_decrypt_               lwz	r0, 0x0010 (r31)
80480a08 0 zz_decrypt_               srw	r4, r3, r0
80480a0c 0 zz_decrypt_               rlwinm	r3, r4, 0, 31, 31 (00000001)
80480a10 0 zz_decrypt_               stw	r3, 0x0008 (sp)
80480a14 0 zz_decrypt_               b	->0x80480B00
80480a18 0 zz_decrypt_               li	r0, 7
80480a1c 0 zz_decrypt_               stw	r0, 0x0010 (r31)
80480a20 0 zz_decrypt_               lwz	r3, 0x0018 (r31)
80480a24 0 zz_decrypt_               cmpwi	r3, 0
80480a28 0 zz_decrypt_               beq-	 ->0x80480A4C
80480a2c 0 zz_decrypt_               lwz	r4, 0x001C (r31)
80480a30 0 zz_decrypt_               lwz	r3, 0x0020 (r31)
80480a34 0 zz_decrypt_               addi	r0, r3, 1
80480a38 0 zz_decrypt_               stw	r0, 0x0020 (r31)
80480a3c 0 zz_decrypt_               lbzx	r4, r4, r3
80480a40 0 zz_decrypt_               extsb	r3, r4
80480a44 0 zz_decrypt_               stw	r3, 0x0008 (r31)
80480a48 0 zz_decrypt_               b	->0x80480AF4
80480a4c 0 zz_decrypt_               lwz	r0, 0x0024 (r31)
80480a50 0 zz_decrypt_               lwz	r3, 0x0028 (r31)
80480a54 0 zz_decrypt_               cmpw	r0, r3
80480a58 0 zz_decrypt_               blt-	 ->0x80480AD0
80480a5c 0 zz_decrypt_               addi	r3, r31, 44
80480a60 0 zz_decrypt_               lis	r5, 0x8063
80480a64 0 zz_decrypt_               addi	r4, r5, 8608
80480a68 0 zz_decrypt_               lwz	r5, -0x7F80 (r16)
80480a6c 0 zz_decrypt_               lwz	r6, -0x7F7C (r16)
80480a70 0 zz_decrypt_               li	r7, 0
80480a74 0 zz_decrypt_               bl	->0x80522458
80480a78 0 zz_decrypt_               stw	r3, 0x0028 (r31)
80480a7c 0 zz_decrypt_               cmpwi	r3, 0
80480a80 0 zz_decrypt_               bge-	 ->0x80480A90
80480a84 0 zz_decrypt_               li	r4, 0
80480a88 0 zz_decrypt_               stw	r4, 0x0008 (sp)
80480a8c 0 zz_decrypt_               b	->0x80480B00
80480a90 0 zz_decrypt_               li	r3, 0
80480a94 0 zz_decrypt_               stw	r3, 0x0024 (r31)
80480a98 0 zz_decrypt_               lwz	r3, -0x7F7C (r16)
80480a9c 0 zz_decrypt_               lwz	r0, 0x0028 (r31)
80480aa0 0 zz_decrypt_               add	r0, r3, r0
80480aa4 0 zz_decrypt_               stw	r0, -0x7F7C (r16)
80480aa8 0 zz_decrypt_               lwz	r5, -0x7F78 (r16)
80480aac 0 zz_decrypt_               lwz	r4, -0x7F7C (r16)
80480ab0 0 zz_decrypt_               lwz	r3, -0x7F80 (r16)
80480ab4 0 zz_decrypt_               add	r0, r4, r3
80480ab8 0 zz_decrypt_               cmpw	r5, r0
80480abc 0 zz_decrypt_               bge-	 ->0x80480AD0
80480ac0 0 zz_decrypt_               lwz	r3, -0x7F7C (r16)
80480ac4 0 zz_decrypt_               lwz	r0, -0x7F78 (r16)
80480ac8 0 zz_decrypt_               sub	r3, r0, r3
80480acc 0 zz_decrypt_               stw	r3, -0x7F80 (r16)
80480ad0 0 zz_decrypt_               lwz	r5, 0x0024 (r31)
80480ad4 0 zz_decrypt_               mr	r4, r5
80480ad8 0 zz_decrypt_               addi	r0, r5, 1
80480adc 0 zz_decrypt_               stw	r0, 0x0024 (r31)
80480ae0 0 zz_decrypt_               lis	r3, 0x8063
80480ae4 0 zz_decrypt_               addi	r0, r3, 8608
80480ae8 0 zz_decrypt_               add	r3, r0, r4
80480aec 0 zz_decrypt_               lbz	r4, 0 (r3)
80480af0 0 zz_decrypt_               stw	r4, 0x0008 (r31)
80480af4 0 zz_decrypt_               lwz	r5, 0x0008 (r31)
80480af8 0 zz_decrypt_               rlwinm	r3, r5, 25, 31, 31 (00000080)
80480afc 0 zz_decrypt_               stw	r3, 0x0008 (sp)
80480b00 0 zz_decrypt_               lwz	r0, 0x0008 (sp)
80480b04 0 zz_decrypt_               cmplwi	r0, 0
80480b08 0 zz_decrypt_               beq-	 ->0x80480B24
80480b0c 0 zz_decrypt_               addi	r3, r16, 220
80480b10 0 zz_decrypt_               lwz	r4, 0x0010 (r3)
80480b14 0 zz_decrypt_               rlwinm	r3, r18, 4, 0, 27 (0fffffff)
80480b18 0 zz_decrypt_               addi	r0, r3, 12
80480b1c 0 zz_decrypt_               lwzx	r18, r4, r0
80480b20 0 zz_decrypt_               b	->0x80480B38
80480b24 0 zz_decrypt_               addi	r4, r16, 220
80480b28 0 zz_decrypt_               lwz	r3, 0x0010 (r4)
80480b2c 0 zz_decrypt_               rlwinm	r5, r18, 4, 0, 27 (0fffffff)
80480b30 0 zz_decrypt_               addi	r4, r5, 8
80480b34 0 zz_decrypt_               lwzx	r18, r3, r4
80480b38 0 zz_decrypt_               addi	r3, r16, 220
80480b3c 0 zz_decrypt_               lwz	r3, 0x0004 (r3)
80480b40 0 zz_decrypt_               cmpw	r18, r3
80480b44 0 zz_decrypt_               bge+	 ->0x804809EC
80480b48 0 zz_decrypt_               stw	r18, 0x0014 (sp)
80480b4c 0 zz_decrypt_               lwz	r22, 0x0014 (sp)
80480b50 0 zz_decrypt_               mr	r27, r22
80480b54 0 zz_decrypt_               cmpwi	r27, 0
80480b58 0 zz_decrypt_               beq-	 ->0x80480D38
80480b5c 0 zz_decrypt_               subi	r24, r27, 1
80480b60 0 zz_decrypt_               li	r17, 0
80480b64 0 zz_decrypt_               lwz	r0, 0x0018 (r31)
80480b68 0 zz_decrypt_               cmpwi	r0, 0
80480b6c 0 zz_decrypt_               beq-	 ->0x80480CE8
80480b70 0 zz_decrypt_               b	->0x80480BC4
80480b74 0 zz_decrypt_               lwz	r0, 0x0010 (r31)
80480b78 0 zz_decrypt_               sub	r24, r24, r0
80480b7c 0 zz_decrypt_               lwz	r5, 0x0008 (r31)
80480b80 0 zz_decrypt_               li	r0, 1
80480b84 0 zz_decrypt_               lwz	r3, 0x0010 (r31)
80480b88 0 zz_decrypt_               slw	r4, r0, r3
80480b8c 0 zz_decrypt_               subi	r3, r4, 1
80480b90 0 zz_decrypt_               and	r0, r5, r3
80480b94 0 zz_decrypt_               slw	r0, r0, r24
80480b98 0 zz_decrypt_               or	r17, r17, r0
80480b9c 0 zz_decrypt_               lwz	r6, 0x001C (r31)
80480ba0 0 zz_decrypt_               lwz	r3, 0x0020 (r31)
80480ba4 0 zz_decrypt_               mr	r4, r3
80480ba8 0 zz_decrypt_               addi	r5, r3, 1
80480bac 0 zz_decrypt_               stw	r5, 0x0020 (r31)
80480bb0 0 zz_decrypt_               lbzx	r4, r6, r4
80480bb4 0 zz_decrypt_               extsb	r0, r4
80480bb8 0 zz_decrypt_               stw	r0, 0x0008 (r31)
80480bbc 0 zz_decrypt_               li	r3, 8
80480bc0 0 zz_decrypt_               stw	r3, 0x0010 (r31)
80480bc4 0 zz_decrypt_               lwz	r3, 0x0010 (r31)
80480bc8 0 zz_decrypt_               cmpw	r24, r3
80480bcc 0 zz_decrypt_               bgt+	 ->0x80480B74
80480bd0 0 zz_decrypt_               lwz	r4, 0x0010 (r31)
80480bd4 0 zz_decrypt_               sub	r4, r4, r24
80480bd8 0 zz_decrypt_               stw	r4, 0x0010 (r31)
80480bdc 0 zz_decrypt_               li	r0, 1
80480be0 0 zz_decrypt_               slw	r3, r0, r24
80480be4 0 zz_decrypt_               subi	r4, r3, 1
80480be8 0 zz_decrypt_               lwz	r3, 0x0008 (r31)
80480bec 0 zz_decrypt_               lwz	r0, 0x0010 (r31)
80480bf0 0 zz_decrypt_               srw	r3, r3, r0
80480bf4 0 zz_decrypt_               and	r4, r4, r3
80480bf8 0 zz_decrypt_               or	r3, r17, r4
80480bfc 0 zz_decrypt_               stw	r3, 0x0010 (sp)
80480c00 0 zz_decrypt_               b	->0x80480D24
80480c04 0 zz_decrypt_               lwz	r0, 0x0010 (r31)
80480c08 0 zz_decrypt_               sub	r24, r24, r0
80480c0c 0 zz_decrypt_               lwz	r3, 0x0008 (r31)
80480c10 0 zz_decrypt_               li	r5, 1
80480c14 0 zz_decrypt_               lwz	r4, 0x0010 (r31)
80480c18 0 zz_decrypt_               slw	r4, r5, r4
80480c1c 0 zz_decrypt_               subi	r0, r4, 1
80480c20 0 zz_decrypt_               and	r3, r3, r0
80480c24 0 zz_decrypt_               slw	r3, r3, r24
80480c28 0 zz_decrypt_               or	r17, r17, r3
80480c2c 0 zz_decrypt_               lwz	r4, 0x0024 (r31)
80480c30 0 zz_decrypt_               lwz	r5, 0x0028 (r31)
80480c34 0 zz_decrypt_               cmpw	r4, r5
80480c38 0 zz_decrypt_               blt-	 ->0x80480CBC
80480c3c 0 zz_decrypt_               addi	r3, r31, 44
80480c40 0 zz_decrypt_               lis	r5, 0x8063
80480c44 0 zz_decrypt_               addi	r4, r5, 8608
80480c48 0 zz_decrypt_               lwz	r5, -0x7F80 (r16)
80480c4c 0 zz_decrypt_               lwz	r6, -0x7F7C (r16)
80480c50 0 zz_decrypt_               li	r7, 0
80480c54 0 zz_decrypt_               bl	->0x80522458
80480c58 0 zz_decrypt_               stw	r3, 0x0028 (r31)
80480c5c 0 zz_decrypt_               cmpwi	r3, 0
80480c60 0 zz_decrypt_               bge-	 ->0x80480C7C
80480c64 0 zz_decrypt_               addi	r3, r31, 44
80480c68 0 zz_decrypt_               bl	->0x80069358
80480c6c 0 zz_decrypt_               mr	r4, r3
80480c70 0 zz_decrypt_               li	r4, 0
80480c74 0 zz_decrypt_               stw	r4, 0x0010 (sp)
80480c78 0 zz_decrypt_               b	->0x80480D24
80480c7c 0 zz_decrypt_               li	r3, 0
80480c80 0 zz_decrypt_               stw	r3, 0x0024 (r31)
80480c84 0 zz_decrypt_               lwz	r3, -0x7F7C (r16)
80480c88 0 zz_decrypt_               lwz	r0, 0x0028 (r31)
80480c8c 0 zz_decrypt_               add	r3, r3, r0
80480c90 0 zz_decrypt_               stw	r3, -0x7F7C (r16)
80480c94 0 zz_decrypt_               lwz	r3, -0x7F78 (r16)
80480c98 0 zz_decrypt_               lwz	r4, -0x7F7C (r16)
80480c9c 0 zz_decrypt_               lwz	r0, -0x7F80 (r16)
80480ca0 0 zz_decrypt_               add	r4, r4, r0
80480ca4 0 zz_decrypt_               cmpw	r3, r4
80480ca8 0 zz_decrypt_               bge-	 ->0x80480CBC
80480cac 0 zz_decrypt_               lwz	r3, -0x7F7C (r16)
80480cb0 0 zz_decrypt_               lwz	r4, -0x7F78 (r16)
80480cb4 0 zz_decrypt_               sub	r4, r4, r3
80480cb8 0 zz_decrypt_               stw	r4, -0x7F80 (r16)
80480cbc 0 zz_decrypt_               lwz	r5, 0x0024 (r31)
80480cc0 0 zz_decrypt_               mr	r4, r5
80480cc4 0 zz_decrypt_               addi	r3, r5, 1
80480cc8 0 zz_decrypt_               stw	r3, 0x0024 (r31)
80480ccc 0 zz_decrypt_               lis	r6, 0x8063
80480cd0 0 zz_decrypt_               addi	r0, r6, 8608
80480cd4 0 zz_decrypt_               add	r5, r0, r4
80480cd8 0 zz_decrypt_               lbz	r3, 0 (r5)
80480cdc 0 zz_decrypt_               stw	r3, 0x0008 (r31)
80480ce0 0 zz_decrypt_               li	r3, 8
80480ce4 0 zz_decrypt_               stw	r3, 0x0010 (r31)
80480ce8 0 zz_decrypt_               lwz	r4, 0x0010 (r31)
80480cec 0 zz_decrypt_               cmpw	r24, r4
80480cf0 0 zz_decrypt_               bgt+	 ->0x80480C04
80480cf4 0 zz_decrypt_               lwz	r0, 0x0010 (r31)
80480cf8 0 zz_decrypt_               sub	r4, r0, r24
80480cfc 0 zz_decrypt_               stw	r4, 0x0010 (r31)
80480d00 0 zz_decrypt_               li	r0, 1
80480d04 0 zz_decrypt_               slw	r3, r0, r24
80480d08 0 zz_decrypt_               subi	r0, r3, 1
80480d0c 0 zz_decrypt_               lwz	r4, 0x0008 (r31)
80480d10 0 zz_decrypt_               lwz	r3, 0x0010 (r31)
80480d14 0 zz_decrypt_               srw	r4, r4, r3
80480d18 0 zz_decrypt_               and	r4, r0, r4
80480d1c 0 zz_decrypt_               or	r3, r17, r4
80480d20 0 zz_decrypt_               stw	r3, 0x0010 (sp)
80480d24 0 zz_decrypt_               li	r3, 1
80480d28 0 zz_decrypt_               subi	r5, r27, 1
80480d2c 0 zz_decrypt_               slw	r0, r3, r5
80480d30 0 zz_decrypt_               lwz	r4, 0x0010 (sp)
80480d34 0 zz_decrypt_               add	r27, r0, r4
80480d38 0 zz_decrypt_               sub	r3, r23, r27
80480d3c 0 zz_decrypt_               subi	r3, r3, 1
80480d40 0 zz_decrypt_               rlwinm	r27, r3, 0, 18, 31 (00003fff)
80480d44 0 zz_decrypt_               b	->0x80480D98
80480d48 0 zz_decrypt_               mr	r0, r27
80480d4c 0 zz_decrypt_               addi	r27, r27, 1
80480d50 0 zz_decrypt_               addi	r4, r16, 240
80480d54 0 zz_decrypt_               lbzx	r3, r4, r0
80480d58 0 zz_decrypt_               stw	r3, 0x0030 (sp)
80480d5c 0 zz_decrypt_               lwz	r3, 0x0030 (sp)
80480d60 0 zz_decrypt_               extsb	r0, r3
80480d64 0 zz_decrypt_               lwz	r5, 0x40F4 (r16)
80480d68 0 zz_decrypt_               lwz	r3, 0x40F8 (r16)
80480d6c 0 zz_decrypt_               addi	r4, r3, 1
80480d70 0 zz_decrypt_               stw	r4, 0x40F8 (r16)
80480d74 0 zz_decrypt_               stbx	r0, r5, r3
80480d78 0 zz_decrypt_               lwz	r0, 0x0030 (sp)
80480d7c 0 zz_decrypt_               rlwinm	r5, r0, 0, 24, 31 (000000ff)
80480d80 0 zz_decrypt_               mr	r3, r23
80480d84 0 zz_decrypt_               addi	r23, r23, 1
80480d88 0 zz_decrypt_               addi	r4, r16, 240
80480d8c 0 zz_decrypt_               stbx	r5, r4, r3
80480d90 0 zz_decrypt_               rlwinm	r23, r23, 0, 18, 31 (00003fff)
80480d94 0 zz_decrypt_               rlwinm	r27, r27, 0, 18, 31 (00003fff)
80480d98 0 zz_decrypt_               lwz	r3, 0x0034 (sp)
80480d9c 0 zz_decrypt_               subi	r0, r3, 1
80480da0 0 zz_decrypt_               stw	r0, 0x0034 (sp)
80480da4 0 zz_decrypt_               cmpwi	r0, 0
80480da8 0 zz_decrypt_               bge+	 ->0x80480D48
80480dac 0 zz_decrypt_               lwz	r5, 0x002C (sp)
80480db0 0 zz_decrypt_               addi	r3, r5, 1
80480db4 0 zz_decrypt_               stw	r3, 0x002C (sp)
80480db8 0 zz_decrypt_               lwz	r4, 0x002C (sp)
80480dbc 0 zz_decrypt_               lwz	r3, 0x40F0 (r16)
80480dc0 0 zz_decrypt_               cmplw	r4, r3
80480dc4 0 zz_decrypt_               blt+	 ->0x8048083C
80480dc8 0 zz_decrypt_               b	->0x80480468
80480dcc 0 zz_decrypt_               addi	r11, sp, 128
80480dd0 0 zz_decrypt_               bl	->0x80049DD8
80480dd4 0 zz_decrypt_               lwz	r0, 0x0084 (sp)
80480dd8 0 zz_decrypt_               mtlr	r0
80480ddc 0 zz_decrypt_               addi	sp, sp, 128
80480de0 0 zz_decrypt_               blr
