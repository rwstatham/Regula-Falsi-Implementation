function [X]= RfalsiM(k,a,b)
%approximates the root (X) of a function f over an interval (a,b)
%with k iterations and with an initial value of x0
X=zeros(1,k);
f=inline('x.^5+2.*x-1','x');
for i = 1:k
    X(i) = b-f(b)*(b-a)/(f(b)-f(a));
    if(f(b)*X(i)<0)
        a = X(i);
    end
    if(f(a)*X(i)<0)
        b = X(i);
    end
end

