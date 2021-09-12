#=
FloydWarshallExample:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-12
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra
using Test

include("/Users/samuel/Documents/Jupyter/GraphBlasAlgorithmsFinal/src/FloydWarshall.jl")
dim = 5
matrix = GBMatrix(rand(0:100, dim, dim))
@time floydwarshall(matrix, dim)