function b = gauss_colpiv(varargin)
% 选列主元的Gauss消去法求解线性方程组Ax=b
%   输入: 
%   (1) A, b: 自动进行LU分解并求解Ax = b
%   (2) L, U, p, b: 已有LU分解，直接求解LUx = b(p)
%   输出:
%   x: 方程组的解   

 % 输入为 A 和 b 的情况
if nargin == 2
    A = varargin{1};
    b = varargin{2};
    % 计算LU分解
    [L,U,p] = lu_colpiv(A);
 % 输入为 L, U, p 和 b 的情况
elseif nargin == 4
    L = varargin{1};
    U = varargin{2};
    p = varargin{3};
    b = varargin{4};
else
    error("Input invalid! Expecting either (A, b) or (L, U, p, b).");
end

% 前代
b = forward(L,b(p));
% 回溯
b = backward(U,b);

end