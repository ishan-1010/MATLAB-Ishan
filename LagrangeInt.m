n=input("Enter the value of degree of polynomial ");
p=input("Enter the point of interpolation ");

x=(1:n);
f=(1:n);

for i=1:n
    x(i)=input("Enter the value of x(i)");
    f(i)=input("Enter the value of f(i)");
end

for i=1:n
    l(i)=1.0;
    for j=1:n
        if j~=i
            l(i)=l(i)*(p-x(j))/(x(i)-x(j));
        end
    end
end

sum=0.0;
for i=1:n
    sum=sum+ l(i)*f(i);
end

fprintf("%f\n", sum);