class Converter{

public:
	float[] convert(int bram-uio, int bram_size){
		BRAM bram1(bram-uio,bram_size);
		uint32_t* bram = bram1.GetPointer();
		unsigned int idx = 0;
		float x, y;
		if (bram[idx] == 0) { //what ai outputs
			x = 0;
			y = 12.0;
		} else {
			x = -7.0;
			y = 5.0;
		};
		
		float ans[2];
		ans[0] = x;
		ans[1] = y;
		
		return ans;
	}
	
};

