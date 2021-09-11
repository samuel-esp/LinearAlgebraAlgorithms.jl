#=
SandiaTest:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-11
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra
using Test

include("/Users/samuel/Documents/Jupyter/GraphBlasAlgorithmsFinal/src/Sandia.jl")
matrix =  GBMatrix(sparse([[0, 1, 1, 0, 0] [1, 0, 1, 1, 1] [1, 1, 0, 0, 1] [0, 1, 0, 0, 1] [0, 1, 1, 1, 0]]))
@test sandia(matrix) == 3