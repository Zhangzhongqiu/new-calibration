function p=position_filter(P)
n=size(P,1);
p=zeros(n/31,3);
k=1;
for i=1:31:n
 p(k,1)=mean(filter.hampel(1:31,P(i:i+30,1)));
 p(k,2)=mean(filter.hampel(1:31,P(i:i+30,2)));
 p(k,3)=mean(filter.hampel(1:31,P(i:i+30,3)));
%  p(k,1)=mean(P(i:i+30,1));
%  p(k,2)=mean(P(i:i+30,2));
%  p(k,3)=mean(P(i:i+30,3));

 k=k+1;
    
end

end