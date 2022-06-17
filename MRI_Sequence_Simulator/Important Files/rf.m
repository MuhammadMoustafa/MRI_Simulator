function [ matrix ] = rf(theta , axis , matrix , N)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here



for i=1:N
    
    if ( axis == 'Y')
        R = [cos(theta) 0 sin(theta);0 1 0;-sin(theta) 0 cos(theta)];
        elseif ( axis == 'Z')
        R = [cos(theta) -sin(theta) 0;sin(theta) cos(theta) 0; 0 0 1];
        else
        R = [1 0 0 ;0 cos(theta) -sin(theta) ;0 sin(theta) cos(theta)];   
    end

        
    for j=1:N
        
                
        vector = [matrix(i,j,1) ; matrix(i,j,2) ; matrix(i,j,3)];
        vector = R * vector;
        matrix(i,j,1) = vector(1,1);
        matrix(i,j,2) = vector(2,1);
        matrix(i,j,3) = vector(3,1);
    end
end   


end