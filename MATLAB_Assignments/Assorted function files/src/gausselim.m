function[x,y,z] = gausselim(a,b)
%forming augmented matrix
Aug = [a b];
%set condition of augmented matrix
%pivoting steps
if Aug(1,1) == 0
    if Aug(2,1) > Aug(3,1)
        temp = Aug(1,:)
        Aug(1,:) = Aug(2,:)
        Aug(2,:) = temp
    else 
        temp = Aug(1,:)
        Aug(1,:) = Aug(3,:)
        Aug(3,:) = temp
    end
end
%forming upper triangular matrix
%making row2col1 value 0
    Aug(2,:) = Aug(2,:) - (Aug(2,1)/Aug(1,1))*Aug(1,:);
%making row3col1 value 0
    Aug(3,:) = Aug(3,:) - (Aug(3,1)/Aug(1,1))*Aug(1,:);
%making row3col2 value 0
%note: use row2 since using row1 will make row3col1 value non zero
    Aug(3,:) = Aug(3,:) - (Aug(3,2)/Aug(2,2))*Aug(2,:);
    z = Aug(3,4)/Aug(3,3);
    y = (Aug(2,4) - z*Aug(2,3))/Aug(2,2);
    x = (Aug(1,4) - z*Aug(1,3) - y*Aug(1,2))/Aug(1,1);
end
