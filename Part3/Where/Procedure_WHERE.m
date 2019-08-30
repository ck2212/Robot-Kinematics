t1=input('Input theta1=');
t2=input('Input theta2=');
t3=input('Input theta3=');
L=0.5; %considering length of all the links are same i.e. L1=L2=L3=0.5m

function TrelS = Procedure_WHERE(t1,t2,t3,L,TrelW,BrelS)

WrelB = KIN(t1,t2,t3,L);
TrelW= UTOI(TrelW);
BrelS=UTOI(BrelS);

TrelS=BrelS*WrelB*TrelW;
end