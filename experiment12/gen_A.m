function A = gen_A(m,d)
    X = (randn(d) + 1j*randn(d))/sqrt(2);
    [Q,R] = qr(X);
    R = diag(diag(R)./abs(diag(R)));
    U = Q*R*Q;
    k = randperm(d);
    A = U(k(1:m),:);
end