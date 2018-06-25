function y = delta_upper(X,mu)
y_rec=zeros(2001,1);
iter = 1;
 rho = 0.05;
%rho = 0.1;

for tau=0:0.001:2
    y_rec(iter)= rho + (1-rho)*( rho*(1+tau^2*(1+mu*norm(X,2))^2)+(1-rho)/(12*pi)*(24*(1+tau^2)*acos(tau/2)-tau*(26+tau^2)*sqrt(4-tau^2)));
    iter=iter+1;
end

y=min(y_rec)*1600;

