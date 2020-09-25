def cambiarDigits(digits):
    decimals = [10, 11, 12, 13, 14, 15]
    hexadecimals = ["A", "B", "C", "D", "E", "F"]
    for c in range(7):
        if digits == decimals[c - 1]:
            digits = hexadecimals[c - 1]
    return digits

def DecAlHex():
    dec = int(input("Introdueix un nombre decimal:\t"))
    hex = ""
    while dec != 0:
        rem = cambiarDigits(dec % 16)
        hex = str(rem) + hex
        dec = int(dec / 16)
    print("Resultat: ",hex)

DecAlHex()