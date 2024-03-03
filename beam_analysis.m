%beam analysis and design using matlab
%getting the length of the beam from user
prompt = "Enter the length of the beam in metres: ";
lenBeam = input(prompt);

%initialsing beam matrix
beam = zeros(1,lenBeam);
count=1;
%generating a beam matrix
for i= 1:lenBeam
    
    beam(i)=count;
    count=count+1;
    fprintf("%d",beam(i));

end

%locating the position of the pin support
prompt1="Enter the distance of pin support from the starting point of beam: ";
distPin=input(prompt1);

%assigning the pin position
pinPos = beam(distPin);

fprintf("%d",pinPos);

%locating the position of the roller support
prompt2 = "Enter the distance of roller support from the starting point of beam: ";
distRoller = input(prompt2);


%checking if the roller support is placed on pin support for before it
if (distRoller <= distPin)
    disp("The roller support is not positioned properly");

%gets executed if theres no conflict with pin support
else 
    %assigning the roller position
    rollerPos = beam(distRoller);
    fprintf("%d",rollerPos);
end
