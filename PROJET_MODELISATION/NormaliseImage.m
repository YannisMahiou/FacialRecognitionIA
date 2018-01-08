#Normalise une image I avec l'image moyenne IMoy
function img=normalizeImg(I, IMoy)
     I=RGB2Gray(I); 
     [N, M] = size(IMoy);
     img = reshape(I,[N, M]);
endfunction