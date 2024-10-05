% test function 'solve_cholesky'

A = [4,-2,4,2;...
    -2,10,-2,-7;...
    4,-2,8,4;...
    2,-7,4,7];
b = [8,2,16,6]';

% built-in matlab function
x1 = A \ b;
% 'solve_cholesky' function
x2 = solve_cholesky(A,b);

% check whether x1 == x2
if x1 == x2
    disp("Success! cholesky result is correct!");
else
    disp("Failure! cholesky result is wrong!");
end