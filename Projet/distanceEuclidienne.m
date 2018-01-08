#Distance euclidienne
 function dis=distanceEuclidienne(I1, I2)
    V1=I2Vector(double(I1));
    V2=I2Vector(double(I2));
    dif=V1-V2;
    dis=norm(dif);
endfunction