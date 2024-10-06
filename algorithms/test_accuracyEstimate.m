% test function 'accuracyEstimate'

A = [4,-2,4,2;...
    -2,10,-2,-7;...
    4,-2,8,4;...
    2,-7,4,7];
b = [8, 2, 16, 6]';
x_real = [1,2,1,2]';
x_test = [1.01,1.99,0.99,2.02]';

% relative error
error1 = norm(x_real - x_test, 1) / norm(x_real, 1);
error2 = norm(x_real - x_test, Inf) / norm(x_real, Inf);

% upper bound estimation
upper1 = accuracyEstimate(A, b, x_test, 1);
upper2 = accuracyEstimate(A, b, x_test, Inf);

% check whether error <= upper
if error1 <= upper1 && error2 <= upper2
    disp('Success! upper bound estimation is reasonable!');
    disp(['error1: ', num2str(error1), '; upper1: ', num2str(upper1)]);
    disp(['error2: ', num2str(error2), '; upper2: ', num2str(upper2)]);
else
    disp('Failure! upper bound estimation is wrong!');
end