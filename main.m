data=csvread('20161118_run_1.csv',21,1);
[Q,tau,Tr2]=read.gettrans(data);
[q_opt,q_test]=qget(Q);
tic
%start to registration
[C,theta_bc,d_bc]=reg.coordinate_trans(Q,Tr2);
t1=toc;
%start to optimization
x=opt.opt21(Q,tau,C);
save('outputs.mat','x');
t2=toc-t1;
[theta_ac,d_ac]=error.error_est(x,tau,q_opt,C);