function [ matrix ] = decay_recovery( dT , angle ,Prop , matrix , N )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
angle = angle*2 /pi;
    for i=1:N
        for j=1:N
            vector = [matrix(i,j,1) ; matrix(i,j,2) ; matrix(i,j,3)];
            T1 = Prop(i,j,1);
            T2 = Prop(i,j,2);
            decay = [exp(-dT/T2) 0 0;0 exp(-dT/T2) 0;0 0 exp(-dT/T1)] ;
            recovery = [0;0;1-(angle)*exp(-dT/T1)];
            vector = decay * vector + recovery;
            matrix(i,j,1) = matrix(i,j,1) + vector(1,1);
            matrix(i,j,2) = matrix(i,j,2) + vector(2,1);
            matrix(i,j,3) = matrix(i,j,3) + vector(3,1); 
        end
    end
end
    

