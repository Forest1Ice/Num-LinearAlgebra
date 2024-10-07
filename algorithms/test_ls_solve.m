% test function 'ls_solve'

A = [1,2;3,4;5,6];
b = [1;1;1];

% normal method
x1 = ls_solve(A, b, "normal");
% qr method
x2 = ls_solve(A, b, "qr");

% check whether x1 == x2
if norm(x1 - x2) < 1e-10
    disp("Success! least square result is correct!");
    disp(['norm(x1 - x2) = ', num2str(norm(x1 - x2))]);
else
    disp("Failure! least square result is wrong!");
end