load('/home/kelm/uegabe/Alle/Zhang/robot_calibration/+model/iiwa7_.mat')

qz=zeros(1,7);
qz(1,2)=pi/6;
qz(1,4)=-2*pi/4;
qz(1,6)=1*pi/4;
%robot.model3d='KUKA/LWR_iiwa';
c=ones(7,1);
orange=[1,0,0].*c;
color=num2cell(orange,2);
% figure
% subplot(1,2,1);
%hold on;
LBR4p.plot3d(qz,'workspace',[-1.5 1.5 -1.5 1.5 -0.98 2],'color',color);
%hold on;
mdl=collision.static_model();
mdl.plot;
dmdl=collision.dyn_mdl(qz);
dmdl.plot;

% subplot(1,2,2);
% qz(1,2)=2*pi/3;
% LBR4p.plot3d(qz,'workspace',[-1.5 1.5 -1.5 1.5 -0.98 2],'color',color);
% mdl=collision.static_model();
% mdl.plot;
% dmdl=collision.dyn_mdl(qz);
% dmdl.plot;
% %plot test points
% data=csvread('20161118_run_1.csv',21,1);
load('/home/kelm/uegabe/Alle/Zhang/configurationset/configurations_test.mat')
% [Q,tau,Tr2]=read.gettrans(data);
% T=LBR4p.fkine(Q);
T=LBR4p.fkine(q2);
%T=LBR4p.fkine(q);
P=T(1:3,4,:);
P=reshape(P,3,size(T,3));
% P=T(1:3,4,:);
% P=reshape(P,3,1416);
hold on;
plot3(P(1,:),P(2,:),P(3,:),'b.')
