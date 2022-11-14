a=[10 8 -3 1 16; 2 10 1 -4 9; 3 -4 10 1 10; 2 2 -3 10 11];
n=length(a)-1;
x=zeros(n,1);

for i=1:n-1
    for j=i+1:n
        m=a(j,i)/a(i,i);
        a(j,:)=a(j,:)-(m*a(i,:));
    end
end

x(n)=a(n,n+1)/a(n,n);
for i=n-1:-1:1
    x(i)=(a(i,n+1)-(a(i,i+1:n)*x(i+1:n)))/a(i,i);
end

fprintf("%f\t ",x);
fprintf("\n");