function G= computeg(IG)
    [nbl nbcol]=size(IG);

    MgH=[1 0 -1];
    MgV=[1;0;-1];

    MGH=1/2*[1 0 1];
    MGV=1/2*[1;0;1];
    MG4=1/4*[0 1 0;1 4 1;0 1 0];

    gH=imfilter(IG,MgH,'symmetric','same','conv');
    gV=imfilter(IG,MgV,'symmetric','same','conv');  

    GH=imfilter(IG,MGH,'symmetric','same','conv');
    GV=imfilter(IG,MGV,'symmetric','same','conv');
    G4=imfilter(IG,MG4,'symmetric','same','conv');

    for rows=1:nbl
        for cols=1:nbcol
            
          if(mod(rows,2)==0)
               
              if(mod(cols,2)==0)
                 if(gH(rows,cols)<gV(rows,cols))
                    G(rows,cols)=GH(rows,cols);
                 elseif(gH(rows,cols)>gV(rows,cols))
                    G(rows,cols)=GV(rows,cols);
                 else
                    G(rows,cols)=G4(rows,cols);
                 end
                
              else
                G(rows,cols)=G4(rows,cols);
             
                    
              end
          else
               if(mod(cols,2)!=0)
                   if(gH(rows,cols)<gV(rows,cols))
                    G(rows,cols)=GH(rows,cols);
                   elseif(gH(rows,cols)>gV(rows,cols))
                    G(rows,cols)=GV(rows,cols);
                   else
                     G(rows,cols)=G4(rows,cols);
                   end    
               else
                G(rows,cols)=G4(rows,cols);
               end
       
          end
      end  
    end
 end