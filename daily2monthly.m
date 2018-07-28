% This function is created to calculate the monthly mean values of daily
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
% Output: ans: It consists of three columns
%
%                First column : Year
%                Second column :Month
%                Third column: Mean value for the month.
%
%
% Acknowledgement: Andrei Bobrov's answer in the following link
%                                 link: https://in.mathworks.com/matlabcentral/answers/55819-how-to-convert-daily-data-to-monthly
%
%
%
% Additional Benefits of this function:
% This code is indeed very simple and powerful. Other than computation of mean, it can be used to compute different other attributes of time series data such as standard deviation, maximum values, minimum values etc.
% For example, if you want to calculate the maximum value of the monthly data, i.e the maximum value of the variable of interest observed in a month, we just need to replace "@mean" to "@max".

function [out]=daily2monthly(data)
M=data;
[a,~,c] = unique(M(:,1:2),'rows');
out = [a, accumarray(c,M(:,4),[],@mean)];