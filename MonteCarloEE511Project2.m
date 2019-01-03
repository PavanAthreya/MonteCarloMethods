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

%First part of Project 2
%Estimation of Pi value
NumberOfSamples = 1000;
NumberOfIterations = 50;
EstimatedPi = zeros(NumberOfIterations,1);

%Running the iterations to check the points of the circle
for i = 1:NumberOfIterations
    X = rand([NumberOfSamples 1]);
    Y = rand([NumberOfSamples 1]);
    Area = X.^2 + Y.^2;
    EstimatedPi(i,1) = 4 * length(find(Area<1))/NumberOfSamples;
end

%Plotting the histogram
figure;
histogram(EstimatedPi);
title(sprintf('Estimated pi, mean=%f',sum(EstimatedPi)/length(EstimatedPi)));
xlabel("pi value");
ylabel("Frequency");

%Variance
VarianceOfEstimatedPi = var(EstimatedPi);
MeanOfEstimatedPi = mean(EstimatedPi);

%Confidence interval of 95%
MaxValueOfEstimatedPi = ((MeanOfEstimatedPi/4)+((1.96*VarianceOfEstimatedPi)/sqrt(NumberOfSamples)))*4;
MinValueOfEstimatedPi = ((MeanOfEstimatedPi/4)-((1.96*VarianceOfEstimatedPi)/sqrt(NumberOfSamples)))*4;

%Display the results
disp(MaxValueOfEstimatedPi);
disp(MinValueOfEstimatedPi);
disp(MeanOfEstimatedPi);
disp(VarianceOfEstimatedPi);

