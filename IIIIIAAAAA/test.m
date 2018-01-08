# Test des exercices BONUS
[u,s,v]=svd(M,'econ');
VP1=u(:,1);VP2=u(:,2);VP3=u(:,3);VP4=u(:,4);VP5=u(:,5);

V=M(:,1);a(1,:)=V(:,1);

P1 = (a * VP1) * VP1;
P2 = (a * VP2) * VP2;
P3 = (a * VP3) * VP3;
P4 = (a * VP4) * VP4;
P5 = (a * VP5) * VP5;

P = P1;

imshow(uint8(Vector2I(VP1)));
figure
imshow(uint8(Vector2I(V)));