function parcourir(imgPanel)
  global IMG;
  
  [fichier, chemin] = uigetfile({'*.gif;*.png;*.jpeg'}, 'Choisir l''image à  comparer :');
  
  if ~fichier
    error("aucune image selectionnée !");
  else
    IMG=RGB2Gray(imread(strcat(chemin,'/',fichier)));
    if (rows(IMG) != 128 || columns(IMG) != 128)
      IMG = imresize(IMG, [128 128]);
      
    end
    subplot(1,1,1,'Parent',imgPanel);
    imshow(IMG);
  end
endfunction