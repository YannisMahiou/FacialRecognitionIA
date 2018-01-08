# Fonction qui récupère l'image que l'utilisateur veut comparer
function btn_Parcourir(imgPanel)
  global IMG;
  # Récupère le fichier selectionné sous format .gif, .png ou .jpeg et son chemin 
  [fichier, chemin] = uigetfile({'*.gif';'*.png';'*.jpeg'}, 'Choisir l''image à comparer :');
  if (fichier != 0)
    # On récupère l'image et on la met en gris
    IMG=RGB2Gray(imread(strcat(chemin,'/',fichier)));
    if (rows(IMG) != 128 || columns(IMG) != 128)
      # Redimensionnement de l'image pour qu'elle soit en 128x128
      IMG = imresize(IMG, [128 128]);
    end
    subplot(1,1,1,'Parent',imgPanel);
    imshow(IMG);
  end
endfunction