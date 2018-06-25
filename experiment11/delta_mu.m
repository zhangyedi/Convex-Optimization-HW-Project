function y = delta_mu()
mm=zeros(1,190);
x=zeros(1,190);
y=zeros(1,190);
iter=1;
for mu=0.1:0.1:10
mm(iter)=delta_upper(0.05,1,mu);
x(iter)=mu;
y(iter)=mm(iter);
iter = iter +1 ;

end
t1=mm(1:100);

for mu=11:1:100
mm(iter)=delta_upper(0.05,1,mu);
x(iter)=mu;
y(iter)=mm(iter);
iter = iter +1 ;
mu
end
t2 = mm(101:190);

plot(x,y);
xlabel('mu','FontSize',15);
ylabel('statistical dimension', 'FontSize',15);
title('    Statistical Dimension vs. Mu: SPARSE VECTOR REGRESSION','Fontsize',13)