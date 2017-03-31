 %1402 configs in all
 %load('data1402.mat'); %data1402%
%load the 1100 configs specific for optimization ''data_opt''

 %start with registration to get Tc1 and Tc2
 %[q_opt,tau_opt,Tr_opt]=read.gettrans(data1402);
 %theta_bc:rotation error before optimization
 %d_bc:translation error before optimization
 %[C,Tc1,Tc2,theta_bc,d_bc]=reg.coordinate_trans(q_opt,Tr_opt);
 
 load('opt_1100.mat');%data_opt_100%
 load('Tc1.mat');
 load('Tc2.mat');
 [d_1100, theta_1100, x_1100, T_error_1100]=opt.optimization(data_opt_1100, Tc1, Tc2);
%  [q,tau,Tr]=read.gettrans(data_opt_100);
%  n=size(q,1);
%  C=zeros(4,4,n);
%  
%  for i=1:n
%      
%  C(:,:,i)=Tc2*Tr(:,:,i)*Tc1;
%  
%  end
%   [d_bc,theta_bc]=error.error_est_bc(q,C);
%  x_100=opt.opt21(q,tau,C);
 save('outputs1402_1100_2.mat','x_1100');
%  [theta_ac,d_ac,T_error]=error.error_est(x_100,tau,q,C);
% 
% theta=[theta_ac;theta_bc;]';
% d=[d_ac,d_bc];
% [f1,f2]=plot.figplot(d,theta);