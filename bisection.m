f=@(x) x^2-29;
a=input("Enter the value of a ");
b=input("Enter the value of b ");
e=input("Enter the tolerance value ");

c=(a+b)/2;

fprintf("The number of Interations required is: ");
n=ceil((log(b-a)-log(e))/log(2));
disp(n);

while(abs(a-b)>=e)
    c=(a+b)/2;
    if(f(a)*f(c)<0)
        b=c;
    else
        a=c;
    end
end

disp(c);