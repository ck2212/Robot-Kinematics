L1 = input('Enter a value of L1=');
L2 = input('Enter a value of L2=');
L3 = input('Enter a value of L3=');
x1 = input('Enter a value of x1=');
y1 = input('Enter a value of y1=');
t1 = input('Enter a value of theta1=');
x2 = input('Enter a value of x2=');
y2 = input('Enter a value of y2=');
t2 = input('Enter a value of theta2=');
x3 = input('Enter a value of x3=');
y3 = input('Enter a value of y3=');
t3 = input('Enter a value of theta3=');
trels = UTOI(x1,y1,t1);
trelw = UTOI(x2,y2,t2);
srelb = UTOI(x3,y3,t3);
[near,far,solution] = SOLVE1(trels,trelw,srelb,L1,L2,L3,wrelb);

function [near,far,sol]=SOLVE1 (trels,trelw,srelb,L1,L2,L3)
wrelt= TINVERT(trelw);
wrels= TMULT (trels,wrelt);
wrelb= TMULT (srelb,wrels);
[near,far,sol]= INVKIN(wrelb,L1,L2,L3);
end