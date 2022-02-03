%Import Durham weather data from excel 
data=xlsread('DurhamWeather.xlsx','Sheet1');
%Determine the size of the data 
size(data)
%Extract years and store in yyyy
yyyy=data(:,1);
%Extract months and store in mm
mm=data(:,2);
%Extract monthly mean daily minimun temperature and store in tmin 
tmin=data(:,4);
%Extract montly numer of days with air-frost and store in af
af=data(:,5);
%Combine yyyy and mm to form a decimalised year 
tYr=yyyy+mm/12;
%Make a figure 
figure(1)
%Plot time againts minmun temperature and days with air-frost
plot(tYr,tmin,tYr,af)
%Provide a legend, axes labels and title 
legend('Minimum temperature in ^oC','Montly days of air frost')
xlabel('Year')
ylabel('See legend')
title('The weather in Durham')

