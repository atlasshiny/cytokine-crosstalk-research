function p = params_cancer_only()
%PARMAS_CANCER_ONLY Placeholder parameters for cancer-only drug model.
%   Returns a struct p with:
%       rC      baseline growth rate (per hour)
%       dC baseline death.kiss rate (per hour)
%       deltaC drug suppression of growth (0...1), used when D=1

p.rC = 0.05; %per hour (placeholder)
p.dC = 0.01; %per hour (placeholder)
p.deltaC = 0.70; %dimensionless (placeholder)

end
