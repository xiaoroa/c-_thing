function L = L2norm(u,s)
n = length(u);
h = 2*pi/ (n+1);
L = 0.0;
for i = 1:n
    L = L + (abs(u(i)-s(i)))^2;
end
L = h*L;
L = sqrt(L);
end