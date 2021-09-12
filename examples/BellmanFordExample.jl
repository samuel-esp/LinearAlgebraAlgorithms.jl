#=
BellmanFordExample:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-11
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra

include("/Users/samuel/Documents/Jupyter/GraphBlasAlgorithmsFinal/src/BellmanFord.jl")
dim = 100
matrix =  GBMatrix(sprand(dim, dim, 1.0))
@time bellmanford(matrix, 1, dim)