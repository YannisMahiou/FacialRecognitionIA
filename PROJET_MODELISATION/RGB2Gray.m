#Cette function prend une image en paramètre, et la renvoie en nuances de gris
function J=RGB2Gray(I)
    [H,L,n]=size(I);
     if(n==3)
        J=round(0.3 * I(:, :,1) + 0.59 * I(:, :,2) + 0.11 * I(:, :,3));
     else
        J=I;
     end
endfunction