#=
AdvancedPrimTest:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-10
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra
using Test

include("/Users/samuel/Documents/Jupyter/GraphBlasAlgorithmsFinal/src/AdvancedPrim.jl")
matrix =  GBMatrix([[0.0, 7.0, 5.0, 5.0] [7.0, 0.0, 0.0, 0.0] [5.0, 0.0, 0.0, 0.0] [5.0, 0.0, 0.0, 0.0]])
m = GBVector([Inf, 0.0, 0.0, 0.0]) #source matrix
weight, mst = a_prim(matrix, 4, m)
@test weight == 17.0
@test mst[5] == 5
@test mst[6] == 5
@test mst[7] == 7