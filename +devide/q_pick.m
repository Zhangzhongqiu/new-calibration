%pick up the configs for optimization

function  [data_opt,data_test]=q_pick(data)

n=1402;
m=302;
a=randperm(n,m);
b=31*(a-1)+1;
data_test=data(b:b+30,:);
data_opt=data;
data_opt(b:b+30,:)=[];
end