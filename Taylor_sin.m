function y=Taylor_sin(x,N)
% Taylor_sin computes Taylor sine series at x up to N terms
sum=0;
n=1;
for i=1:N
    sum=sum+(-1)^(n+1)*x.^(2*n-1)/factorial(2*n-1);
    n=n+1;
end
y=sum;