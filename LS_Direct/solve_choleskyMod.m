function b = solve_choleskyMod(varargin)
% 改进的cholesky分解求解线性方程组Ax=b
%   输入: 
%   (1) A, b: 自动进行cholesky分解并求解Ax = b
%   (2) L, D, b: 已有cholesky分解，直接求解LDL'x = b
%   输出:
%   x: 方程组的解   

 % 输入为 A 和 b 的情况
if nargin == 2
    A = varargin{1};
    b = varargin{2};
    [L,D] = choleskyMod(A);
elseif nargin == 3
    L = varargin{1};
    D = varargin{2};
    b = varargin{3};
else
    error("Input invalid! Expecting either (A, b) or (L, D, b).");
end

% 前代
b = forward(L, b);
% 回溯
b = backward(D*L', b);

end