load('x_2.mat');
plot(x(:,22),'-o', 'LineWidth',2);
hold on
plot(x(:,23),'-o', 'LineWidth',2);
plot(x(:,24),'-o', 'LineWidth',2);
plot(x(:,25),'-o', 'LineWidth',2);
plot(x(:,26),'-o', 'LineWidth',2);
plot(x(:,27),'-o', 'LineWidth',2);
plot(x(:,28),'-o', 'LineWidth',2);
box off;
xlabel('Nnmber of configurations');
ylabel('k_i');
legend('k_1','k_2','k_3','k_4','k_5','k_6',...
'k_7','Location','southeastoutside');
matlab2tikz('k_1.tex');