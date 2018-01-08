# Transforme l'image I en vecteur
function V=I2Vector(I)
  [h,w]=size(I);
  V=reshape(I,h*w,1);
end