load('outputs1402_100.mat');
load('outputs1402_200.mat');
load('outputs1402_300.mat');
load('outputs1402_400.mat');
load('outputs1402_500.mat');
load('outputs1402_600.mat');
load('outputs1402_700.mat');
load('outputs1402_800.mat');
load('outputs1402_900.mat');
load('outputs1402_1000.mat');
load('outputs1402_1100.mat');
%load('outputs1402_800_2.mat');
x=zeros(11,28);
x(1,:)=x_100;
x(2,:)=x_200;
x(3,:)=x_300;
x(4,:)=x_400;
x(5,:)=x_500;
x(6,:)=x_600;
x(7,:)=x_700;
x(8,:)=x_800;
x(9,:)=x_900;
x(10,:)=x_1000;
x(11,:)=x_1100;

% figure %theta%
% plot(x(:,1),'-o','LineWidth',2);
% hold on
% plot(x(:,2),'-o','LineWidth',2);
% plot(x(:,3),'-o','LineWidth',2);
% plot(x(:,4),'-o','LineWidth',2);
% plot(x(:,5),'-o','LineWidth',2);
% plot(x(:,6),'-o','LineWidth',2);
% plot(x(:,7),'-o','LineWidth',2);
% hold off
% xlabel('Number of configurations[\times100]');
% ylabel('\delta \theta_i[rad]');
% legend('\delta \theta_1','\delta \theta_2','\delta \theta_3','\delta \theta_4',...
%     '\delta \theta_5','\delta \theta_6','\delta \theta_7','Location','southeastoutside');

% figure %d%
% plot(1000*x(:,8),'-o','LineWidth',2);
% hold on
% plot(1000*x(:,9),'-o','LineWidth',2);
% plot(1000*x(:,10),'-o','LineWidth',2);
% plot(1000*x(:,11),'-o','LineWidth',2);
% plot(1000*x(:,12),'-o','LineWidth',2);
% plot(1000*x(:,13),'-o','LineWidth',2);
% plot(1000*x(:,14),'-o','LineWidth',2);
% hold off
% xlabel('Number of configurations[\times100]');
% ylabel('\delta d_i[mm]');
% legend('\delta d_1','\delta d_2','\delta d_3','\delta d_4',...
%     '\delta d_5','\delta d_6','\delta d_7','Location','southeastoutside');

% figure %alpha%
% plot(x(:,15),'-o','LineWidth',2);
% hold on
% plot(x(:,16),'-o','LineWidth',2);
% plot(x(:,17),'-o','LineWidth',2);
% plot(x(:,18),'-o','LineWidth',2);
% plot(x(:,19),'-o','LineWidth',2);
% plot(x(:,20),'-o','LineWidth',2);
% plot(x(:,21),'-o','LineWidth',2);
% hold off
% xlabel('Number of configurations[\times100]');
% ylabel('\delta \alpha_i[rad]');
% legend('\delta \alpha_1','\delta \alpha_2','\delta \alpha_3','\delta \alpha_4',...
%     '\delta \alpha_5','\delta \alpha_6','\delta \alpha_7','Location','southeastoutside');

figure %k%
plot(x(:,22),'-o','LineWidth',2);
hold on
plot(x(:,23),'-o','LineWidth',2);
plot(x(:,24),'-o','LineWidth',2);
plot(x(:,25),'-o','LineWidth',2);
plot(x(:,26),'-o','LineWidth',2);
plot(x(:,27),'-o','LineWidth',2);
plot(x(:,28),'-o','LineWidth',2);
hold off
xlabel('Number of configurations[\times100]');
ylabel('k_i');
legend('k_1','k_2','k_3','k_4',...
'k_5','k_6','k_7','Location','southeastoutside');