clear; close all; clc;

[f, Df, Hf] = fRosenbrock2d();

p1 = 4*ones(4,1)
gradf = apGrad(f,p1)

gradfexact = Df(p1)

errorinf = norm(gradf - gradfexact, 'inf')
errorinfRel = norm((gradf - gradfexact)./gradfexact, 'inf')