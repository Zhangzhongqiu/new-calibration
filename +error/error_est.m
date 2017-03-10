function [theta,d,T_error]=error_est(x,tau,q,C)

n=size(q,1);  
Tr_mdl=zeros(4,4,n);
for i=1:n

    r(i)=model.iiwa7_mdl(x,tau(i,:));
    Tr_mdl(:,:,i) = r(i).fkine(q(i,:));
    
end
R_mdl=t2r(Tr_mdl);
T_mdl=transl(Tr_mdl);

R=t2r(C(:,:,1:n)); %get R, R is from C 
T=transl(C(:,:,1:n));%get translation from C

R_mdl=num2cell(R_mdl,[1 2 4]); 
R=num2cell(R,[1 2 4]);
r_diff=cellfun(@(x,y)(x*inv(y)),R_mdl,R,'UniformOutput',false);
R_diff=cell2mat(r_diff);
theta=zeros(1,n);
for i=1:n
    try
        theta(i) = tr2angvec2(R_diff(:,:,i)); %get the rotation axis and angle
        %d1(i)=0.2*theta(i);
    catch
       disp('error') 
    end
end
d=cellfun(@(a,b) (norm(a-b)),num2cell(T_mdl,2),num2cell(T,2));
T_error=T_mdl-T;
T_error=abs(T_error);

end