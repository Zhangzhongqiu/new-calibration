%test the quality of the identified error parameters
%load the configs specific for test 'data_test'
load('data_test.mat');
load('Tc1.mat');
load('Tc2.mat');
% %load the idenrified error parameters from opt group of different sizes
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
load('outputs1402_1100_2.mat');
[theta_100,d_100,T_error_100]=validation_test(data_test_302,x_100,Tc1,Tc2);
[theta_200,d_200,T_error_200]=validation_test(data_test_302,x_200,Tc1,Tc2);
[theta_300,d_300,T_error_300]=validation_test(data_test_302,x_300,Tc1,Tc2);
[theta_400,d_400,T_error_400]=validation_test(data_test_302,x_400,Tc1,Tc2);
[theta_500,d_500,T_error_500]=validation_test(data_test_302,x_500,Tc1,Tc2);
[theta_600,d_600,T_error_600]=validation_test(data_test_302,x_600,Tc1,Tc2);
[theta_700,d_700,T_error_700]=validation_test(data_test_302,x_700,Tc1,Tc2);
[theta_800,d_800,T_error_800]=validation_test(data_test_302,x_800,Tc1,Tc2);
[theta_900,d_900,T_error_900]=validation_test(data_test_302,x_900,Tc1,Tc2);
[theta_1000,d_1000,T_error_1000]=validation_test(data_test_302,x_1000,Tc1,Tc2);
[theta_1100,d_1100,T_error_1100_ac,T_error_1100_bc]=validation_test(data_test_302,x_1100,Tc1,Tc2);
%[f1,f2]=plot.figplot(d_1100,theta_1100);
d_result=[max(d_100(:,1)), mean(d_100(:,1)), min(d_100(:,1));
          max(d_200(:,1)), mean(d_200(:,1)), min(d_200(:,1));
          max(d_300(:,1)), mean(d_300(:,1)), min(d_300(:,1));
          max(d_400(:,1)), mean(d_400(:,1)), min(d_400(:,1));
          max(d_500(:,1)), mean(d_500(:,1)), min(d_500(:,1));
          max(d_600(:,1)), mean(d_600(:,1)), min(d_600(:,1));
          max(d_700(:,1)), mean(d_700(:,1)), min(d_700(:,1));
          max(d_800(:,1)), mean(d_800(:,1)), min(d_800(:,1));
          max(d_900(:,1)), mean(d_900(:,1)), min(d_900(:,1));
          max(d_1000(:,1)),mean(d_1000(:,1)),min(d_1000(:,1));
          max(d_1100(:,1)),mean(d_1100(:,1)),min(d_1100(:,1))];
%       
%       theta_result=[max(d_100(:,1)), mean(d_100(:,1)), min(d_100(:,1));
%                     max(d_200(:,1)), mean(d_200(:,1)), min(d_200(:,1));
%                     max(d_300(:,1)), mean(d_300(:,1)), min(d_300(:,1));
%                     max(d_400(:,1)), mean(d_400(:,1)), min(d_400(:,1));
%                     max(d_500(:,1)), mean(d_500(:,1)), min(d_500(:,1));
%                     max(d_600(:,1)), mean(d_600(:,1)), min(d_600(:,1));
%                     max(d_700(:,1)), mean(d_700(:,1)), min(d_700(:,1));
%                     max(d_800(:,1)), mean(d_800(:,1)), min(d_800(:,1));
%                     max(d_900(:,1)), mean(d_900(:,1)), min(d_900(:,1));
%                     max(d_1000(:,1)),mean(d_1000(:,1)),min(d_1000(:,1));
%                     max(d_1100(:,1)),mean(d_1100(:,1)),min(d_1100(:,1))];

% load('tc1_300.mat');
% load('tc2_300.mat');
