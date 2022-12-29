#include "converter.h"

#include <iostream>
#include <stdlib.h>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

using namespace std;

#define INPUT_FILENAME "/home/gabris/Music/convertertestin.txt"
#define OUTPUT_FILENAME "/home/gabris/Music/convertertestout.txt"
#define DELIMITER ','


float parseFile(string filename) {
	float data;

	    ifstream numbers(INPUT_FILENAME);
	    float num;

	    if(!(numbers)) cout<<"error: file could not be read.\n";

	    while(numbers >> num) {
	    	data = num;
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

	float data_vec = parseFile(INPUT_FILENAME);

	float din[1];
	float dout[2];

	din[0] = data_vec;


	//test
	//dout[0] = din[0];
	//dout[1] = din[1];


	converter(din, dout);

	writeDataToFile(dout, OUTPUT_FILENAME);

	//cout << "answer" << th1 << " " << th2;


}






