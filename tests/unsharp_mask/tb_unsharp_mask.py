import numpy as np
import matplotlib.pyplot as plt


def test_unsharp_mask(dut):
    IMG_SIZE = 32
    KERNEL_SIZE_ROUNDED = 8
    img = np.reshape(np.loadtxt('lenna.txt', dtype=np.float32), (IMG_SIZE, IMG_SIZE))
    mask_img = np.zeros((IMG_SIZE, IMG_SIZE), np.float32)
    kernelX = np.reshape(np.loadtxt('kernel.txt', dtype=np.float32), (KERNEL_SIZE_ROUNDED))
    kernelY = np.reshape(np.loadtxt('kernel.txt', dtype=np.float32), (KERNEL_SIZE_ROUNDED))
    dut.set_sim_duration(300000)
    dut.run(img,mask_img,kernelX,kernelY)
    #print (mask_img)
    #plt.imshow(mask_img, cmap='gray')
    #plt.show()
