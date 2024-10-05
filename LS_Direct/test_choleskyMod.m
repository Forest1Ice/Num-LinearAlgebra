% test function 'choleskyMod'

A = [4,-2,4,2;...
    -2,10,-2,-7;...
    4,-2,8,4;...
    2,-7,4,7];

% standard
L1 = [1,0,0,0;...
    -1/2,1,0,0;...
    1,0,1,0;...
    1/2,-2/3,1/2,1];
D1 = diag([4,9,4,1]);
% 'choleskyMod' function
[L2,D2] = choleskyMod(A);

% check whether [L1,D1] == [L2,D2]
if isequal([L1,D1],[L2,D2])
    disp("Success! Cholesky decompsition is correct!");
else
    disp("Failure! Cholesky decompsition is wrong!");
end