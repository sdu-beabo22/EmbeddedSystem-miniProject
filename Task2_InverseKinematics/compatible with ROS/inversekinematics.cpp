#include <cmath>


#include <iostream>
#include <string>
#include <stdlib.h>


int main(int argc, char*argv[]){

	
	x = bram[0];
	y = bram[1];

	float pi = 3.14159;

	float a1 = 5.0; // length of our first limb part
	float a2 = 7.0; // length of our second limb part

	// inverse kinematics
	float r1 = sqrt(pow(x, 2.0) + pow(y, 2.0));

	float phi_1 = acos((pow(a2, 2.0) - pow(a1, 2.0) - pow(r1, 2.0)) / (-2.0 * a1 * r1));
	float phi_2 = atan2(y, x);

	float theta_1 = ((phi_2 - phi_1) * (180 / pi));

	float phi_3 = acos((pow(r1, 2.0) - pow(a1, 2.0) - pow(a2, 2.0)) / (-2.0 * a1 * a2));

	float theta_2 = 180.0 - (phi_3 * (180 / pi));

	bram[2] = theta_1;
	bram[3] = theta_2;

return 0;
}
