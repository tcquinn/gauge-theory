# Tangent spaces

Below is the way that I learned to define tangent spaces and related objects on a manifold: vectors, tensors, derivatives of vectors and tensors, etc. I had to go back to Wald (1984) to remind myself of some of the details.

In this story, rather than defining the key objects (e.g., vectors, tensors, derivatives) in terms of how they transform under coordinate transformations, we define them in terms of more fundamental properties and then note that that they transform under coordinate transformations in the ways we expect. This is much less confusing to me. Your mileage may vary.

## Manifolds

### Definition

We define a _manifold_ as a set that maps smoothly to $\mathbb{R}^n$ at every point. More precisely, a manifold is a set $M$ along with a collection of subsets $O_\alpha \subset M$ such that:

(1) The subsets $O_\alpha$ cover $M$. More precisely, each $p \in M$ lies in at least one $O_\alpha$.

(2) Each $O_\alpha$ has a corresponding coordinate system. More precisely, for each $\alpha$, there is a one-to-one, onto map $\psi_\alpha \colon O_\alpha \rightarrow U_\alpha$ where $U_\alpha$ is an open subset of $\mathbb{R}^n$. We call these maps _charts_ or _coordinate systems_.

(3) The coordinate systems stitch together smoothly. More precisely, whenever two subsets $O_\alpha \cap O_\beta \neq \emptyset$ , the map $\psi_\beta \circ \psi_\alpha^{-1} \colon \mathbb{R}^n \rightarrow \mathbb{R}^n$ is $C^\infty$.

### Discussion
More properly, we'd start with a topological space rather than a set and oppose some additional conditions on the interaction between the topology and the coordinate systems and that would give us more structure, but we don't need the extra structure for this discussion.

## Tangent vectors

### Definition

We define the _tangent space_ at each point of the manifold as the set of derivative operators on scalar functions at that point. More precisely, let $\mathcal{F}$ be the collection of $C^\infty$ functions from $M$ into $\mathbb{R}$. Then the tangent space $V_p$ is the collection of maps $v \colon \mathcal{F} \rightarrow \mathbb{R}$ which satisfy:

(1) $v(af + bg) = av(f) + bv(g)$ (linearity)

(2) $v(fg) = f(p)v(g) + g(p)v(f)$ (Leibniz condition)

### Properties

A bunch of properties follow directly from this definition:

(A) $V_p$ is a vector space. More precisely, if we impose the obvious rules for addition and scalar multiplication on $V_p$, so that $(v_1 + v_2)(f) = v_1(f) + v_2(f)$ and $(av)(f) = av(f)$, then $V_p$ satisfies all of the axioms of a vector space.

(B) If we choose any coordinate system, $V_p$ corresponds to the set of coordinate derivates in that system. More precisely, if we pick any coordinate system $\psi \colon O \rightarrow U$ where $p \in O$, then the $n$ operators
$$X_\mu(f) = \frac{\partial}{\partial x^\mu} (f \circ \psi^{-1})\rvert_{\psi(p)}$$
are elements of $V_p$, they are linearly independent, and any $v \in V_p$ can be written as a linear combination of these operators $$v = \sum_{\mu = 1}^{n} v^\mu X_\mu$$
That is, the coordinate derivatives form a _basis_ for $V_p$.

(C) The elements of $V_p$ transform as we expect tangent vectors to transform under coordinate transformations. More precisely, if we pick a different coordinate systems at $p$, $\psi \colon O \rightarrow U$ and $\psi' \colon O' \rightarrow U'$ , the components of $v$ in the $\psi'$ coordinate system are given by $$v'^\nu = \sum_{\mu = 1}^{n} v^\mu \frac{\partial x'^\nu}{\partial x^\mu}$$

(D) $V_p$ corresponds to derivatives with respect to curves through $p$. More precisely, consider any smooth curve $C(t) \colon \mathbb{R} \rightarrow M$ passing through $p \in M$ and define $T$ to be the derivative along this curve
$$T(f) = \frac{d(f \circ C)}{dt}$$
Then $T$ is an element of $V_p$. If we further pick a coordinate system at $p$, then the components of $T$ with respect to the coordinate system basis are
$$T^\mu = \frac{dx^\mu}{dt}$$

### Discussion

I think that the other popular ways to define $V_p$ are to elevate (C) to be the definition (a tangent vector at $p$ is a thing that transforms in the following way under coordinate transforms) or to elevate (D) to be the definition (a tangent vector is an equivalence class of derivatives with respect to curves passing through $p$), but I definitely it less confusing to think of (C) and (D) to be the consequences of the more abstract definition above.

At this point, we still don't have any natural way to identify tangent spaces $V_p$ and $V_q$ at different points and we don't have any way to take derivatives of vectors. However, we can define a _tangent field_ $v$ as an assignment of a vector at every point $p \in M$. Under this definition, if $f$ is a smooth function from $M$ to $\mathbb{R}$ then $v(f)$ is also a function from $M$ to $\mathbb{R}$. We can then define a _smooth tangent field_ $v$ as one such that $v(f)$ is smooth for any smooth $f$. This gives us a hint of a way to begin to "glue together" tangent spaces at neighboring points.

## Dual vectors






