function [ dV_rocket ] = Rocket_Eqn( ISP, m0, mF )
% Tsiolkovsky's rocket eqn
%   ISP = specific impulse, m0 = initial mass, mF = final mass

g0 = 9.81; % [m/s^2]
vE = ISP * g0; % [sec]
dV_rocket = ve*log(m0/mF); % [m/s]


end

