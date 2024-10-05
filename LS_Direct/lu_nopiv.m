function [L,U] = lu_nopiv(A)
%LU_NOPIV 不选主元的LU分解
%   采用Gauss消去法计算LU分解，返回单位下三角、上三角矩阵

[~, n] = size(A);

for k = 1:n-1
    if (A(k,k) == 0)
        error("DivisionZeroError!");
    end
    i = k+1:n;
    A(i,k) = A(i,k) / A(k,k);
    A(i,i) = A(i,i) - A(i,k) * A(k,i);
end

% extract L and U
if nargout == 2
    L = tril(A, -1) + eye(n);
else
    L = A;
end
U = triu(A);

end