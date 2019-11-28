%Problem:
%12 integer compute programs are taken to figure out SPEC benchmarking
%ratio, formula= time on SPARC station / time on target machine
%Hence, the larger the SPEC ratio the better the performance
%So, we will check, CINT2006 results on intel i7

%Creating a vector for the names of program for the user to choose and
%check the SPEC ratio
name=[' 1.perl ', ' 2.bzip2 ',' 3.gcc ',' 4.mcf ',' 5. go',' 6. hmmer '...
    ,' 7.sjeng ',' 8.libquantum ',' 9.h264avc ',' 10.omnetpp ',' 11.astar ',' 12.xalancbmk '];

%array of short description of programs

descrip=["Interpreted string processing","block-sorting compression","GNU C Compiler","Combinatorial optimization"...
    ,"Go game(AI)","Search gene sequence","chess game(AI)","Quantum computer simulation","video compression","discrete event simulation library"...
    ,"games or path finding","XML parsing"];

%Vector of cpi i.e. cycles per instruction
cpi=[0.60 0.70 1.20 2.66 1.10 0.60 0.80 0.44 0.50 2.10 1.00 0.70 ];
%Vector of et i.e. Execution Time
et=[508 629 358 221 527 590 586 109 713 290 470 275];
%Vector for rt i.e. reference time/time on targeted machine
rt=[9770 9650 8050 9120 10490 9330 12100 20720 22130 6250 7020 6900];
%Displaying the array of program names
disp(name);
%Asking user selected program 

inp1=input('Select the names of the program by number to view the short description and to determine the SPEC benchmark ratio ');
%Displaying the description of the program
disp('This program is about '+(descrip(inp1)));


%Calculation
%using the formula of SPEC ratio 
specratio=rt(inp1)/et(inp1);
disp(['The SPEC benchmark ratio of the selected program is ',num2str(specratio)]);

% total average cpi using function
totalcpi=ftotcpi(cpi);
disp(['The average cpi is ',num2str(totalcpi)]);

%total average executed time using function
totalet=ftotet(et);
disp(['The average execution time is ',num2str(totalet)]);
%total average rt using function
totalrt=ftotrt(rt);
disp(['The average rt is ',num2str(totalrt)]);


%Matrix for SPEC ratio for each program
%sv is a matrix of 12x1 to hold all the spec ratios
sv=zeros(1,12);
for i=1:12

    %sv(i)=rt(i)/et(i);
    sv(i)=rt(i)/et(i);
end

  


disp('The matrix below gives SPEC Benchmark ratio for all the programs in an ordered list');
disp(sv);

%plotting bar graph for reference time with title
subplot(2,2,1);
bar(rt);
title('Bar Graph:reference time');

%plotting pie chart for cycles per instructions with title
subplot(2,2,2);
pie(cpi);
title('Pie chart:cpi');

%plotting histogram for execution time with title
subplot(2,2,3);
histogram(sort(et),10);
title('Histogram:Execution time');

%plotting 3D graph for cpi,et,spec ratio with title
subplot(2,2,4);
plot3(cpi,sv,et,'om--');
title('3D graph for cpi,SPEC ratio, execution time');
%plot(cpi,sv,'om--');










