#=
BFSParentsExample:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-11
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra
using Random

include("/Users/samuel/Documents/Jupyter/GraphBlasAlgorithmsFinal/src/BFSParents.jl")
dim = 10000
sourcdim = 3
matrix =  sprand(Bool, dim, dim, 0.1)
matrix = GBMatrix(matrix)
source =  1
@time bfs_parents(matrix, source, dim)