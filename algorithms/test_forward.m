% test function 'forward' with built-in matlab function

n = 3;
L = tril(ones(n));
b = randi([-10,10],n,1);

% built-in matlab function
x1 = L \ b;
% 'forward' function
x2 = forward(L, b);

% check whether x1 == x2
if ~isequal(x1, x2)
    disp('Failure! x1 and x2 are not equal!');
else
    disp('Success! x1 and x2 are equal!');
end