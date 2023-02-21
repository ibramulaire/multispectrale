clc;
clear all;

Isource = imread("NG/blobs.png");
%Isource = imbinarize(Isource);
%Isource = imcomplement(Isource);
%Isource = [[1;0;0;1;1;0;0;0;1;1],[1;1;1;1;0;1;0;1;1;0],[1;0;0;1;1;0;0;0;1;1],[1;1;1;1;1;1;0;1;1;0], [1;0;0;1;1;0;0;0;1;1],[1;1;1;1;0;1;0;1;1;0],[1;0;0;1;1;0;0;0;1;1],[1;1;1;1;0;1;0;1;1;0],[1;0;0;1;1;0;0;0;1;1],[1;1;1;1;0;1;0;1;1;0]]
[h, w, can] = size(Isource);
elementStructurant = [[0,0,0];[1,1,1];[0,0,0]];
zeromat = zeros(h,w);
sq = zeros(h,w);
incr = 1;
erode = erosion(Isource, elementStructurant);
while(1)
       if incr>1
        erode = erosion(erode, elementStructurant);
    end

    ouverture_de_erode = ouverture(erode, elementStructurant);
    
  sq=sq+imabsdiff(erode,ouverture_de_erode);
    incr=incr+1
    if erode==zeromat
       break 
    end
end
%imadif
figure(1)
subplot(1,2,1)
imshow(Isource)
subplot(1,2,2)
imshow(sq)











function r = reshape(Isource)
    [h, w, can] = size(Isource);
    r = zeros(h+2,w+2);
    r(2:h+1,2:w+1) = Isource;
end

function Iresultante = fermeture(Isource, elementStructurant) 
    Iresultante = erosion(dilatation(Isource, elementStructurant), elementStructurant);
end

function Iresultante = n_ouverture(Isource, elementStructurant,n) 
    Iresultante = ouverture(Isource, elementStructurant);
    for cpt=1:n-1
        a=0
        Iresultante = ouverture(Iresultante, elementStructurant);
    end
end

function Iresultante = ouverture(Isource, elementStructurant) 
    Iresultante = dilatation(erosion(Isource, elementStructurant), elementStructurant);
end

function Iresultante = n_fermeture(Isource, elementStructurant,n) 
    Iresultante = fermeture(Isource, elementStructurant);
    for cpt=1:n-1
        Iresultante = fermeture(Iresultante, elementStructurant);
    end
end


function Iresultante = n_erosion(Isource, elementStructurant, n)
    Iresultante = erosion(Isource, elementStructurant);
    for cpt=1:n-1
        Iresultante = erosion(Iresultante, elementStructurant);
    end
end

function Iresultante = n_dilatation(Isource, elementStructurant, n)
    Iresultante = dilatation(Isource, elementStructurant);
    for cpt=1:n-1
        Iresultante = dilatation(Iresultante, elementStructurant);
    end
end

function Iresultante = erosion(Isource, elementStructurant) 
    Isource = reshape(Isource);
    Iresultante = Isource;
    [h, w, can] = size(Isource);
    Iresultante =  zeros(h,w);
    for i=2:h-1
        for j=2:w-1
            mat = Isource(i-1:i+1,j-1:j+1);
            logicOp = mat.*elementStructurant;
            if(isequal(logicOp,elementStructurant));
                Iresultante(i,j)=Isource(i,j);
            end
        end
    end
    Iresultante = Iresultante(2:h-1, 2:w-1);
end


function Iresultante = dilatation(Isource, elementStructurant) 

    Isource = reshape(Isource);
    Iresultante = Isource;
    [h, w, can] = size(Isource);
    %Iresultante(2:h-1,2:w-1) =  zeros(h-2,w-2);
    for i=2:h-1
        for j=2:w-1
    %         if(Isource(i-1:i+1,j-1:j+1)==0)
                mat = Isource(i-1:i+1,j-1:j+1);
                %logicOp = mat.*elementStructurant;
                if(mat(2,2)==1)
                    Iresultante(i,j)=Isource(i,j);
                    for m = 1:3
                        for n = 1:3
                            if elementStructurant(m,n)==1
                               mat(m,n)=1; 
                            end
                        end
                        
                    end
                    Iresultante(i-1:i+1,j-1:j+1) =Iresultante(i-1:i+1,j-1:j+1)| mat;
                    %Iresultante
                end
    %         end
        end
    end
    Iresultante = Iresultante(2:h-1, 2:w-1);
end
