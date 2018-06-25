best_mu_table1 = [0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10,0.10];
best_mu_table2 = [0.14,0.26,0.38,0.50,0.63,0.75,0.87,1.00,1.13,1.25,1.39,1.53,1.67,1.82,1.97,2.13,2.29,2.47,2.65,2.85,3.06,3.28,3.51,3.77,4.05,4.35,4.68,5.06,5.47]; 
best_mu_table3 = [0.11,0.14,0.17,0.20,0.23,0.26,0.29,0.32,0.35,0.37,0.40,0.42,0.44,0.46,0.48,0.50,0.52,0.54,0.55,0.57,0.59,0.60,0.62,0.63,0.65,0.66,0.67,0.69,0.70];
m=110:10:390
plot(m,best_mu_table1,m,best_mu_table2,m,best_mu_table3)
xlabel('sample size','FontSize',15)
ylabel('mu selected', 'FontSize',15)
h=legend('constant smoothing','constant risk','alpha=0.9');
set(h,'Fontsize',15);
title('mu selected vs. sample size: LOW-RANK MATRIX REGRESSION','Fontsize',15)