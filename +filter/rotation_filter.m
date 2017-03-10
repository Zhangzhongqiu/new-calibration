function r=rotation_filter(R)
n=size(R,3);
rpy=zeros(3,3,n/31);
gamma=tr2rpy(R);
k=1;
for i=1:31:n
rpy(k,1)=mean(filter.hampel(1:31,gamma(i:i+30,1)));
rpy(k,2)=mean(filter.hampel(1:31,gamma(i:i+30,2)));
rpy(k,3)=mean(filter.hampel(1:31,gamma(i:i+30,3)));
% rpy(k,1)=mean(gamma(i:i+30,1));
% rpy(k,2)=mean(gamma(i:i+30,2));
% rpy(k,3)=mean(gamma(i:i+30,3));
k=k+1;
end
r=rpy2r(rpy);
end