function x = ls_solve(A,b,method)
%LS_SOLVE 求解最小二乘问题
%   输入：
%   A: m*n列满秩矩阵，m>=n
%   b: 右端项
%   method: "normal"，正则化方法；"qr"，正交变换法（QR分解），默认值
%   输出：
%   x: 最小二乘解

if nargin == 2
    method = "qr";
end

[~,n] = size(A);

if method == "normal"
    x = solve_cholesky(A'*A, A'*b);
elseif method == "qr"
    % QR decompsition
    [Q,R] = qr_house(A);
    % solve upper triangle linear system
    x = backward(R(1:n,:), Q(:,1:n)' * b);
else
    error("Invalid method input! Expecting either 'normal' or 'qr'!");
end

end