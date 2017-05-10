%set the parameters of joint 1-3 to their optimized values
%optimize the parameters of joint 4-7

function x=optimization2(data, Tc1, Tc2)
 [q,tau,Tr]=read.gettrans(data);
 
 n=size(q,1);
 C=zeros(4,4,n);
 
 for i=1:n
     
 C(:,:,i)=Tc2*Tr(:,:,i)*Tc1;
 
 end
 %[d_bc,theta_bc]=error.error_est_bc(q,C);
 x=opt.opt21_2(q,C);%optimization
%  [theta_ac,d_ac,T_error]=error.error_est(x,tau,q,C);
%  theta=[theta_ac;theta_bc;]';
%  d=[d_ac,d_bc];
end