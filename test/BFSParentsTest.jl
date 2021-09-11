#=
BFSParentsTest:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-11
=#
using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra
using Test

include("/Users/samuel/Documents/Jupyter/GraphBlasAlgorithmsFinal/src/BFSParents.jl")
matrix =  GBMatrix(sparse([[0, 0, 0, 1, 0, 0, 0] [1, 0, 0, 0, 0, 0, 0] [0, 0, 0, 1, 0, 1, 1] [1, 0, 0, 0, 0, 0, 1] [0, 1, 0, 0, 0, 0, 1] [0, 0, 1, 0, 1, 0, 0] [0, 1, 0, 0, 0, 0, 0]]))
bfs_parents(matrix, 1, 7)
@test bfs_parents(matrix, 1, 7) == GBVector([0, 1, 4, 1, 2, 3, 2])