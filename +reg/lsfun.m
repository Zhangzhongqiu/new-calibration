
%A is the transform matrix in camera frame, B is in robot frame, C is the
%rogistered matrix
function y=lsfun(A, B, a1, a2, a3, a4, a5, a6, b1, b2, b3, b4, b5, b6)
n=size(A,3);
%y=0;
r1=rpy2r(a1,a2,a3);%rotation matrix
r2=rpy2r(b1,b2,b3);
t1=[a4,a5,a6];
t2=[b4,b5,b6];
T1=[r1,t1';0,0,0,1];
T2=[r2,t2';0,0,0,1];
C=zeros(4,4,n);
for i=1:n
    
  C(:,:,i)=T2*A(:,:,i)*T1; %A----camera, after registration, C----robot
  
end

tc=transl(C);
tb=transl(B);
rc=t2r(C);
rb=t2r(B);

Rc=num2cell(rc,[1 2 4]);
Rb=num2cell(rb,[1 2 4]);
r_diff=cellfun(@(x,y)(x*inv(y)),Rc,Rb,'UniformOutput',false);
R_diff=cell2mat(r_diff);
%theta=tr2angvec2(R_diff);
%theta=axang(:,4);
%d1=0.2*theta;
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
d2=cellfun(@(a,b) (norm(a-b)),num2cell(tc,2),num2cell(tb,2));
y=sum(d1.^2)+sum(d2.^2);
% for j=1:n
% d=(norm(tc(j,:)-tb(j,:)))^2;
% diff(:,:,j)=rc(:,:,j)*inv(rb(:,:,j));
% axang(i,:) = rotm2axang(diff(:,:,j)); %get the rotation axis and angle
% theta=(0.2*axang(i,4))^2;
% y=y+d+theta;
% end


end