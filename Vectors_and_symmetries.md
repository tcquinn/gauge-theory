# What is a "rotation invariant" theory?

Let me tell a little story. I'm studying the interactions between several objects. The objects move about and rotate in three dimensions. None of them move or rotate rapidly, so non-relativistic physics is sufficient for describing their momentum, energy, and interactions.

I will describe the objects' positions, orientations and motions with vectors. I chose an origin so that positions are vectors. Orientations of ridged objects are described by vectors attached to the object (like the principle axes of its moment of inertial tensor.) Motions are naturally described by vectors like momentum, and angular momentum.

To describe the physics, I will write a Lagrangian for this system. The Lagrangian must be a scalar, so the vectors describing the system must be combined to produce scalars through dot products ($\vec u \cdot \vec v$) and triple products ($\vec u \times \vec v \cdot \vec w$). To make predictions, I will find Lagrange's equations of motion, or I will convert from the Lagrangian to the Hamiltonian and find Hamilton's canonical equations of motion. Then I will integrate those equations, which will almost certainly require repeated calculations over many small time steps.

```math
\begin{align}
 d\vec x_i &= \frac{\partial H}{\partial \vec p_i} dt &
 d\vec \theta_i &= \frac{\partial H}{\partial \vec L_i} dt \\
 d\vec p_i &= \left(-\frac{\partial H}{\partial \vec p_i} + \vec F_i \right) dt &
 d\vec L_i &= \left(-\frac{\partial H}{\partial \vec \theta_i} + \vec \tau_i \right) dt \\
\end{align}
```


### Vectors without a basis

Inner products will be found using vector magnitudes and the angle between the vectors.
```math
 u\cdot v = \Vert \vec u \Vert \Vert \vec v \Vert \cos (\theta_{uv})
```
Cross products will be created along a line perpendicular to the vectors, with its direction determined by the right-hand rule and its magnitude computed with the sine of the angle between the vectors.
```math
 \Vert u\times v \Vert = \Vert \vec u \Vert \Vert \vec v \Vert \sin (\theta_{uv})
```
Vector sums and differences can be constructed geometrically, or their magnitudes and angles can be computed using the law of cosines and the law of sines.

It is easy to mock this approach, but it has a rich history. Newton's *Pricipia* is entirely in this style, except his calculations are done with a compass and straight-edge rather than with trigonometry. Newton uses pure geometry to prove that a $1/r^2$ central force produces an elliptical orbit with one focus at the center. He also proves the opposite, that even a small change in the central force function will produce an orbit that does not close. These proofs are beautiful!

Going back to Galileo, there was an idea of compound motion, meaning motion in two directions at once, like projectile motion. This can be thought of as a choice of coordinates. By the time of Euler's synthesis, which includes $F=ma$ and $\tau = I\alpha$, coordinates had become better established. Euler uses only Cartesian coordinates.

### Components in an arbitrary basis

1. Pick 3 basis vectors, $\vec e_1$, $\vec e_2$ and $\vec e_3$.
2. Write the desired vector $\vec v$ as a linear combination of basis vectors,$\vec v = v_1\vec e_1 + v_2\vec e_2 + v_3\vec e_2 = v_i\vec e_i$, where $v_1$, $v_2$ and $v_3$ are real numbers called the components of $v$. For a chosen basis, there is clearly a one-to-one map between vectors $v$ and components $(v_1, v_2, v_3)$. However, the list of components is not the vector! It is an ordered list of 3 numbers.
3. But wait! Someone else might have picked three other directions, $\vec e'_1$, $\vec e'_2$ and $\vec e'_3$, and they got three different components, $v'_1$, $v'_2$, and $v'_3$. And physics doesn't care! So which three numbers should you use?
4. Don’t panic, the other person's basis and components give the same vector. $\vec v’ = v'_1 e'_1 + v'_2 e'_2 + v'_3 e'_3 = v_1 e_1 + v_2 e_2 + v_3 e_3 = v$. Their basis is related to your basis by a 3x3 transformation matrix. Use the inverse transpose of this transformation matrix to relate their components to your components. Then the result is the same vector. (The 3x3 transformation matrix is any general linear transformation, not necessarily a rotation.)

To do some physics, you will probably need an inner product for things like $\vec u\cdot\vec v$. To do this you want to write a little multiplication table for your basis vectors. This 3x3 table is symmetric (because the inner product is symmetric). Write the vectors in terms of your basis.
```math
\begin{align}
 \vec u &= v_1 \vec e_1 + v_2 \vec e_2 + v_3 \vec e_3 \\
 \vec v &= u_1 \vec e_1 + u_2 \vec e_2 + u_3 \vec e_3
\end{align}
```
Now find the inner product $\vec u\cdot \vec v$.
```math
 u\cdot v = u_i \vec e_i\cdot v_j \vec e_j 
   = u_i  v_j (\vec e_i \cdot \vec e_j)
   = u_i  v_j g_{ij}
```
Now use your multiplication table for the basis vectors to compute the inner product. The symmetric multiplication table is also known as the metric. The other person will have a different multiplication table (different metric) but it will give the same inner product of u and v, written in their basis with thier components. To find the other person’s metric, compute each entry in their multiplication table. For example, to compute their i’\cdot j' entry, write their i’ and j' vectors in terms of your i, j and k, expand i’\cdot j’ as above, and use your multiplication table to find the 9 terms in the sum. Do this 8 more times to find the other entries (or do it 5 more times and use symmetry).

Now you are probably thinking, “This is a mess! What about rotations?” Well, if you and your friend were smart, you both chose an orthonormal basis, so both your metrics would be the identity. Then you can forget all that stuff about basis vectors and just use components.

```math
 u\cdot v = v_1 u_1 + v_2 u_2 + v_3 u_3 = v'_1 u'_1 + v'_2 u'_2 + v'_3 u'_3.
```

In fact, you can pretend that the vectors are their components, which is the story you and I (and probably Ted) were told.

### Components in an othonormal basis

### Representations of SO(3)
