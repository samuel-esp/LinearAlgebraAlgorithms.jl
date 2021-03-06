#=
KTruss:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-10
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra

#A is the original matrix, k is the requested truss, n the nodes in the original matrix, Output: K-Truss graph
function ktruss(A, k, n)

    C = A
    print("STARTING ALGORITHM ...\n\n")
    for i = 1:n-1
       C = mul(C, C, Semirings.PLUS_LAND, mask=C)
       C = select(SelectOps.GE, C, k-2)
       print(C)
       #***
       print("\n\n\n")
       print("ITERATION FINISHED")
       print("\n\n\n")
    end

    return C

end

#***
#optional: we could also tell the algorithm to stop if the non zero values didn't change from the previous iteration