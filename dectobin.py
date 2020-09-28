#!/usr/bin/python3
# -*- coding: utf-8 -*-
import sys
def dtb(decimal):
    try:
        return bin(int(decimal)).replace("0b", "")
    except ValueError:
        print("ERROR: dectobin needs decimal characters")
        exit(1)
try:
    if not sys.stdin.isatty():
        y = sys.stdin.readlines()[0].split(" ")[0].rstrip("\n").lstrip("\n")
        dtb(y)
        exit(0)
except ValueError:
    print("ERROR: dectobin needs decimal characters")
    exit(1)

if len(sys.argv) == 1:
    print("ERROR: dectobin needs only one argument")
    exit(2)

print(dtb(sys.argv[1]))