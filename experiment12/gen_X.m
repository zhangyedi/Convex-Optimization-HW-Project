function true_X = gen_X(d1,d2)
%d1=20,d2=10
X1 = (randn(d1) + 1j*randn(d1))/sqrt(2);
[Q1,R1] = qr(X1);
R1 = diag(diag(R1)./abs(diag(R1)));
U1 = Q1*R1*Q1;
k1 = randperm(d1);
Q1 = U1(k1(1:d2),:)';
X2 = (randn(d1) + 1j*randn(d1))/sqrt(2);
[Q2,R2] = qr(X2);
R2 = diag(diag(R2)./abs(diag(R2)));
U2 = Q2*R2*Q2;
k2 = randperm(d1);
Q2 = U2(k2(1:d2),:)';
true_X = Q1*Q2';