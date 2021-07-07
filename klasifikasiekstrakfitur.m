clear
clc
close all

path(path,'/home/viblab/STRAIGHTV40');
prm.F0frameUpdateInterval=5;
prm.F0searchUpperBound=600    ;
prm.F0searchLowerBound=75    ;
prm.spectralUpdateInterval=5;

[x,fs]=audioread('fyat_616.wav');
[f0,ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x,f0,fs,prm);
ap = ap';
sp = sp';
sp = sp*32768.0;

f1=f0*2;
f2=f1*2;
d=diff(f0,2);
%time = (1:length(X))/Fs*1000;

meanf0 = mean(f0);
meanf1 = mean(f1);
meanf2 = mean(f2);

spb = sp.';
maxsp = max(sp);
maxallsp = max(maxsp);

maxap = max(ap);
maxallap = max(maxap);
%mesh(spb);

figure(1)
imagesc(sp);
colorbar();
xlabel('frekuensi')
ylabel('time')

save('filemat/fyat_616')
saveas (gcf,'plotsp/fyat_616.png'); %save figure
close

disp('done');
