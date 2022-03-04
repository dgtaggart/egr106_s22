clc; close all; clear
%
% A Simple Example
%
x=-3:0.3:3;
y=x.^3-5*x.^2+4;
plot(x,y)
xlabel('value of x')
ylabel('value of y')
title('A Simple Plotting Example')
text(0,-30,'EGR106 example') 
pause; clear; close all 
%
% Line Specifier Example
%
x=-3:0.3:3;
y=x.^3-5*x.^2+4;
plot(x,y,'r:d')
title('Line Specifier Example')
pause; clear; close all
%
% Line Properties Example
%
x=-3:0.3:3;
y=x.^3-5*x.^2+4;
plot(x,y,'-ko','LineWidth',3,'MarkerSize',10, ...
             'MarkerEdgeColor','r','MarkerFaceColor','g')
title('Line Properties Example')
pause; clear; close all
%
% Multiple Graphs on Same Plot
%
x=linspace(0,3*pi);
y1=cos(x);
y2=sin(x);
plot(x,y1,x,y2)
title('Multiple Graphs on Same Plot')
pause; clear; close all
%
% Multiple Graphs with Separate Specifiers
%
x=linspace(0,3*pi);
y1=cos(x);
y2=sin(x);
plot(x,y1,'ro-',x,y2,'m*--')
title('Multiple Graphs with Separate Specifiers')
pause; clear; close all
%
% Multiple Graphs using hold
%
x=linspace(0,3*pi);
y1=cos(x);
y2=sin(x);
plot(x,y1,'r','linewidth',2)
hold on
plot(x,y2,'b','linewidth',2)
title('Multiple Graphs using hold')
pause; clear; close all
%
% Multiple Graphs in Single Window - Subplot
%
x=linspace(0,10);
y1=cos(x);
y2=sin(x);
y3=x.^2+2*x;
y4=log10(x);
%
subplot(2,2,1)
plot(x,y1,'r','linewidth',2)
xlabel('x')
ylabel('cos(x)')
%
subplot(2,2,2)
plot(x,y2,'b','linewidth',2)
xlabel('x')
ylabel('sin(x)')
%
subplot(2,2,3)
plot(x,y3,'g','linewidth',2)
xlabel('x')
ylabel('x.^2+2*x')
%
subplot(2,2,4)
plot(x,y4,'m','linewidth',2)
xlabel('x')
ylabel('log10(x)')
%
pause; clear; close all
%
% Multiple Figure Windows
%
x=linspace(0,10);
y1=cos(x);
y2=sin(x);
%
plot(x,y1,'r','linewidth',2)
%
figure
plot(x,y2,'b','linewidth',2)
%
figure(1)
xlabel('x')
ylabel('cos(x)')
title('This is Figure 1')
%
figure(2)
xlabel('x')
ylabel('sin(x)')
title('This is Figure 2')
pause; clear; close all
%
% using gtext and ginput
%
x=-3:0.3:3;
y=x.^3-5*x.^2+4;
plot(x,y)
xlabel('value of x')
ylabel('value of y')
title('A Simple Plotting Example')
% text(0,-30,'EGR106 example')
gtext('EGR106 example')
[x1,y1]=ginput(5);
x1
y1
pause; clc; clear; close all 
%
% Adding Text with Greek Letters, Subscripts and Superscripts, Color
%
x=linspace(0,2*pi);
y1=cos(x);
y2=sin(x);
plot(x,y1,'r',x,y2,'b','linewidth',2)
text(3,.6,'\alpha_1 + \beta^2 + a_3^4', ...
    'fontsize',14,'color','b');
title('Adding Text with Greek Letters, Subscripts and Superscripts, Color')
pause; clear; close all
%
% Adding a Legend
%
x=linspace(0,2*pi);
y1=cos(x);
y2=sin(x);
plot(x,y1,'r',x,y2,'b','linewidth',2)
legend('cosine','sine')
title('Adding a Legend')
pause; clear; close all
%
% Adding Axis Labels
%
x=linspace(0,2*pi);
y1=cos(x);
y2=sin(x);
plot(x,y1,'r',x,y2,'b','linewidth',2)
xlabel('X axis label')
ylabel('y axis label')
title('Adding Axis Labels')
pause; clear; close all
%
% Formatting Axes and Adding a Grid
%
x=linspace(0,2*pi);
y1=cos(x);
y2=sin(x);
plot(x,y1,'r',x,y2,'b','linewidth',2)
axis([0 4 -1.25 1.25])
grid
title('Formatting Axes and Adding a Grid')
pause; clear; close all
%
% Log and Semilog Plot
%
x=linspace(0,1);
y=3*exp(5*x);
semilogx(x,y,'r','linewidth',2)
title('Semilogx Plot')
grid
figure(2)
semilogy(x,y,'r','linewidth',2)
title('Semilogy Plot')
grid
figure(3)
loglog(x,y,'r','linewidth',2)
grid
title('Log-Log Plot')
pause; clear; close all
%
% Histogram
%
% Normal (Gaussian) distribution of random numbers 
%     with mean 3 and standard deviation 0.2
x=3+.2*randn(1,10000);
hist(x,100)
title('Histogram')
pause; clear; close all
%
% Pie Chart
%
x = [2 4 6 5 3];
explode = [0 1 0 0 0];
pie(x,explode)
title('Pie Chart')
pause; clear; close all
%
% Polar Plots
%
x = 1:100;
r = log10(x);
t = x/10;
polar(t,r) 
pause; clear; close all
%
% Other Plot Types
%
subplot(2,2,1)
x = -3:1:3;
y=rand(1,7);
bar(x,y,'r')
subplot(2,2,2)
x = -3:1:3;
y=rand(1,7);

barh(x,y,'b')
subplot(2,2,3)
x = -3:1:3;
y=rand(1,7);
stem(x,y,'g')
subplot(2,2,4)
x = -3:1:3;
y=rand(1,7);
stairs(x,y,'m')
pause; clear; close all
%
% 3D Plot Examples
%
t=linspace(0,3*pi,50);
x=cos(t);
y=sin(t);
z=t;
plot3(x,y,z,'r-*')
axis([-1.2 1.2 -1.2 1.2 0 20])
title('3-D Space Curve - Spiral')
pause; clear; close all
%
x=-3:0.2:3; 
y=x; 
[X,Y]=meshgrid(x,y);
Z=1.8.^(-1.5*sqrt(X.^2+Y.^2)).*cos(0.5*Y).*sin(X);
surfc(X,Y,Z);
title('3D Plot Example')
pause; clear; close all
