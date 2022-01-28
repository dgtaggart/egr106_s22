% EGR 106 - Assignment 1 - solution
clc; clear; format compact
% 1
disp('Problem 1:') 
3*8-25/(3+2)   % this is problem 1
pause
% 2
disp('Problem 2:')
3^pi
pause
% 3
disp('Problem 3:')
sqrt(3.1415)
pause
% 4
disp('Problem 4:')
5.15+9.3*exp(3.14)
pause
% 5
v=100; 
A=35*pi/180;
t=0:0.01:14;
x=v*cos(A)*t;
y=2*sin(A)*t-0.5*9.81*t.^2;
plot(x,y)
xlabel('x')
ylabel('y')
title('Problem 5')
text(200,-100,'John smith, January 29, 2019')