%devide the optimization into different groups, to check convergence
%grp1--100configs,grp2--200configs....grp11--1100configs

function [ q,q_opt,q_test,tau,tau_opt,tau_test,tr,tr_opt,tr_test ] = opt_test( data ,m)
%select the configurations for test, 302 for test, 1100 for optimization
n=size(data,1)/31;
m=n-m;
%m = round(n/5);%1/5 of the configs for validation test
a=randperm(n,m);

%each robot pose hat 31 times measurements
[q1,tau1,Tr1]=read.gettrans(data);
P=transl(Tr1);%34100*3
% position=Tr1(1:3,4,:);
% P=reshape(position,3,43462);
R=t2r(Tr1);%3*3*34100

%outlier filter for tau
tau=filter.tau_filter(tau1);

%outlier filter for rotation matrix
r=filter.rotation_filter(R);

%outlier filter for position
p=filter.position_filter(P);


q=q1(1:31:end,:);


tr=zeros(4,4,n);
for i=1:n
tr(:,:,i)=[r(:,:,i),p(i,:)';0 0 0 1];
end

q_test=q(a,:);
q_opt=q;
q_opt(a,:)=[];

tau_test=tau(a,:);
tau_opt=q;
tau_opt(a,:)=[];

tr_test=tr(:,:,a);
tr_opt=tr;
tr_opt(:,:,a)=[];

end

