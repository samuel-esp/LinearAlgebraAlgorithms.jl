#=
FloydWarshallTest:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-11
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra
using Test

include("/Users/samuel/Documents/Jupyter/GraphBlasAlgorithmsFinal/src/FloydWarshall.jl")
matrix =  GBMatrix([[0, 5, 4, 7] [3, 0, 7, 2] [4, 1, 0, 3] [1, 6, 5, 0]])
@test floydwarshall(matrix, 4) == [[8, 13, 12, 7] [3, 8, 7, 2] [4, 9, 8, 3] [1, 6, 5, 0]]
