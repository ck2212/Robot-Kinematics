x=input('Enter X=');
y=input('Enter Y=');
theta=tan_inv(x,y);
disp('Theta is')
disp(theta)

function [t]=tan_inv(x,y)
    t=atan2d(y,x);
end



