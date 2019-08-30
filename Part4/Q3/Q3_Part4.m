L1=0.5;
L2=0.5;
L3=0.5;
%initializing closer angles and farther angles
near=[0 0 0];
far= [0 0 0];
trelw= UTOI(0.1,0.2,30);
srelb= UTOI(-0.1,0.3,0);
% user will provide the input for the position and orientation of goal so
% that we can decide about the existence of solution
x= input('Enter x position of goal matrix=');
y= input('Enter y position of goal matrix=');
phi= input('Enter rotation phi of goal matrix=');
trels= UTOI(x,y,phi);
[near,far,solution]=SOLVE(trels,trelw,srelb,L1,L2,L3);
