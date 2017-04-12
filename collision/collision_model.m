%base 1
scale1 = [0.2 0.14 0.0825];
location1 = [-0.06 0.00 -0.0825]';
T1 = [eye(3), location1;0,0,0,1];
base1=Box(T1,scale1,'FaceColor',[0.3 0.2 0.2],'EdgeColor','none');
% base 2
scale2 = [0.4 0.3 0.4];
location2 = [-0.26 0.00 -0.565]';
T2 = [eye(3), location2;0,0,0,1];
base2=Box(T2,scale2);
%tool
% r=0.09;
% qz=zeros(1,7);
% T3=LBR4p.fkine(qz);
% tool=Sphere(T3,r);

mdl=CollisionModel(base1,base2);
%dyn_mdl=CollisionModel(tool);
figure; light; campos([2 -2 2]); camproj('perspective'); daspect([1 1 1]);
mdl.plot; lighting('gouraud');

