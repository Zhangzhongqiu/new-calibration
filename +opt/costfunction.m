function error = costfunction(a,tau,q,Tr)
%Tr should be the transformation matrix in camera frame after registration! 

% r1=rpy2r(a(29),a(30),a(31));%rotation matrix
% r2=rpy2r(a(32),a(33),a(34));
% t1=[a(35),a(36),a(37)];
% t2=[a(38),a(39),a(40)];
% T1=[r1,t1';0,0,0,1];
% T2=[r2,t2';0,0,0,1];
%cost function with 21 error parameter,and 7 torque factors
%Tr is the measured transform matrix
n = size(q,1); %get the number of configurations
R=t2r(Tr(:,:,1:n)); %get R, R is from Tr 
T=transl(Tr(:,:,1:n));%get translation from Tr



% d = 0; %initial error
% d1 = 0; %inital angle error
% d2 = 0; %initial translation error
%error=0;
% for j=1:n
% r(j)=iiwa7_mdl(a,tau(j,:));
% 
% end
Tr_mdl=zeros(4,4,n);
% R_mdl=zeros(3,3,n);
% T_mdl=zeros(n,3);
for i=1:n
    r(i)=model.iiwa7_mdl(a,tau(i,:));
    Tr_mdl(:,:,i) = r(i).fkine(q(i,:));%get the transform matrix from the model
%     Tr_mdl(:,:,i) = T2*Tr_mdl(:,:,i)*T1;
%    R_mdl(:,:,i) = t2r(Tr_mdl(:,:,i));%convert transform matrix to rotation matrix
%     R_diff(:,:,i) = R_mdl(:,:,i)*inv(R(:,:,i));%get the rotation matrix of 2 frames
%     axang(i,:) = rotm2axang(R_diff(:,:,i)); %get the rotation axis and angle
%     d1=0.2*axang(i,4);
%     
%    T_mdl(i,:) = transl(Tr_mdl(:,:,i));%convert transform matrix to translation vector
%     T(:,i) = transl(Tr(:,:,i)); %convert transform matrix to translation vector
%     d2=norm(T_mdl(:,i)-T(:,i));
%     d=d1^2+d2^2;
%     error=error+d;
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