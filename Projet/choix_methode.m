function choix_methode(src)
  
  choix = get(src,'string');
  
  M=V2Matrice();
  Imoy = visageMoyen();
  
  switch(choix)
    case "Euclidienne"
      euclidienne(Imoy, M);
  endswitch
 
endfunction