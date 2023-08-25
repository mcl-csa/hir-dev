#include "module.h"
#include <vector>
#include <verilated.h>
#include <verilated_vcd_c.h>

using namespace std;
template <typename T>
class Testbench {
private:
  VerilatedVcdC m_trace;
  vector<Module *> modules;

public:
  T dut;
  Testbench();
  Testbench(const char *waveformFile);
  void registerModule(Module *mod);
  void run(vluint64_t numCycles);
  ~Testbench();
  bool traceOn;
};
template <typename T>
Testbench<T>::Testbench() : traceOn(false) {}

template <typename T>
Testbench<T>::Testbench(const char *waveformFile) : traceOn(true) {
  Verilated::traceEverOn(true);
  // Trace 5 levels of hierarchy.
  dut.trace(&m_trace, 5);
  m_trace.open(waveformFile);
}

template <typename T>
Testbench<T>::~Testbench() {
  if (traceOn)
    m_trace.close();
}

template <typename T>
void Testbench<T>::registerModule(Module *mod) {
  modules.push_back(mod);
}

static bool isPosOrNegEdge(int t) {
  if (t % 5 == 0)
    return true;
  return false;
}

template <typename T>
void Testbench<T>::run(vluint64_t numCycles) {
  dut.rst = 0;
  dut.clk = 0;
  for (int t = 0; t < 10 * numCycles; t++) {

    // If prev clk value was 0 then this is posedge.
    if (isPosOrNegEdge(t) && dut.clk == 0)
      for (auto mod : modules)
        mod->before_posedge();

    // Toggle the clk.
    if (isPosOrNegEdge(t))
      dut.clk ^= 1;

    // Evaluate the dut with old inputs.
    dut.eval();
    if (traceOn)
      ;
    m_trace.dump(t);

    // If current clk value is 1 then this is posedge.
    if (isPosOrNegEdge(t) && dut.clk == 1)
      for (auto mod : modules)
        mod->after_posedge();

    // reset.
    if (t == 20 || t == 50)
      dut.rst = !dut.rst;

    // start.
    if (t == 60 || t == 70)
      dut.t = !dut.t;
  }
}
