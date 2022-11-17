import bitstring
import numpy as np
from PIL import Image, ImageOps
import bitstring
R = 32
C = 32


def floatToBits(f):
    f1 = bitstring.BitArray(float=f, length=32)
    return f1.bin


def write_bin(f, v):
    f.write(floatToBits(v))
    f.write("\n")


img = Image.open('lenna.png')
im_gray = ImageOps.grayscale(img)
np_frame = np.array(im_gray)
with open('img.mem', 'w') as img, open('prev.mem', 'w') as prev:
    for i in range(R):
        for j in range(C):
            v = float(np_frame[i, j+1])
            v_prev = float(np_frame[i, j])
            write_bin(img, v)
            write_bin(prev, v_prev)
