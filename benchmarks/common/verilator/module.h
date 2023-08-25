#ifndef MODULE_H
#define MODULE_H
class Module {
public:
  virtual void before_posedge() = 0;
  virtual void after_posedge() = 0;
};

#endif