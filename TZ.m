clear all; close all; clc;
%%Import des valeurs du fichier subjects_info
M=readtable('V2subjects_info');%Lecture du fichier source souhaité
%nomination de toutes les variables d'intérêts
age=M.age;
poids=M.poids;
sexe=M.sexe;
pss4=M.pss4;
DIFFSTAI=M.DIFFStai;
Stai_T=M.STAI_T;
cortisolcorr=M.diff_cortisol_corr;
cortisol=M.diff_cortisol;
STAI1=M.STAI_S1;
STAI2=M.STAI_S2;
cortisol1=M.cortisol1;
cortisol2=M.cortisol2;

H=readtable('Hommes');%Séparation du fichier mère en deux sous fichiers pour séparer les valeurs pour les hommes et pour les femmes
%valeur pour les hommes
HDIFFStai=H.DIFFStai;
homme=H.sexe;
HSTAI1=H.STAI_S1;
HSTAI2=H.STAI_S2;
ageH=H.age;
poidsH=H.poids;
Hcortisol=H.diff_cortisol;
Hcortisolcorr=H.diff_cortisol_corr;
hcortisol1=H.cortisol1;
hcortisol2=H.cortisol2;
hStai_T=H.STAI_T;
hpss4=H.pss4;

%valeur pour les femmes
F=readtable('Femmes');
FDIFFStai=F.DIFFStai;
femme=F.sexe;
FSTAI1=F.STAI_S1;
FSTAI2=F.STAI_S2;
ageF=F.age;
poidsF=F.poids;
Fcortisol=F.diff_cortisol;
Fcortisolcorr=F.diff_cortisol_corr;
fcortisol1=F.cortisol1;
fcortisol2=F.cortisol2;
fStai_T=F.STAI_T;
fpss4=F.pss4;

%Etude de la différence entre les valeurs de stai1 et stai2
disp('Comparaison des valeurs de stai1 et stai2')
figure
subplot(1,2,1)
boxplot(STAI1);
ylabel('Valeur de Stai1'),title('Box plot de la valeur de Stai1');
subplot(1,2,2)
boxplot(STAI2);
ylabel('Valeur de Stai2'),title('Box plot de la valeur de Stai2');

disp('Etude de leventuelle influence des paramètres sur les valeurs de stai1 et stai2 : sexe, âge; poids')
figure
subplot(4,2,1)
boxplot(HSTAI1);
xlabel('Homme'),ylabel('Valeur de Stai1'),title('Box plot de la valeur de Stai1');
subplot(4,2,2)
boxplot(HSTAI2);
xlabel('Homme'),ylabel('Valeur de Stai2'),title('Box plot de la valeur de Stai2');
subplot(4,2,3)
boxplot(FSTAI1);
xlabel('Femme'),ylabel('Valeur de Stai1'),title('Box plot de la valeur de Stai1');
subplot(4,2,4)
boxplot(FSTAI2);
xlabel('Femme'),ylabel('Valeur de Stai2'),title('Box plot de la valeur de Stai2');
subplot(4,2,5)
boxplot(STAI1,age);
xlabel('Age (ans)'),ylabel('Valeur de Stai1'),title('Box plot de la valeur de Stai1');
subplot(4,2,6)
boxplot(STAI2,age);
xlabel('Age (ans)'),ylabel('Valeur de Stai2'),title('Box plot de la valeur de Stai2');
subplot(4,2,7)
boxplot(STAI1,poids);
xlabel('Poids (kg)'),ylabel('Valeur de Stai1'),title('Box plot de la valeur de Stai1');
subplot(4,2,8)
boxplot(STAI2,poids);
xlabel('Poids (kg)'),ylabel('Valeur de Stai2'),title('Box plot de la valeur de Stai2');

%Etude de la différence entre les valeurs de cortisol1 et cortisol2
disp('Comparaison des valeurs de cortisol1 et cortisol2')
figure
subplot(1,2,1)
boxplot(cortisol1);
ylabel('Valeur de cortisol1'),title('Box plot de la valeur de cortisol1');
subplot(1,2,2)
boxplot(cortisol2);
ylabel('Valeur de cortisol2'),title('Box plot de la valeur de cortisol2');

disp('Etude de leventuelle influence des paramètres sur les valeurs de cortisol1 et cortisol2 : sexe, âge; poids')
figure
subplot(4,2,1)
boxplot(hcortisol1);
xlabel('Homme'),ylabel('Valeur de cortisol1'),title('Box plot de la valeur de cortisol1 pour les hommes');
subplot(4,2,2)
boxplot(hcortisol2);
xlabel('Homme'),ylabel('Valeur de cortisol2'),title('Box plot de la valeur de cortisol2 pour les hommes');
subplot(4,2,3)
boxplot(fcortisol1);
xlabel('Femme'),ylabel('Valeur de cortisol1'),title('Box plot de la valeur de cortisol1 pour les femmes');
subplot(4,2,4)
boxplot(fcortisol2);
xlabel('Femme'),ylabel('Valeur de cortisol2'),title('Box plot de la valeur de cortisol2 pour les femmes');
subplot(4,2,5)
boxplot(cortisol1,age);
xlabel('Age (ans)'),ylabel('Valeur de cortisol1'),title('Box plot de la valeur de cortisol1 selon âge');
subplot(4,2,6)
boxplot(cortisol2,age);
xlabel('Age (ans)'),ylabel('Valeur de cortisol2'),title('Box plot de la valeur de cortisol2 selon âge');
subplot(4,2,7)
boxplot(cortisol1,poids);
xlabel('Poids (kg)'),ylabel('Valeur de cortisol1'),title('Box plot de la valeur de cortisol1 selon poids');
subplot(4,2,8)
boxplot(cortisol2,poids);
xlabel('Poids (kg)'),ylabel('Valeur de cortisol2'),title('Box plot de la valeur de cortisol2 selon poids');

%Etude du lien entre pss4 et StaiT
disp('Comparaison pss4 et StaiT')
figure
subplot(1,2,1)
boxplot(Stai_T);
ylabel('Valeur de Stai_T'),title('Box plot de la valeur de Stai_T');
subplot(1,2,2)
boxplot(pss4);
ylabel('Valeur de pss4'),title('Box plot de la valeur de pss4');

disp('Etude de leventuelle influence des paramètres sur les valeurs de pss4 et staiT : sexe, âge; poids')
figure
subplot(4,2,1)
boxplot(hStai_T);
xlabel('Homme'),ylabel('Valeur de Stai_T'),title('Box plot de la valeur de Stai_T pour lhomme');
subplot(4,2,2)
boxplot(hpss4);
xlabel('Homme'),ylabel('Valeur de pss4'),title('Box plot de la valeur de pss4 pour lhomme');
subplot(4,2,3)
boxplot(fStai_T);
xlabel('Femme'),ylabel('Valeur de Stai_T'),title('Box plot de la valeur de Stai_T pour la femme');
subplot(4,2,4)
boxplot(fpss4);
xlabel('Femme'),ylabel('Valeur de pss4'),title('Box plot de la valeur de pss4 pour la femme');
subplot(4,2,5)
boxplot(Stai_T,age);
xlabel('Age (ans)'),ylabel('Valeur de Stai_T'),title('Box plot de la valeur de Stai_T selon âge');
subplot(4,2,6)
boxplot(pss4,age);
xlabel('Age (ans)'),ylabel('Valeur de pss4'),title('Box plot de la valeur de pss4 selon âge');
subplot(4,2,7)
boxplot(Stai_T,poids);
xlabel('Poids (kg)'),ylabel('Valeur de Stai_T'),title('Box plot de la valeur de Stai_T selon poids');
subplot(4,2,8)
boxplot(pss4,poids);
xlabel('Poids (kg)'),ylabel('Valeur de pss4'),title('Box plot de la valeur de pss4 selon poids');

disp('Valeurs à utiliser : age,poids,sexe,pss4,DIFFSTAI,Stai_T,cortisolcorr,cortisol,STAI1,STAI2,cortisol1,cortisol2');
disp('Réalisation des histogrammes des valeurs souhaitées'); 
reponse = input('Souhaitez-vous tracer des histogrammes ? (1=Non, 0=Oui)');
%Boucle pour tracer un histogramme à la fois
while (reponse ==0 )
    variable=input('Variables à traiter ?');
    figure
    histogram(variable);
    xlabel('valeur'), ylabel('Effectif'),title('Histogramme '); %Trouver comment mettre automatiquement la légende
    reponse = input('Avez-vous fini ? (1=Oui, 0=Non)');
end

disp('Réalisation des courbes de tendance');
reponse = input('Souhaitez-vous tracer des courbes de tendance ? (1=Non, 0=Oui)');
%Boucle pour tracer une courbe de tendance à la fois
while (reponse ==0)
    variable1=input('Variables à traiter ?');
    variable2=input('Variables à traiter ?');
    figure
    scatter(variable1,variable2); 
    reponse = input('Avez-vous fini ? (1=Oui, 0=Non)');
end

disp('Calcul de moyenne, variance et decart type')
reponse = input('Avez-vous fini ? (1=Oui, 0=Non)');
%Boucle pour calculer en une seule fois la moyenne, la variance et l'écart
%type
while (reponse ==0 )
    variable=input('Variables à traiter ?');
    disp('La moyenne vaut :\n :'); 
    fprintf('%d\n', mean(variable));
    disp('La variance vaut :\n');    
    fprintf('%d\n',var(variable)); 
    disp('Lécart type vaut :\n'); 
    fprintf('%d\n', std(variable));
    reponse = input('Avez-vous fini ? (1=Oui, 0=Non)');
end

disp('Réalisation de test de Student : permet de mesurer les différences entre les moyennes de deux groupes ou dun groupe par rapport à une valeur standard'); 
reponse = input('Souhaitez-vous faire un test de Student ? (1=Non, 0=Oui)');
%Boucle pour effectuer un test de student à la fois
while (reponse ==0 )
    variable1=input('Variables à traiter ?');
    variable2=input('Variables à traiter ?');
    [h,p] = ttest(variable1, variable2); %fonction interne à matlab
    fprintf('les valeurs de h et p obtenues sont : %d', [h,p]);
    reponse = input('Avez-vous fini ? (1=Oui, 0=Non)');
end

disp('Réalisation de test de Shapiro : vérifier la normalité. Recours à le fonction swtest,[H, pValue, W] = swtest(x, alpha)');
reponse = input('Souhaitez-vous faire un test de Shapiro ? (1=Non, 0=Oui)');
%Boucle pour effectuer un test de Shapiro à la fois
while (reponse ==0 )
    variable=input('Variables à traiter ?');
    [H, pValue, W] = swtest(variable, 0.05); %voir la fonction swtest pour le détail du fonctionnement ; la p-valeur est fixée à 0.05
    fprintf('les valeurs de h, p et w obtenues sont : %d\n', [H, pValue, W]);
    reponse = input('Avez-vous fini ? (1=Oui, 0=Non)');
end

disp('Réalisation de test ANOVA : Recours à la fonction anova1'); 
%Boucle pour effectuer un test ANOVA à la fois
reponse = input('Souhaitez-vous faire un test ANOVA ? (1=Non, 0=Oui)');
while (reponse ==0 )
    variable1=input('Variables à traiter ?');
    variable2=input('Variables à traiter ?');
    disp('Le résultat du test ANOVA vaut :'); 
    fprintf('%d', anova1(variable1, variable2));
    reponse = input('Avez-vous fini ? (1=Oui, 0=Non)');
end
