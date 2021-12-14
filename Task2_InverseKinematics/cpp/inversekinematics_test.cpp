#include "inversekinematics.h"

#include <iostream>
#include <stdlib.h>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

using namespace std;

#define INPUT_FILENAME "/home/gabris/Documents/testin.txt"
#define OUTPUT_FILENAME "/home/gabris/Documents/testout.txt"
#define DELIMITER ','


vector<float> parseFile(string filename) {
	vector <float> data;

	    ifstream numbers(INPUT_FILENAME);
	    float num;

	    if(!(numbers)) cout<<"error: file could not be read.\n";

	    while(numbers >> num) {
	    	data.push_back(num);
	        numbers.ignore();
	    }

	    return data;
}


void writeDataToFile(float dout[2], string filename) {

	ofstream f;
	f.open(filename);

	f << dout[0];
	f << ",";
	f << dout[1];
}


int main(int argc, char *argv[]) {

	vector<float> data_vec = parseFile(INPUT_FILENAME);

	float din[2];
	float dout[2];

	for (int j = 0; j < 2; j++) {
		din[j] = data_vec[j];
	}


	//test
	//dout[0] = din[0];
	//dout[1] = din[1];


	inversekinematics(din, dout);

	writeDataToFile(dout, OUTPUT_FILENAME);

	//cout << "answer" << th1 << " " << th2;


}






