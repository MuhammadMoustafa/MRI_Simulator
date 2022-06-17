function [] = draw(func ,scale , shiftFlag , readOut)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

global shift
x=0:0.01:40;
scale = scale / pi;
if (func == 1 )
    y = scale * (sinc(x-shift) .* (heaviside(x - (shift-1) ) - heaviside(x- (shift+1) ))) ;
    plot(x, y , '.-' , 'color' , [0 0 1.0])
    if (scale ~= 0)
        y = 0.25* (heaviside(x -(shift-1)) - heaviside(x-(shift+1))) - func*1.1;
        plot(x, y , '.-' , 'color' , [0 0.5 0])
    end
elseif (func == 2)
    for i=1:5
        y = (-0.6 + i/5.0)*(heaviside(x- (shift-1) ) - heaviside(x- (shift+1) )) - func*1.1;
        plot(x, y , '.-' , 'color' , [0.25 0.25 0.25])
    end
elseif (func == 3)
    y = 0.5*(heaviside(x-(shift-1)) - heaviside(x-(shift+1))) -func*1.1;
    plot(x, y , '.-' , 'color' , [0 0.75 0.75]) % title('Sin(x) Graph') legend('Sin(x)', 'Cos(x)')
    if (readOut)
    y = 0.75*(sinc(x-(shift)) .* (heaviside(x-(shift-1)) - heaviside(x-(shift+1)))) -(func+1)*1.1;
    plot(x, y , '.-', 'color' , [0.75 0.75 0.75]) % title('Sin(x) Graph') legend('Sin(x)', 'Cos(x)')
    end      
end

if(shiftFlag)
    shift = shift+3;
end

end
