clear; close all; clc;

[f, Df, Hf] = fPascal();

p1 = 4*ones(4,1);
%p1 = [1; zeros(3,1)]

D2f = apHess(f, p1)
Hfexact = Hf(p1)

errorinf = norm(D2f - Hfexact, 'inf')
errorinfREL = norm( (D2f - Hfexact)./Hfexact, 'inf')