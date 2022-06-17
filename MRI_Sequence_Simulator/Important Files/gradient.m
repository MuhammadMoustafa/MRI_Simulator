function [ matrix ] = gradient( from , to , axis , matrix,N)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%global N;

if (axis == 'Y')

    for i=1:N
        theta = (to-from)*i/N + from;
        R = [cos(theta) -sin(theta) 0;sin(theta) cos(theta) 0; 0 0 1];
        for j=1:N       
            vector = [matrix(i,j,1) ; matrix(i,j,2) ; matrix(i,j,3)];
            vector = R * vector;
            matrix(i,j,1) = vector(1,1);
            matrix(i,j,2) = vector(2,1);
            matrix(i,j,3) = vector(3,1);
    
        end
    end   
    
else
%     for sample=1:N    
        for i=1:N
            for j=1:N
                theta = (to-from)*j/N + from;
                R = [cos(theta) -sin(theta) 0;sin(theta) cos(theta) 0; 0 0 1];
                vector = [matrix(i,j,1) ; matrix(i,j,2) ; matrix(i,j,3)];
                vector = R * vector;
                matrix(i,j,1) = vector(1,1);
                matrix(i,j,2) = vector(2,1);
                matrix(i,j,3) = vector(3,1);
            end
        end
%     end
end

end