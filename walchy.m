
Psi[k_Integer,n_Integer,j_Integer,x_Integer]:=
	E^(2 Pi I IntegerDigits[j,k,n].IntegerDigits[x,k,n] / k)/
	Sqrt[k^n]

Psi[k_List,j_List,x_List]:=
	E^(2 Pi I Plus @@ MapThread[#1 #2/#3 &, {j, x, k}])/
	Sqrt[Times@@k]

GFWT[k_Integer,l_List]:=
	Flatten[
	Nest[ Function[z,Table[E^-(2 Pi I j x/k),{j,0,k-1},{x,0,k-1}].z] /@
		Partition[#,k]&,l,Round[Log[k,Length[l]]]]]/
			Sqrt[k^Round[Log[k,Length[l]]]]

InverseGFWT[k_Integer,l_List]:=
	Flatten[
	Nest[ Function[z,Table[E^(2 Pi I j x/k),{j,0,k-1},{x,0,k-1}].z] /@
		Partition[#,k]&,l,Round[Log[k,Length[l]]]]]/
			Sqrt[k^Round[Log[k,Length[l]]]]

GFWT[k_List,l_List]:=
	Flatten[Fold[
	Function[z, Table[E^-(2 Pi I i j/#2),{i,0,#2-1},{j,0,#2-1}] . z] /@
		Partition[#1,#2] &, l, Reverse[k]]]/
			Sqrt[Times@@k]

InverseGFWT[k_List,l_List]:=
	Flatten[Fold[
	Function[z, Table[E^(2 Pi I i j/#2),{i,0,#2-1},{j,0,#2-1}] . z] /@
		Partition[#1,#2] &, l, Reverse[k]]]/
			Sqrt[Times@@k]


SchemaToWalsh[k_List,schema_List,w_]:=
        Sum @@
        Prepend[
        Delete[MapIndexed[{j[#2[[1]]],0,#1-1}&,k],Position[schema,D]],
        w[(j[#]&/@Range[Length[k]]).
                Reverse[FoldList[Times,1,Reverse[Rest[k]]]]]
        E^(2 Pi I Plus @@ MapIndexed[j[#2[[1]]] schema[[#2[[1]]]]/#1 &,k])
        /. (j[#] ->0 &/@ Flatten[Position[schema,D]])
        ] / Sqrt[Times@@k]


