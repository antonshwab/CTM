% 1. Section 1.1 uses the system as a calculator. Let us explore the possibilities:
% (a) Calculate the exact value of 2100 without using any new functions. 
% Try to think of short-cuts to do it without having to type 2*2*2*...*2 with one hundred 2’s. 
% Hint: use variables to store intermediate results.
% (b) Calculate the exact value of 100! without using any new functions. Are there any possible short-cuts in this case?

% 1.a
declare
X = 2
Xpow2 = X * X
Xpow4 = Xpow2 * Xpow2
Xpow8 = Xpow4 * Xpow4
Xpow16 = Xpow8 * Xpow8
Xpow32 = Xpow16 * Xpow16
Xpow64 = Xpow32 * Xpow32
Xpow100 = Xpow64 * Xpow32 * Xpow4
{Browse Xpow100}

% 1.b
declare
Y = 100
