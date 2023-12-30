import numpy as np
import ctypes
from mlir.runtime import get_ranked_memref_descriptor


def wrapNDArrayToTensor(items):
    newItems = []
    for item in items:
        if isinstance(item, np.ndarray):
            item = Tensor(item)
        elif not isinstance(item, int):
            raise Exception(
                f'Unexpected type of item= {item}, type= {type(item)}.')

        newItems.append(item)
    return newItems


class Tensor:
    def __init__(self, npTensor):
        assert (isinstance(npTensor, np.ndarray))
        self.npTensor = npTensor

    def __getitem__(self, idx):
        indices = np.unravel_index(idx, self.npTensor.shape)
        return self.npTensor[indices]

    def getRankedCPtr(self):
        ptr = get_ranked_memref_descriptor(self.npTensor)
        ndims = len(self.npTensor.shape)
        assert (ndims > 0)
        ptr = ctypes.pointer(ctypes.pointer(ptr))
        # for _ in range(ndims):
        #    ptr = ctypes.pointer(ptr)
        return ptr

    def __setitem__(self, idx, value):
        indices = np.unravel_index(idx, self.npTensor.shape)
        self.npTensor[indices] = value
