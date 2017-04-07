x=1:302;
%present translation errors
figure
plot(x,d_1100*1000,'LineWidth',2);
leg1=legend('After calibration','Before Calibration');
set(leg1,'Box','off');
box off;
xlabel('Measurement');
ylabel('Translation error [mm]')
%present rotation errors
figure
plot(x,theta_1100,'LineWidth',2);
leg2=legend('After calibration','Before Calibration');
set(leg2,'Box','off');
box off;
xlabel('Measurement');
ylabel('Rotation error [rad]')