syms n
areas = [];
f = (4.^(1-1./n).*2.*sqrt(pi).*gamma(1+1./n))./gamma(0.5+1./n);
for n = [2:10]
    area = double(subs(f,n));
    areas = [areas; area];
end
Sa = areas 
fplot(f,[2 10],'-ob')
title('Plot of S(analytical) vs n')
xlabel('n')
ylabel('Analytical Area of Superellipse S')