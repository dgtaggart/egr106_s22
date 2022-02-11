clear all; clc;
disp([' Lecture 4 examples                '
      '   1. Roots of a quadratic equation'
      '   2. Guessing game                ']);
example=input('Enter desired example: ');
%
if example==1
    %
    % Example 1 - Roots of a quadratic equation
    %
    %  test cases:
    %   x^2+2x+3=0 => a,b,c = 1,2,3 => no real roots exist
    %   x^2-4x+4=(x-2)^2=0 => a,b,c = 1,-4,4 => repeated root at x = 2
    %   x^2=3x+2=(x-2)*(x-1)=0 => a,b,c = 1,-3,2 => two real roots x = 2, 1
    %
    disp('Compute real roots of the quadratic equation ax^2+bx+c=0');
    a=input('Enter a: ');
    b=input('Enter b: ');
    c=input('Enter c: ');
    %
    discriminant=b^2-4*a*c;
    if discriminant<0
        disp('no real roots exist')
    elseif discriminant==0
        root=-b/(2*a);
        disp(['repeated root at x = ',num2str(root)])
    else
        root=[(-b+sqrt(b^2-4*a*c))/(2*a) (-b-sqrt(b^2-4*a*c))/(2*a)];
        disp(['two real roots at x = ',num2str(root)])
    end
else
    %
    % Example 2 - Hi-Lo guessing game
    %    
    clear all; clc;
    numb=ceil(25*rand(1));
    for count=1:5
        guess=input('Guess a number between 1 and 25: ');
        if guess==numb
            disp('Correct!')
            break
        elseif guess>numb
            disp('Too high')
        elseif guess<numb
            disp('Too low')
        end
        if count==5
            disp(['Sorry, you lose. My number was ',num2str(numb)])
        end
    end
end