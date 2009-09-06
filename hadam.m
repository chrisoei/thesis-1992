
(* tensor[a,b] returns the tensor produce of a and b *)
tensor[a_,b_]:=With[{s1=Length[a],s2=Length[b]},
	Table[a[[Ceiling[i/s2],Ceiling[j/s2]]]
		b[[Mod[i-1,s2]+1,Mod[j-1,s2]+1]],{i,s1 s2},{j,s1 s2}]]

h[k_]:= Table[E^(2 Pi I i j/k),{i,0,k-1},{j,0,k-1}]

H[k_List]:= Fold[tensor[#1,#2]&,h[First[k]],h/@Rest[k]]

M[k_List]:= With[{hmat=H[k]},
	Table[hmat[[1]]-hmat[[i]],{i,2,Length[hmat]}]]

wt=GFWT[{3,2,2},Flatten[Table[f[a-1,b-1,c-1],{a,3},{b,2},{c,2}]]] Sqrt[3 2 2]

nec[x_]:=Chop[ExpandAll[N[x]]]

rulz=w[x_]:>wt[[x+1]]


WalshList[k_List,schema_List,w_]:=
	Flatten[
        Table @@
        Prepend[
        Delete[MapIndexed[{j[#2[[1]]],0,#1-1}&,k],Position[schema,D]],
        w[(j[#]&/@Range[Length[k]]).
                Reverse[FoldList[Times,1,Reverse[Rest[k]]]]]
        /. (j[#] ->0 &/@ Flatten[Position[schema,D]])
        ]]

(* F=fixed position, D = don't care *)
Decep[k_List,schema_List,w_]:=
	M[k[[#[[1]]]]& /@ Position[schema,F]].WalshList[k,schema,w]


GenDecep[k_List,order_,w_]:=
	Flatten[
	Decep[k,#,w]& /@
	Permutations[Join[Table[F,{order}],Table[D,{Length[k]-order}]]]]

FullDecep[k_List,w_]:=
	Flatten[Table[GenDecep[k,q,w],{q,1,Length[k]-1}]]
