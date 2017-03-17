%open theta_1.fig;
load('x_2.mat');
plot(x(:,1),'-o', 'LineWidth',2);
hold on
plot(x(:,2),'-o', 'LineWidth',2);
plot(x(:,3),'-o', 'LineWidth',2);
plot(x(:,4),'-o', 'LineWidth',2);
plot(x(:,5),'-o', 'LineWidth',2);
plot(x(:,6),'-o', 'LineWidth',2);
plot(x(:,7),'-o', 'LineWidth',2);
box off;
xlabel('Nnmber of configurations');
ylabel('\delta \theta_i [rad]');
legend('\delta \theta_1','\delta \theta_2','\delta \theta_3','\delta \theta_4','\delta \theta_5','\delta \theta_6',...
'\delta \theta_7','Location','southeastoutside');
matlab2tikz('theta_1.tex');