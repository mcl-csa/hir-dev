import random
import bitstring
with open('T.mem', 'w') as f:
    for i in range(0, 32*32):
        data = random.uniform(0.0, 64.0)
        f.write(bitstring.BitArray(float=0, length=32).bin)
        f.write('\n')

with open('A.mem', 'w') as f:
    for i in range(0, 32*32):
        data = random.uniform(0.0, 64.0)
        f.write(bitstring.BitArray(float=data, length=32).bin)
        f.write('\n')

with open('B.mem', 'w') as f:
    for i in range(0, 32*32):
        data = random.uniform(0.0, 64.0)
        f.write(bitstring.BitArray(float=data, length=32).bin)
        f.write('\n')

with open('C.mem', 'w') as f:
    for i in range(0, 32*32):
        data = random.uniform(0.0, 64.0)
        f.write(bitstring.BitArray(float=data, length=32).bin)
        f.write('\n')

with open('D.mem', 'w') as f:
    for i in range(0, 32*32):
        data = random.uniform(0.0, 64.0)
        f.write(bitstring.BitArray(float=data, length=32).bin)
        f.write('\n')
