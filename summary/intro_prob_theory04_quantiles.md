# Quantile Function

## Math Preliminaries (Self-study)

1. Infimum and its properties regarding subsets
2. Limit point and infimum
3. Order Properties of a function
4. Right continuity of a function


### Some sources

1. [Summary](../lecture/quantile_prelim.pdf)
2. [Notes on The supremum and infimum from Davis](https://www.math.ucdavis.edu/~hunter/m125b/ch2.pdf)
3. [Notes on Quantile Functions and Generalized Inverse Functions (Advanced)](../references/generalized_inverse.pdf)

## Detailed Topics to be covered

1. Quantile and Distribution

    1. Quantile, CDF, PDF, and Mean
    2. General Definition of Quantile
      
      1. Motivation (continuous vs non-continuous variables)
      2. Numerical Example
      
2. Properties of Quantile Function

    1. Basic Properties
    2. Properties related to Continuity
    
3. Quantile Functions and Uniform Distribution

    1. Reproduction Property and Inversion Method for Simulation
    2. Reverse of Reproduction Property: $Y=F(X)$
    3. Skorohod Representation
    
3. Operations of Quantile Function

    1. Differentiation of Quantile Function
    2. Quantiles of a Function of Random Variable
    3. Quantile and Symmetric Distribution
    
## Readings

0. [Slides (Part I)](../lectures/topic4_quantile.pdf); [Slides (Part II)](../lectures/topic4_quantile02.pdf)


1.	Basic Concept and its properties

- BH, Chapter 2.9
- CB, chapter 2.1. page 54.
- Hansen, July 2019, Chapter 10.7
- [Arellano’s notes on Quantile Methods, Section 1 on Unconditional Quantiles](https://www.cemfi.es/~arellano/quantile-methods-notes.pdf) 
- [Vadim Marmer’s Notes (Lecture 10)](http://faculty.arts.ubc.ca/vmarmer/econ327/327_10_quantiles.pdf)


2.	The relationship with uniform distribution

- CB, page. 54 Theorem 2.1.10 (Probability Integral Transformation); Page. 247 Example 5.6.3. (Direct method for Monte Carlo Simulation)
- Arellano’s notes on Quantile methods, page 7. Skorohod Representation for conditional distribution. (Ours is an easier version of this)

3.	Why mean or median? Formulation of a prediction problem (CB, Chapter 2.2., page 58 and Exercise 2.18) Estimation of Quantile

## Programming Example

1. [Illustration of Objective Function of Quantiles](../stata/lecture01-prob02-quantile_objective_function.do)
2. [Stata Examples: Empirical Quantile (I)](../stata/lecture01-prob02-quantile.do); [Stata Examples: Empirical Quantile (II)](../stata/lecture01-prob02-quantile.do)
3. [R Examples: Empirical Quantile (I)](../stata/lecture01-prob02-quantile.R); [R Examples: Empirical Quantile (II)](../stata/lecture01-prob02-quantile02.R)


