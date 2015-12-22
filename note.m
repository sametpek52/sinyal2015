function [xx,tt] = note(frek,dur,fs=8192)
    
    %% "fs" periyot baþýna istenilen örnek sayýsý

    tt = 0:1/fs:(dur-1/fs); %% time
    
    %%zarf ta gerekli olanlar
    elemanSayi = length(tt); %% Eleman sayýsý
    
    attack = linspace(0,1.5,(elemanSayi*2/8));
    
    decay = linspace(1.5-(0.5/(elemanSayi/8)),1,(elemanSayi/8));
    
    sustain = ones(1,(elemanSayi/2));
    
    relase = linspace(1-(1/(elemanSayi/8)),0,(elemanSayi/8));
    
    zarf = [attack, decay, sustain, relase];

    xx = zarf .* sin(2*pi*frek*tt + zarf); %% zarf ile sinüs sonuçlarý

    