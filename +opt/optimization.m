function x=optimization(data, Tc1, Tc2)
 %read the robot configuration, torque and teansformation matrix
[q,tau,Tr]=read.gettrans(data); 
 %get the number of the optimized configs
 n=size(q,1);
 C=zeros(4,4,n);
 
 for i=1:n
     
 C(:,:,i)=Tc2*Tr(:,:,i)*Tc1;
 
 end
 %[d_bc,theta_bc]=error.error_est_bc(q,C);
 x=opt.opt21(q,tau,C);
 %[theta_ac,d_ac,T_error]=error.error_est(x,tau,q,C);
 %theta=[theta_ac;theta_bc;]';
 %d=[d_ac,d_bc];
end