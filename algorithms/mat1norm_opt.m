function y = mat1norm_opt(A,inverse)
%MAT1NORM_OPT 优化法估计矩阵1范数
%   输入：A: 方阵
%        inverse: false, A是显式表示; true, A = B^{-1}. false in default.
%   输出：1范数估计值

if nargin < 2
    inverse = false;
end

n = length(A);
x = 1/n * ones(n,1);
k = 1;

while k == 1
    if inverse == false
        w = A * x;
        v = sign(w);
        z = A' * v;
    else
        w = gauss_colpiv(A, x);
        v = sign(w);
        z = gauss_colpiv(A', v);
    end
    [m,j] = max(abs(z));
    if m <= z'*x
        y = norm(w, 1);
        k = 0;
    else
        x = zeros(n, 1);
        x(j) = 1;
        k = 1;
    end
end
end