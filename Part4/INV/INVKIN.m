L1 = input('Enter a value of L1');
L2 = input('Enter a value of L2');
L3 = input('Enter a value of L3');
x = input('Enter a value of x');
y = input('Enter a value of y');
t = input('Enter a value of theta');
wrelb = UTOI(x,y,t);
[near,far,solution] = INVERSEKIN(wrelb,L1,L2,L3);

function [near,far,solution]= INVERSEKIN(wrelb,L1,L2,L3)
Px=wrelb(1,3)-(L3*wrelb(1,1));
Py=wrelb(2,3)-(L3*wrelb(2,1));
 
c2=(Px^2+Py^2-L1^2-L2^2)/(2*L1*L2);
 
if abs(c2)<1
    solution=true;
%calculating theta2 for closer position
    s2=sqrt(1-c2^2);
    near(1,2)=atan2d(s2,c2);
 %calculating theta1 for closer position
    c1=((L1+L2*c2)*Px+(L2*s2)*Py)/((L1+L2*c2)^2+(L2*s2)^2);
    s1=(-L2*Px*s2+(L1+L2*c2)*Py)/((L1+L2*c2)^2+(L2*s2)^2);
   near(1,1)=atan2d(s1,c1);
%calculating theta3 for closer position
    near(1,3)=atan2d(wrelb(2,1),wrelb(1,1)-near(1,1)-near(1,2));
%calculating theta2 for farther position
    s2f=-s2;
    far(1,2)=atan2d(s2f,c2);
%calculating theta1 for farther position
    c1f=((L1+L2*c2)*Px+(L2*s2f)*Py)/((L1+L2*c2)^2+(L2*s2f)^2);
    s1f=(-L2*s2f*Px+(L1+L2*c2)*Py)/((L1+L2*c2)^2+(L2*s2f)^2);
    far(1,1)=atan2d(s1f,c1f);
%calculating theta3 for farther position
    far(1,3)=atan2d(wrelb(2,1),wrelb(1,1))-far(1,1)-far(1,2);
%%
disp('Near solutions')
disp(near)
disp('Far solutions')
disp(far)
%%
%setting the limits as -170<[theta1 theta2 theta3]<170
    if (near(1,1)>170 || near(1,2)>170 || near(1,3)>170 ||  near(1,1)<-170 || near(1,2)<-170 || near(1,3)<-170 );
        disp('Invalid solution because near angles are greater than 170 or less than -170');
    elseif (far(1,1)>170 || far(1,2)>170 || near(1,3)>170 || far(1,1)<-170 || far(1,2)<-170 || near(1,3)<-170); 
        disp('Invalid solution because far angles are greater than 170 or less than -170')
    end
else
    solution=false;
    disp('No solution exists');
end
end
