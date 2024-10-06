% test function 'condnum'

A = [4,-2,4,2;...
    -2,10,-2,-7;...
    4,-2,8,4;...
    2,-7,4,7];

% matlab built-in function
x1 = cond(A, 1);
y1 = cond(A, Inf);

% 'condnum' function
x2 = condnum(A, 1);
y2 = condnum(A, Inf);

% check the difference
disp(['|k_1(A) - k_opt_1(A)|: ', num2str(abs(x1 - x2))]);
disp(['|k_{infty}(A) - k_opt_{infty}(A)|: ', num2str(abs(y1 - y2))]);