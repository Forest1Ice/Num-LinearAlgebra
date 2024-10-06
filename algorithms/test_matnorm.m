% test function 'mat1norm'

A = [0.001,-1;1,-2];

% matlab built-in function
x1 = norm(A, 1);
y1 = norm(A, Inf);

% 'matnorm' function
x2 = matnorm(A, 1);
y2 = matnorm(A, Inf);

% check whether x1 == x2
if x1 == x2 && y1 == y2
    disp('Success! matrix norm result is correct!');
else
    disp('Failure! matrix norm result is wrong!');
end