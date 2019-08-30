t1=input('Input theta1=');
t2=input('Input theta2=');
t3=input('Input theta3=');
L=0.5; %considering length of all the links are same i.e. L1=L2=L3=0.5m
WrelB= Procedure_Kin(t1,t2,t3,L);
disp(WrelB)
function [WrelB]= Procedure_Kin(t1,t2,t3,L )
    R1= [ cosd(t1) -sind(t1) L*cosd(t1); sind(t1) cosd(t1) L*sind(t1);0 0 1 0; 0 0 0 1];
    R2= [ cosd(t2) -sind(t2) L*cosd(t2); sind(t2) cosd(t2) L*sind(t2);0 0 1 0; 0 0 0 1];
    R3= [ cosd(t3) -sind(t3) L*cosd(t3); sind(t3) cosd(t3) L*sind(t3);0 0 1 0; 0 0 0 1];
    WrelB=R1*R2*R3 ;
end



