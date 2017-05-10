% q: the robot configs for optimization
% tau: torque
% Tr: transformation matrix
% x0: initial value
% 21 kinematic error parameters and 7 compliance error parameters
function x=opt21(q,tau,Tr)

fun = @(x) opt.costfunction(x,tau,q,Tr);
x0=zeros(1,28);

options=optimoptions('fminunc','Algorithm','quasi-newton');
options.Display='iter';
options.MaxFunEvals=100000;
%[x,fval, exitflag, output]=fminunc(fun,x0,options);
x=fminunc(fun,x0,options);

%n=size(config_opt,1);

end