<!-- -*- fill-column: 64; eval: (auto-fill-mode -1); eval: (visual-fill-column-mode 1); eval: (visual-line-mode 1); eval: (adaptive-wrap-prefix-mode 1) -*- -->

# Exterior forms

Fix a vector space $V$. One obtains further vector spaces built from a combination of $V$ and $V^*$, its dual. For example, $V \otimes V$, $V \otimes V^*$, $V \otimes V \otimes V$, and so on. There are natural isomorphisms (for finite-dimensional $V$) between these vector spaces and the spaces of linear maps on the same collection. For example, $V \otimes V^* \simeq \mathop{\mathrm Lin}(V; V)$. 

A tensor of type $(0, p)$ is _totally antisymmetric_ if its action on any $p$ vectors changes sign under interchange of any two of the vectors. On a vector space of dimension $n$, tensors of type $(0, p)$ form a vector space of dimension ${}^nC_p$. An alternative name for this vector space is the space of _$p$-forms_ (“over $V$” or “at $P$”). 

Note that when $p>n$ a totally antisymmetric $p$-form must be zero. (This is because $p>n$ vectors cannot all be linearly independent and the action of a totally antisymmetric form on a set of vectors having two vectors the same is zero.)

Taking the direct sum of the $0$-forms, $1$-forms, ..., and $n$-forms results in a vector space of dimension $2^n$. There is a natural algebra on this vector space: for $\tilde{m}$ a $p$-form and $\tilde{n}$ a $q$-form, define a $(p+q)$-form $\tilde{m}\wedge \tilde{n}$ as that tensor whose action on $p+q$ vectors is:

```math
(\tilde{m}\wedge\tilde{n})(v_1, \dotsc, v_{p+q}) \equiv 
	\sum_{\pi \in {\mathrm{Perm}}(1, 2, \dotsc, p+q)} 
	\mathrm{sgn}(\pi)
	\tilde{m}(v_{\pi_1}, \dotsc, v_{\pi_p}) \tilde{n}(v_{\pi_{p+1}}, \dotsc, v_{\pi_{p+q}}) 
```

Here the sum is taken over all permuations of the vectors and the sign of the permutation is $+1$ for even permutations and $-1$ for odd permuations. 

I think I have the normalisation consistent with both Schutz and Gavin. Schutz defines the wedge of two one-forms, $\tilde{p}$ and $\tilde{q}$ as,
```math
\tilde{p} \wedge \tilde{q} = \tilde{p}\otimes \tilde{q} - \tilde{q}\otimes\tilde{p},
```
and so acting on two vectors we have
```math
(\tilde{p} \wedge \tilde{q})(v_1, v_2) = \tilde{p}(v_1) \tilde{q}(v_2) - \tilde{q}(v_2)\otimes\tilde{q}(v_1),
```
which is the same formula as above and also the same formula in Gavin's notes.

I think one way of describing this subject is: Exterior forms
are “covariant tensors which vanish when acting on any linearly
dependent set of vectors.”

Let $\bar{e}_i \in V$ be a basis for $V$. Then the one-forms defined by $\tilde{e}^i(\bar{e}_j) = \delta^i{}_j$ are a basis for $V^*$, known as the _dual basis_. Furthermore, the $\tilde{e}^i \wedge \tilde{e}^j$ are a basis for 2-forms over $V$, and so on. (We use down indices on the basis vectors, because these become up indices on the components of a vector in that basis, e.g., for a vector $\bar{v}$, we write $\bar{v} = v^i \bar{e}_i$, with an implicit sum over the $i$.)

There is some normalisation to be done. Suppose $\tilde{w}$ is a 2-form. Then,
```math
\tilde{w} = \frac{1}{2!} \sum_{ij} w_{ij} \tilde{e}^i\wedge\tilde{e}^j,
```
where
```math
w_{ij} = \tilde{w}(\bar{e}_i, \bar{e}_j).
```
So the components are computed by evaluating the form on basis vectors; and the form is constructed by adding up all the wedge products with a normalisation factor. In general, for a $p$-form $\tilde{w}$,
```math
\tilde{w} = \frac{1}{p!} \sum_{ij\dots k} w_{ij\dots k} \tilde{e}^i\wedge\tilde{e}^j\wedge\dotsb\wedge \tilde{e}^k.
```

By analogy to $p$-forms, a _$q$-vector_ is a totally
antisymmetric $(q,0)$ tensor.

A _volume form_, $\tilde{w}$, is an $n$-form (where $n$ is the dimension of the underlying vector space). Volume forms provide an isomorphism between $(n-p)$-vectors and $p$-forms called the _dual_. Namely, 




# Exterior derivative

Fix a manifold $M$ and a point $P \in M$. Let $f$ be a smooth function $M \to \mathbb{R}$. Recall that a vector $v \in T_P M$ acts on smooth functions on $M$ by “taking the derivative of $f$ along a smooth curve whose tangent at $P$ is $v$.” Write that derivative as $v(f)$. (Other ways of writing the derivative include $\nabla_v f$ and $\mathscr{L}_v f$.)

The _exterior derivative of $f$ at $P$_, $df$, is that element
of the cotangent space $T^*_P M$ whose action on any vector $v\in
T_P M$ is $(df)(v) \equiv v(f)$.

What's the point of $df$? The point is that to compute $v(f)$
one needs to know $f$ in the region of $P$; however, $df$
captures that “local” information as an object _at_ $P$.



