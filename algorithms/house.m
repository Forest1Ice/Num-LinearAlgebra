function [x, b] = house(x)
%HOUSE 计算Householder变换
%   Hx = ae1, H = I - 2ww^T = I - bvv' = I - (2/(v'v))vv'

n = length(x);
% avoid overflow
x = x / norm(x, Inf);
sigma = x(2:n)' * x(2:n);
if sigma == 0
    b = 0;
else
    alpha = sqrt(x(1)^2 + sigma);
    if x(1) <= 0
        x(1) = x(1) - alpha;
    else
        x(1) = -sigma / (x(1) + alpha);
    end
    b = 2 * x(1)^2 / (sigma + x(1)^2);
    % avoid underflow
    x = x / x(1);
end

end