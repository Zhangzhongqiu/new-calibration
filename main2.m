data=csvread('20161118_run_1.csv',21,1);
[d_t,d_o]=read.get_test(data);

[q_opt,tau_opt,Tr2_opt]=read.gettrans(d_o);
[q_test,tau_test,Tr2_test]=read.gettrans(d_t);
[Q,tau,Tr2]=read.gettrans(data);
% [q_opt,q_test]=qget(Q);
n=size(q_opt,1);
tic
%start to registration
[C,theta_bc,d_bc]=reg.coordinate_trans(Q,Tr2);
t1=toc;
%start to optimization
x=opt.opt21(q_opt,tau_opt,C);
save('outputs.mat','x');
t2=toc-t1;
%calculate errors before and after calibration
%[theta_ac,d_ac]=error.error_est(x,tau,q_opt,C);
[theta_ac,d_ac]=error.error_est(x,tau,q_opt,C);

theta=[theta_ac;theta_bc(1:n);]';
d=[d_ac,d_bc(1:n)];
[f1,f2]=plot.figplot(d,theta);