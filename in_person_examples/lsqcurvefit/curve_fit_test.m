%test each model type to get a baseline of how it matches up with the dataset
%the model is being evaluated from a specific range of x-values (-2.2 to 2.2)

%first, import and clean the dataset (junk_data.csv)
[filename, pathname] = uigetfile('*.csv', 'Select dataset');
full_path = fullfile(pathname, filename);

data_set = readtable(full_path);
data_x = data_set.x;
data_y = data_set.y;

%manually remove values outside of the evaluated domain
data_x = data_x(9:52,1);
data_y = data_y(9:52,1);

%plot original data
plot(data_x, data_y)
hold on;

%with the data imported, set up the parameters for fitting the data
%linear parameters
linear_p0 = [32, 0];
linear_modelFun = @(p,x) p(1)*x + p(2);
linear_pfit = lsqcurvefit(linear_modelFun, linear_p0, data_x, data_y);
linear_p = plot(linear_pfit);

%quadratic parameters
quad_p0 = [0,0,0];
quad_modelFun = @(p,x) p(1)*x.^2 + p(2)*x + p(3);
quad_pfit = lsqcurvefit(quad_modelFun, quad_p0, data_x, data_y);
quad_p = plot(quad_pfit);

%cubic parameters
cubic_p0 = [0,0,0,0];
cubic_modelFun = @(p,x) p(1)*x.^3 + p(2)*x.^2 + p(3)*x + p(4);
cubic_pfit = lsqcurvefit(cubic_modelFun, cubic_p0, data_x, data_y);
cubic_p = plot(cubic_pfit);

%quartic parameters
quartic_p0 = [0,0,0,0,0];
quartic_modelFun = @(p,x) p(1)*x.^4 + p(2)*x.^3 + p(3)*x.^2 + p(4)*x + p(5);
quartic_pfit = lsqcurvefit(quartic_modelFun, quartic_p0, data_x, data_y);
quartic_p = plot(quartic_pfit);

legend('Raw Data', 'Linear', 'Quadratic', 'Cubic', 'Quartic')