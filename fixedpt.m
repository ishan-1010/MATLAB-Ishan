f = @(x) (tan(x)-4*x); %first try
g = @(x) (tan(x)/4); %works :)

x0=input("Enter initial approx ");
tol=input("Enter the value of tolerance ");
n=input("Enter number of iterations ");

flag = true;
its=1;

while(flag == true && its<n)
    x1=g(x0);
    if(abs(x1-x0)<=tol)
       flag=false;
    end
    x0=x1;
    its=its+1;
end

fprintf("%f", x1);
fprintf("\n");