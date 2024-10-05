function [L,U,p,q] = lu_comppiv(A)
%LU_COMPPIV 全主元法LU分解
%   全主元Gauss消去法计算LU分解，返回单位下三角、上三角矩阵以及置换向量p,q

[~, n] = size(A);
p = 1:n;
q = 1:n;

for k = 1:n-1
    % colm是每一列最大元素组成的行向量，row是相应的行号
    [colm, row] = max(abs(A(k:n,k:n)));
    [~,col] = max(colm);
    i = row(col) + k - 1;
    j = col + k - 1;

    % 若最大值为0，矩阵奇异，停止消元
    if(A(i,j) ~= 0)
        % 交换主元行列
        if (i ~= k)
            A([k i], :) = A([i k], :);
            p([k i]) = p([i k]);
        end

        if (j ~= k)
            A(:, [k j]) = A(:,[j k]);
            q([k j]) = q([j k]);
        end

        % 计算乘子
        m = k+1:n;
        A(m,k) = A(m,k) / A(k,k);
        A(m,m) = A(m,m) - A(m,k) * A(k,m);
    else
        break;
    end
end

U = triu(A);
if nargout == 4
    L = tril(A, -1) + eye(n);
elseif nargout == 3
    L(p,:) = tril(A, -1) + eye(n);
elseif nargout == 2
    L(p,:) = tril(A, -1) + eye(n);
    U(:,q) = triu(A);
else
    L= A;
end

end