f=@(x) (cos(x))^2;

a=input("Enter a ");
b=input("Enter b ");
N=input("Enter the number of subintervals ");

h=(b-a)/N;
sum=0;
for i=1:N-1
    x=a+h*i;
    sum=sum+2*f(x);
end

sum=sum+f(a)+f(b);
ans=sum*(h/2);

fprintf("%f\n", ans);