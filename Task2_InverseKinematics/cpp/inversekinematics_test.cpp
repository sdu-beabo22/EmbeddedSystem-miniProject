#include "inversekinematics.h"

#include <iostream>
#include <stdlib.h>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

using namespace std;


int main(int argc, char *argv[]) {

	float th1;
	float th2;

	inversekinematics(3.0, 4.0, 5.0, 6.0, &th1, &th2);

	cout << "answer" << th1 << " " << th2;


}






