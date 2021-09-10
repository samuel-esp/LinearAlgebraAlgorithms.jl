#=
CMU:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-10
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra

#A is the input matrix, n is the number of nodes in the original matrix, Output: Triangle Count
function cmu(A, n)

        t = 0

        for i = 2:n-1

            A20 = A[i+1:end,begin:i-1]
            a10 = A[begin:i-1, i:i]
            a12 = A[i:i, i+1:end]

            partial1 = mul(a10', A20', Semirings.PLUS_TIMES)
            partial2 = mul(partial1, a12', Semirings.PLUS_TIMES)

            t = t + partial2[1]
    end

    print("RESULT: ")
    print(t)

end