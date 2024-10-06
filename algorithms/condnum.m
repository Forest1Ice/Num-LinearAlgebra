function k = condnum(A, p)
%CONDNUM1 计算方阵的条件数，默认在1范数下
%   输入：
%       A: n阶方阵
%       p: p norm, 可以取1,Inf, 1 in default

if nargin < 2
    p = 1;
end

% ||A||_p
x = matnorm(A,p);

% ||A^{-1}||_p
if p == 1
    y = mat1norm_opt(A, true);
% ||A^{-1}||_{\infty} = ||A^{-T}||_1
elseif p == Inf
    y = mat1norm_opt(A', true);
end

k = x * y;

end