# !/usr/bin/python3
# -*- coding: utf-8 -*-
import sys
try:
    if not sys.stdin.isatty():
        y = sys.stdin.readlines()[0].split(" ")[0].rstrip("\n").lstrip("\n")
        exit(0)
except ValueError:
    print("ERROR: mintosec needs minutes")
    exit(1)

if len(sys.argv) == 1:
    print("ERROR: mintosec needs one argument")
    exit(2)
res = sys.argv[1]
print(int(res) * 60)