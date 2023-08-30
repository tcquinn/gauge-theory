# Tangent spaces

Below is the way that I learned to define tangent spaces on a manifold: vectors, tensors, derivatives of vectors and tensors, etc. I had to go back to Wald (1984) to remind myself of some of the details.

In this story, rather than defining the key objects (e.g., vectors, tensors, derivatives) in terms of how they transform under coordinate transformations, we define them in terms of more fundamental properties and then note that that they transform under coordinate transformations in the ways we expect. This is much less confusing to me. Your mileage may vary.

## Manifolds

First, we define a manifold. For our purposes, an $n$-dimensional manifold is a set $M$ along with a collection of subsets $O_\alpha \subset M$ such that:

(1) Each $p \in M$ lies in at least one $O_\alpha$ (i.e., the $O_\alpha$ cover $M$)

(2) For each $\alpha$, there is a one-to-one, onto map $\psi_\alpha \colon O_\alpha \rightarrow U_\alpha$ where $U_\alpha$ is an open subset of $\mathbb{R}^n$ (we call these maps _charts_ or _coordinate systems_)

(3) Wherever two subsets $O_\alpha$ and $O_\beta$ overlap, then the resulting map $\psi_\beta \circ \psi_\alpha^{-1}$ from $\mathbb{R}^n$ to $\mathbb{R}^n$ is $C^\infty$ (i.e., smooth)

(More properly, we'd start with a topological space rather than a set and oppose some additional conditions and that would give us more structure, but we don't need the extra structure for this discussion.)

## Tangent vectors

Next, we define the tangent space $V_p$ at a point $p \in M$. Let $\mathcal{F}$ be the collection of $C^\infty$ functions from $M$ into $\mathbb{R}$ (i.e., smooth scalar functions). Then the tangent space $V_p$ is the collection of maps $v \colon \mathcal{F} \rightarrow \mathbb{R}$ which satisfy:

(1) $v(af + bg) = av(f) + bv(g)$ (linearity)

(2) $v(fg) = f(p)v(g) + g(p)v(f)$ (Leibniz condition)

If we further define the obvious addition and scalar multiplication rules on elements of $V_p$ (i.e., $(v_1 + v_2)(f) = v_1(f) + v_2(f)$ and $(av)(f) = av(f)$), then a bunch of properties follow:

(A) $V_p$ is a vector space (that is, it satisfies all of the axioms of a vector space)

(B) If we pick any coordinate system $\psi \colon O \rightarrow U$ where $p \in O$, then the $n$ operators
$$X_\mu(f) = \frac{\partial}{\partial x^\mu} (f \circ \psi^{-1})\rvert_{\psi(p)}$$
(i.e., the derivatives with respect to each coordinate) form a basis for $V_p$, so we can express any $v \in V_p$ as
$$v = \sum_{\mu = 1}^{n} v^\mu X_\mu$$

(C) If we then pick a different coordinate system $\psi' \colon O' \rightarrow U'$, the components of $v$ in this new coordinate system are given by
$$v'^\nu = \sum_{\mu = 1}^{n} v^\mu \frac{\partial x'^\nu}{\partial x^\mu}$$
(i.e., the elements of $V_p$ transform the way we expect tangent vectors to transform under coordinate transformations)

(D) Consider any smooth curve $C(t) \colon \mathbb{R} \rightarrow M$ passing through $p \in M$ and we define $T$ to be the derivative along this curve
$$T(f) = \frac{d(f \circ C)}{dt},$$
then $T$ is an element of $V_p$. If we further pick a coordinate system at $p$, then the components of $T$ with respect to the coordinate system basis are
$$T^\mu = \frac{dx^\mu}{dt}$$

I think that the other popular ways to define $V_p$ are to elevate (C) to be the definition (a tangent vector at $p$ is a thing that transforms in the following way under coordinate transforms) or to elevate (D) to be the definition (a tangent vector is an equivalence class of derivatives with respect to curves passing through $p$), but I definitely it less confusing to think of (C) and (D) to be the consequences of the more abstract definition above.

At this point, we still don't have any way to naturally identify tangent spaces $V_p$ and $V_q$ at different points we don't have any way to take derivatives of vectors. However, we can define a _tangent field_ $v$ as an assignment of a vector at every point $p \in M$. If $f$ is a smooth function from $M$ to $\mathbb{R}$ then $v(f)$ is also a function from $M$ to $\mathbb{R}$. We can define a _smooth tangent field_ $v$ as one such that $v(f)$ is smooth for any smooth $f$. This gives us a very loose way to begin to "glue together" tangent spaces at neighboring points.

## Dual vectors







