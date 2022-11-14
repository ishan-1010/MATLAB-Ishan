x=[1 1.5 2.0 2.5];
y=[2.7183 4.4817 7.3891 12.1825];

X=input("Enter the value of X ");
n=size(x,2);
DD=zeros(n,n);
DD(:,1)=y';

for j=2:n
    for i=1:(n-j+1)
        num=DD(i+1,j-1)-DD(i,j-1);
        den=(x(i+j-1)-x(i));
        DD(i,j)=num./den;
    end
end

for i=1:n-1
    P(i)=prod(X-x(:,1:i))*DD(1,i+1);
end

Y=y(1)+sum(P);

disp(array2table(DD));

fprintf("The value of Y at X= %f is %f.\n", X,Y);