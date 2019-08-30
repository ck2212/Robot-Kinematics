x = input('Enter x position=');
y = input('Enter y position=');
z = input('Enter theta=');
A = Procedure_UTOI(x,y,z);
disp('The required Rotation Matrix is:')
disp(A)
[a,b,c] = Procedure_ITOU(A);
disp('The required (x, y, theta) is:')
disp([a,b,c])
function [R] = Procedure_UTOI(x,y,z)
    R = [ cosd(z) -sind(z) x; sind(z) cosd(z) y;0 0 1];
end

function [a,b,c] = Procedure_ITOU(A)
    a = A(1,3);
    b = A(2,3);
    c = acosd(A(1,1));
end

