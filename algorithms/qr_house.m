function [Q,R] = qr_house(A)
%QR_HOUSE Householder方法计算QR分解
%   输入：A: m*n 阶矩阵（m>=n）
%   输出：Q: m*m 的正交矩阵
%        R: m*n 且具有非负对角元的上三角阵，满足 A = Q*R

[m, n] = size(A);
Q = eye(m);

for j = 1:n
    % j == m means m == n, where we only need to operate n-1 householder
    % maps.
    if j < m
        [v, b] = house(A(j:m, j));
        A(j:m, j:n) = A(j:m, j:n) - b * (v * v') * A(j:m, j:n);
        Q(1:m,j:m) = Q(1:m,j:m) * (eye(m-j+1) - b * (v * v'));
    end
end

R = triu(A);

end