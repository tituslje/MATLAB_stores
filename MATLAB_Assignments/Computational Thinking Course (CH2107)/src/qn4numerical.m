areas = [];
f = @(x,n) nthroot((1-(x./2).^n),n);
for n = [2:10]
    area = integral(@(x) f(x,n),0,2).*4;
    areas = [areas; area];
end
S = areas
plot([2:10],S,'-ob')
title('Plot of S vs n')
xlabel('n')
ylabel('Area of Superellipse S')