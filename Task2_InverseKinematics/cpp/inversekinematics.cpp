#include "inversekinematics.h"

void inversekinematics(float din[BRAM_SIZE], float dout[BRAM_SIZE])
{
	#pragma HLS INTERFACE ap_memory storage_type=ram_1p port=din;
	#pragma HLS INTERFACE ap_memory storage_type=ram_1p port=dout;

	float pi = 3.14159;

    float a1 = 5.0; // length of our first limb part
    float a2 = 7.0; // length of our second limb part

    data_t din_[2];

    for (int i = 0; i < 2; i++) {
    		din_[i] = (data_t)din[i];
    	}

    data_t x = din_[0];
    data_t y = din_[1];

    // inverse kinematics
    float r1 = sqrt(pow(x, 2.0) + pow(y, 2.0));

    float phi_1 = acos((pow(a2, 2.0) - pow(a1, 2.0) - pow(r1, 2.0)) / (-2.0 * a1 * r1));
    float phi_2 = atan2(y, x);

    float theta_1 = ((phi_2 - phi_1) * (180 / pi));

    float phi_3 = acos((pow(r1, 2.0) - pow(a1, 2.0) - pow(a2, 2.0)) / (-2.0 * a1 * a2));

    float theta_2 = 180.0 - (phi_3 * (180 / pi));


    dout[0] = (data_t)theta_1; // angle for first motor
    dout[1] = (data_t)theta_2; // angle for second motor

}
