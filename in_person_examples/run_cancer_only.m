p = params_cancer_only();

C0 = 1e5; %initial cancer cells (placeholder)
tspan = [0,72]; %hours

opts = odeset('RelTol',1e-6,'AbsTol', 1e-9);

figure('Name', 'Cancer-only +/- drug'); hold on; grid on;
xlabel('Time (hours)');
ylabel('Cancer cells C(t)');
title('Cancer-only ODE model: no drug vs drug');

for D = [0,1]
    [t,C] = ode45(@(t,C) cancer_rhs(t,C,p,D), tspan, C0, opts);
    if D == 0
        plot(t, C, 'LineWidth', 2, 'DisplayName', 'No drug (D=0)');
    else
        plot(t, C, 'LineWidth', 2, 'DisplayName', 'Drug (D=1)');
    end
end