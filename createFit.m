function [fitresult, gof] = createFit(sigma_sigma, tt)
%CREATEFIT1(SIGMA_SIGMA,TT)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : sigma_sigma
%      Y Output: tt
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 21-Jan-2022 21:47:59 自动生成


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( sigma_sigma, tt );

% Set up fittype and options.
ft = fittype( '-a*(x-1)', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Robust = 'Bisquare';
opts.StartPoint = 0.534320217540598;

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'tt vs. sigma_sigma', 'untitled fit 1', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 'sigma_sigma', 'Interpreter', 'none' );
ylabel( 'tt', 'Interpreter', 'none' );
grid on


