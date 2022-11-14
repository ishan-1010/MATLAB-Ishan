a=[4.63 -1.21 3.22; -3.07 5.48 2.11; 1.26 3.11 4.57];
b=[2.22 -3.17 5.11];

x=zeros(1,size(a,1));

tol = input("Enter the value of tolerance ");

err=inf;
itr=0;

while err>=tol
    xold=x;
    for i=1:size(a,1)
        sum=0;
        for j=1:i-1
            sum=sum+a(i,j)*x(j);
        end
        for j=i+1:size(a,1)
            sum=sum+a(i,j)*xold(j);
        end
        x(i)=(1/a(i,i))*(b(i)-sum);
    end
    itr=itr+1;
    err=abs(x-xold);
end

fprintf("%f\t", x);
fprintf("\n");

fprintf("Number of iterations = %d\n", itr);