% Convex optimization problems
% [Marcelo Forets](http://marcelo-forets.fr/), Univ. Grenoble Alpes.
% [Optimization and Control Reading Group](https://project.inria.fr/readinggroupoc/). France, Jan' 2017.  


$\def\S{\mathbf{S}}$
$\def\A{\mathbf{A}}$
$\def\b{\mathbf{b}}$
$\def\B{\mathbf{B}}$
$\def\K{\mathbf{K}}$
$\def\G{\mathbf{G}}$
$\def\S{\mathbf{S}}$
$\def\V{\mathbf{V}}$
$\def\X{\mathbf{X}}$
$\def\Y{\mathbf{Y}}$
$\def\x{\mathbf{x}}$
$\def\y{\mathbf{y}}$
$\def\p{\mathbf{p}}$
$\def\z{\mathbf{z}}$
$\def\M{\mathbf{M}}$
$\def\Q{\mathbf{Q}}$
$\newcommand{\R}{\mathbb{R}}$
$\newcommand{\C}{\mathbb{C}}$
$\newcommand{\N}{\mathbb{N}}$
$\newcommand{\red}[1]{\textbf{{\color{red}#1}}}$

# Overview of the chapter

- Optimization problems
- Convex optimization
- Linear optimization problems (LP)
- Quadratic optimization problems (QP, QCQP)
- Geometric programming
- Generalized inequality constraints (LMI)
- Vector optimization
- Exercises

# Warm-up

Would you say this is a *convex optimization* problem?

$$
\begin{equation}
\begin{aligned}
\text{minimize}\quad & f_0(x) = x_1^2 + x_2^2\\
\text{subject to}
\quad &f_1(x) = x_1/(1+x_2^2) \leq 0,\\
\quad &h(x) = (x_1+x_2)^2 = 0.
\end{aligned}
\end{equation}
$$

<details>
<summary> Hint. </summary>

Let's plot $f$:

```python
var('x1 x2')
f = x1/(1+x2^2)

# show 3d plot in [-10, 10]^2
plot3d(f, (x1, -10, 10), (x2, -10, 10), adaptive=True)
```

<img src="fig/example_1_3d_plot.png" width="500" align=center>

</details>

<details>
<summary> Discussion. </summary>

Recall that: $f$ is convex iff it is convex along lines, that is, for all vectors $x$ and $v$, the function $g(t)=f(x+vt)$ is convex, where $t \in \{\xi : x+v\xi \in \textrm{dom }f\}.$ This suggests to define a line and prove that the function is not convex along this line. The picture tells that a good candidate is at the point $x = (1,0)^T$, and for the direction we choose $v = (0, 1)^T$. Then,
$$
g(t) = f(x+vt) = 1/(1+t^2).
$$
This function is bell-shaped, and is not convex.

However, the problem can be reformulated as:

$$
\begin{equation}
\begin{aligned}
\text{minimize}\quad & f_0(x) = x_1^2 + x_2^2\\
\text{subject to}
\quad &\bar{f}_1(x) = x_1 \leq 0,\\
\quad &\bar{h}(x) = x_1+x_2 = 0.
\end{aligned}
\end{equation}
$$

Clearly, we are optimizing a convex function over a convex set.

In the book, the second problem is defined as a convex optimization problem, while the first problems is defined as a (general) optimization problem.

</details>


## Optimization problems in general

$$
\begin{equation}
\begin{aligned}
\text{minimize}\quad & f_0(x)\\			
\text{s.t.}
\quad &f_j(x) \geq 0, ~~ j=1,\ldots,p\\
\quad &h_k(x) = 0, ~~  k = 1,\ldots,q \,.
\end{aligned}
\end{equation}
$$

## Convex optimization problems



## Basic properties of convex optimzation problems

## Basic results in convex optimization

# Linear programming (LP)

### From general to abstract form

### Robust LP

## Quadratic programming


## SDP


## Optimization problems

$$
\begin{equation}
\label{eq:lpstrength}
\begin{aligned}
\text{minimize}\quad & f_0(x) \\			
\text{subject to}
\quad &f_j(x) \geq 0, ~~ j=1,\ldots,p\\
\quad &h_k(x) = 0, ~~  k = 1,\ldots,q \,.
\end{aligned}
\end{equation}
$$



## Convex optimization

$$
\begin{equation}
\begin{aligned}
\text{minimize}\quad & f_0(x) \\			
\text{s.t.}
\quad &f_j(x) \geq 0, ~~ j=1,\ldots,p\\
\quad &h_k(x) = 0, ~~  k = 1,\ldots,q \,.
\end{aligned}
\end{equation}
$$
where $f_0(x)$ is convex and $f_j(x)$ and $h_k(x)$ are all convex functions.
