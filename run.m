clear;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t = [223.85, 143.93, 84.92, 45.02]; % Time-to-Failure
sigma = [27.4, 28.4, 29.4, 30.4]; % Applied stress

% t = [140.51, 75.28, 27.97, 4.47];
% sigma = [27.4, 28.4, 29.4, 30.4];

len = length(sigma);
sigma_0 = sigma(len);
t_0 = t(len);
tt =log(t /t_0);    % demensionless time
sigma_sigma = sigma/sigma_0; %  demensionless stress
% ttt = t*3600; % Time-to-Failure in second
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[res, gof] = createFit(sigma_sigma, tt);

