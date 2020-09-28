#!/usr/bin/python3
# -*- coding: utf-8 -*-
import sys
def btd(decimal):
    try:
        decimal = int(sys.argv[1], 2)
        print(decimal)
    except ValueError:
        print("ERROR: bintodec needs binary characters")
        exit(1)

try:
    if not sys.stdin.isatty():
        y = sys.stdin.readlines()[0].split(" ")[0].rstrip("\n").lstrip("\n")
        btd(y)
        exit(0)
except ValueError:
    print("ERROR: bintodec needs binary characters")
    exit(1)

if len(sys.argv) == 1:
    print("ERROR: bintodec needs one argument")
    exit(2)

btd(sys.argv[1])