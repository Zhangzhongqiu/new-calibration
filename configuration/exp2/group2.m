data=csvread('20170310.csv',0,1);
[data3, index2,data2]=read.exclude0(data);
data_2636=filter.data_filter(data2);

a=sort(randperm(2636,236));
b1=sort(randperm(2400,100));
b2=sort(randperm(2400,200));
b3=sort(randperm(2400,300));
b4=sort(randperm(2400,400));
b5=sort(randperm(2400,500));
b6=sort(randperm(2400,600));
b7=sort(randperm(2400,700));
b8=sort(randperm(2400,800));
b9=sort(randperm(2400,900));
b10=sort(randperm(2400,1000));
b11=sort(randperm(2400,1100));
b12=sort(randperm(2400,1200));
b13=sort(randperm(2400,1300));
b14=sort(randperm(2400,1400));
b15=sort(randperm(2400,1500));
b16=sort(randperm(2400,1600));
b17=sort(randperm(2400,1700));
b18=sort(randperm(2400,1800));
b19=sort(randperm(2400,1900));
b20=sort(randperm(2400,2000));
b21=sort(randperm(2400,2100));
b22=sort(randperm(2400,2200));
b23=sort(randperm(2400,2300));


 data_test_2=data_2636(a,:);
 data_opt2_2400=data_2636;
 data_opt2_2400(a,:)=[];
 data_opt2_100=data_opt2_2400(b1,:);
 data_opt2_200=data_opt2_2400(b2,:);
 data_opt2_300=data_opt2_2400(b3,:);
 data_opt2_400=data_opt2_2400(b4,:);
 data_opt2_500=data_opt2_2400(b5,:);
 data_opt2_600=data_opt2_2400(b6,:);
 data_opt2_700=data_opt2_2400(b7,:);
 data_opt2_800=data_opt2_2400(b8,:);
 data_opt2_900=data_opt2_2400(b9,:);
 data_opt2_1000=data_opt2_2400(b10,:);
 data_opt2_1100=data_opt2_2400(b11,:);
 data_opt2_1200=data_opt2_2400(b12,:);
 data_opt2_1300=data_opt2_2400(b13,:);
 data_opt2_1400=data_opt2_2400(b14,:);
 data_opt2_1500=data_opt2_2400(b15,:);
 data_opt2_1600=data_opt2_2400(b16,:);
 data_opt2_1700=data_opt2_2400(b17,:);
 data_opt2_1800=data_opt2_2400(b18,:);
 data_opt2_1900=data_opt2_2400(b19,:);
 data_opt2_2000=data_opt2_2400(b20,:);
 data_opt2_2100=data_opt2_2400(b21,:);
 data_opt2_2200=data_opt2_2400(b22,:);
 data_opt2_2300=data_opt2_2400(b23,:);