#=
CohenExample:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-12
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra
using Test

include("/Users/samuel/Documents/Jupyter/GraphBlasAlgorithmsFinal/src/Cohen.jl")
dim = 10000
matrix = GBMatrix(sparse(rand(0:1, dim, dim)))
@time cohen(matrix)