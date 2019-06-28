function [ vp, va ] = Find_Velocity_For_Orbit( r1, r2, M,radius )
% the velocity of periapsis of certain orbit.
%   rp = altitude of periapsis, ra  = altitude of apoapsis

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

rp = rp + radius; % converting altitude to radius measuered at center of planet [m]
ra = ra + radius; % converting altitude to radius measuered at center of planet [m]
G = 6.6741E-11; % universal gravitational constant [N*m^2/kg^2] 

vp = sqrt(2*G*M/((rp/ra + 1)*rp)); % velocity at periapsis of orbit [m/s]
va = sqrt(2*G*M/((ra/rp + 1)*ra)); % velocity at apoapsis of orbit [m/s]
if nargout == 0
    fprintf('The velocity at periapsis is %.2f [m/s]\n', vp)
    fprintf('The velocity at apoapsis is %.2f [m/s]\n', va)
end

end

