function[x] = numbersieve(values)
%values taken in as row vector
%define empty vector x for use in iteration later
x = [];
for y = values
    if y > 0
        disp(strcat(string(y),' is positive!'))
        continue
        else if y < 0
            disp(strcat(string(y),' is negative!'))
            x = [x y];
            continue
            else if y == 0
                disp(strcat(string(y),' is 0!'))
                continue
                end
            end
    end
end