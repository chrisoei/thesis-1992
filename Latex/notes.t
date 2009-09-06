************************* NOTES


Bledsoe~(1961) introduced the idea of lethal dependence for genetic
algorithms.
binary
mutations
mutations for continuous variables, +-D, probability distribution

Bethke~(1981)
discovered application of Walsh functions to schema averages
``For what class of functions does the genetic algorithm make a good
optimizer.''
``a function is `genetically optimizable' if the magnitude of its
derivatives does not grow too quickly as we go from low-order to high-order
derivatives''
p48 ``Finally, suppose the utility function could not be decomposed into
simpler functions operating on less than the whole string.  Then the genes
would all interact.  If all genes interacted strongly, then the short
schemata would not be likely to provide much help in locating the optimum....
So we would not expect genetic algorithms to perform very well for such
highly "non-linear" utility functions.''
p90. It seems intuitively clear, although we have not proved it, that the
"hard" functions are not smooth with respect to small changes in their
arguments.  That is, in terms of Hamming distance, they have
large "slopes", especially near the optimum.  Moreover, the optimum seems
to be surrounded by very bad points and represents an isolated, local
maximum.''
...
Does manage to construct functions that are hard for GAs, but unable
to generalize them.

Goldberg~(1987) introduces the Minimal, Deceptive Problem.
not maximally deceptive -- impossible for a 2 bit problem, as recognized
(can't have f(11)>f(00), f(11)>f(01), f(11)> f(10) and f(0*) > f(1*) and f(*0) > f(*1))

Goldberg (1989a)
introduces full static deception
introduces the FWT in the context of GAs

Goldberg (1989b)
operator-adjusted Walsh coefficients
ANODE algorithm

Liepins and Vose 1991
construct fully deceptive functions and intermediate deceptive functions
specify linear transformations that induce changes of representations to render
  the functions fully easy

Mason (1991)

bridges \& goldberg (1991)
nonuniform walsh schema xform FOGA

Whitley (1991a), Das \& Whitley (1991)
hyperplane theory
consistently deceptive problem - none of the lower-order hyperplanes lead
   towards the global winner
choosing the deceptive attractor to be the complement of the global winner
   of the hyperplane competition at order N is a necessary
   condition for the existence of a consistently deceptive problem
fully deceptive problem - all lower-order hyperplanes lead to a deceptive
   attractor
certain problems used as test problems in GA literature can be solved
   by solving order-1 hyperplanes.

Weinberger: Fitness landscapes (1987,1988,1989)
use of correlation functions to determine ruggedness and major features
of fitness landscapes
difficult to do optimization on landscapes with short correlation lengths

Kauffman (1990) uses some concepts from information theory and
the physics of phase transitions to say that "minimal programs are not 
themselves evolvable".  Context of boolean networks.  Frozen component
of binary variables.

Vose and Liepins (1991) schema disruption
ICGA4
another generalized schema, known as predicates
counting ones (error in logic: monotonic doesn't mean always increasing)


Wilson (1991) GA-easy doesn't mean gradient-descent
ICGA4

Stephanie Forrest Royal Road

Nicky Radcliffe
ICGA4 222 - Forma Analysis and Random Respective Recombination
a forma is any equivalence class of any relation over the space of
chromosomes.  (?) Not clear how a forma-object is preserved in crossover;
formas should be preserved under crossover, no?
Yes, he calls it Respect: crossing two instances of any forma should
produce another instance of that forma.
Thus, a forma is a refinement of
the equivalence classes formed by the invariant sets of the crossover operator;
also,
given instances of two compatible formae, it should be possible to cross them
to produce a child which is an instance of both formae.


Bremmerman
useless ramblings

Davidor (1991)
epistasis variance
high epistasis = high order building blocks have strong signal

Deb and Goldberg (1992)


Goldberg, Deb, Clark (1991) noise and sizing

Grefenstette 1991 SBBH considered harmful

Homaifar, Qi, \& Frost, 1991
X Homaifar \& Qi, 1990

Manderick, de Weger, Spiessens (1991)
ICGA4
structure of the fitness landscape


Wright, FOGA
GAs for Real Parameter Optimization
defines schemas
introduces linear crossover method (children are on the line formed
by the coordinates of the parents)

Forrest, ICGA4
Tanese functions.
overlap in partition indices causes higher-order Walsh functions.
(?) What does this mean in terms of deception, if anything?
Recall that deception of high order can occur using low-order Walsh
functions.

Lipsitch 1991
CA rules for generating fitness landscapes

Schaffer, Eshelman, Offutt (1991)
FOGA
spurrious correlations (growth of deceptive blocks due to sampling
error)

Goldberg, Deb, Clark, 1991.
variance of building-block fitness (collateral noise)
The six conditions for GA success are:
1. know what the GA is processing: building blocks
2. ensure an adequate supply of building blocks either initially or temporally
3. ensure the growth of necessary building blocks
4. ensure the mixing of necessary building blocks
5. solve problems that are building-block tractable or recode them so they are
6. decide well among competing building blocks


New Refs:
Liepins \& Vose (1990a)
Walsh polynomials
M-schemata

LV1990b
permutations enuf to xform fully decp to fully easy
affine transformations being possible enough to transform deceptive
	problems into fully easy ones
introduces an example of a fully deceptive problem

Vose (in press)
predicate

X Whitley 1991b

Davis 91a
hillclimbing beats GA on test suites
i wonder why

tanese

X Rudnick's thesis
X Deb, G, H (H,G?) Multimodal Deception
X Sikora 91a
Ordering GAs Hillol Kargupta
Weinberger:



KAUFFMAN: ADAPTION ON RUGGED FITNESS LANDSCAPES
\bibitem{rugged} Kauffman, S. A. (1989).
        Adaption on rugged fitness landscapes.
        In D.~L.~Stein, editor, {\Lectures in the Sciences of
        Complexity,} pp. 527-618.  Reading: Addison-Wesley.

