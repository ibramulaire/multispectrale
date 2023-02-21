function res= interpolation(I)

[l, c, can] = size(I);

res=zeros(l,c,31);
 x = (400:50:700);
          xp = (400:10:700);
   
for rows=1:l
    for cols=1:c
         v =double( I(rows,cols,:));
         v=reshape(v,[1,7]);
       
      %  res(rows,cols,1)=interp1(x,v,xp,'spline');
        temp=interp1(x,v,xp,'spline');
       
      res(rows,cols,:)=temp(1,:);
       
    end
        
    end

end