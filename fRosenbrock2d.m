function [f, Df, Hf] = fRosenbrock2d()
%Regresa funciones anonimas
%   Versión exacta del gradiente

A = pascal(4);
b = -ones(4,1);

f = @(x) 100*(x(1)^2 - x(2))^2 + (x(1) - 1)^2;

Df = @(x) [400*x(1)*(x(1)^2 - x(2)) + 2*(x(1)-1); -200*(x(1)^2-x(2))];
Hf = @(x) [400*(3*x(1)^2 - x(2)), -400*x(1); -400*x(1) + 200];
end

