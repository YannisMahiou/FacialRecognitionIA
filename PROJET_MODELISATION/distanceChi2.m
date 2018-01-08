#Cette fonction retourne la distance chi2 entre 2 histogrammes
function distance = distanceChi2(H1, H2)
    chi1 = chi2cdf(H1, 1);
    chi2 = chi2cdf(H2,1);
    Dchi2 = sum(sqrt(chi1.-chi2));
    distance = sum(-log(Dchi2));
end function 