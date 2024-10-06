% test function 'lu_comppiv'

A = [0.001,1;1,2];

% standard
L1 = [1,0;0.5,1];
U1 = [2,1;0,-0.499];
% 'lu_comppiv' function
[L2,U2,p,q] = lu_comppiv(A);

% check whether [L1,U1] == [L2,U2]
if ~isequal([L1,U1], [L2,U2])
    disp('Failure! LU factorization is wrong!');
else
    disp('Success! LU factorization is correct!');
end