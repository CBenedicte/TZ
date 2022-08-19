clear all; close all; clc;
%%Import des valeurs du fichier HRV_PPG
R=readtable('Relaxation HRV_PPG'); %Ensemble des données correspondant à la phase de relaxation
Rhf_WT_norm=R.hf_WT_norm; 
Rlf_WT_norm=R.lf_WT_norm;
Rlf_hf_WT_norm=R.lf_hf_WT_norm; 
Rhf_WT=R.hf_WT; 
Rlf_WT=R.lf_WT; 
Rlf_hf_WT=R.lf_hf_WT; 
Rrmssd=R.rmssd; 
Rsdnn=R.sdnn;
Rsdsd=R.sdsd;
Rnn50=R.nn50; 
Rpnn50=R.pnn50;
Rmrri=R.mrri; 
Rmhr=R.mhr;
Rsd1=R.sd1; 
Rsd2=R.sd2; 
Rtotal_power=R.total_power;
Rvlf=R.vlf; 
Rlf=R.lf; 
Rhf=R.hf; 
Rlf_hf=R.lf_hf;
Rlfnu=R.lfnu; 
Rhfnu=R.hfnu; 

S=readtable('Stress HRV_PPG'); %Ensemble des données correspondant à la phase de stress
Shf_WT_norm=S.hf_WT_norm; 
Slf_WT_norm=S.lf_WT_norm;
Slf_hf_WT_norm=S.lf_hf_WT_norm; 
Shf_WT=S.hf_WT; 
Slf_WT=S.lf_WT; 
Slf_hf_WT=S.lf_hf_WT; 
Srmssd=S.rmssd; 
Ssdnn=S.sdnn;
Ssdsd=S.sdsd;
Snn50=S.nn50; 
Spnn50=S.pnn50;
Smrri=S.mrri; 
Smhr=S.mhr;
Ssd1=S.sd1; 
Ssd2=S.sd2; 
Stotal_power=S.total_power;
Svlf=S.vlf; 
Slf=S.lf; 
Shf=S.hf; 
Slf_hf=S.lf_hf;
Slfnu=S.lfnu; 
Shfnu=S.hfnu; 

F=readtable('Repos HRV_PPG'); %Ensemble des données correspondant à la phase de rétablissement
Fhf_WT_norm=F.hf_WT_norm; 
Flf_WT_norm=F.lf_WT_norm;
Flf_hf_WT_norm=F.lf_hf_WT_norm; 
Fhf_WT=F.hf_WT; 
Flf_WT=F.lf_WT; 
Flf_hf_WT=F.lf_hf_WT; 
Frmssd=F.rmssd; 
Fsdnn=F.sdnn;
Fsdsd=F.sdsd;
Fnn50=F.nn50; 
Fpnn50=F.pnn50;
Fmrri=F.mrri; 
Fmhr=F.mhr;
Fsd1=F.sd1; 
Fsd2=F.sd2; 
Ftotal_power=F.total_power;
Fvlf=F.vlf; 
Flf=F.lf; 
Fhf=F.hf; 
Flf_hf=F.lf_hf;
Flfnu=F.lfnu; 
Fhfnu=F.hfnu;

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

disp('Réalisation de test de Mann-Whitney U : comparaison de deux valeurs. Recours à la fonction [p,h] = ranksum(x,y)');
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

disp('Réalisation de test de corrélation de Spearman : mesurer le lien entre deux variables. Recours à la fonction [rho,pval] = corr(X,Y)');
reponse = input('Souhaitez-vous faire un test de corrélation de Spearman ? (1=Non, 0=Oui)');
%Boucle pour effectuer un test de corrélation de Pearson à la fois
while (reponse ==0 )
    variable1=input('Variables à traiter ?');
    variable2=input('Variables à traiter ?');
    disp('Le résultat du test de Pearson vaut :'); 
    [rho,pval] = corr(X,Y); %voir la fonction corr pour le détail du fonctionnement
    disp('les valeurs de rho,pval obtenues sont : %d\n', [rho,pval]); 
    reponse = input('Avez-vous fini ? (1=Oui, 0=Non)');
end