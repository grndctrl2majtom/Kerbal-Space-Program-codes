function [ Ft ] = Thrust_Force( ISP, m0, mf, burnTime )
%Force of rocket thrust
%   ISP = specific imulse [sec], m0 = initial mass [kg], mf = final mass [kg], burntime = time to run out of fuel [sec] 

g0 = 9.81; %[m/s^2]
Ft = ISP*g0* (m0 - mf)/burn_time; % Thrust_Force [N]

end

