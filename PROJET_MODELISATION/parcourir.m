function parcourir(imgPanel)
  global IMAGE;
  
  [fichier, chemin] = uigetfile({'*.gif';'*.png';'*.jpeg'}, 'Choisir l''image àcomparer :');
  
  if(fichier != 0)
    IMAGE=RGB2Gray(imread(strcat(chemin,'/',fichier)));
    if (rows(IMAGE) != 128 || columns(IMAGE) != 128)
      IMAGE = imresize(IMAGE, [128 128]);   
    end
    subplot(1,1,1,'Parent',imgPanel);
    imshow(IMAGE);
  end
endfunction