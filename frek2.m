function[frek] = frek(nota,oktav=4)
    
    ilkLa = 27.50; %%La notasýnýn 0. oktavdaki deðeri
    
    %%Diðer notalarda iþlem tekrarlanmamasý için istenilen oktavdaki La
    %%notasýnýn deðeri
    oktavLa = ilkLa*(2^oktav);
    
    
    %%    Her bir notanýn frekansýnýn do notasýnýn frekansýna bölümünde notaya has sabit bir oran gelmektedir.
    %%    Bu oranlar notalara göre aþaðýda listelenmektedir
        

    oranDo = 0.594;
    oranRe = 0.667;
    oranMi = 0.749;
    oranFa = 0.793;
    oranSol = 0,890;
    oranLa = 1;
    oranSi = 1.122;
    
    switch nota %%Burada girilen nota iþleme uðrar.
    
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
            disp("Yanlýþ nota girildi.")
        break
    end