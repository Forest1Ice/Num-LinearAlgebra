% test function 'givens'

x = [5, 12]';

% 'givens' map
[c,s] = givens(x);

% check the result
y = [c, s; -s, c] * x;
disp(["Hx = ", y']);