brela= input('Input Matrix B relative to A=');
crelb= input('Input Matrix C relative to B=');
crela=Procedure_TMULT(brela,crelb);
disp(brela)
disp(crelb)
disp('Matrix C relative to A=')
disp(crela)

function [crela]= Procedure_TMULT(brela,crelb)
    crela=brela*crelb;
end