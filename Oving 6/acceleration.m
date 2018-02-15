function [ax, ay] = acceleration(vx, vy)
ax=-0.01*vx*abs(vx);
ay=-0.01*vy*abs(vy)-9.81;

end

