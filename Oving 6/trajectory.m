function [X, Y] = trajectory(angle, v, h)
[vx,vy] = initialSpeed(angle,v);
dt = .01;
x = 0;
y = h;
i = 1;
while y >= 0
       X(i) = x;
       Y(i) = y;
       [ax,ay] = acceleration(vx,vy);
       [vx,vy] = speed(vx,vy,ax,ay,dt);
       [x,y] = position(x,y,vx,vy,dt);
       i = i+1;
end
end

