function r = lcg(num)

a = 7^5;
c = 0;
m = (2^31) - 1;

the_time = clock ; 
the_time_in_secs = the_time(6) ; 
the_time_in_millisecs = 1000*the_time_in_secs ; 
the_time_in_microsecs = 1000*the_time_in_millisecs ; 
X = ceil(the_time_in_microsecs); %time in microseconds

y = mod(((a * X) + c), m); %LCG equation
x = (y  / (m - 1)); % normalizes the range of values from [0 - 1)


if (num == 0)
    if(x>0)
        r = ceil((x * 3)); % multiplying by 3 and using the if statement gives the range of values from [1 - 3]
    else
        r = lcg(num); %otherwise rerun the function
    end  
elseif (num == 1)
    if(x>0.3333)
        r = ceil((x * 3)); % multiplying by 3 and using the if statement gives the range of values from [2 - 3]
    else
        r = lcg(num); %otherwise rerun the function
    end  
elseif (num == 2)
    if(x ~= 0 && x < 0.3334 || x > 0.6700)
        r = ceil((x * 3)); % multiplying by 3 and using the if statement gives the values [1 and 3]
    else
        r = lcg(num); %otherwise rerun the function
    end
else
    if(x ~= 0 && x < 0.6700)
        r = ceil((x * 3)); % multiplying by 3 and using the if statement gives the values [1 and 2]
    else
        r = lcg(num); %otherwise rerun the function
    end
end

end      


