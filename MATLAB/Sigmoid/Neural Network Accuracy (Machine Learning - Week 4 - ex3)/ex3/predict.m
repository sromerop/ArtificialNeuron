function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

wordLength = 8; % fixed
fractionLength = 3; % variable parametre

% Add ones to the X data matrix
X = [ones(m, 1) X];

a1 = X;
for i = 1:size(X,1) % number of rows
  for j = 1:size(X,2) % number of columns
    a1_8bin(i,j) = fi(a1(i,j), 1, wordLength, fractionLength);   % Signedness: Signed (1), WordLength: 8, FractionLength
    a1_8dec(i,j) = double(a1_8bin(i,j));
  end   
end    

for i = 1:size(Theta1,1) % number of rows
  for j = 1:size(Theta1,2) % number of columns
    Theta1_8bin(i,j) = fi(Theta1(i,j), 1, wordLength, fractionLength);   % Signedness: Signed (1), WordLength: 8, FractionLength
    Theta1_8dec(i,j) = double(Theta1_8bin(i,j));
  end   
end 

z2_8 = a1_8dec * Theta1_8dec';
for i = 1:size(z2_8,1) % number of rows
  for j = 1:size(z2_8,2) % number of columns
    z2_8bin(i,j) = fi(z2_8(i,j), 1, wordLength, fractionLength);   % Signedness: Signed (1), WordLength: 8, FractionLength
    z2_8dec(i,j) = double(z2_8bin(i,j));
  end   
end 

a2_8 = sigmoid(z2_8dec);
for i = 1:size(a2_8,1) % number of rows
  for j = 1:size(a2_8,2) % number of columns
    a2_8bin(i,j) = fi(a2_8(i,j), 1, wordLength, fractionLength);   % Signedness: Signed (1), WordLength: 8, FractionLength
    a2_8dec(i,j) = double(a2_8bin(i,j));
  end   
end 
a2_8dec = [ones(m, 1) a2_8dec];

for i = 1:size(Theta2,1) % number of rows
  for j = 1:size(Theta2,2) % number of columns
    Theta2_8bin(i,j) = fi(Theta2(i,j), 1, wordLength, fractionLength);   % Signedness: Signed (1), WordLength: 8, FractionLength
    Theta2_8dec(i,j) = double(Theta2_8bin(i,j));
  end   
end

z3_8 = a2_8dec * Theta2_8dec';
for i = 1:size(z3_8,1) % number of rows
  for j = 1:size(z3_8,2) % number of columns
    z3_8bin(i,j) = fi(z3_8(i,j), 1, wordLength, fractionLength);   % Signedness: Signed (1), WordLength: 8, FractionLength
    z3_8dec(i,j) = double(z3_8bin(i,j));
  end   
end 

a3_8 = sigmoid(z3_8dec);
for i = 1:size(a3_8,1) % number of rows
  for j = 1:size(a3_8,2) % number of columns
    a3_8bin(i,j) = fi(a3_8(i,j), 1, wordLength, fractionLength);   % Signedness: Signed (1), WordLength: 8, FractionLength
    a3_8dec(i,j) = double(a3_8bin(i,j));
  end   
end 
h_8 = a3_8dec;

[M,p] = max(h_8, [], 2);    % final classification

% =========================================================================

end