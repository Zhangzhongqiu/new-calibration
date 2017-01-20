

function x=opt21(q,tau,Tr)
[config_opt,config_test]=qget(q);

fun = @(x) opt.costfunction(x,tau,config_opt,Tr);
x0=zeros(1,28);

options=optimoptions('fminunc','Algorithm','quasi-newton');
options.Display='iter';
options.MaxFunEvals=100000;
%[x,fval, exitflag, output]=fminunc(fun,x0,options);
x=fminunc(fun,x0,options);

n=size(config_opt,1);

end