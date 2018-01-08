# Retourne un tableau contenant les images les plus ressemblantes à l'image testé après avoir trié D
function tab = getPlusProches(D)
  global nbImg;
  [d1,idx]=sort(D);
  tab=idx(1:nbImg);
end