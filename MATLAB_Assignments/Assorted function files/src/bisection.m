function[depth] = bisection(h1,h2,f)
for i = [1:3]
    hm = (h1+h2)/2;
    product = double(subs(f,h1)*subs(f,hm));
    if product > 0
        h1 = hm;
    end
    if product < 0
        h2 = hm;
    end
    if i == 3
        depth = hm;
    end
end
end

