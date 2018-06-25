function y = delta_upper(rho,x_inf_norm,mu)
y_rec=zeros(5000,1);
iter = 1;


for tau=0:0.001:5
    fun = @(u) (u-tau).^2 .* exp(-u.^2/2);
    intgr = integral(fun,tau,Inf);
    y_rec(iter)= rho*(1+tau^2*((1+mu * x_inf_norm)^2))+(1-rho)* sqrt(2/pi)*intgr;
    iter=iter+1;
end

y=min(y_rec)*400

