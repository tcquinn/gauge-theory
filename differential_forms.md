# Differential forms

These are quotes from "The Geometry of Kerr Black Holes" by Barrett O'Neill.

### One-forms, p. 6

Every function $f \in \mathcal{F}(M)$ gives rise to a one-form, namely, its *differential* $df$, given by $(df)(v) = v[f]$ for all tangent vectors $v$. This elegant (and practical) definition clarifies the mysterious "$dx$" of elementary calculus.

The dual to the Basis Theorem is this: On the domain of a coordinate system, every one-form can be expressed in terms of the *coordinate 1-forms* $dx^1$,..., $dx^n$ as $\theta = \sum \theta(\partial_i)dx^i$. (*Proof:* Apply both sides to $\partial_j$)

In particular, this yields the famous formula $df = \sum \partial f / \partial x^i dx^i$, since $(df)(\partial_i) = \partial_i(f) = \partial f / \partial x^i$.

### Differential forms, pp.  355-356

The wedge product of two one-forms is given by 
```math
(\thta\wedge\phi)(v,w) = begin{vmatrix} \theta(v) & \theta(w) \\ \phi(v) & \phi(w) end{vmatrix} 
```
for all tangent vectors $v$, $w$.
