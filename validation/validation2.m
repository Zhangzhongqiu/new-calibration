load('Tc1_2.mat');
load('Tc2_2.mat');
load('data_test_2.mat');
load('outputs2636_700.mat');
[theta_700,d_700,T_error_700_ac,T_error_700_bc]=validation_test(data_test_2,x_700,Tc1_2,Tc2_2);