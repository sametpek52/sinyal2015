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

             frek = oktavDo*oranSi;
          break
          
         %%Üçüncü hafta güncelleme notaların diyezleri
        
        %% Diyez
         case "Dod"
             frek = oktavDo*oranDo*2;
         break
         
         case "Red"
             frek = oktavDo*oranRe*2;
         break
         
         case "Mid"
             frek = oktavDo*oranMi*2;
         break
         
         case "Fad"
             frek = oktavDo*oranFa*2;
         break
         
         case "Sold"
             frek = oktavDo*oranSol*2;
         break
         
         case "Lad"
             frek = oktavDo*oranLa*2;
         break
         
         case "Sid"
             frek = oktavDo*oranSi*2;
         break
         
         %%Üüçüncü hafta notaların bemolleri 
         
         %% Bemol
         case "Dob"
             frek = oktavDo*oranDo/2;    
         break
         
         case "Reb"
             frek = oktavDo*oranRe/2;
         break
         
         case "Mib"
             frek = oktavDo*oranMi/2;
         break
         
         case "Fab"
             frek = oktavDo*oranFa/2;
         break
         
         case "Solb"
             frek = oktavDo*oranSol/2;
         break
         
         case "Lab"
             frek = oktavDo*oranLa/2;
         break
         
         case "Sib"
             frek = oktavDo*oranSi/2;
         break
         
         %%
         case "sus"
             frek = 0;
         break
         
        
        otherwise
            disp("Yanlış nota girildi.")
        break
    end
