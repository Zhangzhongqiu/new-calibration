ac=sum(T_error_1100_ac);
bc=sum(T_error_1100_bc);
error=1000*[bc',ac'];
b=bar(error);
b(1).FaceColor='red';
b(2).FaceColor='blue';
xticklabels({'x','y','z'});
ylabel('Translation error [mm]')
box off
lgd=legend({'Before calibration','After calibration'},'FontSize',25);
lgd.Box='off';
matlab2tikz('error_xyz.tex');