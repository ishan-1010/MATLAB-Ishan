a=[4 1 -1 1;1 4 -1 -1;-1 -1 5 1;1 -1 1 3];
b=[-2;-1;0;1];
x=[0;0;0;0];

maxiter=input("Enter the max no. of iterations ");
err=1e-5;
tol=input("Enter the tolerance ");
w=input("Enter thr relaxation parameter ");

D=diag(diag(a));
L=tril(a)-D;
U=triu(a)-D;

H=inv(D+w*L)*((1-w)*D-w*U);
C=w*inv(D+w*L)*b;

e=max(eig(H));
its=1;

if e<1
    while sum(abs(err)<=tol)~=size(a,1)
        xnew=H*x+C;
        err=xnew-x;
        x=xnew;
        its=its+1;

        if its==maxiter
            break
        end
    end
end


fprintf("%f\t", x);
fprintf("\n");

fprintf("Number of iterations = %d\n", its);