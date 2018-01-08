# Transforme l'image I en une image grise
function J = RGB2Gray(I)
  [a,b,n]=size(I);
  
  if(n!=1)
    J =round(0.3*I(:, :,1)+0.59*I(:,:,2)+0.11*I(:,:,3));
  else
    J=I;
  endif
  
endfunction