import random
with open('input.mem','w') as f:
    for i in range(0,1024):
        data = random.randint(0,64)
        f.write(bin(data)[2:])
        f.write('\n')
