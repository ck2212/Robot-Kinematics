function TrelS = WHERE(t1,t2,t3,TrelW,BrelS)

WrelB = KIN(t1,t2,t3);
%TrelW= UTOI(TrelW);
%BrelS=UTOI(BrelS);

TrelS=BrelS*WrelB*TrelW;
end