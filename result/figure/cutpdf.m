%gcf是图形窗口的句柄，gca是坐系的句柄
fig=gcf;
fig.PaperUnits = 'centimeters';
fig.PaperSize =[32 22];
fig.PaperPosition= [-3.2 -2 39 25];
%fig.PaperPosition= [0 0 42.7789 28.9560];
print('translation_error','-dpdf')