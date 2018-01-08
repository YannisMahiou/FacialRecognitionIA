#interface graphique
clear all;
close all;

global IMAGE;

  
  M=V2Matrice();
  Imoy = visageMoyen();

f=figure('name', 'Reconnaissance faciale', 'numberTitle', 'off');

m1 = uimenu(f, 'label','&Importer');
uimenu(m1, 'label','Importer','accelerator','i', 'callback', 'parcourir(imgPanel)');

imgPanel = uipanel('position', [.0 .50 .4 .50]);
paramPanel = uipanel( 'position', [.4 .50 .4 .5]);
rchPanel = uipanel( 'position', [.7 .50 .3 .5]);

subplot(1,1,1,'Parent',imgPanel);


#Boutton parcourir
uicontrol(paramPanel, 'style', 'pushbutton', 'string', 'Importer','position', [ 50 150 80 30], 'callback', 'parcourir(imgPanel)','backgroundcolor','red','foregroundcolor', 'white');
#Choix du nombre d'images
uicontrol(paramPanel, 'style', 'text', 'string','Nb visages :','position',[50 75 90 30]);
uicontrol(paramPanel, 'style', 'popupmenu', 'string', {"1", "2", "3", "4", "5"}, 'position', [50 50 50 27], 'callback', @choix_nbImages);



uicontrol(rchPanel, 'style', 'text', 'string','Choisir methode :','position',[20 130 140 30]);

#uicontrol(rchPanel, 'style', 'popupmenu', 'string', {'Euclidienne','Bhattacharyya','Chi Square','EigenFaces'}, 'position', [30 75 120 30], 'callback', @choix_methode);
#uicontrol(rchPanel, 'style', 'pushbutton', 'string', 'Executer','position', [ 50 30 80 30], 'callback', 'execute(M, Imoy)','backgroundcolor','red','foregroundcolor', 'white');

#uicontrol(rchPanel, 'style', 'pushbutton', 'string', 'Euclidienne','position', [ 50 30 80 30], 'callback', 'euclidienne(Imoy,M)','backgroundcolor','red','foregroundcolor', 'white');
#uicontrol(rchPanel, 'style', 'pushbutton', 'string', 'Bhattacharyya','position', [ 50 30 80 30], 'callback', 'bhattacharyya(Imoy,M)','backgroundcolor','red','foregroundcolor', 'white');
#uicontrol(rchPanel, 'style', 'pushbutton', 'string', 'Chi Square','position', [ 50 30 80 30], 'callback', 'chiSquare(Imoy,M)','backgroundcolor','red','foregroundcolor', 'white');