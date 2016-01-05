%% MATLAB SENTEZLEME
%%
%%Sentez Dosyasý


%% Dosya Okuma Ýþlemleri
clear;
fid = fopen('notalar.txt','r');%%Notalar.txt dosyasý açýlýyor.

%%
[B] = textscan(fid, '%s%s%s',...
    'Delimiter',',','EmptyValue',-Inf);

fclose(fid);

fs = 11025;%deneme frekansý
duraklama = zeros(1,round(fs*0.01));%Duraklama
oktavDegeri = 0;%oktav
nota = B{1};% Dosyada okunan 1. satýr nota deðiþkenine atýlýr
oktav = zeros(length(nota),1);
vurus = zeros(length(nota),1);

notalar = [];
%%
%% Nota Ýþlemleri
for i=1:length(nota)
    %Dosyada okunmus degerlerin karsiligi gelen sayiya donusturuluyor
    oktav(i) = str2num(B{2}{i});
    vurus(i) = str2num(B{3}{i});
    oktav(i) = oktav(i)+oktavDegeri;
    %disp(nota(i));
    frekans = frek(nota(i),oktav(i));
    [xx,tt] = note(frekans,vurus(i));
    notalar = [notalar xx duraklama];
end
%% Gecikme Ýþlemi  
gecikme = round(fs*0.1);% Gecikme tanýmlanýr.
for z=1:length(notalar(1,end))
    notalar(1,z+gecikme) = notalar(1,z+gecikme) + 0.3*notalar(1,z);% Ses sinyaline echo eklenmesi
end

%% Grafik ve Ses Ýþlemi
%Normalizasyon 
M = max(notalar);% en yuksek nota degeri
notalar = notalar / M;%
plot(notalar)%notalarýn sinus egrileri olusur.
sound(notalar,fs)%istenilen frekanstaki sesi verir.

%% 
% Verilen notalarýn frekanslarýnýn
% sinus egrilerine harmonik
% bir þekilde eklenerek oluþturulan grafik. 
%%
