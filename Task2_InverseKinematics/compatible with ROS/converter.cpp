#include <cmath>

#include <iostream>
#include <string>
#include <stdlib.h>


int main(int argc, char*argv[]){

	BRAM bram1(0,1);
	uint32_t* bram = bram1.GetPointer();
	unsigned int idx = 0;
	
	
	if (bram[idx] == 0) { //what ai outputs
		x = 0;
		y = 12.0;
	} else {
		x = -7.0;
		y = 5.0;
	};

return 0;
}
