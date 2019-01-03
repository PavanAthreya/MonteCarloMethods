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

%Second part of Project 2
NumberOfTrials = 1000;
CardChoosen = input('Enter the card number:'); 
NumberOfTimesCardArray = zeros(52, 1);

for i = 1:NumberOfTrials
    RandomCard = randi([1 52], 1, 1);
    NumberOfTimesCardArray(RandomCard, 1) = NumberOfTimesCardArray(RandomCard, 1) + 1;
end

ProbabilityOfCardSelected = NumberOfTimesCardArray(CardChoosen, 1)/NumberOfTrials;
disp('Probability of the card will be selected j times in N selections');
disp(ProbabilityOfCardSelected);

disp('p0 for the given user given input card');
p0 = (1 - (1/NumberOfTrials)).^NumberOfTrials;
disp(p0);