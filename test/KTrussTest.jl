#=
KTrussTest:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-11
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra
using Test

include("/Users/samuel/Documents/Jupyter/GraphBlasAlgorithmsFinal/src/KTruss.jl")
matrix =  GBMatrix([[0, 1, 1, 0, 0] [1, 0, 1, 1, 1] [1, 1, 0, 0, 1] [0, 1, 0, 0, 1] [0, 1, 1, 1, 0]])
@test ktruss(matrix, 3, 5) == [[nothing, 1, 1, nothing, nothing]  [1, nothing, 2, 1, 2] [1, 2, nothing, nothing, 1] [nothing, 1, nothing, nothing, 1] [nothing, 2, 1, 1, nothing]]