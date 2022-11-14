a=[4 1 0; 1 20 1; 0 1 4];
x=[1 ; 1 ; 1];

choice=menu('Pick the choice', 'Largest', 'Smallest', 'Near to');

if choice==1
    b=a;
elseif choice==2
    b=inv(a);
else
    lam=input("Enter the value of Lambda which is near to ");
    d=a-lam.*eye(size(a)); %eye for identity matrix
    b=inv(d);
end

its=1;
tol=input("Enter maximum tolerance ");
err=10000;
lam1=inf;

while err>tol
    xold=x;
    y=b*x;
    eigval=max(abs(y));
    eigvec=y./eigval;
    x=eigvec;
    err=abs(sum(xold-x));
    lam1=eigval;
    its=its+1;
end

if choice==1
    fprintf("Greatest eigen value %f\n", lam1);
elseif choice==2
    fprintf("Smallest eigen value %f\n", 1/lam1);
else
    fprintf("Nearest eigen value %f\n", lam+1/lam1);
end

fprintf("Number of iterations %d\n", its-1);

fprintf("\t Eigen vector %f\n",x)