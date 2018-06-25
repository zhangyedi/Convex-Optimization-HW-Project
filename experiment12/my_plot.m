x_axis=400:100:1500;
% plot(x_axis,ave_risk_rec1,'pink');
% hold on;
% plot(x_axis,ave_risk_rec2,'b');
% hold on;
% plot(x_axis,ave_risk_rec3,'r');

subplot(1,2,1)
plot(x_axis,ave_cost_rec1(1:12),x_axis,ave_cost_rec2(1:12),x_axis,ave_cost_rec3(1:12));
xlabel('sample size','FontSize',15)
ylabel('computation cost', 'FontSize',15)
h=legend('constant smoothing','constant risk','alpha=0.9');
set(h,'Fontsize',14);
title('    Cost vs. sample size: LOW-RANK MATRIX REGRESSION','Fontsize',13)

subplot(1,2,2)
plot(x_axis,ave_risk_rec1(1:12),x_axis,ave_risk_rec2(1:12),x_axis,ave_risk_rec3(1:12));
xlabel('sample size','FontSize',13)
ylabel('computation risk', 'FontSize',15)
h=legend('constant smoothing','constant risk','alpha=0.9');
set(h,'Fontsize',14);
title('    Risk vs. sample size: LOW-RANK MATRIX REGRESSION','Fontsize',13)

