%Applied Optimization midterm exam
%Note: Save the m file as name, surname and student number.
%Note: Please write your identity information in the relevant fields below.
%Student's name and surname:
%Its number:

%Questions
%1) Write a program that says "Grade Average" and %"Pass" or "Fail" when midterm and final grades are typed from the keyboard.
%To avoid confusion with the second question, use the letters v for midterm and f for final as variables.
%Grade average: It is found by adding 0.40 of the midterm and 0.60 of the final.
%Midterm and Final grades When negative and a value greater than 100 is written, "You have entered an incorrect value"
Give the %warning.
%If the grade point average is >=50, write "pass", otherwise write "fail". (20 points)
%----------Write the Program Code Here-----------

%%1 question
v=input('Please write the visa note=');
while v<0 || v>100
     fprintf('You typed the wrong value /n ')
     v=input('Please write a valid visa note=');
end
f=input('Please write the final grade=');
while f<0 || f>100
     fprintf('You wrote the wrong value /n ');
     f=input('Please enter a valid final grade=')
end
avg=(v*0.40)+(f*0.60);
if avg >=50
     fprintf('Passed /n ', avg)
else
     fprintf('Remained /n ', avg)
end






fprintf('The program has been stopped. Press enter to continue.\n');
pause;
%---------------------------------------
%2.f(x)=30*x.^2-50*x+8
%a)Draw the graph of the function.(20p)
%b)Optimize with the optimization function (limits for x are 0 and 40
get %)(15p)
%c)Take the derivative and find the x value. (15p)
%----------Write the Program Code Here-----------

%%2.question
%a)
x=1:100;
y=(30*x.^2-50*x+8);
plot(x,y)

%b)
syms x
y=(30*x.^2-50*x+8);
fplot(y)
[x,fval,exitfilag]=fminbnd('30*x.^2-50*x+8',0,40)

%c
syms c
y=(30*x.^2-50*x+8);
t1=diff(y,x)
solve=double(solve(t1==0,x))
t2=diff(t1,x)

We find the change of slope with 2% derivative






fprintf('The program has been stopped. Press enter to continue.\n');
pause;
%---------------------------------------
%----------Write the Program Code Here-----------
%b)





fprintf('The program has been stopped. Press enter to continue.\n');
pause;
%---------------------------------------
%----------Write the Program Code Here-----------
%c)






%---------------------------------------
3%) Solve question 2 with Optimization Toolbox and answer the questions below.
% a) In how many iterations did the function reach optimum? (5p)
% Reply:
% b) Which algorithms (those written in the procedure section) were used during the optimization process? (10p)
% Reply:

%%3.Question
%a) reached its maximum with 8 iterations
% b)Func-count x f(x)
1% 15.2786 6247.17
2% 24.7214 17106.3
3% 9.44272 2210.81
4% 5.83592 737.943
5% 3.6068 217.93
6% 0.833333 -12.8333
7% 0.833367 -12.8333
8% 0.8333 -12.8333

4) If the function you will optimize in the Matlab program is maximization oriented (its optimum point is the maximum point), which
% do you apply operations? Why?(15p)

%%4.Question
%% MATLAB always only performs minimization.
%% If we want to maximize, we multiply the function by -1 and change the sign.
%% If our function is min, we apply this operation.
%
%
%