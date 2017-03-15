%devide the measured data into 2 parts, opt group(1100*31) and test group(302*31) 
data1=csvread('20170306_run_1.csv',1,1);
 data2=read.exclude0(data1);
n=1402;
m=302;
a=randperm(n,m);
 j=1;
 %devide data1 for every 31 measurements 
 for i=1:31:size(data2,1)
    data3(:,:,j)=data2(i:i+30,:);
    j=j+1; 
 end
 
 data_test_=data3(:,:,a);
 data_opt_=data3;
 data_opt_(:,:,a)=[];
 j=1;
  for i=1:31:31*1100
 
     data_opt(i:i+30,:)=data_opt_(:,:,j);
     j=j+1;
  end
 
   j=1;
  for i=1:31:31*302
 
     data_test(i:i+30,:)=data_test_(:,:,j);
     j=j+1;
  end
 
  clear i;
  clear j;