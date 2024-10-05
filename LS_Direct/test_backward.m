% test function 'backward' with built-in matlab function

n = 3;
U = triu(ones(n));
y = randi([-10,10],n,1);

% built-in matlab function
x1 = U \ y;
% 'forward' function
x2 = backward(U, y);

% check whether x1 == x2
if ~isequal(x1, x2)
    disp('Failure! x1 and x2 is not equal!');
else
    disp('Success! x1 and x2 is equal!');
end