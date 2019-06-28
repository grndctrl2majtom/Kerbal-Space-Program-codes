clear; clc; close all;

%%%%%%%%%%%%%%%%% 
% calculating test dV
%%%%%%%%%%%%%%%%%

M = 5.2916E22; % mass of kerbin [kg]
r1 = 132276; % altitude one [m]
r2 = 70000; %altitude two [m]
radius = 600E3;

Delta_V( M, r1, r2, radius );

%% test trajectory
M = 5.2916E22; % mass of kerbin [kg]
r1 = 74543; % altitude of periapsis [m]
r2 = 400000; % altitude of apoapsis [m]
radius = 600E3; % radius of body being orbitted
vp = Find_Velocity_For_Orbit( r1, r2, M, radius );
vp = 4000;
Free_Flight_trajectory( r1, r2, M, radius );

%% test Delta V transfer


Mass = 5.2916E22; % mass of kerbin [kg]
radius = 600E3;
r1 = 200000; % starting altitude [m]
r2 = 120348; % starting altitude opposite to burn [m]
rDesired = 30000; % final Apoapsis altitude. [m]

deltaV = Delta_V_Transfer( r1, r2, rDesired, Mass, radius )

%%  Test function that gives required velocity at burn 

Mass = 5.2916E22; % mass of kerbin [kg]
radius = 600E3; % [m] radius of kerbin
r1 = 200000; % starting altitude [m]
r2 = 120348; % starting altitude opposite to burn [m]
rDesired = 30000; % final Apoapsis altitude. [m]

Find_New_Velocity( r1, r2, rDesired, Mass, radius );
