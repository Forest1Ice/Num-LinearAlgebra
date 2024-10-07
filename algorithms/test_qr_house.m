% test function 'qr_house'

A = [1,2;3,4;5,6];

% QR decomposition
[Q,R] = qr_house(A);

% check whether A == QR
if norm(A - Q*R) < 1e-10
    disp("Success! QR decompsition is correct!");
    disp(['||A-Q*R|| = ', num2str(norm(A - Q*R))]);
else
    disp("Failure! QR decompsition is wrong!");
end
