#!/usr/bin/python3
# -*- coding: utf-8 -*-
import sys
import binascii

def bta(binary):
    try:
        binary = int(sys.argv[1], 2)
        binarystr = str(binary)
        binarystr = "0b" + binarystr
        print(binary.to_bytes((binary.bit_length() + 7) // 8, 'big').decode())
    except ValueError:
        print("ERROR: bintoascii needs binary characters")
        exit(1)
bta(sys.argv[1])