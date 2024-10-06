% test function 'lu_colpiv'

A = [0.001,1;1,2];

% matlab built-in function
[L1,U1,p1] = lu(A,"vector");
% 'lu_colpiv' function
[L2,U2,p2] = lu_colpiv(A);

% check whether [L1,U1,p1] == [L2,U2,p2]
if ~isequal([L1,U1,p1'], [L2,U2,p2'])
    disp('Failure! LU factorization is wrong!');
else
    disp('Success! LU factorization is correct!');
end