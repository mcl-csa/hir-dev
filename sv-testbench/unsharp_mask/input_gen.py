import numpy as np
from PIL import Image,ImageOps
import bitstring

def floatToBits(f):
    f1 = bitstring.BitArray(float=1.0, length=32)
    return f1.bin

img = Image.open('lenna.png')
im_gray=ImageOps.grayscale(img)
np_frame = np.array(im_gray)
with open('lenna.mem','w') as f:
    for i in range(np_frame.shape[0]):
        for j in range(np_frame.shape[1]):
            f.write(floatToBits(float(np_frame[i,j])))
            f.write("\n")

