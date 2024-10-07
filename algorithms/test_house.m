% test function 'house'

x = [1,0,4,6,3,4]';
n = length(x);

% householder map
[v, b] = house(x);
y = x - b * (v * v') * x;

% check whether y == ||x||_2e1
e1 = zeros(n,1); e1(1) = 1;
if y == norm(x,2) * e1
    disp("Success! Hoseholder map is correct!");
    disp(['Hx = ', num2str(y')]);
else
    disp("Failure! Householder map is wrong!");
end