% test function 'cholesky'

A = [1 0 1; 0 2 0; 1 0 3];

% built-in matlab function
L1 = chol(A, 'lower');

% 'cholesky' function
L2 = cholesky(A);

% check whether L1 == L2
if L1 == L2
    disp("Success! Cholesky decompsition is correct!");
else
    disp("Failure! Cholesky decompsition is wrong!");
end