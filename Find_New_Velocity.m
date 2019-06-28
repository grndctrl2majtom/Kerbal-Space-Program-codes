function [ required_Velocity ] = Find_New_Velocity( r1, r2, rDesired, Mass, radius )
% Finds required velocity at periapsis or apoapsis for specific orbit
%   Detailed explanation goes here


deltaV = Delta_V_Transfer( r1, r2, rDesired, Mass, radius )

[ vp, va ] = Find_Velocity_For_Orbit( r1, r2, Mass, radius )

if r1 > r2
    required_Velocity = va + deltaV;
else
    required_Velocity = vp + deltaV;
end


if nargout == 0
    fprintf('The required velocity is %.1f [m/s]\n', required_Velocity)
end


end

