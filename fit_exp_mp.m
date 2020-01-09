function [fitresult, gof] = fit_exp_mp(t, sr)
%CREATEFIT(T,SR)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : t
%      Y Output: sr
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%



%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( t, sr );

% Set up fittype and options.
ft = fittype( 'a*exp(-x/b)', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.762313555413728 0.552048950523772];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'sr vs. t', 'untitled fit 1', 'Location', 'NorthEast' );
% Label axes
xlabel t
ylabel sr
grid on


