%read the output of measurement
data=csvread('20161216_run3_2.5kg.csv',1,1);
[Q,tau,Tr2]=read.gettrans(data);
[q_opt,q_test]=qget(Q);
n=size(q_opt,1);
tic
%start to registration
[C,theta_bc,d_bc]=reg.coordinate_trans(Q,Tr2);
t1=toc;
%start to optimization
x=opt.opt21(Q,tau,C);
save('outputs2500g.mat','x');
t2=toc-t1;
%calculate errors before and after calibration
%[theta_ac,d_ac]=error.error_est(x,tau,q_opt,C);
[theta_ac,d_ac]=error.error_est(x,tau,q_opt,C);

theta=[theta_ac;theta_bc(1:n);]';
d=[d_ac,d_bc(1:n)];
%[f1,f2]=plot.figplot1250g(d,theta);