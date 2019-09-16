% September 7th,2019 ****LAB1**** Saturday
% Q: Write a program to calculate x, where: 
% using quadratic formula x= -b+(sqrt(b^2-4ac))/(2a)(Chapter 2, 2.6)
% a=2, b=-10, c=12
% author: Essential Matlab, chapter 2, chapter exercise 2.6
% program solved by: Sidra
% date: September 7th,2019 Saturday

% Three variables a,b,c above are assigned a value
a=2; 
b=-10;
c=12;

% applying a quadratic formula's numerator part in which b^2 is b*b
% sqrt() is a built in method to take square
% root of a number written in paranthesis,
% afterwards, we store the numerator in an
% another variable i.e. l and m                           
l= -b+ sqrt((b^2)-(4*a*c)); 
m=-b- sqrt((b^2)-(4*a*c));
       
% dividing l by 2*a to apply the proper formula
x1=l/(2*a);       
% dividing m by 2*a to apply the proper formula
x2=m/(2*a);
 % displaying the value of x1
disp(x1);        
% displaying the value of x2
disp(x2);

