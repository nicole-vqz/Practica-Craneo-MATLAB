function [Yout] = cuantificador(Xin,Nbits)

    %0...255
    %1 bit = [127,255]
    %2 bit = [63,127,191,255]
    %3 bit = [31,63,95,127,159,191,223,255]
    
    % (256/(2^Nbits)) - 1 = 63 
    particion = (256/(2^Nbits)) - 1 : (256/(2^Nbits)) : 255;
    Yout = quantiz(Xin,particion);
end