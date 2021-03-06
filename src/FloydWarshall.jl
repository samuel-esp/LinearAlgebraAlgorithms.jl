#=
FloydWarshall:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-10
=#

using SuiteSparseGraphBLAS
using SparseArrays

#A is the input matrix for Floyd-Warshall multiple sources multiple destinations, Output: shortest paths
function floydwarshall(A, n)

    #distance matrix = input matrix
    D = A
    print(D)
    result = GBMatrix{Int64}(n, n)


    for i = 1:n
            print("\n\n\n")
            partial = mul(D[:,i], D[i,:], Semirings.MIN_PLUS)
            D = emul(D, partial,  BinaryOps.MIN)
            print(partial)
            result = partial
    end

    return result

end