LBR4p.model3d='iiwa';
LBR4p.plot3d(config(868,:),'workspace',[-1.5 1.5 -1.5 1.5 -0.98 2]);
%zlim([-.98 2.0]);
dyn_mdl=getcmdl(config(868,:));
hold on
mdl.plot
dyn_mdl.plot
