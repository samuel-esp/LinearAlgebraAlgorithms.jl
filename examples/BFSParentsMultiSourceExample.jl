#=
BFSParentsMultiSource:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-11
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra
using Random

include("/Users/samuel/Documents/Jupyter/GraphBlasAlgorithmsFinal/src/BFSParentsMultiSource.jl")
dim = 10000
sourcdim = 3
matrix =  sprand(Bool, dim, dim, 0.1)
matrix = GBMatrix(matrix)
sources =  rand(0:0, sourcdim, dim)
sources[1, 1] = 1
sources[2, 2] = 2
sources[3, 3] = 3
sources = GBMatrix(sparse(sources))
@time ms_bfsp(matrix, sources, dim, sourcdim)