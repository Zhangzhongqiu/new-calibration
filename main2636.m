% load('data_2636.mat')
%  [q_opt,tau_opt,Tr_opt]=read.gettrans(data_2636);
%  [C,Tc1_2,Tc2_2,theta_bc,d_bc]=reg.coordinate_trans(q_opt,Tr_opt);
 load('opt2_400.mat');%data_opt_100%
 load('Tc1_2.mat');
 load('Tc2_2.mat');
 [d_400, theta_400, x_400, T_error_400]=opt.optimization(data_opt2_400, Tc1_2, Tc2_2);
 save('outputs2636_400.mat','x_400');