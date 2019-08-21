function [f, Df, Hf] = fPascal()
%Regresa funciones anonimas
%   Versión exacta del gradiente

A = pascal(4);
b = -ones(4,1);

%f = @(x) 0.5*x'*A*x + b'*x + 1;
f = @(x)  0.5*dot(x, A*x) +dot(b, x) +1;

Df = @(x) A*x + b;
Hf = @(x) A;
end

