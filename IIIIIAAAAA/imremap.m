# Retourne 
function I = imremap(im, XI, YI)
  [r,c] = size(XI);
  I = zeros(r,c);
  
  # Renvoie l'entier le plus grand non supérieur à XI.
  K = floor(XI);
  L = floor(YI);

  ## Coefficients
  AY1  = bc(YI-L+1); AX1  = bc(XI-K+1);
  AY0  = bc(YI - L); AX0  = bc(XI - K);
  AY_1 = bc(YI-L-1); AX_1 = bc(XI-K-1);
  AY_2 = bc(YI-L-2); AX_2 = bc(XI-K-2);

  # Interpolation (construction d'une courbe à partir de la donnée d'un nombre fini de points)
  sz = size(im);
  I = AY_2 .* AX_2 .* im(sym_sub2ind(sz, L+2, K+2)) ...
    + AY_2 .* AX_1 .* im(sym_sub2ind(sz, L+2, K+1)) ...
    + AY_2 .* AX0  .* im(sym_sub2ind(sz, L+2, K  )) ...
    + AY_2 .* AX1  .* im(sym_sub2ind(sz, L+2, K-1)) ...
    + AY_1 .* AX_2 .* im(sym_sub2ind(sz, L+1, K+2)) ...
    + AY_1 .* AX_1 .* im(sym_sub2ind(sz, L+1, K+1)) ...
    + AY_1 .* AX0  .* im(sym_sub2ind(sz, L+1, K  )) ...
    + AY_1 .* AX1  .* im(sym_sub2ind(sz, L+1, K-1)) ...
    + AY0  .* AX_2 .* im(sym_sub2ind(sz, L,   K+2)) ...
    + AY0  .* AX_1 .* im(sym_sub2ind(sz, L,   K+1)) ...
    + AY0  .* AX0  .* im(sym_sub2ind(sz, L,   K  )) ...
    + AY0  .* AX1  .* im(sym_sub2ind(sz, L,   K-1)) ...
    + AY1  .* AX_2 .* im(sym_sub2ind(sz, L-1, K+2)) ...
    + AY1  .* AX_1 .* im(sym_sub2ind(sz, L-1, K+1)) ...
    + AY1  .* AX0  .* im(sym_sub2ind(sz, L-1, K  )) ...
    + AY1  .* AX1  .* im(sym_sub2ind(sz, L-1, K-1));
end

# Calcule les coefficients d'interpolation
function o = bc(x)
  x = abs(x);
  o = zeros(size(x));
  idx1 = (x < 1);
  idx2 = !idx1 & (x < 2);
  o(idx1) = 1 - 2.*x(idx1).^2 + x(idx1).^3;
  o(idx2) = 4 - 8.*x(idx2) + 5.*x(idx2).^2 - x(idx2).^3;
end

# Convertir les indices en un index linéaire
function ind = sym_sub2ind(sz, Y, X)
  Y(Y<1) = 1 - Y(Y<1);  
  Y(Y>sz(1)) = 1 + 2*sz(1) - Y(Y>sz(1));

  X(X<1) = 1 - X(X<1);  
  X(X>sz(2)) = 1 + 2*sz(2) - X(X>sz(2));

  ind = sub2ind(sz, Y, X);
end