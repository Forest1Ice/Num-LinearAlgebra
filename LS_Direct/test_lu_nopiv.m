% test function 'lu_nopiv'

A = [1,4,7;...
    2,5,8;...
    3,6,10];

% standard
L1 = [1,0,0;...
    2,1,0;...
    3,2,1];
U1 = [1,4,7;...
    0,-3,-6;...
    0,0,1];
% 'lu_nopiv' function
[L2,U2] = lu_nopiv(A);

% check whether [L1,U1] == [L2,U2]
if ~isequal([L1,U1], [L2,U2])
    disp('Failure! LU factorization is wrong!');
else
    disp('Success! LU factorization is correct!');
end