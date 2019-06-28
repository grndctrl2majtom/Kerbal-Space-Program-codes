function [ r ] = Free_Flight_trajectory( r1, r2, M, radius )
% Calculate the free-flight trajectory of orbiting motion
%   Detailed explanation goes here

G = 6.6741E-11; % universal gravitational constant [N*m^2/kg^2] 

%%%%%%%%%%%%%%%%%%%%%%%%%
%assigning if altitudes are at periapsis or apoapsis
if r1>r2
    ra = r1;
    rp = r2;
else
    ra = r2;
    rp = r1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%

% convertint altitude to radius of ellipse
rp = rp + radius; % [m]
ra = ra + radius; % [m]

escape_Velocity = sqrt(2*G*M/rp); % calculating escape velocity [m/s]

theta = linspace(0,360,1000); % in degrees

[ vp, va ] = Find_Velocity_For_Orbit( r1, r2, M,radius ); % solving for velocities at periapsis and apoapsis
r = ((1/rp) * (1-G*M/(rp*vp^2)).*cosd(theta) + G*M/(rp^2*vp^2)).^-1; % find radius of ellipse of orbit

h = rp*vp;
T = (pi/h)*(rp + ra)*sqrt(rp*ra); % time to complete orbit

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ploting spherical cordinates of orbit
x = r.*cosd(theta);
y = r.*sind(theta);
plot(x,y)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% potentially can plot differnent orbits oriented on differnt x/y axis
% this is an example of a rotation of 20 degrees
% xprime = x.*cosd(20)+y.*sind(20);
% yprime = -x.*sind(20)+y.*cos(20);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hold on
% plot(xprime,yprime)
apoapsis = max(abs(x)) - radius; % [m]
periapsis = max(x) - radius; % [m]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ploting cross section of planet or moon
xe = radius*cosd(theta);
ye = radius*sind(theta);
plot(xe,ye)
axis equal
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
title ('distances of the ellipse')
xlabel ('[m]')
ylabel ('[m]')
legend('Trajectory', 'Orbited Body', 'Location','southeastoutside')

if nargout == 0
    fprintf('The apoapsis is %.2f [m] periapsis is %.2f [m] with an orbital period of %.1f seconds\n', apoapsis, periapsis,T)
    fprintf('The velocity at apoapsis is %.1f [m/s] and periapsis is %.1f [m/s]\n', va, vp)
    fprintf('The escape velocity is %.1f [m/s]\n', escape_Velocity)
end

end

