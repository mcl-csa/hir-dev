import numpy as np
from PIL import Image,ImageOps
import bitstring
IMG_SIZE=32

def floatToBits(f):
    f1 = bitstring.BitArray(float=f, length=32)
    return f1.bin

img = Image.open('lenna.png')
im_gray=ImageOps.grayscale(img)
np_frame = np.array(im_gray)
with open('lenna.mem','w') as f, open('lenna.txt','w') as f2:
    for i in range(IMG_SIZE):
        for j in range(IMG_SIZE):
            f.write(floatToBits(float(np_frame[i,j])))
            f.write("\n")
            f2.write(str(float(np_frame[i,j])))
            f2.write("\n")

kernel = [1.0/16,4.0/16,8.0/16,4.0/16,1.0/16,0.0,0.0,0.0]
with open('kernel.mem','w') as f,open('kernel.txt','w') as f2:
    for i in range(len(kernel)):
            f.write(floatToBits(float(kernel[i])))
            f.write("\n")
            f2.write(str(float(kernel[i])))
            f2.write("\n")
