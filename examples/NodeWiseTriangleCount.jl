#=
NodeWiseTriangleCount:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-12
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra

include("/Users/samuel/Documents/Jupyter/GraphBlasAlgorithmsFinal/src/NodeWiseTriangleCount.jl")
dim = 10000
matrix = GBMatrix(sparse(rand(0:1, dim, dim)))
@time nodewise_tc(matrix)