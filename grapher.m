clear
clc
%N represents the number of tests performed (i.e. log10(100,000) = 1)
N = 100;

%change and keep variables are matrices of 1 by N, that will store the
%values of each 
change = zeros(1, N);
keep = zeros(1, N);
%t represents the time variable
t = 1;

%nested for loops that are used to calculate the  win rates precentage
for i = 1:100:N*100
    change_win_rate = 0;
    keep_win_rate = 0;
    
    for j = 1:i
        [player, monty, car, door_last] = simulator(); %call of the simulator function
        if(door_last == car) %check the winning condition
            change_win_rate = change_win_rate + 1; %increment change
        else 
            keep_win_rate = keep_win_rate +1; %increment keep otherwise
        end
        
    end
    
     pc = change_win_rate/(i);
     change(t) = pc; %calculate precentage
     
     pk = keep_win_rate/(i);
     keep(t) = pk; % calculate precentage
     
     t = t+1;
end

%plot the graphs
figure(1), hold on
plot((1:100:N*100), change, 'b')
plot((1:100:N*100), keep, 'r')
hold off


    
