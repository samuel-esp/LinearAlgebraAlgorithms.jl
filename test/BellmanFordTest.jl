#=
BellmanFordTest:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-11
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra
using Test

include("/Users/samuel/Documents/Jupyter/GraphBlasAlgorithmsFinal/src/BellmanFord.jl")
matrix =  GBMatrix([[0, Inf, Inf, 0.2, Inf, Inf, Inf] [0.3, 0, Inf, Inf, Inf, Inf, Inf] [Inf, Inf, 0, 0.4, Inf, 0.5, 0.1] [0.8, Inf, Inf, 0, Inf, Inf, 0.5] [Inf, 0.1, Inf, Inf, 0, Inf, 0.9] [Inf, Inf, 0.5, Inf, 0.1, 0, Inf] [Inf, 0.7, Inf, Inf, Inf, Inf, 0]])
@test bellmanford(matrix, 1, 7) == GBVector([0, 0.3, 1, 0.8, 0.4, 0.5, 1])