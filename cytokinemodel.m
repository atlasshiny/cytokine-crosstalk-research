function [outputArg1,outputArg2, outputArg3] = cytokinemodel(t,y,p)
%Comprehensive model for cytokine modeling
%   Detailed explanation goes here
arguments (Input)
    t (1,1) double %time (must be a scalar)
    y (3,1) double %current cell count at a given t-value
    p CytokineParameter %an instance of the CytokineParameter class
end

arguments (Output)
    outputArg1
    outputArg2
    outputArg3
end

outputArg1 = t;
outputArg2 = y;
outputArg3 = p;
end