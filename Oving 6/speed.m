function [vx, vy] = speed(vx, vy, ax, ay, dt) 
vx=vx+ax*dt;
vy=vy+ay*dt;

end

