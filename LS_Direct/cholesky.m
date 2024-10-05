function A = cholesky(A)
%CHOLESKY 平方根法分解对称正定矩阵A
%   计算cholesky分解A=LL^T，返回对角元均为正数的下三角矩阵

[~,n] = size(A);
for k = 1:n
    A(k,k) = sqrt(A(k,k));
    A(k+1:n,k) = A(k+1:n,k) / A(k,k);
    for j = k+1:n
        A(j:n,j) = A(j:n,j) - A(j:n,k) * A(j,k);
    end
end
A = tril(A);
end