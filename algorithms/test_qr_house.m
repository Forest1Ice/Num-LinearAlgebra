% test function 'qr_house'

A = [1,2;3,4;5,6];
[m,n]  = size(A);

% QR decomposition
[B,d] = qr_house(A);

% extract Q and R
R = triu(B);
Q = eye(m);
v = ones(m,1);
for j = 1:n
    if j < m
        v(2:m-j+1) = B(j+1:m,j);
        Q(1:m,j:m) = Q(1:m,j:m) * (eye(m-j+1) - d(j) * (v(1:m-j+1) * v(1:m-j+1)'));
    end
end
 % check whether A == QR
if norm(A - Q*R) < 1e-10
    disp("Success! QR decompsition is correct!");
    disp(['||A-Q*R|| = ', num2str(norm(A - Q*R))]);
else
    disp("Failure! QR decompsition is wrong!");
end
