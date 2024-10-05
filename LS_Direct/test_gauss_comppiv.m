% test function 'gauss_comppiv'

A = [4,-2,4,2;...
    -2,10,-2,-7;...
    4,-2,8,4;...
    2,-7,4,7];
b = [8,2,16,6]';

% built-in matlab function
x1 = A \ b;
% 'gauss_nopiv' function
x2 = gauss_comppiv(A,b);

% check whether x1 == x2
if norm(x1 -x2) < 1e-10
    disp("Success! gauss-comppiv eliminition is correct!");
else
    disp("Failure! gauss-comppiv eliminition is wrong!");
end