#include "converter.h"

void converter(float din[BRAM_SIZE], float dout[BRAM_SIZE])
{
	#pragma HLS INTERFACE ap_memory storage_type=ram_1p port=din;
	#pragma HLS INTERFACE ap_memory storage_type=ram_1p port=dout;

    data_t din_;
    data_t x;
    data_t y;

    din_ = (data_t)din[0];

    if (din_ == 0) { //what ai outputs
    	x = 0;
    	y = 12.0;
    } else {
    	x = -7.0;
    	y = 5.0;
    };

    dout[0] = (data_t)x; // x output
    dout[1] = (data_t)y; // y output

}
