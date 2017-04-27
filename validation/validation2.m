load('Tc1_2.mat');
load('Tc2_2.mat');
load('data_test_2.mat');
load('outputs2636_55_1.mat');
[theta_55,d_55,T_error_55_ac,T_error_55_bc]=validation_test(data_test_2,x_55,Tc1_2,Tc2_2);