<<walchy.m
<<hadam.m

wl[x_]:=Table[Random[]-0.5,{2^x}]


test[n_]:= Module[{},
	wlist=wl[n];
	w[a_]:=wlist[[a+1]];
	FullDecep[Table[2,{n}],ww]/.ww->w
]

count[n_]:=With[{t=test[n]},Count[t,x_/;x>0]/Length[t]]

