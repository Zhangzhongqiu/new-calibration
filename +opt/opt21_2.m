% q: the robot configs for optimization
% tau: torque
% Tr: transformation matrix before calibration
% x0: initial value
%only 21 kinematic error parameters
function x=opt21_2(q,Tr)

fun = @(x) opt.costfunction_2(x,q,Tr);

x0=zeros(1,21);

options=optimoptions('fminunc','Algorithm','quasi-newton');
options.Display='iter';
options.MaxFunEvals=100000;
%[x,fval, exitflag, output]=fminunc(fun,x0,options);
x=fminunc(fun,x0,options);

%n=size(config_opt,1);

end