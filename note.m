function [xx,tt] = note(frek,orn,dur)
    
    %% "orn" periyot ba��na gerekli �rnek say�s�

    tt = 0:1/(orn*frek):dur %% time
    
    xx = sin(2*pi*frek*tt); %% sin�s sonu�lar�