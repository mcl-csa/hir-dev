import random
with open('A_vector.mem','w') as f, open('A.txt','w') as ftxt:
    for i in range(0,64):
        data = random.randint(0,64)
        f.write(bin(data)[2:])
        f.write('\n')
        ftxt.write(str(data)+'\n')

with open('B_vector.mem','w') as f, open('B.txt','w') as ftxt:
    for i in range(0,64):
        data = random.randint(0,64)
        f.write(bin(data)[2:])
        f.write('\n')
        ftxt.write(str(data)+'\n')


with open('X_vector.mem','w') as f, open('X.txt','w') as ftxt:
    for i in range(0,8):
        data = random.randint(0,64)
        f.write(bin(data)[2:])
        f.write('\n')
        ftxt.write(str(data)+'\n')


