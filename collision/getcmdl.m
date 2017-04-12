function cmdl = getcmdl (q)

clear L;
deg=pi/180;
%ger the transfer matrix of the tool
L(1)=Revolute('offset',0,'d',0.34,'a',0,'alpha',-pi/2,'qlim',[-170 170]*deg);
L(2)=Revolute('offset',0,'d',0,'a',0,'alpha',pi/2,'qlim',[-120 120]*deg);
L(3)=Revolute('offset', pi,'d',0.4,'a',0,'alpha',-pi/2,'qlim',[-170 170]*deg);
L(4)=Revolute('offset',0,'d',0,'a',0,'alpha',pi/2,'qlim',[-120 120]*deg);
L(5)=Revolute('offset', pi,'d',0.4,'a',0,'alpha',-pi/2,'qlim',[-170 170]*deg);
L(6)=Revolute('offset',0,'d',0,'a',0,'alpha',pi/2,'qlim',[-120 120]*deg);
L(7)=Revolute('offset',0,'d',0.126+0.09,'a',0,'alpha',0,'qlim',[-170 170]*deg);%plus the length of the tool
sevenlink=SerialLink(L,'name','7link');
clear L;
T3=sevenlink.fkine(q);
r=0.09;
tool=Sphere(T3,r);

cmdl=CollisionModel( tool);
end