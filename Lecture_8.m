function Lecture_8
% Lecture 8 - loop and user function examples
%
% Note - if more than one function is in a file, the 'main' program
%        must also be a function
%
clear all; clc; close all; format short; format compact
%
disp('Enter 1 for compound interest problem using for loop')
disp('      2 for compound interest problem using while loop')
disp('      3 for compound interest problem using ''break'' ')
disp('      4 for constant acceleration problem')
disp('      5 for Taylor / Maclaurin series')
disp('      6 for Fourier series with nested loops')
disp('      7 for user function: deg2rad')
disp('      8 for user function: Taylor_sin')
option=input('   => ');
%
if option==1
    % Example 1 - Compound interest using for loop
    year(1)=0;
    value(1)=1000;
    rate=.05;
    for i=1:10
        year(i+1)=i;
        value(i+1)=value(i)*(1+rate);
        disp(['$ ' num2str(round(value(i+1))) ' after ' ...
            num2str(i) ' years.'])
    end
elseif option==2
    % Example 2 - Compound interest using while loop, stop when
    %             investment doubles
    year=0;
    value=1000;
    rate=.05;
    while value<2000
        year=year+1;
        value=value*(1+rate);
        disp(['$ ' num2str(round(value)) ' after ' ...
            num2str(year) ' years.'])
    end
elseif option==3
    % Example 3 - Compound interest using break
    value=1000;
    for year=1:1000
        value=value*1.05;
        disp(['$ ',num2str(round(value)),' after ',...
            num2str(year),' years'])
        if value>=2000
            break
        end
    end
elseif option==4
    % Example 4 - Constant acceleration problem
    t(1)=0;
    s(1)=0;
    v0=70;
    a=-1.5;
    N=input('Enter number of time steps: ');
    dt=40/N;
    %
    for i=1:N
        t(i+1)=t(i)+dt;
        s(i+1)=s(i)+(v0+a*t(i))*dt;
    end
    t_exact=linspace(0,40,100);
    s_exact=v0*t_exact+.5*a*t_exact.^2;
    plot(t,s,'b*',t_exact,s_exact,'r')
    xlabel('t (seconds)')
    ylabel('s (meters)')
    legend('Approximation','Exact','Location','NorthWest')
elseif option==5
    % Example 5 - Taylor/Maclaurin series summation
    x=pi/4;
    sum=0;
    for n=1:5
        sum=sum+(-1)^(n+1)*x^(2*n-1)/factorial(2*n-1);
        error=abs(sum-sqrt(2)/2);
        disp([num2str(n),' terms, sum = ', num2str(sum,14),...
            ', error = ', num2str(error,3)]);
    end
elseif option==6
    % Example 6 - Representation of Sawtooth Wave using Fourier Series
    %   define x and initialize f(x)=0
    x=linspace(0,4,1000);
    f=zeros(1,1000);
    % for each value of n, compute and plot both new term added to series
    %   and the summation of terms 1 to n:
    figure('Position',[100, 100, 1000, 400])
    for n=1:25
        for xi=1:1000
            fnew(xi)=-(1/pi)*(1/n)*sin(2*n*pi*x(xi));
            f(xi)=f(xi)+fnew(xi);
        end
        subplot(1,2,1)
        plot(x,fnew)
        title('New Term');
        xlabel('x');ylabel('f_n_e_w(x)');axis([0 4 -.6 .6]);
        subplot(1,2,2)
        plot(x,f)
        title(['Number of terms = ',num2str(n)]);
        xlabel('x');ylabel('f(x)');axis([0 4 -.6 .6]);
        pause
    end
elseif option==7
    % Example 7 - User function to convert degrees to radians
    angle_0_deg_in_radians=deg2rad(0)
    angle_45_deg_in_radians=deg2rad(45)
    angle_90_deg_in_radians=deg2rad(90)
    angle_135_deg_in_radians=deg2rad(135)
    angle_180_deg_in_radians=deg2rad(180)
elseif option==8
    % Example 8 - User function to estimate sine
    format long
    sin(pi/4)
    Taylor_sin(pi/4,1)
    Taylor_sin(pi/4,2)
    Taylor_sin(pi/4,3)
    Taylor_sin(pi/4,4)
    Taylor_sin(pi/4,5)
    error=sin(pi/4)-Taylor_sin(pi/4,5)
end
%
% ----------------------------------------------------------------------
%
function y=deg2rad(x)
% DEG2RAD converts degrees to radians
y=x*pi/180;
%
% ----------------------------------------------------------------------
%
function y=Taylor_sin(x,N)
% Taylor_sin computes Taylor sine series at x up to N terms
sum=0;
n=1;
for i=1:N
    sum=sum+(-1)^(n+1)*x.^(2*n-1)/factorial(2*n-1);
    n=n+1;
end
y=sum;