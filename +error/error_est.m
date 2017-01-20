function [theta,d]=error_est(x,tau,q,C)
%     lbr1=iiwa7_mdl(x(1),x(2),x(3),x(4),x(5),x(6),x(7),...
%         x(8),x(9),x(10),x(11),x(12),x(13),x(14),...
%         x(15),x(16),x(17),x(18),x(19),x(20),x(21));
n=size(q,1);  
Tr_mdl=zeros(4,4,n);
for i=1:n

    r(i)=opt.iiwa7_mdl(x,tau(i,:));
    Tr_mdl(:,:,i) = r(i).fkine(q);
    
end
R_mdl=t2r(Tr_mdl);
T_mdl=transl(Tr_mdl);

R=t2r(C(:,:,1:n)); %get R, R is from C 
T=transl(C(:,:,1:n));%get translation from C

R_mdl=num2cell(R_mdl,[1 2 4]); 
R=num2cell(R,[1 2 4]);
r_diff=cellfun(@(x,y)(x*inv(y)),R_mdl,R,'UniformOutput',false);
R_diff=cell2mat(r_diff);
axang=rotm2axang(R_diff);
theta=axang(:,4);

d=cellfun(@(a,b) (norm(a-b)),num2cell(T_mdl,2),num2cell(T,2));


end