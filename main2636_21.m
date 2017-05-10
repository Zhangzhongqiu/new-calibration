%only optimize 21 kinematic parameters 
clc
clear all
load('opt95.mat');%load the points to be optimized
 load('Tc1_2.mat');
 load('Tc2_2.mat');
 x_95=opt.optimization2(opt95, Tc1_2, Tc2_2);
 %save identified error parameters as 'x_ '
 save('id95.mat','x_95');
 

%start validation test
%  load the test data set
 load('data_test_2.mat');
%  'theta_' the vector stores rotation error
%  'd_90' the vectror stores
 [theta_95,d_95,T_error_95_ac,T_error_95_bc]=validation_test_2(data_test_2,x_95,Tc1_2,Tc2_2);
 max1=max(d_95)*1000;
 max2=max(theta_95)*1000;
 mean1=mean(d_95)*1000;
 mean2=mean(theta_95)*1000;
 min1=min(d_95)*1000;
 min2=min(theta_95)*1000;