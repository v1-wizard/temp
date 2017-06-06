def gcd_recursion(a, b):
    if a > b:
        return gcd_recursion(a - b, b)
    elif a < b:
        return gcd_recursion(a, b - a)
    elif a == b:
        return a


def gcd(a, b):
    while a != b:
        if a > b:
            a = a - b
        else:
            b = b - a
    return a

print gcd(1071, 462)
print gcd_recursion(1071, 462)
