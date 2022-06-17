function [ matrix, Kspace] = readOut(theta , matrix , Kspace , N ,cycle)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
        
for sample=1:N
    for i=1:N
        for j=1:N
            R = [cos(theta*j) -sin(theta*j) 0;sin(theta*j) cos(theta*j) 0; 0 0 1];
            vector = [matrix(i,j,1) ; matrix(i,j,2) ; matrix(i,j,3)];
            vector = R * vector;
            matrix(i,j,1) = vector(1,1);
            matrix(i,j,2) = vector(2,1);
            matrix(i,j,3) = vector(3,1);
            Kspace(cycle,sample)= Kspace(cycle,sample) + complex( matrix(i,j,1),matrix(i,j,2));
        end
    end
end

end

