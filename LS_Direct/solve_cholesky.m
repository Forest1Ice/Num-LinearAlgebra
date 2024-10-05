function b = solve_cholesky(varargin)
% cholesky分解求解线性方程组Ax=b
%   输入: 
%   (1) A, b: 自动进行cholesky分解并求解Ax = b
%   (2) L, b: 已有cholesky分解，直接求解LL'x = b
%   输出:
%   x: 方程组的解   

if nargin == 2
    A = varargin{1};
    b = varargin{2};
    
    % 输入矩阵为下三角矩阵
    if (A == tril(A))
    % 输入矩阵为对称正定矩阵
    else
        A = cholesky(A);
    end
    
    % 前代
    b = forward(A, b);
    b = backward(A', b);
else
    error("Input invalid! Expecting either (A, b) or (L, b).");
end

end