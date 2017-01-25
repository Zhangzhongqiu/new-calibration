function [Q,tau,Tr2]=gettrans5000(data)
data2=data(2:2:end,:);
n=size(data2,1);

Q(:,:)=data2(:,1:7);
tau(:,:)=data2(:,8:14);

for i=1:n
    Tr2(1,:,i)=data2(i,15:18);
    Tr2(2,:,i)=data2(i,19:22);
    Tr2(3,:,i)=data2(i,23:26);
    Tr2(4,:,i)=data2(i,27:30);
    
end
Tr2(1:3,4,:)=Tr2(1:3,4,:)/1000;
end