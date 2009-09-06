

f[0,0]=9
f[0,1]=6
f[0,2]=3
f[1,0]=3
f[1,1]=3
f[1,2]=5
f[2,0]=8
f[2,1]=2
f[2,2]=6

a[0,0]:=ExpandAll[1/3 Sum[f[x1,x2],{x1,0,2},{x2,0,2}]]
a[j1_,j2_]:= ExpandAll[2/3 Sum[Cos[2 Pi (x1 j1 +x2 j2)/3] f[x1,x2],{x1,0,2},{x2,0,2}]]
b[j1_,j2_]:= ExpandAll[2/3 Sum[Sin[2 Pi (x1 j1 +x2 j2)/3] f[x1,x2],{x1,0,2},{x2,0,2}]]

