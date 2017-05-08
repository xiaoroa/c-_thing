function L = infNorm(u,s)
n = length(u);
h = 2*pi/ (n+1);
for i = 1:n
    E(i) = abs(u(i) - s(i));
end
L = max(E);
end