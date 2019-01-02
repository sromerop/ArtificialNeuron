clc
clear all
%% initialization of variables
wordLength = 8; % fixed
fractionLength = 3; % variable parametre -> demonstrated that 3 is the optimum

% X = [1; 0; 0];
% X = [1; 0; 1];
% X = [1; 1; 0];
% X = [1; 1; 1];
X = [1 1 1 1; 0 0 1 1; 0 1 0 1];

%% AND function
% Theta_AND = [-30 20 20];
% Theta_AND = [-16 32/3 32/3];
Theta_AND = [double(fi(-16, 1, wordLength, fractionLength)) double(fi(32/3, 1, wordLength, fractionLength)) double(fi(32/3, 1, wordLength, fractionLength))];

z2_AND = Theta_AND * X;
z2_8bin_AND = fi(z2_AND, 1, wordLength, fractionLength);   % Signedness: Signed (1), WordLength: 8, FractionLength
z2_bin_AND = z2_8bin_AND.bin;
z2_8dec_AND = double(z2_8bin_AND);

a2_AND = sigmoid(z2_8dec_AND)
a2_8bin_AND = fi(a2_AND, 1, wordLength, fractionLength);  % Signedness: Signed (1), WordLength: 8, FractionLength
a2_bin_AND = a2_8bin_AND.bin 
a2_8dec_AND = double(a2_8bin_AND)

%% OR function
% Theta_OR = [-10 20 20];
% Theta_OR = [-16/3 32/3 32/3];
Theta_OR = [double(fi(-16/3, 1, wordLength, fractionLength)) double(fi(32/3, 1, wordLength, fractionLength)) double(fi(32/3, 1, wordLength, fractionLength))];

z2_OR = Theta_OR * X;
z2_8bin_OR = fi(z2_OR, 1, wordLength, fractionLength);   % Signedness: Signed (1), WordLength: 8, FractionLength
z2_bin_OR = z2_8bin_OR.bin;
z2_8dec_OR = double(z2_8bin_OR);

a2_OR = sigmoid(z2_8dec_OR)
a2_8bin_OR = fi(a2_OR, 1, wordLength, fractionLength);  % Signedness: Signed (1), WordLength: 8, FractionLength
a2_bin_OR = a2_8bin_OR.bin 
a2_8dec_OR = double(a2_8bin_OR)

%% (NOT) AND (NOT) = NOR function
% Theta_NOR = [10 -20 -20];
% Theta_NOR = [16/3 -32/3 -32/3];
Theta_NOR = [double(fi(16/3, 1, wordLength, fractionLength)) double(fi(-32/3, 1, wordLength, fractionLength)) double(fi(-32/3, 1, wordLength, fractionLength))];

z2_NOR = Theta_NOR * X;
z2_8bin_NOR = fi(z2_NOR, 1, wordLength, fractionLength);   % Signedness: Signed (1), WordLength: 8, FractionLength
z2_bin_NOR = z2_8bin_NOR.bin;
z2_8dec_NOR = double(z2_8bin_NOR);

a2_NOR = sigmoid(z2_8dec_NOR)
a2_8bin_NOR = fi(a2_NOR, 1, wordLength, fractionLength);  % Signedness: Signed (1), WordLength: 8, FractionLength
a2_bin_NOR = a2_8bin_NOR.bin 
a2_8dec_NOR = double(a2_8bin_NOR)