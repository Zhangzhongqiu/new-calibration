load('opt_1100.mat');
load('Tc1.mat');
load('Tc2.mat');
[d_1100, theta_1100, x_1100_2, T_error_1100]=opt.optimization2(data_opt_1100, Tc1, Tc2);
save('outputs1402_1100_2.mat','x_1100_2');