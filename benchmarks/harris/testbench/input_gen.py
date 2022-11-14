import random
import bitstring
with open('img.mem', 'w') as f:
    for i in range(0, 16*16):
        data = random.uniform(0.0, 200.0)
        f.write(bitstring.BitArray(float=data, length=32).bin)
        f.write('\n')
