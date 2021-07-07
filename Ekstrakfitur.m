path(path,'/home/viblab/STRAIGHTV40');
prm.F0frameUpdateInterval=5;
prm.F0searchUpperBound=600    ;
prm.F0searchLowerBound=75    ;
prm.spectralUpdateInterval=5;

[x,fs]=audioread('fyat_487.wav');
[f0,ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x,f0,fs,prm);
ap = ap';
sp = sp';
sp = sp*32768.0;
save 'f0_csv/fyat_009f0.csv' f0 -ascii;
save 'ap_csv/fyat_009ap.csv' ap -ascii;
save 'sp_csv/fyat_009sp.csv' sp -ascii;

save 'f0/fyat_009.f0' f0 -ascii;
save 'ap/fyat_009.ap' ap -ascii;
save 'sp/fyat_009.sp' sp -ascii;
