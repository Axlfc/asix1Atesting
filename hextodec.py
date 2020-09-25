def cambiarDigits(digits):
    decimals = [10, 11, 12, 13, 14, 15]
    hexadecimals = ["A", "B", "C", "D", "E", "F"]
    for c in range(7):
        if digits == hexadecimals[c - 1]:
            digits = decimals[c - 1]
    return digits

def HexAlDec():
    hexa = input("Introdueix un nombre hexadecimal:\t")
    res = int(hexa, 16)
    print("Resultat: ", res)

HexAlDec()