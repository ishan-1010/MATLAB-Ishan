f=@(x) (cos(x))^2;

a=input("Enter a ");
b=input("Enter b ");
N=input("Enter the number of subintervals ");

h=(b-a)/N;

sum=0;

for i=1:N-1
    x=a+h*i;
    if rem(i,2)==0
        sum=sum+2*f(x);
    else
        sum=sum+4*f(x);
    end
end

sum=sum+f(a)+f(b);
ans=sum*(h/3);

disp(ans);