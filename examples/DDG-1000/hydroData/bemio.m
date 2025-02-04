% clc; clear all; close all;

%% hydro data
hydro = struct();
hydro = readWAMIT(hydro,'ddg1000.out',[]);
hydro = radiationIRF(hydro,30,[],[],[],[]);
hydro = radiationIRFSS(hydro,[],[]);
hydro = excitationIRF(hydro,30,[],[],[],[]);
writeBEMIOH5(hydro)

%% Plot hydro data
% plotBEMIO(hydro)