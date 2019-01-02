clc
clear all

tic    % tic is for measuring execution time of the program between tic and toc 
%% initialization of variables
wordLength = 8; % fixed
fractionLength = 3; % variable parametre -> demonstrated that 3 is the optimum

%% inputs initialization
% DATA_IN (2 downto 0) <= ("01111111", "10000001", "00010000");
% DATA_IN (2 downto 0) <= (15.875, -15.875, 2.000);
X = [double(fi(2, 1, wordLength, fractionLength)) double(fi(-15.875, 1, wordLength, fractionLength)) double(fi(15.875, 1, wordLength, fractionLength))];

%% weights initialization
% WEIGHTS (0 to 2) <= ("00000001", "00000010", "00000100");
% WEIGHTS (0 to 2) <= (0.125, 0.25, 0.5);
Theta = [double(fi(0.125, 1, wordLength, fractionLength)); double(fi(0.25, 1, wordLength, fractionLength)); double(fi(0.5, 1, wordLength, fractionLength))];

%% function
z2 = X * Theta
z2_8bin = fi(z2, 1, wordLength, fractionLength);   % Signedness: Signed (1), WordLength: 8, FractionLength
z2_bin = z2_8bin.bin   % LUT_input <= "00100001";
z2_8dec = double(z2_8bin)   % LUT_input = 4.125

a2 = sigmoid(z2_8dec)
a2_8bin = fi(a2, 1, wordLength, fractionLength);  % Signedness: Signed (1), WordLength: 8, FractionLength
a2_bin = a2_8bin.bin   % DATA_OUT <= "00001000";
a2_8dec = double(a2_8bin)   % DATA_OUT = 1.000

toc    % toc is for measuring execution time of the program between tic and toc 