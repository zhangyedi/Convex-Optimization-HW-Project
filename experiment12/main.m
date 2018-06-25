% set ambient dimension d, smoothing balanced scheme
clear;
d=40*40;
sigma = 0.01;


ave_cost_rec1 = zeros(29,1);
ave_risk_rec1 = zeros(29,1);
ave_cost_rec2 = zeros(29,1);
ave_risk_rec2 = zeros(29,1);
ave_cost_rec3 = zeros(29,1);
ave_risk_rec3 = zeros(29,1);
% set sample size
count = 1;

for m = 400:100:1500 
    m
    A = gen_A(m,d);    
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
    


