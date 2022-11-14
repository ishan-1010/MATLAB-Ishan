f=@(x) x^2-17;

x0=input("Enter initial approx 1 ");
x1=input("Enter initial approx 2 ");
tol=input("Enter the value of tolerance ");
n=input("Enter number of iterations ");

its=1;
flag=true;

while(flag==true && its<=n)
    x2=x1-(f(x0))*((x1-x0)/(f(x1)-f(x0)));
    if(abs(x2-x1)<=tol)
        flag=false;
    end
    its=its+1;
    x0=x1;
    x1=x2;
end

fprintf("%f", x2);
fprintf("\n");