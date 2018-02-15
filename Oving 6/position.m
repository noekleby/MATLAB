function [x, y] = position(x, y, vx, vy, dt)
x = x + vx*dt;
y = y + vy*dt;
 
end

