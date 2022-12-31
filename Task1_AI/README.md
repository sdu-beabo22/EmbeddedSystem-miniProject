# Summary

The workflow was the following:

1. Desing and test the model in a jupyther notebook
2. Copy the model architecture into the `mnist_net.py` python script
3. Generate the layer weights
4. Import the model and generated weights into the HLS project
5. Generate the FPGA blocks in vitis
6. Import the blocks in a new Vivado project
7. Implement the desgin in vivado and generate the bitstream
8. Import the bitstream in a new Vitis project
9. Launch the project on hardware
10. Test the hardware using the `uart_test_nn.py` python script
