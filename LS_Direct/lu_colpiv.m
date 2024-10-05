function [L,U,p] = lu_colpiv(A)
%LU_COLPIV 选列主元的LU分解
%   列主元Gauss消去法，返回单位下三角、上三角矩阵以及置换向量

[~, n] = size(A);
p = 1:n;

for k = 1:n-1
    [~, m] = max(abs(A(k:n,k)));
    m = m + k - 1;
    % 若第k列为0，跳过消元
    if(A(m,k) ~= 0)
        % 交换主元行
        A([k m], :) = A([m k], :);
        p([k m]) = p([m k]);

        % 计算乘子
        i = k+1:n;
        A(i,k) = A(i,k) / A(k,k);
        A(i,i) = A(i,i) - A(i,k) * A(k,i);
    end
end

if nargout == 3
    L = tril(A, -1) + eye(n);
elseif nargout == 2
    L(p,:) = tril(A, -1) + eye(n);
else
    L= A;
end
U = triu(A);

end