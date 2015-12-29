function[frek] = frek(nota,oktav)
    
    if nargin < 2  % oktav degeri yoksa,
        oktav = 4; % 4.oktav kabul ediliyor.
    end
    
    notalar = {'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'};
    
    frek = 0; %Sus geldiği zaman geri dönmesi için
    
    index = find(ismember(notalar,nota)); %%notanın dosyadki yeri bulunuyor
    
    if index~=13 %%Sus geldiyse hesaba katılmayacak
        base = 440; %%La notasının 4. oktavdaki değeri
        frek=base*2^((index-10)/12 + (oktav-4));
    end
end