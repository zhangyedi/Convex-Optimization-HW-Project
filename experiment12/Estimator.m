function [ave_cost1,ave_risk1,ave_cost2,ave_risk2,ave_cost3,ave_risk3] = Estimator(A,noise,sigma)
[m,d] = size(A);
ave_time = 3;

cost_rec1 = zeros(1,ave_time);
risk_rec1 = zeros(1,ave_time);
cost_rec2 = zeros(1,ave_time);
risk_rec2 = zeros(1,ave_time);
cost_rec3 = zeros(1,ave_time);
risk_rec3 = zeros(1,ave_time);

% 每个m值跑5次，取平均值
for time = 1:1:ave_time
    
    true_X = gen_X(40,2);
    b = A*vec(true_X) + noise;
    [cost1,risk1,cost2,risk2,cost3,risk3] = solver(A,true_X,b,sigma);
    cost_rec1(time) = cost1;
    risk_rec1(time) = risk1;
    cost_rec2(time) = cost2;
    risk_rec2(time) = risk2;
    cost_rec3(time) = cost3;
    risk_rec3(time) = risk3;
end
ave_cost1 = sum(cost_rec1',1)/ave_time;
ave_risk1 = sum(risk_rec1',1)/ave_time;
ave_cost2 = sum(cost_rec2',1)/ave_time;
ave_risk2 = sum(risk_rec2',1)/ave_time;
ave_cost3 = sum(cost_rec3',1)/ave_time;
ave_risk3 = sum(risk_rec3',1)/ave_time;
