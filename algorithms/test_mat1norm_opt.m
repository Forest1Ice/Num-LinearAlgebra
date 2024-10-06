% test function 'mat1norm_opt'

A = [0.001,1;1,2];

% matlab built-in function
x1 = norm(A, 1);
y1 = norm(inv(A), 1);

% 'mat1norm_opt' function
x2 = mat1norm_opt(A, false);
y2 = mat1norm_opt(A, true);

% check the difference
disp(['||A| - |A|_opt|: ', num2str(abs(x1 - x2))]);
disp(['||A^{-1}| - |A^{-1}|_opt|: ', num2str(abs(y1 - y2))]);
