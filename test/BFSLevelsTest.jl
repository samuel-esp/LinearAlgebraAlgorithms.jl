#=
BFSLevelsTest:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-11
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra
using Test

include("/Users/samuel/Documents/Jupyter/GraphBlasAlgorithmsFinal/src/BFSLevels.jl")
matrix =  GBMatrix([[false, false, false, false, false, false, false] [true, false, false, false, false, false, false] [true, false, false, false, false, false, false] [true, false, false, false, false, false, false] [false, false, false, false, false, false, true] [false, false, false, true, false, false, false] [false, false, false, false, false, true, false]])
print(matrix)
@test bfs_level(matrix, 1, 7) == GBVector([1, 2, 2, 2, 5, 3, 4])

