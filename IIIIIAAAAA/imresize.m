# Retourne l'image im avec les bonne dimensions
function im = imresize (im, dim)
  # Renvoie les matrices XI et YI correspondant à une grille à deux dimensions complète
  [XI, YI] = meshgrid(linspace(1,columns(im),ceil(dim(2))), linspace(1,rows(im),ceil(dim(1))));
  im = cast(imremap(double(im), XI, YI), class(im));
endfunction