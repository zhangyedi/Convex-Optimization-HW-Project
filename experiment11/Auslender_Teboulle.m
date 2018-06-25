function [time,risk] = Auslender_Teboulle(A,true_x,b,mu,epislon)
[m,d] = size(A);
z0 = zeros(m,1);
zp0 = z0;
theta0 = 1;
gap=1;

% this is for scheme-1
L_mu = 1/mu * (norm(A,2)^2) ;
time = 0;
while(gap>0.01)
    x0 = 1/mu * soft(A'*z0,1);
    zp1 = Shrink(z0+(b-A*x0)/(L_mu*theta0),epislon/(L_mu*theta0));
    z1 = (1-theta0)*z0+theta0*zp1;
    theta1 = 2/(1+(1+4/(theta0^2))^0.5);
    %gap = norm(true_x-x0,2)/norm(true_x,2) % without noise
    gap = abs(norm((A*x0-b),2)-epislon)/epislon
    theta0 = theta1;
    z0 = z1;
    zp0 = zp1;
    time = time + 1;
end
risk = (norm((A*x0-A*true_x),2)^2)/m;
end

