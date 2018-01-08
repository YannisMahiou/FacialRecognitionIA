#interface de la reconnaissance faciale
clear all;
close all;

global IMG;
global nbSave=0;
global imgSave=zeros(16384,5);
#récupération de la base de donnée
M = creerBD();
#récupération du visage moyen
Iavg = VisageMoyen(M);

figure('name', 'Snapchat', 'numberTitle', 'off', 'menubar', 'none');

imgPanel = uipanel('title', 'Image', 'position', [.0 .50 .4 .50]);
paramPanel = uipanel('title', 'Paramètres', 'position', [.6 .75 .4 .25]);
rchPanel = uipanel('title', 'Méthodes de Recherches', 'position', [.6 .50 .4 .25]);

subplot(1,1,1,'Parent',imgPanel);
imshow(imread("default.gif"));

#Boutton parcourir
uicontrol(paramPanel, 'style', 'pushbutton', 'string', 'Parcourir', 'position', [ 15 20 80 30], 'callback', 'btn_Parcourir(imgPanel)');
#Choix du nombre d'images
uicontrol(paramPanel, 'style', 'text', 'string','Nb visages :','position',[130 50 80 30]);
uicontrol(paramPanel, 'style', 'popupmenu', 'string', {"0", "1", "2", "3", "4", "5"}, 'position', [140 20 50 27], 'callback', @btn_Images);
#Recherche par Vecteur
uicontrol(rchPanel, 'style', 'pushbutton', 'string', 'Vecteur', 'position', [5 20 100 30], 'callback', 'btn_Vector(Iavg,M)');
#Recherche par Histogramme
uicontrol(rchPanel, 'style', 'pushbutton', 'string', 'Histogramme', 'position', [115  20  100 30], 'callback', 'btn_Histo(Iavg,M)');