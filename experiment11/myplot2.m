best_mu_table1 = [0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10];
best_mu_table2 = [0.11,0.27,0.39,0.51,0.64,0.77,0.90,1.04,1.18,1.33,1.48,1.64,1.81,1.99,2.17,2.37,2.58,2.81,3.06,3.33,3.61,3.94,4.30,4.70,5.16,5.71,6.34,7.14,8.13,9.49];
best_mu_table3 = [0.11,0.16,0.20,0.25,0.29,0.33,0.37,0.40,0.44,0.48,0.51,0.54,0.57,0.60,0.62,0.65,0.67,0.70,0.72,0.75,0.77,0.79,0.81,0.83,0.85,0.87,0.89,0.91,0.93,0.95];
m=1000:100:3900;
plot(m,best_mu_table1,m,best_mu_table2,m,best_mu_table3)
xlabel('sample size','FontSize',15)
ylabel('mu selected', 'FontSize',15)
h=legend('constant smoothing','constant risk','alpha=0.9');
set(h,'Fontsize',15);
title('mu selected vs. sample size','Fontsize',15)