syms x
f=@(x) cos(x)-x*exp(x);

x0=input("Enter initial approx ");
tol=input("Enter the value of tolerance ");
n=input("Enter number of iterations ");

flag=true;
its=1;
fprime=diff(f,x);
fp=inline(fprime);

while(flag==true && its<=n)
    x1=x0-(f(x0)/fp(x0));
    if(abs(x1-x0)<=tol)
        flag=false;
    end
    its=its+1;
    x0=x1;
end

fprintf("%f", x1);
fprintf("\n");