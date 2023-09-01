# Tangent spaces

Below is the way that I learned to define tangent spaces and related objects on a manifold: vectors, tensors, derivatives of vectors and tensors, etc. I had to go back to Wald (1984) to remind myself of the details.

In this story, rather than defining the key objects (e.g., vectors, tensors, derivatives) in terms of how they transform under coordinate transformations, we define them in terms of more fundamental properties and then note that, as a consequence of these properties, they transform under coordinate transformations in the ways we expect. This is much less confusing to me. Your mileage may vary.

## Manifolds

### Definition

We define a _manifold_ as a set that maps smoothly to $\mathbb{R}^n$ at every point. More precisely, a manifold is a set $M$ along with a collection of subsets $O_\alpha \subset M$ such that:

(1) The subsets $O_\alpha$ cover $M$. More precisely, each $p \in M$ lies in at least one $O_\alpha$.

(2) Each $O_\alpha$ has a corresponding coordinate system. More precisely, for each $\alpha$, there is a one-to-one, onto map $\psi_\alpha \colon O_\alpha \rightarrow U_\alpha$ where $U_\alpha$ is an open subset of $\mathbb{R}^n$. We call these maps _charts_ or _coordinate systems_.

(3) The coordinate systems stitch together smoothly. More precisely, whenever two subsets $O_\alpha \cap O_\beta \neq \emptyset$ , the map $\psi_\beta \circ \psi_\alpha^{-1} \colon \mathbb{R}^n \rightarrow \mathbb{R}^n$ is $C^\infty$.

### Discussion
More properly, we'd start with a topological space rather than just a set and oppose some additional conditions on the interaction between the topology and the coordinate systems and that would give us more structure, but we don't need the extra structure for this discussion.

## Tangent vectors

### Definition

We define the _tangent space_ at each point of the manifold as the set of derivative operators on scalar functions at that point. More precisely, let $\mathcal{F}$ be the collection of $C^\infty$ functions from $M$ into $\mathbb{R}$. Then the tangent space $V_p$ is the collection of maps $v \colon \mathcal{F} \rightarrow \mathbb{R}$ which satisfy:

(1) Linearity: $v(af + bg) = av(f) + bv(g)$

(2) Leibniz rule: $v(fg) = f(p)v(g) + g(p)v(f)$

### Properties

A number of properties follow directly from this definition:

(A) $V_p$ is a vector space. More precisely, if we impose the obvious rules for addition and scalar multiplication on $V_p$, so that $(v_1 + v_2)(f) = v_1(f) + v_2(f)$ and $(av)(f) = av(f)$, then $V_p$ satisfies all of the axioms of a vector space.

(B) If we choose any coordinate system $\psi$, then $V_p$ corresponds to the  coordinate derivatives in that system. More precisely, if we pick any coordinate system $\psi \colon O \rightarrow U$ where $p \in O$, then the $n$ operators
```math
X_\mu(f) = \frac{\partial}{\partial x^\mu} (f \circ \psi^{-1})\rvert_{\psi(p)}
```
are elements of $V_p$, they are linearly independent, and any $v \in V_p$ can be written as a linear combination of these operators
```math
v = \sum_{\mu = 1}^{n} v^\mu X_\mu
```
That is, the coordinate derivatives form a _basis_ for $V_p$.

(C) The elements of $V_p$ transform as we expect tangent vectors to transform under coordinate transformations. More precisely, if we pick two different coordinate systems at $p$, $\psi \colon O \rightarrow U$ and $\psi^{\prime} \colon O^{\prime} \rightarrow U^{\prime}$ , the components of $v$ in the $\psi'$ coordinate system are given by
```math
v^{\prime\nu} = \sum_{\mu = 1}^{n} v^\mu \frac{\partial x^{\prime\nu}}{\partial x^\mu}
```

(D) $V_p$ also corresponds to derivatives with respect to curves through $p$. More precisely, consider any smooth curve $C(t) \colon \mathbb{R} \rightarrow M$ passing through $p \in M$ and define $T$ to be the derivative along this curve
```math
T(f) = \frac{d(f \circ C)}{dt}
```
Then $T$ is an element of $V_p$. If we further pick a coordinate system at $p$, then the components of $T$ with respect to the coordinate system basis are
```math
T^\mu = \frac{dx^\mu}{dt}
```

### Discussion

I think that the other popular ways to define $V_p$ are to elevate (C) to be the definition (a tangent vector at $p$ is a thing that transforms in the following way under coordinate transforms) or to elevate (D) to be the definition (a tangent vector is an equivalence class of derivatives with respect to curves passing through $p$), but I definitely it less confusing to think of (C) and (D) to be the consequences of the more abstract definition above.

At this point, we still don't have any natural way to identify tangent spaces $V_p$ and $V_q$ at different points, we don't have any way to take derivatives of vectors, and we don't know how to parallel transport. However, we can define a _tangent field_ $v$ as an assignment of a vector at every point $p \in M$. Under this definition, if $f$ is a smooth function from $M$ to $\mathbb{R}$ then $v(f)$ is also a function from $M$ to $\mathbb{R}$. We can then define a _smooth tangent field_ $v$ as one such that $v(f)$ is smooth for any smooth $f$. This gives us a hint of a way to begin to "glue together" tangent spaces at neighboring points.

## Cotangent vectors

### Definition

We define the _cotangent space_ at each point of the manifold as the dual of the tangent space. More precisely, given $V_p$, we define $V^\ast_p$ as the set of linear maps $f \colon V_p \rightarrow \mathbb{R}$

### Properties

A number of properties follow directly from this definition.

(A) $V^\ast_p$ is a vector space. More precisely, if we impose the obvious rules for addition and scalar multiplication on $V^\ast_p$, then $V^\ast_p$ satisfies all of the axioms of a vector space.

(B) Given any basis for $V_p$, we get a natural corresponding basis for $V^\ast_p$. More precisely, given a set of basis vectors $v_\mu$ for $V_p$, if we define a set of dual vectors $v^{\mu^\ast}$ by the rule
```math
v^{\mu^\ast}(v_\nu) = \delta^\mu_\nu
```
then this specifies the $v^{\mu^\ast}$ uniquely and the $v^{\mu^\ast}$ are a basis for $V^\ast_p$.

(C) In particular if $v_\mu$ is a coordinate basis for $V_p$, then the definition in (B) gives us a corresponding coordinate basis for $V^\ast_p$. We tend to write the coordinate basis for $V_p$ as $\partial/\partial x^1,\ldots,\partial/\partial x^n$ and we tend to write the corresponding coordinate basis for $V^\ast_p$ as $dx^1,\ldots,dx^n$.

(D) The elements of $V^\ast_p$ transform as we expect cotangent vectors to transform under coordinate transformations. More precisely, if we pick two different coordinate systems at $p$, $\psi \colon O \rightarrow U$ and $\psi^{\prime} \colon O^{\prime} \rightarrow U^{\prime}$ , the components of the cotangent vector $w$ in the $\psi^{\prime}$ coordinate system are given by
```math
w^{\prime}_\nu = \sum_{\mu = 1}^{n} w_\mu \frac{\partial x^\mu}{\partial x^{\prime}_\nu}
```

### Discussion

Property (B) shows that $V_p$ and $V^\ast_p$ are isomorphic, but the isomorphism depends on the choice of basis. We still don't have a natural way to identify $V_p$ with $V^\ast_p$. We need a metric for that.

Not surprisingly, it can pretty easily be shown that $V^{\ast\ast}_p$, the dual of the cotangent space, is just $V_p$, the tangent space.

We can define a _cotangent vector field_ and a _smooth cotangent vector field_ in precise analogy to the tangent vector field definitions above.

## Tensors on the tangent space

### Definition

We define tensors on the tangent space as multilinear maps from tangent vectors and cotangent vectors to $\mathbb{R}$. More precisely, we define a _tensor of type (k, l)_ on the tangent space as a map
```math
T \colon \underbrace{V^\ast_p \times \ldots V^\ast_p}_{k} \times \underbrace{V_p \times \ldots V_p}_{l} \rightarrow \mathbb{R}
```

### Properties

Not surprisingly, a number of properties follow directly from this definition. The set of tensors of type $(k, l)$ forms a vector space of dimension $(k+l)$. If we choose a basis for $V_p$, we get a natural corresponding basis for this vector space of tensors. Tensors transform in the way we would expect under coordinate transformations. I'm not going to belabor any of this here.

### Discussion

We need to define two other tensor operations before we're ready to discuss derivative operators: contraction and outer product.

Contraction is a map from tensors of type $(k, 1)$ to tensors of type $(k - 1, l - 1)$ by summing over a pair of slots (one dual vector slot and one vector slot). Specifically, if we choose basis vectors $v_\mu$ and construct the corresponding dual basis $v^{\mu^\ast}$, then the contraction $CT$ of tensor $T$ on the $i$-th dual vector slor and $j$-th vector slot is given by
```math
CT = \sum_{\mu = 1}^{n} T(\ldots, v^{\mu^\ast}, \ldots; \ldots, v_\mu, \ldots)
```
It can be shown that the result is independent of the choice of basis. This is not the most elegant definition, but it's such a common, simple operation that it never occured to me look for a better one.

The outer product of a type $(k, l)$ tensor $T$ and a type $(k^{\prime}, l^{\prime})$ tensor $T^{\prime}$ is the type $(k+k^{\prime}, l+l^{\prime})$ tensor that you get by simply multiplying the results of the two tensors. More precisely,
```math
(T \otimes T^{\prime})(v^1, \ldots, v^k, v^{k+1},\ldots,v^{k+k^{\prime}}; w_1, \ldots, w_l, w_{l+1},\ldots,w_{l+l^{\prime}}) = T(v^1, \ldots, v^k; w_1, \ldots, w_l)T^{\prime}(v^{k+1},\ldots,v^{k+k^{\prime}}; w_{l+1},\ldots,w_{l+l^{\prime}})
```
We usually omit the outer product operator and just write the two tensors adjacent to each other.

We define _tensor fields_ and _smooth tensor fields_ by direct analogy with tangent vector field definitions.

## Derivative operators

We're finally ready to define derivative operators on tensor fields living on the tangent space.

### Definition

A _derivative operator_ $\nabla_a$ is a map which takes each smooth tensor field of type $(k, l)$ to a smooth tensor field of type $(k, l+1)$ and which satisfies the following conditions:

(1) Linearity: Given $A$ and $B$, two tensors of type $(k, l)$, and $\alpha$ and $\beta$, two real numbers,
```math
\nabla_c(\alpha A^{a_1 \cdots a_k}{}_{b_1 \cdots b_l} + \beta B^{a_1 \cdots a_k}{}_{b_1 \cdots b_l}) = \alpha \nabla_c A^{a_1 \cdots a_k}{}_{b_1 \cdots b_l} + \beta \nabla_c B^{a_1 \cdots a_k}{}_{b_1 \cdots b_l}
```

(2) Leibnitz rule: Given $A$, a tensor of type $(k, l)$, and $B$, a tensor of type $(k^{\prime}, l^{\prime})$,
```math
\nabla_e(A^{a_1 \cdots a_k}{}_{b_1 \cdots b_l}B^{c_1 \cdots c_{k^{\prime}}}{}_{d_1 \cdots d_{l^{\prime}}}) = (\nabla_e A^{a_1 \cdots a_k}{}_{b_1 \cdots b_l})B^{c_1 \cdots c_{k^{\prime}}}{}_{d_1 \cdots d_{l^{\prime}}} + A^{a_1 \cdots a_k}{}_{b_1 \cdots b_l}(\nabla_e B^{c_1 \cdots c_{k^{\prime}}}{}_{d_1 \cdots d_{l^{\prime}}})
```

(3) Commutativity with contraction: Given $A$, a tensor of type $(k, l)$,
```math
\nabla_d (A^{a_1 \cdots c \cdots a_k}{}_{b_1 \cdots c \cdots b_l}) = \nabla_d A^{a_1 \cdots c \cdots a_k}{}_{b_1 \cdots c \cdots b_l}
```

(4) Consistency with tangent vectors as directional derivatives: Given $f \in \mathcal{F}$ and $t^a \in V_p$,
```math
t(f) = t^a\nabla_a f
```

(5) Torsion-free: Given $f \in \mathcal{F}$,
```math
\nabla_a \nabla_b f = \nabla_b \nabla_a f
```

### Discussion

Given the set of conditions above, how many derivative operators are there? Zero? One? Many?

The first thing to note is that, if we choose a coordinate system $\psi \colon M \rightarrow \mathbb{R}$ and we write the components of our tensor $T$ with respect to corresponding tangent vector and cotangent vector bases $\{\partial/\partial x^\mu\}$ and $\{dx^\mu\}$, then in the subset of $M$ covered by $\psi$, we can define the operator $\partial_a$ which simply takes the ordinary gradient of each component of $T$:
```math
\partial_\alpha T^{\mu_1 \cdots \mu_k}{}_{\nu_1 \cdots \nu_l} = \frac{\partial (T^{\mu_1 \cdots \mu_k}{}_{\nu_1 \cdots \nu_l})}{\partial x^\alpha}
```
It turns out that this operator satisfies all of the conditions above, so the answer is clearly that there are many derivative operators, at least one for every coordinate system, maybe more.

So how different can two derivative operators be? Choose two different derivative operators $\nabla_a$ and $\tilde{\nabla}_a$ and define a new operator $(\tilde{\nabla}_a - \nabla_a)$ which takes an aribtrary cotangent vector field $\omega_a$ and returns the difference between the two derivative operators acting on $\omega_a$. That is:
```math
(\tilde{\nabla}_a - \nabla_a)(\omega_b) = \tilde{\nabla}_a \omega_b - \nabla_a \omega_b
```
As written, this is a map of (0, 1) tensor fields to (0, 2) tensor fields. However, it can be "easily" shown (I haven't fully parsed the argument) that, in fact, the value of right side of this equation at a point $p$ depends only on the value of $\omega_a$ at point $p$, not on the variation of $\omega_a$ near point $p$. That is, the operator $`(\tilde{\nabla}_a - \nabla_a)`$ is a linear operator that takes (0, 1) tensors (not tensor fields) at each point to (0, 2) tensors at each point. That is, the operator $`(\tilde{\nabla}_a - \nabla_a)`$ is, in fact, a (1, 2) tensor field. Let's call it $C^c{}_{ab}$.

By taking derivatives of arbitrary contractions of tensors and using the condition that derivative operators have to agree on scalar fields, we can extend this to a general rule for the difference between any two derivative operators on an arbitrary tensor:
```math
\nabla_a T^{b_1 \cdots b_k}{}_{c_1 \cdots c_l} = \tilde{\nabla}_a T^{b_1 \cdots b_k}{}_{c_1 \cdots c_l} + \sum_{i} C^{b_i}{}_{ad} T^{b_1 \cdots d \cdots b_k}{}_{c_1 \cdots c_l} - \sum_{j} C^{d}{}_{ac_j} T^{b_1 \cdots b_k}{}_{c_1 \cdots d \cdots c_l}
```

By using the torsion-free condition (5), we can show that $C^c{}_{ab}$ is symmmetric with respect to its tangent vector slots:
```math
C^c{}_{ab} = C^c{}_{ba}
```

In the special case where $\nabla_a$ is an arbitrary derivative operator and $`\tilde{\nabla}_a`$ is the ordinary gradient associated with a coordinate system $\partial_a$, then we call $C^c{}_{ab}$ a _Christoffel symbol_ and we write it as $\Gamma^c{}_{ab}$.

And that's it. We can't nail down $C^c{}_{ab}$ any further using only the structure of the manifold. If we can't nail down a derivative operator, then we don't know how to parallel transport.

If we define a metric $g_{ab}$ and impose the condition that $\nabla_a g_{bc} = 0$, then that specifies $\nabla_a$ uniquely and we get...seven years of grad school.




