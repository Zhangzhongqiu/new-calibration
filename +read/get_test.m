function [d_t,d_o]=get_test(data)

n=size(data,1);
m = round(n/5);
a=randperm(n,m);
d_t=data(a,:);
d_o=data;
d_o(a,:)=[];

end