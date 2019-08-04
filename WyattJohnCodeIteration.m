function [upoint,vpoint]=WyattJohnCodeIteration(xpoint,ypoint);
load ('wytt1d.mat', 'Fuso','Fvso');
    upoint=Fuso(xpoint,ypoint)
    vpoint=Fvso(xpoint,ypoint)
    fid = fopen('MatlabOutput.txt','wt');
    fprintf(fid,"%f %f",upoint,vpoint);
    exit
end
