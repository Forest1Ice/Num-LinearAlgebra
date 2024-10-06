function result = accuracyEstimate(A,b,x,p)
%ACCURACYESTIMATE 线性方程组解的精度估计
%   输入：  
%       A: n阶非奇异系数矩阵
%       b: 右端项
%       x: 计算解
%       p: p norm, 1 in default
%   输出：
%       result: 计算解的相对误差 ||x_real - x_est||_p / ||x||_real 的上限估计

if nargin == 3
    p = 1;
end

% condition number
k = condnum(A, p);
% residual
r = b - A * x;
% error
result = k * norm(r, p) / norm(b, p);

end