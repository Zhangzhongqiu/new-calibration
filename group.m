%devide the measured data into 2 parts, opt group(1100*31) and test group(302*31) 
%creat subsets of the optimization group
data1=csvread('20170306_run_1.csv',1,1);
 data2=read.exclude0(data1);

 j=1;
 %devide data1 for every 31 measurements 
 for i=1:31:size(data2,1)
    data3(:,:,j)=data2(i:i+30,:);
    j=j+1; 
 end
 clear i j
 data1402=filter.data_filter(data3);

 
a=sort(randperm(1402,302));
b1=sort(randperm(1100,100));
b2=sort(randperm(1100,200));
b3=sort(randperm(1100,300));
b4=sort(randperm(1100,400));
b5=sort(randperm(1100,500));
b6=sort(randperm(1100,600));
b7=sort(randperm(1100,700));
b8=sort(randperm(1100,800));
b9=sort(randperm(1100,900));
b10=sort(randperm(1100,1000));

 data_test_302=data1402(a,:);
 data_opt_1100=data1402;
 data_opt_1100(a,:)=[];
 data_opt_100=data_opt_1100(b1,:);
 data_opt_200=data_opt_1100(b2,:);
 data_opt_300=data_opt_1100(b3,:);
 data_opt_400=data_opt_1100(b4,:);
 data_opt_500=data_opt_1100(b5,:);
 data_opt_600=data_opt_1100(b6,:);
 data_opt_700=data_opt_1100(b7,:);
 data_opt_800=data_opt_1100(b8,:);
 data_opt_900=data_opt_1100(b9,:);
 data_opt_1000=data_opt_1100(b10,:);


 
 
