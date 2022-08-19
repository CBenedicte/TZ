clear all; close all; clc;
%%Import des valeurs du fichier EDA
ED1=readtable('EDA1 gén'); %Ensemble des données correspondant au fichier EDA pour la première session
ED2=readtable('EDA2 gén'); %Ensemble des données correspondant au fichier EDA pour la deuxième session
ED3=readtable('EDA3 gén'); %Ensemble des données correspondant au fichier EDA pour la troisième session

%Description des valeurs a utiliser pour la première session
HRE1=ED1.Human_range_energy;
FR1=ED1.Fundamental_frequency;
MPS1=ED1.Max_power_spectrum; 
MF1=ED1.Maximum_frequency; 
MedianF1=ED1.Median_frequency;
PB1=ED1.Power_bandwidth; 
SC1=ED1.Spectral_centroid;
SDecrease1=ED1.Spectral_decrease; 
Sdistance1=ED1.Spectral_distance;
SE1=ED1.Spectral_entropy; 
SK1=ED1.Spectral_kurtosis;
SROff1=ED1.Spectral_roll_off;
SROn1=ED1.Spectral_roll_on;
Sskewness1=ED1.Spectral_skewness;
Sslope1=ED1.Spectral_slope;
SSpread1=ED1.Spectral_spread;
SV1=ED1.Spectral_variation; 
IR1=ED1.Interquartile_range;
Kurtosis1=ED1.Kurtosis; 
Max1=ED1.Max; 
Mean1=ED1.Mean; 
MAD1=ED1.Mean_absolute_deviation;
Median1=ED1.Median; 
MedianAD1=ED1.Median_absolute_deviation;
Min1=ED1.Min;
Skewness1=ED1.Skewness; 
AbsoluteEnergy1=ED1.Absolute_energy; 
AUTC1=ED1.Area_under_the_curve; 
Autocorrelation1=ED1.Autocorrelation; 
Centroid1=ED1.Centroid; 
Entropy1=ED1.Entropy; 
NTP1=ED1.Negative_turning_points; 
PTPD1=ED1.Peak_to_peak_distance; 
PTP1=ED1.Positive_turning_points;
SD1=ED1.Signal_distance; 
TE1=ED1.Total_energy; 
RMSE_raw1=ED1.RMSE_raw; 
RMSE_clean1=ED1.RMSE_clean; 
RMSE_tonic1=ED1.RMSE_tonic; 
RMSE_phasic1=ED1.RMSE_phasic; 
RMSE_IMF11=ED1.RMSE_IMF1; 
energy_raw1=ED1.energy_raw; 
energy_clean1=ED1.energy_clean; 
energy_tonic1=ED1.energy_tonic; 
energy_phasic1=ED1.energy_phasic; 
energy_IMF11=ED1.energy_IMF1; 
WE1=ED1.Wavelet_entropy; 

%Description des valeurs a utiliser pour la première session
HRE2=ED2.Human_range_energy;
FR2=ED2.Fundamental_frequency;
MPS2=ED2.Max_power_spectrum; 
MF2=ED2.Maximum_frequency; 
MedianF2=ED2.Median_frequency;
PB2=ED2.Power_bandwidth; 
SC2=ED2.Spectral_centroid;
SDecrease2=ED2.Spectral_decrease; 
Sdistance2=ED2.Spectral_distance;
SE2=ED2.Spectral_entropy; 
SK2=ED2.Spectral_kurtosis;
SROff2=ED2.Spectral_roll_off;
SROn2=ED2.Spectral_roll_on;
Sskewness2=ED2.Spectral_skewness;
Sslope2=ED2.Spectral_slope;
SSpread2=ED2.Spectral_spread;
SV2=ED2.Spectral_variation; 
IR2=ED2.Interquartile_range;
Kurtosis2=ED2.Kurtosis; 
Max2=ED2.Max; 
Mean2=ED2.Mean; 
MAD2=ED2.Mean_absolute_deviation;
Median2=ED2.Median; 
MedianAD2=ED2.Median_absolute_deviation;
Min2=ED2.Min;
Skewness2=ED2.Skewness; 
AbsoluteEnergy2=ED2.Absolute_energy; 
AUTC2=ED2.Area_under_the_curve; 
Autocorrelation2=ED2.Autocorrelation; 
Centroid2=ED2.Centroid; 
Entropy2=ED2.Entropy; 
NTP2=ED2.Negative_turning_points; 
PTPD2=ED2.Peak_to_peak_distance; 
PTP2=ED2.Positive_turning_points;
SD2=ED2.Signal_distance; 
TE2=ED2.Total_energy; 
RMSE_raw2=ED2.RMSE_raw; 
RMSE_clean2=ED2.RMSE_clean; 
RMSE_tonic2=ED2.RMSE_tonic; 
RMSE_phasic2=ED2.RMSE_phasic; 
RMSE_IMF12=ED2.RMSE_IMF1; 
energy_raw2=ED2.energy_raw; 
energy_clean2=ED2.energy_clean; 
energy_tonic2=ED2.energy_tonic; 
energy_phasic2=ED2.energy_phasic; 
energy_IMF12=ED2.energy_IMF1; 
WE2=ED2.Wavelet_entropy; 

%Description des valeurs a utiliser pour la première session
HRE3=ED3.Human_range_energy;
FR3=ED3.Fundamental_frequency;
MPS3=ED3.Max_power_spectrum; 
MF3=ED3.Maximum_frequency; 
MedianF3=ED3.Median_frequency;
PB3=ED3.Power_bandwidth; 
SC3=ED3.Spectral_centroid;
SDecrease3=ED3.Spectral_decrease; 
Sdistance3=ED3.Spectral_distance;
SE3=ED3.Spectral_entropy; 
SK3=ED3.Spectral_kurtosis;
SROff3=ED3.Spectral_roll_off;
SROn3=ED3.Spectral_roll_on;
Sskewness3=ED3.Spectral_skewness;
Sslope3=ED3.Spectral_slope;
SSpread3=ED3.Spectral_spread;
SV3=ED3.Spectral_variation; 
IR3=ED3.Interquartile_range;
Kurtosis3=ED3.Kurtosis; 
Max3=ED3.Max; 
Mean3=ED3.Mean; 
MAD3=ED3.Mean_absolute_deviation;
Median3=ED3.Median; 
MedianAD3=ED3.Median_absolute_deviation;
Min3=ED3.Min;
Skewness3=ED3.Skewness; 
AbsoluteEnergy3=ED3.Absolute_energy; 
AUTC3=ED3.Area_under_the_curve; 
Autocorrelation3=ED3.Autocorrelation; 
Centroid3=ED3.Centroid; 
Entropy3=ED3.Entropy; 
NTP3=ED3.Negative_turning_points; 
PTPD3=ED3.Peak_to_peak_distance; 
PTP3=ED3.Positive_turning_points;
SD3=ED3.Signal_distance; 
TE3=ED3.Total_energy; 
RMSE_raw3=ED3.RMSE_raw; 
RMSE_clean3=ED3.RMSE_clean; 
RMSE_tonic3=ED3.RMSE_tonic; 
RMSE_phasic3=ED3.RMSE_phasic; 
RMSE_IMF13=ED3.RMSE_IMF1; 
energy_raw3=ED3.energy_raw; 
energy_clean3=ED3.energy_clean; 
energy_tonic3=ED3.energy_tonic; 
energy_phasic3=ED3.energy_phasic; 
energy_IMF13=ED3.energy_IMF1; 
WE3=ED3.Wavelet_entropy; 

%LPCC=ED.LPCC; 
%MFCC=ED.MFCC; 
%WAM=ED.Wavelet_Absolute_Mean; 
%WE=ED.Wavelet_Energy; 
%WSD=ED.Wavelet_Standard_Deviation; 
%WV=ED.Wavelet_Variance; 
%ECDF=ED.ECDF; 
%ECDFP=ED.ECDF_Percentile; 
%ECDFPC=ED.ECDF_Percentile_Count;
%Histogram=ED.Histogram;

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
    [p,h,stats] = ranksum(variable1,variable2); %voir la fonction ranksum pour le détail du fonctionnement ; la p-valeur est fixée à 0.05
    disp('les valeurs de p, h et stats obtenues sont : %d\n', [p,h,stats]); %The result h is 1 if the test rejects the null hypothesis at the 5% significance level, or 0 otherwise.
    reponse = input('Avez-vous fini ? (1=Oui, 0=Non)');
end

disp('Détermination de la covariance entre deux variables'); 
reponse = input('Souhaitez vous calculer la covariance ? (1=Non, 0=Oui)'); 
%Boucle pour effectuer des calculs de covariance
while(reponse==0)
    variable1=input('Variable à étudier ?'); 
    variable2=input('Variable à étudier ?'); 
    disp('La figure ci contre représente la covariance'); 
    [r,lags] = xcorr(variable1, variable2); %voir la fonction xcorr pour le détail du fonctionnement
    stem(lags, r); 
    reponse=input('Avez-vous fini ? (1=Oui, 0=Non)');
end