path(path,'/home/viblab/legacy_STRAIGHT-master/src');
prm.spectralUpdateInterval = 5.000000;
prm.levelNormalizationIndicator = 0;

dur = 961;

%fprintf(1,'\nSynthesizing /home/viblab/BillyCoba/DNN_Ekspresif_dependent/Bahagia14ulang2/gen/ver1/1mix/0/vibid_fyat_001.wav\n');
fid1 = fopen('/home/viblab/BillyCoba/percobaan_21jun/Sedih2/gen/ver1/stc/0/vibid_fyat_487.sp','r','ieee-le');
fid2 = fopen('/home/viblab/BillyCoba/percobaan_21jun/Sedih2/gen/ver1/stc/0/vibid_fyat_487.ap','r','ieee-le');
fid3 = fopen('/home/viblab/BillyCoba/percobaan_21jun/Sedih2/gen/ver1/stc/0/vibid_fyat_487.f0','r','ieee-le');
sp = fread(fid1,[513, dur],'float');
ap = fread(fid2,[513, dur],'float');
f0 = fread(fid3,[1, dur],'float');
fclose(fid1);
fclose(fid2);
fclose(fid3);
sp = sp/32768.0;
[sy] = exstraightsynth(f0,sp,ap,16000,prm);
audiowrite('/home/viblab/BillyCoba/percobaan_21jun/Sedih2/gen/ver1/stc/0/vibid_fyat_487.wav',sy,16000);

fprintf('\n Sintesis selesai \n');
%quit;
