clc
clear all

tic    % tic is for measuring execution time of the program between tic and toc 
%% variables initialization
wordLength = 8; % fixed
fractionLength = 3; % variable parametre -> demonstrated that 3 is the optimum

% X = [1; 0; 0];
% X = [1; 0; 1];
% X = [1; 1; 0];
% X = [1; 1; 1];
X = [1 1 1 1; 0 0 1 1; 0 1 0 1];
m = (size(X, 2));

%% weights initialization
% for a1(2) = Theta_AND = [-30 20 20] -> [-16 32/3 32/3] -> [-16 10.5 10.5];
% for a2(2) = Theta_NOR = [10 -20 -20] -> [16/3 -32/3 -32/3] -> [5.25 -10.5 -10.5];
% transition between first and second layer is composed of the previous two functions
% Theta_1 = [-30 20 20; 10 -20 -20] -> [-16 32/3 32/3; 16/3 -32/3 -32/3] -> [-16 10.5 10.5; 5.25 -10.5 -10.5];
Theta_1 = [double(fi(-16, 1, wordLength, fractionLength)) double(fi(10.5, 1, wordLength, fractionLength)) double(fi(10.5, 1, wordLength, fractionLength)); double(fi(5.25, 1, wordLength, fractionLength)) double(fi(-10.5, 1, wordLength, fractionLength)) double(fi(-10.5, 1, wordLength, fractionLength))];

% for a3(1) = h = Theta_OR = [-10 20 20] -> [-16/3 32/3 32/3] -> [-5.25 10.5 10.5];
% transition between second and third layer is composed of the previous function
% Theta_2 = [-10 20 20] -> [-16/3 32/3 32/3] -> [-5.25 10.5 10.5];
Theta_2 = [double(fi(-5.25, 1, wordLength, fractionLength)) double(fi(10.5, 1, wordLength, fractionLength)) double(fi(10.5, 1, wordLength, fractionLength))];

%% XNOR function
% first (input) layer
a1 = X;

z2_8 = Theta_1 * X
for i = 1:size(z2_8,1) % number of rows
  for j = 1:size(z2_8,2) % number of columns
    z2_8bin(i,j) = fi(z2_8(i,j), 1, wordLength, fractionLength);   % Signedness: Signed (1), WordLength: 8, FractionLength
    z2_8dec(i,j) = double(z2_8bin(i,j));
  end
end

% second (hidden) layer
a2_8 = sigmoid(z2_8dec)
for i = 1:size(a2_8,1) % number of rows
  for j = 1:size(a2_8,2) % number of columns
    a2_8bin(i,j) = fi(a2_8(i,j), 1, wordLength, fractionLength);   % Signedness: Signed (1), WordLength: 8, FractionLength
    a2_8dec(i,j) = double(a2_8bin(i,j));
  end   
end 
a2_bin = a2_8bin.bin
a2_8dec
a2_8dec = [ones(1, m); a2_8dec];

z3_8 =  Theta_2 * a2_8dec
for i = 1:size(z3_8,1) % number of rows
  for j = 1:size(z3_8,2) % number of columns
    z3_8bin(i,j) = fi(z3_8(i,j), 1, wordLength, fractionLength);   % Signedness: Signed (1), WordLength: 8, FractionLength
    z3_8dec(i,j) = double(z3_8bin(i,j));
  end   
end 

% third (outout) layer
a3_8 = sigmoid(z3_8dec)
for i = 1:size(a3_8,1) % number of rows
  for j = 1:size(a3_8,2) % number of columns
    a3_8bin(i,j) = fi(a3_8(i,j), 1, wordLength, fractionLength);   % Signedness: Signed (1), WordLength: 8, FractionLength
    a3_8dec(i,j) = double(a3_8bin(i,j));
  end
end
a3_bin = a3_8bin.bin
a3_8dec
h_8 = a3_8dec;

toc    % toc is for measuring execution time of the program between tic and toc 