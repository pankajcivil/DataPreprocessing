% This function is created to calculate the annual mean values of daily
% datasets for many years.
%
%
%
% The input and output are dicussed as follows
% Input: data: This comprises of four columns.
%                     First column is: Year
%                     Second column is: Month
%                     Third column is: Day
%                     Fourth column is : Value of the variable of interest
%
% For example, this is how a typical input data for 1st and 2nd day of
% January 2017 will look like
%            
% Input: > data
%              Year   Month   Day     Value
%
%              2017     01         01         5.5       
%              2017     01         02         6.2
%
%
% Output: ans: It consists of one column containing the annual mean value
%
%
% Acknowledgement: Andrei Bobrov's answer in the following link
%                                 link: https://in.mathworks.com/matlabcentral/answers/55819-how-to-convert-daily-data-to-monthly
%
%
%
% Additional Benefits of this function:
% This code is indeed very simple and powerful. Other than computation of mean, it can be used to compute different other attributes of time series data such as standard deviation, maximum values, minimum values etc.
% For example, if you want to calculate the maximum value of the monthly
% data, i.e the maximum value of the variable of interest observed in a
% month, we just need to replace "@mean" to "@max". This is very useful in
% computation of annual maxima series of rainfall in hydrological
% applications.

function [mas]=daily2annual(data)
year=data(:,1);
start_year=data(1,1);
r=data(:,4);
[year, ~] = datevec(datenum(start_year,1,1) + (0:size(r,1)-1));
mas = accumarray(year.'-start_year+1, r.', [], @mean);