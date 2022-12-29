#include "hls_math.h"

#define BRAM_SIZE 2048

typedef	float data_t;
//typedef ap_fixed<16,8> data_t;

void converter(float din[2048], float dout[2048]);
