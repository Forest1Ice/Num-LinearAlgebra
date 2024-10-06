function [A,D] = choleskyMod(A)
%CHOLESKYMOD 改进的平方根法分解对称正定矩阵
%   计算cholesky分解A=LDL^T，返回单位下三角矩阵和对角元为正数的对角矩阵

[~,n] = size(A);
v = zeros(n-1,1);
for j = 1:n
    for i = 1:j-1
        v(i) = A(j,i) * A(i,i);
    end
    A(j,j) = A(j,j) - A(j,1:j-1) * v(1:j-1); % dj
    A(j+1:n,j) = (A(j+1:n,j) - A(j+1:n,1:j-1) * v(1:j-1)) / A(j,j);
end

D = diag(diag(A));
A = tril(A, -1) + eye(n);
end