function [gradf] = apGrad(f,x)
%Aproximacion del gradiente de f
%   Recibe f funcion y x vector de Rn a R

n = length(x);
H = spdiags( nthroot(eps, 3) * (abs(x) + 1), 0, n, n)
gradf = zeros(n,1);

for i = 1:n
    gradf(i,1) = (f( x + H(:,i)) - f(x - H(:,i)))/(2*H(i,i));
end

end

