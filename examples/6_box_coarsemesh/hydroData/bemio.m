hydro = struct();

hydro = readNEMOH(hydro,'C:\Users\Jesus.Mares\OneDrive - AeroVironment Inc.-avav\Documents\Code\MATLab\WEC-Sim\examples\6_box_coarsemesh');
hydro = radiationIRF(hydro,20,[],[],[],[]);
hydro = radiationIRFSS(hydro,[],[]);
hydro = excitationIRF(hydro,200,[],[],[],[]);
writeBEMIOH5(hydro)
plotBEMIO(hydro)