function [player, monty, car, door_last] = simulator()
%declare a function, with 4 parameters, player (player's choice),
%monty(monty's choice), the position of the winning door (car) and the
%"unselected" door (player needs to decide if it switches to this door or
%it keeps its initial choice)

%the varbiale door will store the positions of the three doors
    door = [1 2 3];
%in this case, we select door number two to be the winning door, but one
%can also select either door one or door two.
    car = door(2);
    max = 3;
%the other unselected doors, are considered to be the losing doors (i.e.
%doors with goats behind them)

%now, we allocate to the player and monty variables a random integer using
%the lcg 
   
    player = randi(max,1,1);
    monty = randi(max,1,1);
   
%we define player's selection in the passed array using 0 
  
    door(player) = 0;


%if the choice made by the player is equal to the one made by monty, we
%automatically change the value selected by monty using lcg

%similarly, if the value selected by monty is equal with the value of the
%car, then we will reselect monty's value using the lcg
   
    if(monty == player || monty == car)
        monty = randi(max,1,1);
    end

    
%if the above two tests pass, we will mark monty's selection using 0 (i.e.
%similarly to the player's selection)


    door(monty) = 0;


%now to get the remaining door, we use a for loop (i.e. passing through all
%the points) and as long as the value stored at i position is not equal to 0, we will
%allocate this value to the variable door_last.
    for i = 1:3
        if(door(i) ~= 0)
            door_last = door(i);
        end
    end
    
end
