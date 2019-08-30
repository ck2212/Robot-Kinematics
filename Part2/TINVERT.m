brela= input('Input Matrix B relative to A=');
output_arelb= Procedure_TINVERT(brela);
disp('Matrix B relative to A=')
disp(brela)
disp('Matrix A relative to B=')
disp(output_arelb)

function [arelb]=Procedure_TINVERT(brela)
    arelb= inv(brela);
end