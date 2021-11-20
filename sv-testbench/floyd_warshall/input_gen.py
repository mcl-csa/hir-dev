import random
with open('path_vector.mem','w') as f:
    for i in range(0,64):
        data = random.randint(0,64)
        f.write(bin(data)[2:])
        f.write('\n')
