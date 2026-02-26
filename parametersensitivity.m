function sensitivity = parametersensitivity(sol)
%Interprets parameter sensitivity information from the solved ODE system

arguments (Input)
    sol %solution to an already solved ODE *WITH* the sensitivity parameter set
end

%extract the sensitivity values
%the sensitivity values are in a tensor (3d matrix) composed of
%[equation x parameters x time]
sensitivity = sol.Sensitivity();

%perform analysis on the sensitivity values
%ask/research what are some methods for sensitivity analysis
end