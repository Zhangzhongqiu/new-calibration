function data2=data_filter(data1)
n=size(data1,3);
data2=zeros(n,30);
for i=1:n
 [Q,tau,Tr]=read.gettrans(data1(:,:,i)); 
 rpy=mean(tr2rpy(Tr));
 tr=rpy2tr(rpy);
 t=mean(transl(Tr))*1000;
 tr(1:3,4)=t';
 
data2(i,1:7)=mean(Q);
data2(i,8:14)=mean(tau);
data2(i,15:18)=tr(1,:);
data2(i,19:22)=tr(2,:);
data2(i,23:26)=tr(3,:);
data2(i,27:30)=tr(4,:);

end