#=
BFSParentsMultiSourceTest:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-11
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra
using Test

include("/Users/samuel/Documents/Jupyter/GraphBlasAlgorithmsFinal/src/BFSParentsMultiSource.jl")
S = GBMatrix(sparse([[1, 0, 0] [0, 0, 0] [0, 3, 0] [0, 0, 4] [0, 0, 0] [0, 0, 0] [0, 0, 0]]))
matrix =  GBMatrix(sparse([[0, 0, 0, 1, 0, 0, 0] [1, 0, 0, 0, 0, 0, 0] [0, 0, 0, 1, 0, 1, 1] [1, 0, 0, 0, 0, 0, 1] [0, 1, 0, 0, 0, 0, 1] [0, 0, 1, 0, 1, 0, 0] [0, 1, 0, 0, 0, 0, 0]]))
@test ms_bfsp(matrix, S, 7, 3) == [[0, nothing, 4] [1, nothing, 1] [4, 0, 4] [1, nothing, 0] [2, nothing, 2] [3, 3, 3] [2, nothing, 2]]

