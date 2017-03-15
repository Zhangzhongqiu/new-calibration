%test the quality of the identified error parameters
load('test302.mat')%load the configs specific for test
load('outputs1402_100.mat')%load the idenrified error parameters from opt group of different sizes
[theta,d,T_error]=validation_test(data_test,x);
% [q_test,tau_test,Tr_test]=read.gettrans(data_test);
% 
% P=transl(Tr_test);%9362*3
% R=t2r(Tr_test);%3*3*9362
% 
% %outlier filter for tau
% tau=filter.tau_filter(tau_test);
% 
% %outlier filter for rotation matrix
% r=filter.rotation_filter(R);
% 
% %outlier filter for position
% p=filter.position_filter(P);
% 
% 
% q=q_test(1:31:end,:);
% 
% tr=zeros(4,4,302);
% for i=1:302
% tr(:,:,i)=[r(:,:,i),p(i,:)';0 0 0 1];
% end
% 
% clear P R tau_test q_test Tr_test i;
% 
% [C,theta_bc,d_bc]=reg.coordinate_trans(q,tr);
% [theta_ac,d_ac,T_error]=error.error_est(x,tau,q,C);