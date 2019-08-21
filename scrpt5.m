clear; close all; clc;

[f, Df, Hf] = fPascal();
%p1 = 4*ones(4,1);
%p1 = [1; zeros(3,1)]

[f, Df, Hf] = fRosenbrock2d();
%p1 = [2;3]
p1 = [1;1]

gradf = apGrad(f, p1)
gradfexact = Df(p1)

errorinf = norm(gradf - gradfexact, 'inf')
errorinfREL = norm( (gradf - gradfexact)./gradfexact, 'inf')