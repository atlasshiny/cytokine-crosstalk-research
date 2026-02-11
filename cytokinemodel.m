function dydt = cytokinemodel(t,y,p)
%Comprehensive model for cytokine modeling
%   Detailed explanation goes here
arguments (Input)
    t (1,1) double %time (must be a scalar)
    y (3,1) double %current cell count at a given t-value
    p CytokineParameter %an instance of the CytokineParameter class
end

arguments (Output)
    dydt (3,1)
end
%the return vector with all of the calculated rate of changes
dydt = [];
end