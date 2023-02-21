function x =ytox(mat,mat2,x,p)
y=mat2(x);
y=round(y,p);
mat=round(mat,p);

x=-1;
i=1;
while x==-1 && i<257
    
    if mat(i)<y &&mat(i+1)<y
        i=i+1;
    elseif mat(i)<y &&mat(i+1)>y
        if  double(y-mat(i)) < double(mat(i+1)-y)
            x=i;
        else 
            x=i+1;
        end
    elseif y==mat(i)
        x=i;
   
    else 
        i=i+1;
    end
  
end
        