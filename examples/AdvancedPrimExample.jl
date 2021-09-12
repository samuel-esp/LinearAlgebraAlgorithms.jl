#=
AdvancedPrimExample:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-11
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra

include("/Users/samuel/Documents/Jupyter/GraphBlasAlgorithmsFinal/src/AdvancedPrim.jl")
dim = 20000
matrix =  GBMatrix(sprand(dim, dim, 1.0))
vector = GBVector(zeros(dim))
vector[1] = Inf64
@time a_prim(matrix, dim, vector)