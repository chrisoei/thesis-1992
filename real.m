

f[x_]:=x /; x<1/2
f[_]=0 

g0=Plot[f[x],{x,0,1},PlotStyle->Dashing[{.02,.02}], AxesLabel->{"x","f"}]

w[j_]:=w[j]=Integrate[E^-(2 Pi I x j) x,{x,0,1/2}]

ff[n_,x_]:=Sum[E^(2 Pi I x k) w[k],{k,-n,n}]


g[n_]:=g[n]=Show[g0,Plot[Release[ff[n,x]],{x,0,1},PlotLabel->StringJoin[ToString[2n+1],
	" term approximation"],AxesLabel->{"x","f"}]]


a[x_]:=x^2(1-x)^2 (1/2 - x)^3
h0=Plot[a[x],{x,0,1},PlotStyle->Dashing[{.02,.02}],AxesLabel->{"x","f"}]
v[j_]:=v[j]=Integrate[E^-(2 Pi I x j) a[x],{x,0,1}]
aa[n_,x_]:=Sum[E^(2 Pi I x k) v[k],{k,-n,n}]

h[n_]:=h[n]=Show[h0,Plot[Release[aa[n,x]],{x,0,1}],PlotLabel->StringJoin[
	ToString[2n+1]," term approximation"],AxesLabel->{"x","f"}]


tfun1=GraphicsArray[{{g[1],g[2]},{g[3],g[4]}}]
tfun2=GraphicsArray[{{h[1],h[2]},{h[3],h[4]}}]

Display["!psfix>testfn1.ps",tfun1]
Display["!psfix>testfn2.ps",tfun2]

