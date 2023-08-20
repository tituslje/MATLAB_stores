%check unimodal function for sufficiently large interval of x
fplot(@ladder,[0,100])
%minimum found between 0 to 10
%perform minimisation at a selected interval
x = fminbnd(@ladder,0,10,optimset('Display','iter'))
%obtain minimum ladder length
L = ladder(x)
