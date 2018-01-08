#interface 
clear all;
close all;

global IMG;
global nbSave=0;
global imgSave=zeros(16384,5);

%M = creerBD();

%Iavg = VisageMoyen(M);

f=figure('name', 'Reconnaissance faciale', 'numberTitle', 'off');
 m1 = uimenu(f, 'label','&Importer');
 uimenu(m1, 'label','Importer','accelerator','i', 'callback', 'parcourir(imgPanel)');

imgPanel = uipanel('title', 'Votre Image', 'position', [.0 .50 .4 .50]);
paramPanel = uipanel('title', 'Parametres', 'position', [.4 .50 .4 .5]);
rchPanel = uipanel('title', 'Methodes de Recherches', 'position', [.7 .50 .3 .5]);

subplot(1,1,1,'Parent',imgPanel);
imshow(imread("default.gif"));

#Boutton parcourir
uicontrol(paramPanel, 'style', 'pushbutton', 'string', 'Parcourir', 'position', [ 15 20 80 30], 'callback', 'parcourir(imgPanel)');
#Choix du nombre d'images
%uicontrol(paramPanel, 'style', 'text', 'string','Nb visages :','position',[130 50 80 30]);
%uicontrol(paramPanel, 'style', 'popupmenu', 'string', {"0", "1", "2", "3", "4", "5"}, 'position', [140 20 50 27], 'callback', @btn_Images);
#Recherche par Vecteur
%uicontrol(rchPanel, 'style', 'pushbutton', 'string', 'Vecteur', 'position', [5 20 100 30], 'callback', 'btn_Vector(Iavg,M)');
#Recherche par Histogramme
%uicontrol(rchPanel, 'style', 'pushbutton', 'string', 'Histogramme', 'position', [115  20  100 30], 'callback', 'btn_Histo(Iavg,M)');