function [A,d] = qr_house(A)
%QR_HOUSE Householder方法计算QR分解
%   输入：A: m*n 阶矩阵（m>=n）
%   输出：A: 下三角存储n个Householder变换的v向量，上三角存储R
%        d: Householder变换的系数b

[m, n] = size(A);
d = zeros(n,1);

for j = 1:n
    % j == m means m == n, where we only need to operate n-1 householder
    % maps.
    if j < m
        [v, b] = house(A(j:m, j));
        A(j:m, j:n) = A(j:m, j:n) - b * (v * v') * A(j:m, j:n);
        d(j) = b;
        A(j+1:m, j) = v(2:m-j+1);
    end
end

end