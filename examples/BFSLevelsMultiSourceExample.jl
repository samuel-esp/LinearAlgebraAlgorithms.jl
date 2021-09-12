#=
BFSLevelsMultiSource:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-11
=#
using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra

include("/Users/samuel/Documents/Jupyter/GraphBlasAlgorithmsFinal/src/BFSLevelsMultiSource.jl")
dim = 20000
sourcdim = 3
matrix =  sprand(Bool, dim, dim, 0.005)
matrix = Array(matrix)
matrix = GBMatrix(matrix)
sources =  sprand(Bool, sourcdim, dim, 0.15)
sources = Array(sources)
sources = GBMatrix(sources)
@time ms_bfsl(matrix, sources, dim, sourcdim)