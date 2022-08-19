clear all; close all; clc;
%%Import des valeurs du fichier HRV_ECG
RECG=readtable('Relaxation HRV_ECG'); %Ensemble des données correspondant à la phase de relaxation
RECGhf_WT_norm=RECG.hf_WT_norm; 
RECGlf_WT_norm=RECG.lf_WT_norm;
RECGlf_hf_WT_norm=RECG.lf_hf_WT_norm; 
RECGhf_WT=RECG.hf_WT; 
RECGlf_WT=RECG.lf_WT; 
RECGlf_hf_WT=RECG.lf_hf_WT; 
RECGrmssd=RECG.rmssd; 
RECGsdnn=RECG.sdnn;
RECGsdsd=RECG.sdsd;
RECGnn50=RECG.nn50; 
RECGpnn50=RECG.pnn50;
RECGmrri=RECG.mrri; 
RECGmhr=RECG.mhr;
RECGsd1=RECG.sd1; 
RECGsd2=RECG.sd2; 
RECGtotal_power=RECG.total_power;
RECGvlf=RECG.vlf; 
RECGlf=RECG.lf; 
RECGhf=RECG.hf; 
RECGlf_hf=RECG.lf_hf;
RECGlfnu=RECG.lfnu; 
RECGhfnu=RECG.hfnu; 

SECG=readtable('Stress HRV_ECG');%Ensemble des données correspondant à la phase de stress
SECGhf_WT_norm=SECG.hf_WT_norm; 
SECGlf_WT_norm=SECG.lf_WT_norm;
SECGlf_hf_WT_norm=SECG.lf_hf_WT_norm; 
SECGhf_WT=SECG.hf_WT; 
SECGlf_WT=SECG.lf_WT; 
SECGlf_hf_WT=SECG.lf_hf_WT; 
SECGrmssd=SECG.rmssd; 
SECGsdnn=SECG.sdnn;
SECGsdsd=SECG.sdsd;
SECGnn50=SECG.nn50; 
SECGpnn50=SECG.pnn50;
SECGmrri=SECG.mrri; 
SECGmhr=SECG.mhr;
SECGsd1=SECG.sd1; 
SECGsd2=SECG.sd2; 
SECGtotal_power=SECG.total_power;
SECGvlf=SECG.vlf; 
SECGlf=SECG.lf; 
SECGhf=SECG.hf; 
SECGlf_hf=SECG.lf_hf;
SECGlfnu=SECG.lfnu; 
SECGhfnu=SECG.hfnu; 

FECG=readtable('Repos HRV_ECG'); %Ensemble des données correspondant à la phase de rétablissement
FECGhf_WT_norm=FECG.hf_WT_norm; 
FECGlf_WT_norm=FECG.lf_WT_norm;
FECGlf_hf_WT_norm=FECG.lf_hf_WT_norm; 
FECGhf_WT=FECG.hf_WT; 
FECGlf_WT=FECG.lf_WT; 
FECGlf_hf_WT=FECG.lf_hf_WT; 
FECGrmssd=FECG.rmssd; 
FECGsdnn=FECG.sdnn;
FECGsdsd=FECG.sdsd;
FECGnn50=FECG.nn50; 
FECGpnn50=FECG.pnn50;
FECGmrri=FECG.mrri; 
FECGmhr=FECG.mhr;
FECGsd1=FECG.sd1; 
FECGsd2=FECG.sd2; 
FECGtotal_power=FECG.total_power;
FECGvlf=FECG.vlf; 
FECGlf=FECG.lf; 
FECGhf=FECG.hf; 
FECGlf_hf=FECG.lf_hf;
FECGlfnu=FECG.lfnu; 
FECGhfnu=FECG.hfnu; 

%%Import des valeurs du fichier HRV_PPG
RPPG=readtable('Relaxation HRV_PPG'); %Ensemble des données correspondant à la phase de relaxation
RPPGhf_WT_norm=RPPG.hf_WT_norm; 
RPPGlf_WT_norm=RPPG.lf_WT_norm;
RPPGlf_hf_WT_norm=RPPG.lf_hf_WT_norm; 
RPPGhf_WT=RPPG.hf_WT; 
RPPGlf_WT=RPPG.lf_WT; 
RPPGlf_hf_WT=RPPG.lf_hf_WT; 
RPPGrmssd=RPPG.rmssd; 
RPPGsdnn=RPPG.sdnn;
RPPGsdsd=RPPG.sdsd;
RPPGnn50=RPPG.nn50; 
RPPGpnn50=RPPG.pnn50;
RPPGmrri=RPPG.mrri; 
RPPGmhr=RPPG.mhr;
RPPGsd1=RPPG.sd1; 
RPPGsd2=RPPG.sd2; 
RPPGtotal_power=RPPG.total_power;
RPPGvlf=RPPG.vlf; 
RPPGlf=RPPG.lf; 
RPPGhf=RPPG.hf; 
RPPGlf_hf=RPPG.lf_hf;
RPPGlfnu=RPPG.lfnu; 
RPPGhfnu=RPPG.hfnu; 

SPPG=readtable('Stress HRV_PPG'); %Ensemble des données correspondant à la phase de stress
SPPGhf_WT_norm=SPPG.hf_WT_norm; 
SPPGlf_WT_norm=SPPG.lf_WT_norm;
SPPGlf_hf_WT_norm=SPPG.lf_hf_WT_norm; 
SPPGhf_WT=SPPG.hf_WT; 
SPPGlf_WT=SPPG.lf_WT; 
SPPGlf_hf_WT=SPPG.lf_hf_WT; 
SPPGrmssd=SPPG.rmssd; 
SPPGsdnn=SPPG.sdnn;
SPPGsdsd=SPPG.sdsd;
SPPGnn50=SPPG.nn50; 
SPPGpnn50=SPPG.pnn50;
SPPGmrri=SPPG.mrri; 
SPPGmhr=SPPG.mhr;
SPPGsd1=SPPG.sd1; 
SPPGsd2=SPPG.sd2; 
SPPGtotal_power=SPPG.total_power;
SPPGvlf=SPPG.vlf; 
SPPGlf=SPPG.lf; 
SPPGhf=SPPG.hf; 
SPPGlf_hf=SPPG.lf_hf;
SPPGlfnu=SPPG.lfnu; 
SPPGhfnu=SPPG.hfnu; 

FPPG=readtable('Repos HRV_PPG'); %Ensemble des données correspondant à la phase de rétablissement
FPPGhf_WT_norm=FPPG.hf_WT_norm; 
FPPGlf_WT_norm=FPPG.lf_WT_norm;
FPPGlf_hf_WT_norm=FPPG.lf_hf_WT_norm; 
FPPGhf_WT=FPPG.hf_WT; 
FPPGlf_WT=FPPG.lf_WT; 
FPPGlf_hf_WT=FPPG.lf_hf_WT; 
FPPGrmssd=FPPG.rmssd; 
FPPGsdnn=FPPG.sdnn;
FPPGsdsd=FPPG.sdsd;
FPPGnn50=FPPG.nn50; 
FPPGpnn50=FPPG.pnn50;
FPPGmrri=FPPG.mrri; 
FPPGmhr=FPPG.mhr;
FPPGsd1=FPPG.sd1; 
FPPGsd2=FPPG.sd2; 
FPPGtotal_power=FPPG.total_power;
FPPGvlf=FPPG.vlf; 
FPPGlf=FPPG.lf; 
FPPGhf=FPPG.hf; 
FPPGlf_hf=FPPG.lf_hf;
FPPGlfnu=FPPG.lfnu; 
FPPGhfnu=FPPG.hfnu;

disp('Calcul de moyenne, variance et decart type')
reponse = input('Avez-vous fini ? (1=Oui, 0=Non)');
%Boucle pour calculer en une seule fois la moyenne, la variance et l'écart
%type
while (reponse ==0 )
    variable=input('Variables à traiter ?');
    disp('La moyenne vaut :'); 
    fprintf('%d\n', mean(variable));
    disp('La variance vaut :');    
    fprintf('%d\n',var(variable)); 
    disp('Lécart type vaut :'); 
    fprintf('%d\n', std(variable));
    reponse = input('Avez-vous fini ? (1=Oui, 0=Non)');
end

disp('Tracé des histogrammes') 
reponse = input('Avez-vous fini ? (1=Oui, 0=Non)');
%Boucle pour tracer un histogramme à la fois
while (reponse ==0 )
    variable=input('Variables à traiter ?');
    figure
    histogram(variable);
    xlabel('valeur'), ylabel('Effectif'),title('Histogramme ');
    reponse = input('Avez-vous fini ? (1=Oui, 0=Non)');
end

disp('Tracé des boxplot') 
reponse = input('Avez-vous fini ? (1=Oui, 0=Non)');
%Boucle pour tracer un boxplot à la fois
while (reponse ==0 )
    variable=input('Variables à traiter ?');
    figure
    boxplot(variable);
    ylabel('Valeur de variable'),title('Box plot de la valeur de variable');
    reponse = input('Avez-vous fini ? (1=Oui, 0=Non)');
end

%Vérification de la normalité des valeurs
disp('Réalisation de test de Kolmogorov-Smirnov : vérifier la normalité. Recours à le fonction swtest,[h,p] = kstest(___)');
reponse = input('Souhaitez-vous faire un test de Kolmogorov-Smirnov ? (1=Non, 0=Oui)');
%Boucle pour effectuer un test de Kolmogorov-Smirnov à la fois
while (reponse ==0 )
    variable=input('Variables à traiter ?');
    [h,p] = kstest(variable); %voir la fonction kstest pour le détail du fonctionnement ; la p-valeur est fixée à 0.05
    fprintf('les valeurs de h, p obtenues sont : %d\n', [h,p]); %The result h is 1 if the test rejects the null hypothesis at the 5% significance level, or 0 otherwise.
    normplot(variable);
    reponse = input('Avez-vous fini ? (1=Oui, 0=Non)');
end

disp('Réalisation de test de Mann-Whitney U : comparaison de deux valeurs. Recours à la fonction [p,h,stats] = ranksum()');
reponse = input('Souhaitez-vous faire un test de Mann-Whitney U ? (1=Non, 0=Oui)');
%Boucle pour effectuer un test de Mann-Whitney U à la fois
while (reponse ==0 )
    variable1=input('Variables à traiter ?');
    variable2=input('Variables à traiter ?');
    disp('Le résultat du test Wilcoxon vaut :'); 
    [p,h] = ranksum(variable1,variable2); %voir la fonction ranksum pour le détail du fonctionnement ; la p-valeur est fixée à 0.05
    fprintf('la valeur de p obtenue est : %d\n', [p]); %The result h is 1 if the test rejects the null hypothesis at the 5% significance level, or 0 otherwise.
    fprintf('la valeur de h obtenue est : %d\n', [h]);
    reponse = input('Avez-vous fini ? (1=Oui, 0=Non)');
end