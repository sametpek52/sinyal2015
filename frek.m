function[frek] = frek(nota,oktav=4)
    
    ilkLa = 27.50; %%La notas�n�n 0. oktavdaki de�eri
    
    %%Di�er notalarda i�lem tekrarlanmamas� i�in istenilen oktavdaki La
    %%notas�n�n de�eri
    oktavLa = ilkLa*(2^oktav);
    
    
    %%    Her bir notan�n frekans�n�n do notas�n�n frekans�na b�l�m�nde notaya has sabit bir oran gelmektedir.
    %%    Bu oranlar notalara g�re a�a��da listelenmektedir
        

    oranDo = 0.594;
    oranRe = 0.667;
    oranMi = 0.749;
    oranFa = 0.793;
    oranSol = 0,890;
    oranLa = 1;
    oranSi = 1.122;
    
    switch nota %%Burada girilen nota i�leme u�rar.
    
        case "Do"
            frek = oktavLa*oranDo;    
        break
        
        case "Re"
            frek = oktavLa*oranRe;
        break
        
        case "Mi"
            frek = oktavLa*oranMi;
        break
        
        case "Fa"
            frek = oktavLa*oranFa;
        break
        
        case "Sol"
            frek = oktavLa*oranSol;
        break
        
        case "La"
            frek = oktavDo*oranLa;
        break
        
        case "Si"
            frek = oktavLa*oranSi;
        break
        
        otherwise
            disp("Yanl�� nota girildi.")
        break
    end