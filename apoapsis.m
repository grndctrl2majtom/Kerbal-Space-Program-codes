function [ ra ] = apoapsis( r0, M, vp )
% Formula to find the apogee of an orbit given the perigee (r0)
%   r0 = altitude of perigee [m], M = mass of body orbited [kg]

G = 6.6741E-11; % universal gravitational constant [N*m^2/kg^2] 
v = sqrt(G*M/r0); % velocity at perigee

ra = r0/(2*G*M/(r0*v^2) - 1); % [m]
end

