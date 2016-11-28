% Convex sets
% Optimization and Control Reading Group
% @Grenoble, France, Nov' 2016.

# Outline

> - Basic kinds of sets

> - Basic operartions on sets.

> - Separation Hyperplane Theorem, and supporting hyperplanes.

> - Inequalities on cones, duality.


# The convexity property

$\newcommand{R}{\mathbb{R}}$
  
## Convex set 
  
**Def.** The *line segment* that joins two points $x_1, x_2 \in \R^n$ is defined as 
$$
\ell(x_1, x_2) = \{ x \in \R : x = \theta x_1 + (1-\theta)x_2\text{ for some } \theta \in [0,1]\}.
$$
A set $C \in \R^n$ is *convex* if the line segment between any two points in $C$ belongs to $C$. 

Convex: 

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Convex_polygon_illustration1.svg/1729px-Convex_polygon_illustration1.svg.png" alt="Example of a convex set:" style="width: 200px;"/>

Not convex:

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Convex_polygon_illustration2.svg/1729px-Convex_polygon_illustration2.svg.png" alt="Example of a convex set:" style="width: 200px;"/>

*Remark.* In most cases, the definitions also apply in an abstract finite-dimensional vector space. 

Let $C \subseteq \R^n$. A *convex combination* of the points $\{ x_i\}_{i=1}^k \subseteq C$ is a point of the form $\theta_1 x_1 + \ldots + \theta_k x_k$, for some $\theta_i \geq 0$, $\theta_1+\ldots+\theta_k = 1$ for all $i=1,\ldots,k$. 

The *convex hull* of $C$, denoted $\text{conv } C$, is the set of all convex combination of its points of $C$.

**Prop.** A set is convex if and only if $C = \text{conv } C$ is satisfied. 
<details>
<summary>
**Proof.** 
</summary>
($\impliedby$) For all $x_1, x_2 \in \text{conv } C$, and (that is, take a convex combination of $k=2$ points) and $\theta_1\geq 0$, $\theta_2 = 1-\theta_1 \geq 0 \geq 0$, $\theta_1 x_1 + (1-\theta_1) x_2 \in C$. Consequently, $C$ is convex, and $\text{conv C} \subset C$.

($\implies$)
</details>

**Prop.** For arbitrary $C \subseteq \R^n$, the following hold:

1. The subset condition $C \subset \text{conv } C$ is satisfied.
2. The convex hull $\text{conv } C$ is convex.
3. The relationship $\text{conv } C = \text{conv } \left( \text{conv } C \right)$.



## Cone 

**Def.** A set $C \in \R^n$ is a *cone* if for every $x \in C$ and $\theta \geq 0$ we have $\theta x \in C$.
  
**Claim.** If a cone is convex, then
$$
\theta_1 x_1 + \theta_2 x_2 \in C
$$   
for any $x_1, x_2 \in C$ and $\theta_1, \theta_2 \geq 0$.
  
 
  
# Basic classes of convex sets

- Hyperplanes and halfspaces: $\{ x : a^T x = b \}$

- Ellipsoids

- Polyhedra: intersection of a finite number of half-spaces

- Simplexes

- Convex cones

- Zonotope: Minkowski sum of line segments

## Polyhedra 

Examples: a subspace, an hyperplane, a line, a ray, a line segment, a halfspace.

### Simplexes 


## Cones

### Zonotopes

# Calculus of convex sets

- Intersection

- Affine functions 


# Generalized inequalities

## Proper cones

**Def.** A cone $K \subseteq \mathbb{R}^n$ is a *proper cone* if it satisfies the following:

1. $K$ is convex.
2. $K$ is closed.
3. $K$ has nonempty interior (aka *solid*).
4. $K$ contains no line (aka *pointed*).

A *generalized inequality* is a partial ordering on $\mathbb{R}^n$ that shares many properties with the standard ordering on $\mathbb{R}^n$. 

**Def.** Given a proper cone $K \subseteq \mathbb{R}^n$, the partial ordering in $\mathbb{R}^n$ given by
$$
x \succ_K y \iff y-x \in K.
$$

## Positive semidefinite cone

Let $S^n$, $S^n_+$ and $S^n_{++}$ denote, respectively, the set of symmetric, positive semidefinite, and positive definite matrices in $\mathbb{R}^n$.

**Prop.** The set of positive definite matrices is convex.

# Inequalities on cones 

Recall that a cone is a set which is closed under multiplication by nonnegative scalars. 

**Def.** The *dual cone* of a set $C \subset \R^n$ is the set $C^* = \{ y \in \R^n : y^T x \geq 0\}$. 

<details>
<summary>
What is the dual cone of the line through the origin $y = mx$?
</summary>
If we choose a vector with a non-zero weight in the direction of $y=mx$, then the scalar product can be negative by choosing a vector with oppositve sign with respect to the projection. Hence, we claim that the dual cone is the orthogonal line, $y = -mx$. Let's check this: for $K = \{ (x,mx) : x \in \R\}$, any $y=(y_1,y_2)\in K^*$, should satisfy 
$$
y_1 x + y_2 mx \geq 0 ~\forall~ x \in \R  \iff (y_1 + y_2 m) = 0.
$$
</details>

<details>
<summary>
Recall that a *subspace* is a subset of $\R^n$ that is closed under scalar multiplication and vector addition. What is the dual cone of a subspace $V \subseteq \R^n$?
</summary>
$V^* = \{ y \in \R^n : y^T x \geq 0\}$ (check this!).
</details>

<details>
<summary>
Give an exmple of a self-dual set in $\R^n$.
</summary>
The nonnegative orthant, $\R^n_+ := \{ x \in \R^n : x_i \geq 0 ~\forall i = 1,\ldots,n\}$. (Convince yourself!)
</details>

**Prop.** The dual cone of a subset $C \subset \R^n$ is convex cone, irrespective if $C$ is not convex or is not a cone.

**Prop.** Let $K \subset \R^n$ is a cone. Then:

1. $K^*$ is convex and a cone.
2. 


## Positive semidefinite cone






