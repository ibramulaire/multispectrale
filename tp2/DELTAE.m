function Valeur = DELTAE(input_RGB,output_RGB)
  
   
    
 labin=rgb2lab (input_RGB);
 
 labout=rgb2lab (output_RGB);

  Lin = (labin(:,:,1));
    Ain = (labin(:,:,2));
    Bin = (labin(:,:,3));
    
    Lou = (labout(:,:,1));
    Aou = (labout(:,:,2));
    Bou = (labout(:,:,3));
 
 
  [nbl nbcol]=size(Lin);
  Valeur=0;
  
    for rows=1:nbl
        for cols=1:nbcol
          Valeur=Valeur+sqrt(  ( (Lin(rows,cols)-Lou(rows,cols))* (Lin(rows,cols)-Lou(rows,cols)))+ 
                               ( (Ain(rows,cols)-Aou(rows,cols))* (Ain(rows,cols)-Aou(rows,cols)))+ 
                               ( (Bin(rows,cols)-Bou(rows,cols))* (Bin(rows,cols)-Bou(rows,cols)))  );
            
        end
    end
   Valeur=(Valeur)/(nbl*nbcol);   
   
  end