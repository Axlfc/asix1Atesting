#!/usr/bin/python3
# -*- coding: utf-8 -*-
import sys
def av(value):
    try:
        value = sys.argv[1]
        print(ord(value))
    except ValueError:
        print("ERROR: asciivalue need valid values")
        exit(1)
av(sys.argv[1])