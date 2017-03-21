%test the quality of the identified error parameters
%load the configs specific for test 'data_test'
load('data_test.mat');
load('Tc1.mat');
load('Tc2.mat');
%load the idenrified error parameters from opt group of different sizes
load('outputs1402_100.mat');
[theta,d,T_error]=validation_test(data_test,x,tc1,tc2)
% load('outputs1402_200_2.mat');
% load('outputs1402_300.mat');
% load('outputs1402_400.mat');
% load('outputs1402_500.mat');
% load('outputs1402_600.mat');
% load('outputs1402_700.mat');
% load('outputs1402_800_2.mat');
% load('outputs1402_900.mat');
% load('outputs1402_1000.mat');
% load('outputs1402_1100.mat');
% load('tc1_300.mat');
% load('tc2_300.mat');
