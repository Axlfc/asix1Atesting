<<<<<<< HEAD
# binary addition
# rules
# 1 + 0 = 1
# 1 + 1 = 0 (carry - 1)
# 1 + 1 + 1(carry) = 1 (carry -1)

# binary multiplication
# rules
# 0 * 0 = 0
# 1 * 0 = 0
# 0 * 1 = 0
# 1 * 1 = 1
=======
#!/usr/bin/python3
# -*- coding: utf-8 -*-
import sys
>>>>>>> b6ab3ee08aabfd14cbfa68627f1e3ea1346bb92f

#print("For more than 2 binary values inserted: ")
#entries = list(map(int, input().split()))
#print(entries)
def bincalc(x, y):
    #print("Enter two binary numbers separated by a space: ")
    #x, y = [int(x) for x in input().split()]
    carry = 0
    arr = []
    aa = str(x)
    bb = str(y)
    len_x = len(aa)
    len_y = len(bb)
    min_len = min(len_x, len_y)
    max_len = min(len_x, len_y)
    validInput = True

    x = sys.argv[1]
    y = sys.argv[2]

    for u in range(len(x)):
        if int(x[u]) == 1:
            validInput = True
        elif int(x[u]) == 0:
            validInput = True
        else:
            validInput = False
            exit(1)

    for u in range(len(y)):
        if int(y[u]) == 1:
            validInput = True
        elif int(y[u]) == 0:
            validInput = True
        else:
            validInput = False
            exit(1)

    if validInput:
        while min_len > 0:
            last_digit_aa = int(aa[len(aa)-1])
            last_digit_bb = int(bb[len(bb)-1])
            add_digits = last_digit_aa + last_digit_bb + carry
            carry = 0
            if add_digits == 2:
                add_digits = 0
                carry = 1
            if add_digits == 3:
                add_digits = 1
                carry = 1
            arr.append(add_digits)
            aa = aa[:-1]
            bb = bb[:-1]
            min_len -= 1

        a_len_after = len(aa)
        b_len_after = len(bb)

        if a_len_after > 0:
            while a_len_after > 0:
                while carry == 1:
                    if len(aa) > 0:
                        sum_digit = int(aa[len(aa) - 1]) + carry
                        if sum_digit == 2:
                            sum_digit = 0
                            carry = 1
                            arr.append(sum_digit)
                            aa = aa[:-1]
                        else:
                            carry = 0
                            arr.append(sum_digit)
                            aa = aa[:-1]
                    else:
                        arr.append(carry)
                        carry = 0

                if carry == 0 and len(aa) > 0:
                    arr.append(aa[len(aa) - 1])
                    aa = aa[:-1]
                a_len_after -= 1

        if b_len_after > 0:
            while b_len_after > 0:
                while carry == 1:
                    if len(bb) > 0:
                        sum_digit = int(bb[len(bb) - 1]) + carry
                        if sum_digit == 2:
                            sum_digit = 0
                            carry = 1
                            arr.append(sum_digit)
                            bb = bb[:-1]
                        else:
                            carry = 0
                            arr.append(sum_digit)
                            bb = bb[:-1]
                    else:
                        arr.append(carry)
                        carry = 0

                if carry == 0 and len(bb) > 0:
                    arr.append(bb[len(bb) - 1])
                    bb = bb[:-1]
                b_len_after -= 1

        if carry == 1:
            arr.append(carry)

        out_arr = arr[::-1]
        outputList = ' '.join([str(item) for item in out_arr]).strip(" ")
        import re
        result = int(re.sub('[\s+]', '', outputList))
        print(result)
    else:
        print("Error: Invalid input, enter a binary number")

bincalc(str(sys.argv[1]), str(sys.argv[2]))

