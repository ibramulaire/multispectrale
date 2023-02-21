function [vois,on,cpt] =element1(I)
[m, n] = size(I);
on=false;
vois = double(zeros (n*m,2));
cpt=1;

for l=1:m
    for c=1:m
        if(I(l,c)==1)
            on=true;
            vois(cpt,1)=l-2;
            vois(cpt,2)=c-2;
            cpt=cpt+1;
        end
    end
end       
end
