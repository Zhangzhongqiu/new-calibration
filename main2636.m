% get the result for registration: 'Tc1_2' and 'Tc2_2'
% load('data_2636.mat')    %load the measured data
% [q_opt,tau_opt,Tr_opt]=read.gettrans(data_2636);
% [C,Tc1_2,Tc2_2,theta_bc,d_bc]=reg.coordinate_trans(q_opt,Tr_opt);

 load('opt5_2.mat');%load the points to be optimized
 load('Tc1_2.mat');
 load('Tc2_2.mat');
 x_5=opt.optimization(opt5_2, Tc1_2, Tc2_2);
 %save identified error parameters as 'x_ '
 save('id5_2.mat','x_5');
 

%start validation test
%  load the test data set
 load('data_test_2.mat');
%  'theta_' the vector stores rotation error
%  'd_90' the vectror stores
 [theta_5,d_5,T_error_5_ac,T_error_5_bc]=validation_test(data_test_2,x_5,Tc1_2,Tc2_2);