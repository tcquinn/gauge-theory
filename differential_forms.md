# Differential forms

## Note on sources
*The Geometry of Kerr Black Holes* by Barrett O'Neill. I found this presentation to be very clean, but a too brief. O'Neill only include what he needs for the Kerr Geometry, which is one-forms and two-forms, and a specific result for three-forms. O'Neill inspired me to look for another source that gives the same clean treatment, but is more complete. I found it!

*Geometry of Differential Forms* by Shigeyuki Morita. This appears to be the Geometry book of my dreams. The first chapter on Manifolds is familiar, including tangent vectors, tangent spaces, vector fields, and the commutator of vector fields. (Lie groups are among the example manifolds in Chapter 1.) Chapter 2 develops differential forms without any reference to a metric, a derivative operator, or a connection. Differential forms, exterior products, and exterior derivatives are all defined without any reference to coordinates. Formulas using coordinates and coordinate derivatives are also given, with proofs. Chapter 3 on the de Rham Theorem is an important step toward characteristic classes, the book's ultimate goal. Chapter 4 investigates Riemannian manifolds with the Hodge $*$-operator, the Laplacian, and harmonic forms. Chapter 5 on vector bundles includes the tangent bundle and the covariant derivative. Chapter 6, the final chapter, is about fiber bundles. Both chapter 5 and 6 discuss connections, curvature and characteristic classes. Why didn't we use this book in Graduate school? It wasn't published until 1997...in Japanese. The English translation was published in 2000.

## One-forms (O'Neill p. 6)

Every function $f \in \mathcal{F}(M)$ gives rise to a one-form, namely, its *differential* $df$, given by $(df)(v) = v[f]$ for all tangent vectors $v$. This elegant (and practical) definition clarifies the mysterious "$dx$" of elementary calculus.

The dual to the Basis Theorem is this: On the domain of a coordinate system, every one-form can be expressed in terms of the *coordinate 1-forms* $dx^1$,..., $dx^n$ as $\theta = \sum \theta(\partial_i)dx^i$. (*Proof:* Apply both sides to $\partial_j$)

In particular, this yields the famous formula $df = \sum \frac{\partial f}{\partial x^i} dx^i$, since $(df)(\partial_i) = \partial_i(f) = \frac{\partial f}{\partial x^i}$.

## Differential forms (O'Neill pp. 355-356)

The wedge product of two one-forms is given by 
```math
  (\theta\wedge\phi)(v,w) = \begin{vmatrix} \theta(v) & \theta(w) \\\\ \phi(v) & \phi(w) \end{vmatrix} 
  \qquad
  \text{for all tangent vectors $v$, $w$.}
```
(There are two commonly used definitions of wedge product; the only evidence of our choice is the absence of a factor $1/2$ in the formula above.) It follows that for *one-forms*, $\theta\wedge\phi = -\phi\wedge\theta$, and hence $\theta\wedge\theta = 0$.
- The *exterior derivative* of a zero-form $f$ is just its differential $df$.
- The *exterior derivative* of a one-form $\omega$ is the two-form defined by
```math
  (d\omega)(X,Y) = X(\omega Y) - Y(\omega X) - \omega([X,Y])
  \qquad
  \text{for all vector fields $X$, $Y$.}
```
