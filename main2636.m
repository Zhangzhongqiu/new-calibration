% load('data_2636.mat')
%  [q_opt,tau_opt,Tr_opt]=read.gettrans(data_2636);
%  [C,Tc1_2,Tc2_2,theta_bc,d_bc]=reg.coordinate_trans(q_opt,Tr_opt);
 load('opt2_85_1.mat');%data_opt_100%
 load('Tc1_2.mat');
 load('Tc2_2.mat');
 [d_85, theta_85, x_85, T_error_85]=opt.optimization(data_opt2_85, Tc1_2, Tc2_2);
 save('outputs2636_85_1.mat','x_85');
%  clear d_80;
%  clear theta_80;
%  clear T_error_50;
 load('data_test_2.mat');
 [theta_85,d_85,T_error_85_ac,T_error_85_bc]=validation_test(data_test_2,x_85,Tc1_2,Tc2_2);