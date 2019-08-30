t1=input('Enter theta1=');
t2=input('Enter theta2=');
t3=input('Enter theta3=');
L=0.5;

TrelW=UTOI(0.1,0.2,30);
SrelB=UTOI(-0.1,0.3,0);
BrelS=TINVERT(SrelB);
WrelB = KIN(t1,t2,t3,L);
TrelS = BrelS*WrelB*TrelW;
[a,b,c]=ITOU(TrelS);
disp([a,b,c])

