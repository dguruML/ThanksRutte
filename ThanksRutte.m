% FML.m Version 1
% 
% Limitations (as for now): 
% - it's assumed you no longer need duo
% - interest rate is assumed to be constant
% - pay-off rate is constant
% - some kind of slider to adjust these values in real time would be nice
%
clc; close all; clear;
%%
years = 10;                 %FILL IN: number of years you intend to plot
months = years*12;          %FILL IN: number of months according to years
debt = zeros(months,1);     %empty vector for speeeeed
debt(1) = 50000;            %FILL IN: initial debt, script assumes you no longer get duo
interest_rate = 0.0046;     %FILL IN: interest rate, assumed to be constant
monthly_payoff = 550;       %FILL IN: your intended monthly pay-off, assumed to be constant
total_interest = 0;         %initialise total interest


for i=2:months
    debt(i) = debt(i-1) * 1.0046;
    total_interest = total_interest + (debt(i)-debt(i-1));
    debt(i) = debt(i) - monthly_payoff;
end

figure(1)
plot(debt)
xlabel('months')
ylabel("centjes")
