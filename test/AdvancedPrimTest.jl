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
using AdvancedPrim

matrix =  GBMatrix([[0.0, 7.0, 5.0, 5.0] [7.0, 0.0, 0.0, 0.0] [5.0, 0.0, 0.0, 0.0] [5.0, 0.0, 0.0, 0.0]])
@test a_prim(matrix, 4) == "17"