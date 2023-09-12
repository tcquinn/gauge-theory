# Differential forms

Passages below are quoted from "The Geometry of Kerr Black Holes" by Barrett O'Neill. I found this presentation to be very clean, but a little too brief.

### One-forms (p. 6)

Every function $f \in \mathcal{F}(M)$ gives rise to a one-form, namely, its *differential* $df$, given by $(df)(v) = v[f]$ for all tangent vectors $v$. This elegant (and practical) definition clarifies the mysterious "$dx$" of elementary calculus.

The dual to the Basis Theorem is this: On the domain of a coordinate system, every one-form can be expressed in terms of the *coordinate 1-forms* $dx^1$,..., $dx^n$ as $\theta = \sum \theta(\partial_i)dx^i$. (*Proof:* Apply both sides to $\partial_j$)

In particular, this yields the famous formula $df = \sum \frac{\partial f}{\partial x^i} dx^i$, since $(df)(\partial_i) = \partial_i(f) = \frac{\partial f}{\partial x^i}$.

### Differential forms (pp.  355-356)

The wedge product of two one-forms is given by 
```math
(\theta\wedge\phi)(v,w) = \begin{vmatrix} \theta(v) & \theta(w) \\\\ \phi(v) & \phi(w) \end{vmatrix} 
  \qquad \text{for all tangent vectors $v$, $w$.}
```
(There are two commonly used definitions of wedge product; the only evidence of our choice is the absence of a factor $1/2$ in the formula above.) It follows that for *one-forms*, $\theta\wedge\phi = -\phi\wedge\theta$, and hence $\theta\wedge\theta = 0$.
- The *exterior derivative* of a zero-form $f$ is just its differential $df$.
- The *exterior derivative* of a one-form $\omega$ is the two-form defined by
```math
(d\omega)(X,Y) = X(\omega Y) - Y(\omega X) - \omega([X,Y])
  \qquad \text{for all vector fields $X$, $Y$.}
  ```
