function [ deltaV ] = Delta_V_Transfer( r1, r2, rDesired, Mass, radius )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

dV_1  = Delta_V( Mass, r1, rDesired, radius );
dV_2 = Delta_V( Mass, r1, r2, radius );

deltaV = dV_1 - dV_2;

if r1>rDesired
    deltaV = deltaV*-1;
end

end

