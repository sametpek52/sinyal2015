function [xx,tt] = note(frek,orn,dur)
    
    %% "orn" periyot baþýna gerekli örnek sayýsý

    tt = 0:1/(orn*frek):dur %% time
    
    xx = sin(2*pi*frek*tt); %% sinüs sonuçlarý