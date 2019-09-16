%Written by Sidra Na
%Sept 15th,2019
%Took the data from a website

%inserting data in matrix v, first column is price, second column is
%quantity
v=[79.7642 2219;
   114.5738 1457;
   248.1626 344;
   68.4516 997;
   182.9313 286];


%                   Declaring variables
avg=0;   %To find average
s=0;      %To find sum
m=0;      %To find number of products sold
totinc=0; %To find total income generated from each product
totsales=0; %To find income generated by total sales





%                   ***To find average:***


%Looping through first column of the array i.e. price 
for i=1:length(v(:,1))
 %Adding all the prices is s variable
   s=s+v(i,1); 
    
end
%Extracting the average
avg=s/5;
%displaying average
disp(['The average price of all products is : ',num2str(avg)]);





%       ***How many Products sold at a price above than average price:***


%Looping through the first column i.e. price
for i=1:length(v(:,1))
 %Checking for the prices greater than the average price
    if (v(i,1)>avg)
  %Finding total number or products greater than the average
        m=m+1;
        
        

        

        
%       ***Total income from transactions whose price is above the average
%                           price***
        
%Adding the prices greater than the average in a variable, totinc 
        totinc=totinc+v(i,1);
    end
end
%Displaying data
disp(['Number of products sold above the average price :',num2str(avg), ' are : ',num2str(m)]);
disp(['Total income from products price higher than the average: ',num2str(totinc)]);





%       ***Total income from each product***

for i=1:length(v(:,1))
 %Multiplying the price of product with the total quantity(sold)
   l= v(i,1)*v(i,2);
    disp(['Product ',num2str(i),' total income is ', num2str(l)]);
    
    
    
    
    %       ***Total income from all the sales***
  %Adding the total prices of the products sold
    totsales=totsales+l;
end
    disp(['Total income generated from all sales: ',num2str(totsales)]);




