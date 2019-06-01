sentence = "This is a common interview question"
char = [*sentence.lower()]
max = 0
count = 0
letter = 'a'
for ch in char:
    for bh in char:
        # print(ch, bh)
        if ch == bh:
            count += 1
        if max < count:
            max = count
            letter = ch
    count = 0
print(max, letter)
