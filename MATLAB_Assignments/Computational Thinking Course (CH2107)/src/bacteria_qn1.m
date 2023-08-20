%part a
syms y(t) k
%define ode
ode = diff(y,t) == k*y;
%solve for general equation of y in t
general = dsolve(ode)
%set up equation with the statement: bacteria doubles every 5 hours
y1 = general;
y2 = subs(general,t+5);
eqn = y2/y1 == 2;
%solve for k
value = double(solve(eqn,k))

%part b
%obtain equation in y with values
cond = y(0) == 1;
y = dsolve(ode,cond)
y = subs(y,k=value)

%calculate number of bacteria from t = 0 to 12
A = [];
for t = [0:12]
    number = double(subs(y,t));
    A = [A; number];
end
bacteriaNumber = A

%graph plot
fplot(y,[0 12],'-ob')
grid
title('Number of bacteria vs time (hours)')
xlabel('time t (hours)')
ylabel('Number of bacteria present in culture')