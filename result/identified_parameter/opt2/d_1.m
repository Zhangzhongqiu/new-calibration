load('x_2.mat');
plot(x(:,8)*1000,'-o', 'LineWidth',2);
hold on
plot(x(:,9)*1000,'-o', 'LineWidth',2);
plot(x(:,10)*1000,'-o', 'LineWidth',2);
plot(x(:,11)*1000,'-o', 'LineWidth',2);
plot(x(:,12)*1000,'-o', 'LineWidth',2);
plot(x(:,13)*1000,'-o', 'LineWidth',2);
plot(x(:,14)*1000,'-o', 'LineWidth',2);
box off;
xlabel('Nnmber of configurations');
ylabel('\delta d_i [mm]');
legend('\delta d_1','\delta d_2','\delta d_3','\delta d_4','\delta d_5','\delta d_6',...
'\delta d_7','Location','southeastoutside');
matlab2tikz('d_1.tex');