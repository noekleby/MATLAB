function [mu_hat, sigma_hat, mu_interval] = confds(mu,sigma,data,display)

% A function for calculate the 95% confidence interval for mu
% INPUT PARAMETER
%   data: simulated data or real data
%   display: 0 or 1, whether the function should plot histogram (1) or not (0)
% OUTPUT PARAMETERS
%   confds: 95% confidence interval for mu

% calculate the sample mean and standard deviation
mu_hat = mean(data);
sigma_hat = std(data);

n = length(data);

% 95% confidense interval of mu
mu_lower = mu_hat - 1.96*(sigma_hat/sqrt(n));
mu_upper = mu_hat + 1.96*(sigma_hat/sqrt(n));
mu_interval = [mu_lower, mu_upper];


if (display == 1)    
    x = (mu-5*sigma):0.1:(mu+5*sigma);
    antall = hist(data,x);
    
    myPlot1 = figure; set(myPlot1,'Position',[200,200,800,400])
    
    % Plot histogram in left plot
    subplot(1,2,1)
        bar(x,antall);
        xlabel('x')
        ylabel('Frequency')
        title('Histogram')
        grid on;
        
    % Create standardized histogram: areal = 1
    areal = sum(antall)*0.1;
    
    % Plot standardized histogram in right plot
    subplot(1,2,2)
        bar(x,antall/areal)
        hold on
    
    % Plot the true normal pdf on the same figure
        p1 = pdf('Normal',x,mu,sigma);
        plot(x,p1,'g','LineWidth', 2)
        xlabel('x')
        ylabel('y: Probability')
        title('Standardized histogram and pdf')
        grid on;
        set(gcf,'Color',[1,1,1])
end