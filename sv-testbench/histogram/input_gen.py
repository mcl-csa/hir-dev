import random
with open('A_vector.mem','w') as f:
    for i in range(0,256):
        data = random.randint(0,64)
        f.write(bin(data)[2:])
        f.write('\n')
