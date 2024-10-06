function x = matnorm(A, p)
%MATNORM 直接计算非奇异阵A的p范数
%   p = 1: ||A||_1 = max_{j} sum_{i}|a_{i,j}|
%   p = Inf: ||A||_{infty} = max_{i} sum_{j}|a_{i,j}|
%   p = 1 in default

if nargin < 2
    p = 1;
end

if p == 1
    x = max(sum(abs(A)));
elseif p == Inf
    x = max(sum(abs(A), 2));
end

end