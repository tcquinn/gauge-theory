<!-- -*- fill-column: 64; eval: (auto-fill-mode -1); eval: (visual-fill-column-mode 1); eval: (visual-line-mode 1); eval: (adaptive-wrap-prefix-mode 1) -*- -->

# Exterior forms

Fix a vector space $V$. One obtains further vector spaces built from a combination of $V$ and $V^* $, its dual. For example, $V \otimes V$, $`V \otimes V^*`$, $V \otimes V \otimes V$, and so on. There are natural isomorphisms (for finite-dimensional $V$) between these vector spaces and the spaces of linear maps on the same collection. For example, $V \otimes V^* \simeq \mathop{\rm Lin}(V; V)$. 

A tensor of type $(0, p)$ is _totally antisymmetric_ if its action on any $p$ vectors changes sign under interchange of any two of the vectors. On a vector space of dimension $n$, tensors of type $(0, p)$ form a vector space of dimension $C^n_p$. An alternative name for this vector space is the space of _$p$-forms_ (“over $V$” or “at $P$”). 

Taking the direct sum of the $0$-forms, $1$-forms, ..., and $n$-forms results in a vector space of dimension $2^n$. There is a natural algebra on this vector space: 


# Exterior derivative

Fix a manifold $M$ and a point $P \in M$. Let $f$ be a smooth function $M \to \mathbb{R}$. Recall that a vector $v \in T_P M$ acts on smooth functions on $M$ by “taking the derivative of $f$ along a smooth curve whose tangent at $P$ is $v$.” Write that derivative as $v(f)$. (Other ways of writing the derivative include $\nabla_v f$ and $\mathscr{L}_v f$.)

Let $f$ be a smooth function $M\to\mathbb{R}$. The _exterior derivative of $f$ at $P$_, $df$, is that element of the cotangent space $T^*_P M$ whose action on any vector $v\in T_P M$ is $(df)(v) \equiv v(f)$. 

What's the point of $df$? The point is that to compute $v(f)$ one needs to know $f$ in the region of $P$, whereas $df$ captures that “local” information as an object _at_ $P$. 



