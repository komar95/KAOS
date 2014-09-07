#ifndef FUNCS
#define FUNCS

extern void *GetGpioAddress();
extern void SetGpioFunction(unsigned int gpioRegister, unsigned int function);
extern void SetGpio(unsigned int gpioRegister, unsigned int value);


#endif
