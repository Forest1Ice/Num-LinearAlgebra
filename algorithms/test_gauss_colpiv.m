% test function 'gauss_colpiv'

A = [4,-2,4,2;...
    -2,10,-2,-7;...
    4,-2,8,4;...
    2,-7,4,7];
b = [8,2,16,6]';

% built-in matlab function
x1 = A \ b;
% 'gauss_colpiv' function
x2 = gauss_colpiv(A,b);

% check whether x1 == x2
if x1 == x2
    disp("Success! gauss-colpiv eliminition is correct!");
else
    disp("Failure! gauss-colpiv eliminition is wrong!");
end