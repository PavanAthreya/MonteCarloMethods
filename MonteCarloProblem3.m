%Name: Pavan Athreya Narasimha Murthy
%USC ID: 9129210968
%E-mail: pavanatn@usc.edu
%Ph: +1(323)-684 5715
%Term: Fall 2018
%Course: EE511
%Professor: John Silvester

%Clear the Workspace variables and command window for every run
clear all;
clc;

%Third part of Project 2
NumberOfSamples = 1000;
NumberOfIterations = 100;
IntegralValue = zeros(NumberOfIterations, 1);

x1 = 0.0;
x2 = pi;
y1 = sinc(x1);
y2 = sinc(x2);

for i = 1:NumberOfIterations
    X = (x2-x1).*rand(NumberOfSamples, 1) + x1;
    Y = (y2-y1).*rand(NumberOfSamples, 1) + y1;
    Area = sinc(X);
    IntegralValue(i,1) = abs(x2-x1)*abs(y2-y1)*length(find(Area>Y))/NumberOfSamples;
end

MeanValue = mean(IntegralValue);
VarianceValue = var(IntegralValue);
disp('Mean estimate of the sinc integral');
disp(MeanValue);

%Confidence Interval
MaxValueOfIntegralValue = ((MeanValue) + ((1.96*VarianceValue)/sqrt(NumberOfSamples)));
MinValueOfIntegralValue = ((MeanValue) - ((1.96*VarianceValue)/sqrt(NumberOfSamples)));

disp('95% confidence interval values');
disp('Max value');
disp(MaxValueOfIntegralValue);
disp('Min value');
disp(MinValueOfIntegralValue);