#Cette function renvoie une image, constuite à partir d'un vecteur reçu
function  I=Vector2I (V)
  s=sqrt(size(V));
  I=reshape(V,s,s);
endfunction
 