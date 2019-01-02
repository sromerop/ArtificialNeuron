clc
clear all

wordLength = 8;
fractionLength = 3;
sign = 1;

min = -2^(wordLength - sign - fractionLength)   % minimum number that can be represented
max = 2^(wordLength - sign - fractionLength) - 2^(-fractionLength) % maximum number that can be represented

%% sigmoid centred on x = 0 f(x)= 1/(1+e^(-x)); a = 1; c = 0; and compound of 2^8 = 256 values
x = min:((max - min)/(256 - 1)):max;
y = sigmf(x,[1 0]);
figure
plot(x, y)
ylim([-0.05 1.05])

%% Decimal to binary & writing out
x_bin = "empty";
y_bin = "empty";

file = fopen('Sigmoid Code VHDL.txt','w');

for i = 1:size(x,2) % or 1:size(y,2) 
    x_8(i) = fi(x(i), 1, wordLength, fractionLength);
    y_8(i) = fi(y(i), 1, wordLength, fractionLength);
    
    x_int = x_8(i);
    y_int = y_8(i);
    
    x_bin(i) = x_int.bin;
    y_bin(i) = y_int.bin;     
    
    fprintf(file, '            when "');
    fprintf(file, x_bin(i));
    fprintf(file, '" =>\n               value <= "');
    fprintf(file, y_bin(i));
    fprintf(file, '";');
    if i ~= size(x,2)
        fprintf(file, '\n');
    end
end

hold on
plot(x_8, y_8)
xlabel('sigmf, P = [1 0]; 2^8 values')
ylim([-0.05 1.05])
hold off
legend({'without adjusted precision','with adjusted precision'}, 'Location', 'southeast')