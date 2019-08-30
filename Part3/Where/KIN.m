function [R]= KIN(t1,t2,t3,L)
    R1= [ cosd(t1) -sind(t1) 0 L*cosd(t1); sind(t1) cosd(t1) 0 L*sind(t1);0 0 1 0; 0 0 0 1];
    R2= [ cosd(t2) -sind(t2) 0 L*cosd(t2); sind(t2) cosd(t2) 0 L*sind(t2);0 0 1 0; 0 0 0 1];
    R3= [ cosd(t3) -sind(t3) 0 L*cosd(t3); sind(t3) cosd(t3) 0 L*sind(t3);0 0 1 0; 0 0 0 1];
    R=R1*R2*R3 ;
end