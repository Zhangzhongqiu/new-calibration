function error = costfunction(a,tau,q,Tr)
%Tr should be the transformation matrix in camera frame after registration! 
% a represents the parameters to be identified

%cost function with 21 error parameter,and 7 torque factors

n = size(q,1); %get the number of configurations
R=t2r(Tr(:,:,1:n)); %get R, R is from Tr 
T=transl(Tr(:,:,1:n));%get translation from Tr


Tr_mdl=zeros(4,4,n);

for i=1:n
    r(i)=model.iiwa7_mdl(a,tau(i,:));
    Tr_mdl(:,:,i) = r(i).fkine(q(i,:));%get the transform matrix from the model

end
R_mdl=t2r(Tr_mdl);
T_mdl=transl(Tr_mdl);
R_mdl=num2cell(R_mdl,[1 2 4]);
R=num2cell(R,[1 2 4]);
r_diff=cellfun(@(x,y)(x*inv(y)),R_mdl,R,'UniformOutput',false);
R_diff=cell2mat(r_diff);
theta=zeros(n,1);
d1=zeros(n,1);
for i=1:n
    try
        theta(i) = tr2angvec2(R_diff(:,:,i)); %get the rotation axis and angle
        d1(i)=0.2*theta(i);
    catch
       disp('error') 
    end
end
% axang=rotm2axang(R_diff);
% theta=axang(:,4);
%d1=0.2*theta;
d2=cellfun(@(a,b) (norm(a-b)),num2cell(T_mdl,2),num2cell(T,2));
error=sum(d1.^2)+sum(d2.^2);
end