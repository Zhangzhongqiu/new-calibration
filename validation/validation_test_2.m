function [theta,d,T_error_ac,T_error_bc]=validation_test_2(data_test,x,tc1,tc2)

[q_test,tau_test,Tr_test]=read.gettrans(data_test);
n=size(q_test,1);  

C=zeros(4,4,n);

 for i=1:n
     
 C(:,:,i)=tc2*Tr_test(:,:,i)*tc1;
 
 end
 
[d_bc,theta_bc,T_error_bc]=error.error_est_bc(q_test,C);
 [theta_ac,d_ac,T_error_ac]=error.error_est_2(x,q_test,C);
  theta=[theta_ac;theta_bc;]';
 d=[d_ac,d_bc];

end