function [D2f] = apHess(f,x)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
n = length(x);
H = spdiags( nthroot(eps, 3) * (abs(x) + 1), 0, n, n);

D2f = zeros(n, n);
for j = 1:n
    for i = j+1:n
        D2f(i,j) = 0.25 * ((f(x+H(:,i)+H(:,j)) - f(x-H(:,i)+H(:,j)) ...
            - f(x+H(:,i)-H(:,j)) + f(x-H(:,i)-H(:,j))) / H(i,i)*H(j,j));
    end
end

D2f = D2f+D2f';
for i = i:n
    D2f(i,i) = 0.25 * ((f(x+2*H(:,i)) - 2*f(x) + f(x-2*H(:,i))) / H(i,i)*H(i,i));
end

