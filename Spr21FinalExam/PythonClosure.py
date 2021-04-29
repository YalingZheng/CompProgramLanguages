def adder():
    total = 0
    def add(number):
        nonlocal total
        total += number
        return total
    return add


print('First Adder:')
s1 = adder();
print(s1(10))
print(s1(50))
print(s1(100))
