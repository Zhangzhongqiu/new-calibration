%find the 2 transform matrix Tc1 and Tc2 for rigistration
function [C,Tc1,Tc2,theta,d]=coordinate_trans(Q,Tr2)
n=size(Q,1);
robot=model.iiwa7;
Trm=robot.fkine(Q);
% A=Tr2;
% 
% B=Trm;

x0=zeros(1,12);
f= @(a1,a2,a3,a4,a5,a6, b1, b2, b3, b4, b5, b6)reg.lsfun(Tr2, Trm, a1, a2, a3, a4, a5,a6, b1, b2, b3, b4, b5, b6);
fun= @(x)f(x(1),x(2),x(3),x(4),x(5),x(6),x(7),x(8),x(9),x(10),x(11),x(12));
options=optimoptions('fminunc','Algorithm','quasi-newton','MaxFunEvals',2500);
options.Display='iter';
% [x,fval, exitflag, output]=fminunc(fun,x0,options);
x=fminunc(fun,x0,options);
r1=rpy2r(x(1),x(2),x(3));
r2=rpy2r(x(7),x(8),x(9));
t1=[x(4),x(5),x(6)];
t2=[x(10),x(11),x(12)];
Tc1=[r1,t1';0 0 0 1];
Tc2=[r2,t2';0 0 0 1];

C=zeros(4,4,n);
%calculate the error after rigistration
%tanslation error(m)
%rotation error(rad)
for i=1:n
    
  C(:,:,i)=Tc2*Tr2(:,:,i)*Tc1; %A----camera, after registration, C----robot
  
end
tc=transl(C);
tb=transl(Trm);
rc=t2r(C);
rb=t2r(Trm);

Rc=num2cell(rc,[1 2 4]);
Rb=num2cell(rb,[1 2 4]);
r_diff=cellfun(@(x,y)(x*inv(y)),Rc,Rb,'UniformOutput',false);
R_diff=cell2mat(r_diff);
%axang=rotm2axang(R_diff);
%theta=axang(:,4);
for i=1:n
    try
        theta(i) = tr2angvec2(R_diff(:,:,i)); %get the rotation axis and angle
        %d1=0.2*theta(i);
    catch
       disp('error') 
    end
end

d=cellfun(@(a,b) (norm(a-b)),num2cell(tc,2),num2cell(tb,2));
end