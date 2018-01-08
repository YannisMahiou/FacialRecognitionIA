# Transforme le vecteur V en image
function I=Vector2I(V)
  s=sqrt(size(V));
  I=reshape(V,s,s);
end