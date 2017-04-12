config=csvread('h9_3.csv');
load('iiwa7_.mat');
%load('collisionmodel.mat');
%cmdl=base;
for i=1:1:872

dyn=getcmdl(config(i,:));
c(i)=LBR4p.collisions(config(i,:),mdl,dyn);

end