load('x_2.mat');
plot(x(:,15),'-o', 'LineWidth',2);
hold on
plot(x(:,16),'-o', 'LineWidth',2);
plot(x(:,17),'-o', 'LineWidth',2);
plot(x(:,18),'-o', 'LineWidth',2);
plot(x(:,19),'-o', 'LineWidth',2);
plot(x(:,20),'-o', 'LineWidth',2);
plot(x(:,21),'-o', 'LineWidth',2);
box off;
xlabel('Nnmber of configurations');
ylabel('\delta \alpha_i [rad]');
legend('\delta \alpha_1','\delta \alpha_2','\delta \alpha_3','\delta \alpha_4','\delta \alpha_5','\delta \alpha_6',...
'\delta \alpha_7','Location','southeastoutside');
matlab2tikz('alpha_1.tex');