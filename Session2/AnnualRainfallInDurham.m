function AnnualRainfallInDurham 
% This is a script to calculate annual rainfall at Durham from a montly 
% rainfall time-series

%Import Durham weather data from excel 
data=xlsread('DurhamWeather (1).xlsx','Sheet1');
%Extract years and store in yyyy
yyyy=data(:,1);
%Extract months and store in mm 
mm=data(:,2);
%Extract monthly rainfall and store in rain 
rain=data(:,6);
rain1880=rain(1:12,1)
sum(rain1880,1)

%Find the sum of every year
%choose year of interest
YEAR=1880;
%Obtain the locations of all yyyy which are equal to value YEAR
condition=yyyy==YEAR;
ind=find(condition);
%Store all rain data for year of interest in rainYEAR
rainYEAR=rain(ind,1);
%Calculate annual rainfall for that year by summation 
rainANNUAL=sum(rainYEAR,1)

%Generate a column vector of the years of interest
YEAR=[1880:2012]';
%Count how many years we are interested in a store in M 
M=numel(YEAR);
%Perform a loop for each year of interest 
for i=1:M 
    %Obtain the locations of all yyyy which are equal to the ith YEAR 
    condition=yyyy==YEAR(i,1);
    ind=find(condition);
    %Store all rain data for year of interest in rain YEAR
    rainYEAR=rain(ind,1);
    %Calculate annual rainfall for that year by summation and store in the
    %ith value of rainANNUAL
    rainANNUAL(i,1)=sum(rainYEAR,1)
end 




