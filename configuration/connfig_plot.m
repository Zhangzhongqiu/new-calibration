data=csvread('20161118_run_1.csv',21,1);
[Q,tau,Tr2]=read.gettrans(data);
%n=size(Tr2,3);
position=Tr2(1:3,4,:);
p=reshape(position,3,284);
grid on;
plot3(p(1,:),p(2,:),p(3,:),'bo','LineWidth',3);