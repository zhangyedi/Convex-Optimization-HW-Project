function [time,risk] = Auslender_Teboulle(A,true_X,b,mu,epislon)
[m,d] = size(A);
z0 = zeros(m,1);
zp0 = z0;
theta0 = 1;
gap=1;

% this is for scheme-1
L_mu = 1/mu * (norm(A,2)^2) ;
time = 0;
while(gap>0.01)
    y0 = (1-theta0) * z0 + theta0 * zp0;
    mm = my_mat(A'*z0);
    [U,S,V]=svd(mm,'econ');
    
    x0 = 1/mu * U * diag((soft(diag(S),1)))*V';  
    
    zp1 = Shrink(z0+(b-A*vec(x0))/(L_mu*theta0),epislon/(L_mu*theta0)); % 20*20
    z1 = (1-theta0)*z0+theta0*zp1;
    theta1 = 2/(1+(1+4/(theta0^2))^0.5);
    gap = abs(norm((A*vec(x0)-b),2)-epislon)/epislon
    %gap = norm(true_X-x0,2)/norm(true_X,2);
    theta0 = theta1;
    z0 = z1;
    zp0 = zp1;
    time = time + 1;
end
risk = (norm(A*vec(x0-true_X),2)^2)/m;
end

