% load('data_2636.mat')
%  [q_opt,tau_opt,Tr_opt]=read.gettrans(data_2636);
%  [C,Tc1_2,Tc2_2,theta_bc,d_bc]=reg.coordinate_trans(q_opt,Tr_opt);
 load('opt2_1000.mat');%data_opt_100%
 load('Tc1_2.mat');
 load('Tc2_2.mat');
 [d_1000, theta_1000, x_1000, T_error_1000]=opt.optimization(data_opt2_1000, Tc1_2, Tc2_2);
 save('outputs2636_1000.mat','x_1000');