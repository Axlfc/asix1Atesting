#!/usr/bin/python3
# -*- coding: utf-8 -*-
import sys
import binascii

def bta(asciitext):
    try:
        asciitext = str(sys.argv)
        print((bin(int.from_bytes(sys.argv[1].encode(), 'big')))[2:])
    except ValueError:
        print("ERROR: asciitobin needs ASCII characters")
        exit(1)
print(bta(sys.argv[1]))