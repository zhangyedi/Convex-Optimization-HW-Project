% set ambient dimension d, smoothing balanced scheme
clear;
d=400;
sigma = 0.01;


ave_cost_rec1 = zeros(30,1);
ave_risk_rec1 = zeros(30,1);
ave_cost_rec2 = zeros(30,1);
ave_risk_rec2 = zeros(30,1);
ave_cost_rec3 = zeros(30,1);
ave_risk_rec3 = zeros(30,1);
% set sample size
count = 1;

for m = 110:10:390 
    m
    X = (randn(d) + 1j*randn(d))/sqrt(2);
    [Q,R] = qr(X);
    R = diag(diag(R)./abs(diag(R)));
    U = Q*R*Q;
    k = randperm(d);
    A = U(k(1:m),:);
    noise = randn(m,1)*sigma;
   
    [ave_cost1, ave_risk1, ave_cost2, ave_risk2, ave_cost3, ave_risk3] = Estimator(A,noise,sigma);
    ave_cost_rec1(count) = ave_cost1 * m;
    ave_risk_rec1(count) = ave_risk1;
    ave_cost_rec2(count) = ave_cost2*m;
    ave_risk_rec2(count) = ave_risk2;
    ave_cost_rec3(count) = ave_cost3*m;
    ave_risk_rec3(count) = ave_risk3;
    count = count + 1; 
end
    


