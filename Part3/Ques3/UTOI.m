
function [R] = UTOI(x,y,z)
    R = [ cosd(z) -sind(z) 0 x; sind(z) cosd(z) 0 y; 0 0 1 0; 0 0 0 1];
end

