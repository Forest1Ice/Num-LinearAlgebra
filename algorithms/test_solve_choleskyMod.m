% test function 'solve_choleskyMod'

A = [4,-2,4,2;...
    -2,10,-2,-7;...
    4,-2,8,4;...
    2,-7,4,7];
b = [8,2,16,6]';

% built-in matlab function
x1 = A \ b;
% 'solve_choleskyMod' function
x2 = solve_choleskyMod(A,b);

% check whether x1 == x2
if x1 == x2
    disp("Success! cholesky-modified result is correct!");
else
    disp("Failure! cholesky-modified result is wrong!");
end