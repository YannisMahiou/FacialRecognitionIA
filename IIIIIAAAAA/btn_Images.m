# Fonction qui récupère le nombre d'images voulues par l'utilisateur
function btn_Images(src)
  global nbImg;
  nbImg = str2num(get(src,'string'){get(src,'value')});
end