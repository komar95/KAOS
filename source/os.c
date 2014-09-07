
#include "funcs.h"

extern void BeginOS();
void BeginOS(){
	SetGpioFunction(16, 1);

	SetGpio(16, 1);
	return;
}
