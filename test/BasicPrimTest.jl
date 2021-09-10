#=
BasicPrimTest:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-10
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra
using Test

include("/Users/samuel/Documents/Jupyter/GraphBlasAlgorithmsFinal/src/BasicPrim.jl")
matrix =  GBMatrix([[0.0, 7.0, 5.0, 5.0] [7.0, 0.0, 0.0, 0.0] [5.0, 0.0, 0.0, 0.0] [5.0, 0.0, 0.0, 0.0]])
@test b_prim(matrix, 4) == 17.0