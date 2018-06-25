

rho1 = 0.02;
rho2 = 0.2;
rho3 = 0.5;
%mu=0.1;
x_inf_norm=1;
y1=zeros(100,1);
y2=zeros(100,1);
y3=zeros(100,1);
iter = 1;
x=[0:0.01:1];
for mu=0:0.01:1
    y1(iter) = delta_upper(rho1,x_inf_norm,mu);
    y2(iter) = delta_upper(rho2,x_inf_norm,mu);
    y3(iter) = delta_upper(rho3,x_inf_norm,mu);
    iter = iter +1;
end
plot(x,y1,'r');

hold on;
plot(x,y2,'b');
hold on;
plot(x,y3,'green');