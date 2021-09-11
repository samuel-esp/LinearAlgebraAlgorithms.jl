#=
BFSLevelsMultiSourceTest:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-11
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra
using Test

include("/Users/samuel/Documents/Jupyter/GraphBlasAlgorithmsFinal/src/BFSLevelsMultiSource.jl")
matrix =  GBMatrix([[false, false, false, true, false, false, false] [true, false, false, false, false, false, false] [false, false, false, true, false, true, true] [true, false, false, false, false, false, true] [false, true, false, false, false, false, true] [false, false, true, false, true, false, false] [false, true, false, false, false, false, false]])
S = GBMatrix([[true, false, false] [false, false, false] [false, true, false] [false, false, true] [false, false, false] [false, false, false] [false, false, false]])
@test ms_bfsl(matrix, S, 7, 3) == GBMatrix([[1, 0, 2] [2, 0, 3] [3, 1, 2] [2, 0, 1] [3, 0, 4] [4, 2, 3] [3, 0, 4]])

