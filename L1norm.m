function L = L1norm(u,s)
n = length(u);
h = 2*pi/ (n+1);
L = 0.0;
for i = 1:n
    L = L + abs(u(i)-s(i));
end
L = h*L;
end