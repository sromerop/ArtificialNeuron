# ArtificialNeuron

It is my Final Degree Project of Grado de Tecnologías y Servicios de Telecomunicación in Universidad Politécnica de Madrid. The tutor of this project was Pablo Ituero Herrero.

Title: Low-latency perceptron design and implementation in FPGA 

Summary: 
This project falls within the scope of efficient brain-inspired computing. In particular it targets the design, development and FPGA implementation of an artificial perceptron or neuron -the basic constituent of artificial neural networks- targeting extreme latency reduction.

The methodology of the project is the following:
- First, an intense bibliographical survey of existing works will be carried out. Special attention will be paid to multiply-accumulate (MAC) topologies targeting low latency as well as to efficient ways to construct the activation function.
- During the development phase, different architectural configurations will be considered mixing different topologies and quantization schemes. In this part VHDL will be used to describe the circuitry and Xilinx’s VIVADO suite will be employed to validate and compare the different proposals.
- Once the final architecture has been selected, a small neural network prototype will be implemented and tested on a Digilent’s Nexys4 DDR board. 

As a result, we will get a core with a perceptron that will be used to build low-latency artificial neural networks.

Here are presented all the scripts (both VHDL and MATLAB) used in the project.
