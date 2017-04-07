%data1:original data
%data2:grouped data
%data3:data2 ungrouped
function [data3, index2,data2]=exclude0(data1)

 j=1;
 %devide data1 for every 31 measurements 
 for i=1:31:size(data1,1)
    data2(:,:,j)=data1(i:i+30,:);
    j=j+1; 
 end

 a=zeros(1,16);
 k=1;
 %for i=1:1415
   
 %find out the 0 readings, resturn their index
   for i=1:size(data1,1)
        if data1(i,15:30)==a
        index1(k)=i;
        k=k+1;
        end
    end
 index2=ceil(index1/31);
 index2=unique(index2);
 data2(:,:,index2)=[];
 
 data3=zeros(31*size(data2,3),30);
 j=1;
 
 for i=1:31:31*size(data2,3)
 
     data3(i:i+30,:)=data2(:,:,j);
     j=j+1;
 end


end