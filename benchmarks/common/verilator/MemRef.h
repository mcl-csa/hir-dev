#include "module.h"
#include <fstream>
#include <iostream>
#include <string>
#include <unistd.h>
#include <vector>

using namespace std;

template <typename VAddrT, typename VDataT>
struct RdPort {
  unsigned char *addrEn;
  VAddrT *addr;
  unsigned char *rdEn;
  VDataT *rdData;
  VDataT value;
  bool hasValue;
};

template <typename VAddrT, typename VDataT>
struct WrPort {
  unsigned char *addrEn;
  VAddrT *addr;
  unsigned char *wrEn;
  VDataT *wrData;
};

template <typename VAddrT, typename VDataT>
class MemRef : public Module {
private:
  vector<VDataT> storage;
  vector<RdPort<VAddrT, VDataT>> rdPorts;
  vector<WrPort<VAddrT, VDataT>> wrPorts;

public:
  MemRef(const char *fileName);
  MemRef(int size);
  void registerRdPort(unsigned char *addrEn, VAddrT *addr, unsigned char *rdEn,
                      VDataT *rdData);
  void registerWrPort(unsigned char *addrEn, VAddrT *addr, unsigned char *wrEn,
                      VDataT *wrData);
  void registerRdWrPort(unsigned char *addrEn, VAddrT *addr,
                        unsigned char *rdEn, VDataT *rdData,
                        unsigned char *wrEn, VDataT *wrData);
  void before_posedge() override;
  void after_posedge() override;
  template <typename TPTR>
  TPTR getDataPtr();
  template <typename DataT>
  void assertEq(const char *name, DataT rhs[]);
};

template <typename VAddrT, typename VDataT>
MemRef<VAddrT, VDataT>::MemRef(const char *fileName) {
  ifstream myfile(fileName);
  if (!myfile.is_open()) {
    cout << "Could not open file \"" << fileName << "\" in current directory "
         << endl;
    exit(1);
  }

  string line;
  while (getline(myfile, line)) {
    // TODO: assert(sizeof(DataT)<=sizeof(long));
    storage.push_back((VDataT)stol(line));
  }
}
template <typename VAddrT, typename VDataT>
MemRef<VAddrT, VDataT>::MemRef(int size) {
  storage = vector<VDataT>(size, 0);
}

template <typename VAddrT, typename VDataT>
void MemRef<VAddrT, VDataT>::registerRdPort(unsigned char *addrEn, VAddrT *addr,
                                            unsigned char *rdEn,
                                            VDataT *rdData) {

  rdPorts.push_back({addrEn, addr, rdEn, rdData});
}

template <typename VAddrT, typename VDataT>
void MemRef<VAddrT, VDataT>::registerWrPort(unsigned char *addrEn, VAddrT *addr,
                                            unsigned char *wrEn,
                                            VDataT *wrData) {
  wrPorts.push_back({addrEn, addr, wrEn, wrData});
}

template <typename VAddrT, typename VDataT>
void MemRef<VAddrT, VDataT>::registerRdWrPort(unsigned char *addrEn,
                                              VAddrT *addr, unsigned char *rdEn,
                                              VDataT *rdData,
                                              unsigned char *wrEn,
                                              VDataT *wrData) {
  rdPorts.push_back({addrEn, addr, rdEn, rdData});
  wrPorts.push_back({addrEn, addr, wrEn, wrData});
}

template <typename VAddrT, typename VDataT>
void MemRef<VAddrT, VDataT>::before_posedge() {
  for (auto &rdPort : rdPorts) {
    if (*rdPort.rdEn == 1) {
      auto value = this->storage[*rdPort.addr];
      rdPort.value = value;
      rdPort.hasValue = true;
    } else
      rdPort.hasValue = false;
  }
  for (auto &wrPort : wrPorts) {
    if (*wrPort.wrEn == 1) {
      this->storage[*wrPort.addr] = *wrPort.wrData;
    }
  }
}

template <typename VAddrT, typename VDataT>
void MemRef<VAddrT, VDataT>::after_posedge() {
  for (auto rdPort : rdPorts) {
    if (rdPort.hasValue) {
      *rdPort.rdData = rdPort.value;
    }
  }
}

template <typename VAddrT, typename VDataT>
template <typename TPTR>
TPTR MemRef<VAddrT, VDataT>::getDataPtr() {
  return (TPTR)storage.data();
}

template <typename VAddrT, typename VDataT>
template <typename DataT>
void MemRef<VAddrT, VDataT>::assertEq(const char *name, DataT rhs[]) {
  // TODO: assert(sizeof(VDataT)<=sizeof(DataT));
  for (int i = 0; i < this->storage.size(); i++) {
    if (this->storage[i] != (VDataT)rhs[i]) {
      printf("ERROR: wrong value. %s[%d] = %d (expected: %d).\n", name, i,
             this->storage[i], rhs[i]);
      exit(1);
    }
  }
}