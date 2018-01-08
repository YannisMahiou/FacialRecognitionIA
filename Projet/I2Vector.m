#Cette function renvoie un vecteur, constuit selon l'image reçue I
function  V=I2Vector (I)
  [H,L]=size(I);
  V=reshape(I,[H*L,1]);
endfunction