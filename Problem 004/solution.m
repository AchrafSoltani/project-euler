% clear and initialize 
clear; clc; close all; 
largest_palindrome = 0;
largest_palindrome = multiply(111,999)


function m = multiply(x,y)
    largest_palindrome = 0;
    for i = x:y
        for j = i:y
            res = i*j;
            if is_palindromic(res)
                if res > largest_palindrome
                    largest_palindrome = res
                end
            end
        end
    end
    m = largest_palindrome
end

function check = is_palindromic(n) 
    rev = str2num(reverse(num2str(n)));
    check = (n == rev);
end

function nd = number_of_digits(n)
    d = 0;
    while n >= 1
        n = n / 10;
        d = d + 1;
    end
    nd = d;
end