function [c,s] = givens(varargin)
%GIVENS 计算Givens变换
%   求解
%       [c s]  [a] = [r]
%       [-s c] [b] = [0]
%       c= cos(t), s = sin(t)

if nargin == 1
    x = varargin{1};
    a = x(1);
    b = x(2);
elseif nargin == 2
    a = varargin{1};
    b = varargin{2};
else
    error("Invalid input! Expecting either (x) or (a,b)!");
end

if b == 0
    c = 1;
    s = 0;
else
    if abs(a) > abs(b)
        t = b / a;
        c = 1 / sqrt(1 + t^2);
        s = c * t;
    else
        t = a / b;
        s = 1 / sqrt(1 + t^2);
        c = s * t;
    end
end

end