#include "inversekinematics.h"
#include "hls_math.h"
#include <iostream>

void inversekinematics(float x, float y, float a1, float a2, float *th1, float *th2)
{
	#pragma HLS INTERFACE ap_memory storage_type=ram_1p port=x;
	#pragma HLS INTERFACE ap_memory storage_type=ram_1p port=y;
	#pragma HLS INTERFACE ap_memory storage_type=ram_1p port=a1;
	#pragma HLS INTERFACE ap_memory storage_type=ram_1p port=a2;
	#pragma HLS INTERFACE ap_memory storage_type=ram_1p port=th1;
	#pragma HLS INTERFACE ap_memory storage_type=ram_1p port=th2;

	float pi = 3.14159;

    //float x = -6.0;
    //float y = 5.0; // i could make a constraint to not go below minus

    //float a1 = 5.2; // length of our first limb part
    //float a2 = 7.0; // length of our second limb part

    // inverse kinematics
    float r1 = sqrt(pow(x, 2.0) + pow(y, 2.0));

    float phi_1 = acos((pow(a2, 2.0) - pow(a1, 2.0) - pow(r1, 2.0)) / (-2.0 * a1 * r1));
    float phi_2 = atan2(y, x);

    float theta_1 = ((phi_2 - phi_1) * (180 / pi));

    float phi_3 = acos((pow(r1, 2.0) - pow(a1, 2.0) - pow(a2, 2.0)) / (-2.0 * a1 * a2));

    float theta_2 = 180.0 - (phi_3 * (180 / pi));

    *th1 = theta_1;
    *th2 = theta_2;

    // std::cout << "theta one: " << theta_1;
    // std::cout << "theta two: " << theta_2;
}
