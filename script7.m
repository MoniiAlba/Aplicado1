clear; close all; clc;

[f, Df, Hf] = fPascal();

p1 = 4*ones(4,1)

D2f = apHess(f, p1)
Hfexact = Hf(p1)


errorinf = norm(D2f - Hfexact, 'inf')
errorinfRel = norm((D2f - Hfexact)./Hfexact, 'inf')