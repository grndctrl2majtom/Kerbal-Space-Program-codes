function [ dV ] = Delta_V( M, r1, r2, radius )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculates the delta V required for an orbit, uses Keplars laws and
% assumes perfectly circular orbits (budget a little bit more DeltaV than
% what the output is) (also assumes orbiting mass is small and far away)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% M = mass of body [kilograms]
% r1 = initial altitude [meters]
% r2 = final altitude [meters]

G = 6.6741E-11; % N*m^2/kg^2 (universal Gravitational constant)
r1 = r1 + radius;
r2 = r2 + radius;

if r1<r2
    dV = sqrt(G*M/r1) * (sqrt(2*r2/(r1+r2))-1); % Delta V [m/s]
else
    dV = sqrt(G*M/r1) * (1- sqrt(2*r2/(r1+r2))); % Delta V [m/s]
end


if nargout == 0
    fprintf('The delta_V required to reach a final altitude of %.2f [m] from an initial altitude of %.2f [m] is %.2f [m/s]\n', r2, r1, dV)
end
   
    
end

