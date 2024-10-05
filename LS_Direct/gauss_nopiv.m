function b = gauss_nopiv(varargin)
% 不选主元的Gauss消去法求解线性方程组Ax=b
%   输入: 
%   (1) A, b: 自动进行LU分解并求解Ax = b
%   (2) L, U, b: 已有LU分解，直接求解LUx = b
%   输出:
%   x: 方程组的解   

 % 输入为 A 和 b 的情况
if nargin == 2
    A = varargin{1};
    b = varargin{2};
    % 计算LU分解
    [L,U] = lu_nopiv(A);
% 输入为 L, U 和 b 的情况
elseif nargin == 3
    L = varargin{1};
    U = varargin{2};
    b = varargin{3};
else
    error("Input invalid! Expecting either (A, b) or (L, U, b).");
end

% 前代
b = forward(L,b);
% 回溯
b = backward(U,b);

end