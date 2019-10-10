%Question: Let's say Mr Frank wants to travel from Brantford or Collingwood to
%Fort Erie or Grand Bend and
%he wants to find out the distance and cost to reach there by road.


%Creating matrices for location, distance and cost
location=["1. Brantford","2. Collingwood","3. Elora","4. Fort Erie"...,
    "5.Dogerich","6. Grand Bend"];

distance=[0 234 70 149 155 144; 234 0 110 282 176 220; 70 110 0 208 128 149; 
    149 282 208 0 282 316; 115 175 128 282 0 49; 144 220 149 316 49 0];
%considering 1km = 0.15$ gas
cost=[0 35.1 10.5 22.35 23.25 21.6 ; 35.1 0 16.5 42.3 26.4 33; 10.5 16.5 0 31.2 19.2 22.35;
    22.35 42.3 31.2 0 42.3 47.4; 17.25 26.25 19.2 42.3 0 7.35; 21.6 33 22.35 47.4 7.35 0];

%Displaying the location array for user to choose the location.
disp(location);
%Asking user to feed in the data and then putting it inside the variable.
ip1=input('Choose the starting location by number ');
ip2=input('Choose the ending location by number ');

%calculating the actual distance for the desired locations by using dist
%function with ip1,ip2 and distance matrix as an argument
actdist=dist(ip1,ip2,distance);
%calculating the actual cost for the desired locations by using co function
%with ip1,ip2 and cost matrix as an argument
actcost=co(ip1,ip2,cost);
%Displaying actual distance and actual cost
disp(['The actual distance from point ',num2str(ip1), ' to ',num2str(ip2), ' is ',num2str(actdist)]);
disp(['The actual cost from point ',num2str(ip1), ' to ',num2str(ip2), ' is ',num2str(actcost)]);



