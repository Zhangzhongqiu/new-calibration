%test the quality of the identified error parameters
%load the configs specific for test 'data_test'
load('data_test.mat');
load('Tc1.mat');
load('Tc2.mat');
% %load the idenrified error parameters from opt group of different sizes
 load('outputs1402_1100.mat');
 load('parameter16.mat');
 x_1100(4)=x_1100_16(1);
 x_1100(5)=x_1100_16(5);
 x_1100(6)=x_1100_16(9);
 x_1100(7)=x_1100_16(13);
 
 x_1100(25)=x_1100_16(2);
 x_1100(26)=x_1100_16(6);
 x_1100(27)=x_1100_16(10);
 x_1100(28)=x_1100_16(14);
 
 x_1100(11)=x_1100_16(3);
 x_1100(12)=x_1100_16(7);
 x_1100(13)=x_1100_16(11);
 x_1100(14)=x_1100_16(15);
 
 x_1100(18)=x_1100_16(4);
 x_1100(19)=x_1100_16(8);
 x_1100(20)=x_1100_16(12);
 x_1100(21)=x_1100_16(16);
 
 [theta_1100,d_1100,T_error_1100_ac,T_error_1100_bc]=validation_test(data_test_302,x_1100,Tc1,Tc2);