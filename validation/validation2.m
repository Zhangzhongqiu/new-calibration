load('Tc1_2.mat');
load('Tc2_2.mat');
load('data_test_2.mat');
load('id15.mat');
[theta_15,d_15,T_error_15_ac,T_error_15_bc]=validation_test(data_test_2,x_15,Tc1_2,Tc2_2);