%% MATLAB SENTEZLEME
%%
%%Sentez Dosyas�


%% Dosya Okuma ��lemleri
clear;
fid = fopen('notalar.txt','r');%%Notalar.txt dosyas� a��l�yor.

%%
[B] = textscan(fid, '%s%s%s',...
    'Delimiter',',','EmptyValue',-Inf);

fclose(fid);

fs = 11025;%deneme frekans�
duraklama = zeros(1,round(fs*0.01));%Duraklama
oktavDegeri = 0;%oktav
nota = B{1};% Dosyada okunan 1. sat�r nota de�i�kenine at�l�r
oktav = zeros(length(nota),1);
vurus = zeros(length(nota),1);

notalar = [];
%%
%% Nota ��lemleri
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
%% Gecikme ��lemi  
gecikme = round(fs*0.1);% Gecikme tan�mlan�r.
for z=1:length(notalar(1,end))
    notalar(1,z+gecikme) = notalar(1,z+gecikme) + 0.3*notalar(1,z);% Ses sinyaline echo eklenmesi
end

%% Grafik ve Ses ��lemi
%Normalizasyon 
M = max(notalar);% en yuksek nota degeri
notalar = notalar / M;%
plot(notalar)%notalar�n sinus egrileri olusur.
sound(notalar,fs)%istenilen frekanstaki sesi verir.

%% 
% Verilen notalar�n frekanslar�n�n
% sinus egrilerine harmonik
% bir �ekilde eklenerek olu�turulan grafik. 
%%
