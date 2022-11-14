import bitstring
import numpy as np
from PIL import Image, ImageOps
import bitstring
R = 32
C = 32


def floatToBits(f):
    f1 = bitstring.BitArray(float=f, length=32)
    return f1.bin


img = Image.open('square.png')
im_gray = ImageOps.grayscale(img)
np_frame = np.array(im_gray)
cut = np.ones([R,C])
with open('img.mem', 'w') as f, open('img.txt', 'w') as f2:
    for i in range(R):
        for j in range(C):
            v = float(np_frame[i, j]);
            cut[i,j]=v
            f.write(floatToBits(v))
            f.write("\n")
            f2.write(str(float(v)))
            f2.write("\n")

img = Image.fromarray(cut )
img.show()
