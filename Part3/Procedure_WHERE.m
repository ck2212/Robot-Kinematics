t1=input('Input theta1=');
t2=input('Input theta2=');
t3=input('Input theta3=');
L=0.5; %considering length of all the links are same i.e. L1=L2=L3=0.5m
x1=input('Input x position of TrelW=');
y1=input('Input y position of TrelW=');
z1=input('Input theta of TrelW=');
x2=input('Input x position of BrelS=');
y2=input('Input y position of BrelS=');
z2=input('Input theta of BrelS=');
TrelW= UTOI(x1,y1,z1);
BrelS=UTOI(x2,y2,z2);

function TrelS = Procedure_WHERE(t1,t2,t3,L,TrelW,BrelS)

WrelB = KIN(t1,t2,t3,L);
TrelS=BrelS*WrelB*TrelW;
end