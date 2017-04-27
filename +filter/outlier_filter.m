function v=outlier_filter(data)
%v=data;
%n=size(data,1);
%m=size(data,2);
[Q,tau,Tr]=read.gettrans(data);
rpy=tr2rpy(Tr);
mean_rpy=mean(rpy);
std_rpy=std(rpy);
angle=zeros(1,3);
v=zeros(1,30);
v(1,1:7)=mean(data(:,1:7));


mean_v=mean(data);
std_v=std(data);
threshold=2*std_v;
%threshold=3*std_v;
Abs=abs(data-mean_v);

%filter the torque
for j=8:26
    
    for i=1:31
      if Abs(i,j) >threshold(j) 
          data(i,j)=10;
      end
    end

p=data(:,j);
p(p==10)=[];

v(1,j)=mean(p);
end

%filter the transformation matrix
for y=1:3
  
    for x=1:31
    
        if abs(rpy(x,y)-mean_rpy(y))>3*std_rpy(y)
        rpy(x,y)=10;
        end
    end
   q=rpy(:,y);
   q(q==10)=[];
   angle(1,y)=mean(q);
end
tr=rpy2tr(angle);
v(1,15:17)=tr(1,1:3);
v(1,19:21)=tr(2,1:3);
v(1,23:25)=tr(3,1:3);
v(1,27:30)=tr(4,1:4);


end