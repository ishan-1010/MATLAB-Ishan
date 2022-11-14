a=[10 8 -3 1; 2 10 1 -4; 3 -4 10 1; 2 2 -3 10];
b=[16; 9; 10; 11];
x=[0 0 0 0];
n=4;

maxerr=input("Enter the value of tolerance ");
err=inf;

itr=0;

while(err>maxerr)
    xold=x;
    for i=1:n
        sum=0;
        for j=1:n
            if j~=i
                sum=sum+a(i,j)*xold(j);
            end
        end
        x(i)=(1/a(i,i))*(b(i)-sum);
    end

    itr=itr+1;
    err=abs(xold-x);
end

fprintf("%f\t", x);
fprintf("\n");

fprintf("Number of iterations = %d\n", itr);