function tau=tau_filter(torque)
n=size(torque,1);
tau=zeros(n/31,7);
k=1;
for i=1:31:n
 tau(k,1)=mean(filter.hampel(1:31,torque(i:i+30,1)));
 tau(k,2)=mean(filter.hampel(1:31,torque(i:i+30,2)));
 tau(k,3)=mean(filter.hampel(1:31,torque(i:i+30,3)));
 tau(k,4)=mean(filter.hampel(1:31,torque(i:i+30,4)));
 tau(k,5)=mean(filter.hampel(1:31,torque(i:i+30,5)));
 tau(k,6)=mean(filter.hampel(1:31,torque(i:i+30,6)));
 tau(k,7)=mean(filter.hampel(1:31,torque(i:i+30,7)));
%  tau(k,1)=mean(torque(i:i+30,1));
%  tau(k,2)=mean(torque(i:i+30,2));
%  tau(k,3)=mean(torque(i:i+30,3));
%  tau(k,4)=mean(torque(i:i+30,4));
%  tau(k,5)=mean(torque(i:i+30,5));
%  tau(k,6)=mean(torque(i:i+30,6));
%  tau(k,7)=mean(torque(i:i+30,7));

 k=k+1;
    
end

end