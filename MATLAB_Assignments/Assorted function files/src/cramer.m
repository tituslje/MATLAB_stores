function[x,y,z] = cramer(c,vals)
if abs(det(c)) < 0.0000000001
    disp("Matrix is singular, Cramer's Rule is not applicable.")
    return
else
    base = det(c);
%duplicating matrix c into a1, a2, a3 matrix
    a1 = c;
    a2 = c;
    a3 = c;
%replacing each column of the matrix for cramer's rule
    a1(:,1) = vals;
    a2(:,2) = vals;
    a3(:,3) = vals;
%results
    x = det(a1)/base;
    y = det(a2)/base;
    z = det(a3)/base;
end
