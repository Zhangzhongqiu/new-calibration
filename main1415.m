 %1402 configs in all
 
%  data1=csvread('20170306_run_1.csv',1,1);
%  data2=read.exclude0(data1);
load('/home/kelm/uegabe/Alle/Zhang/robot_calibration/configuration/opt1100.mat'); %load the 1100 configs specific for optimization ''data_opt''
 
[q,q_opt,q_test,tau,tau_opt,tau_test,tr,tr_opt,tr_test ] = devide.opt_test( data_opt,200);

 
 %theta_bc:rotation error before optimization
 %d_bc:translation error before optimization
 [C,theta_bc,d_bc]=reg.coordinate_trans(q_opt,tr_opt);
 x_200=opt.opt21(q_opt,tau_opt,C);
 save('outputs1402_800.mat','x_200');
 [theta_ac,d_ac,T_error]=error.error_est(x_200,tau_opt,q_opt,C);

theta=[theta_ac;theta_bc;]';
d=[d_ac,d_bc];
[f1,f2]=plot.figplot(d,theta);