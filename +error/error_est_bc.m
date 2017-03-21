function [d_bc,theta_bc]=error_est_bc(q,C)

n=size(q,1);
robot=model.iiwa7;
Trm=robot.fkine(q);
tc=transl(C);
tb=transl(Trm);
rc=t2r(C);
rb=t2r(Trm);
Rc=num2cell(rc,[1 2 4]);
Rb=num2cell(rb,[1 2 4]);
r_diff=cellfun(@(x,y)(x*inv(y)),Rc,Rb,'UniformOutput',false);
R_diff=cell2mat(r_diff);
%axang=rotm2axang(R_diff);
%theta=axang(:,4);
for i=1:n
    try
        theta_bc(i) = tr2angvec2(R_diff(:,:,i)); %get the rotation axis and angle
        %d1=0.2*theta(i);
    catch
       disp('error') 
    end
end

d_bc=cellfun(@(a,b) (norm(a-b)),num2cell(tc,2),num2cell(tb,2));

end