function dCdt = cancer_rhs(~,C,p,D)
%CANCER_RHS Right-hand-side for cancer-only model with drug sswitch.
%
%   Inputs
%       C : cancer cells (scalar state)
%       p : parameter struct
%       D : drug indicator (0 = no drug, 1 = drug)
%
%Model
%   dC/dt = rC(1-deltaC*D) * C -dC*C

rC_eff = p.rC*(1-p.deltaC*D);
dCdt = rC_eff * C - p.dC * C;

end
