function [near,far,solution]=SOLVE (trels,trelw,srelb,L1,L2,L3)
wrelt= TINVERT(trelw);
wrels= TMULT (trels,wrelt);
wrelb= TMULT (srelb,wrels);
[near,far,solution]= INVKIN(wrelb,L1,L2,L3);
end