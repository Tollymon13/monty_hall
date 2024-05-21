# monty_hall

## The Monty Hall Problem

This problem, named after the Canadian TV host, is based on the probability of three doors.
Behind one of the three doors, there is a car and the remaining two are goats. All three doors are initially closed, and the rules go as follows:
-  You pick a door and the game show host must open another door which has a goat behind it. 
-  Having one of the goats revealed you are given the option to change your choice with the remaining door.

The question is, is it to your benefit to switch doors?

## Assestment
Initially, the majority of people would assume that your chances of choosing the correct door are now 1/2, as there is one less door. However, it is marginally in your favour to change doors, because the total probability has changed:
- 1/3 chance it is behind your original door and,
- 2/3 chance it is behind the door you didn't choose

Also, consider the host's choice:
1. the host made this choice, as he couldn’t choose the car
   OR
2. you have already chosen the car, so the host randomly choose one of the two goats.
  
On average the user is getting information from the hosts choice.

## Bayesian Probability
![image](https://github.com/Tollymon13/monty_hall/assets/159135691/e2facc00-5411-41f6-bad4-6f207b299807)
![image](https://github.com/Tollymon13/monty_hall/assets/159135691/9451ffbc-7553-4ef9-8797-e8527c7f515e)

## Keep or Change?
![image](https://github.com/Tollymon13/monty_hall/assets/159135691/bd73ad36-560a-48a1-a8de-4a07d113c287)

Therefore, if we add the two probabilities, we get 2/3 (i.e. 1/3 + 1/3)
If we were to switch the initial selected door, the probability of winning would have been 2/3.
This means, that one should always switch the selected door, as there will always be a higher chance of winning.

## Code
The code is split into three different scripts, namely the LCG, the simulator and the grapher. 
Each individual script has a specific purpose and combined together, form the output of Monty Hall's probability question.
Note, that the code will be tested thousands of times, so that a precision answer can be plotted.

### LCG
![image](https://github.com/Tollymon13/monty_hall/assets/159135691/c4fc4953-3105-494a-adda-b8fab8d2bad7)

### Simulator
![image](https://github.com/Tollymon13/monty_hall/assets/159135691/06c34e18-14d8-4508-8b42-0ff2299552cb)


### Grapher
![image](https://github.com/Tollymon13/monty_hall/assets/159135691/4e8bd68a-c46d-4354-9b6b-b3a031f7e566)


### Expected Output
![image](https://github.com/Tollymon13/monty_hall/assets/159135691/0dac03c2-e62b-4076-bd9a-db3e6e9cfb6e)

