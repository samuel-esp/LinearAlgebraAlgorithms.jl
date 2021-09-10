#=
AdvancedPrim:
- Julia version: 
- Author: samuel
- Date: 2021-09-10
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra

function stoppingCondition(m, n)

infinito = true

for i = 1:n
        if(m[i] == 0.0)
            return false
    end
end
    return infinito
end

#A is the input matrix, n is the number of nodes, Output: minimum spanning tree and minimum spanning tree cost
function prim(A, n)

    m = GBVector([Inf, 0.0, 0.0, 0.0]) #source matrix
    d = GBVector{Float64}(n)

    weight = 0.0

    d = A[1,:]
    mst = GBVector{Float64}(n) #minimum spanning tree

    print("INITIAL WEIGHT: ")
    print(weight)
    print("\n\n")
    while(stoppingCondition(m, n) == false)

        u = argmin(m'+d)
        m[u[2]] = Inf
        push!(mst, d[u[2]])
        weight = weight + d[u[2]]
        print("WEIGHT: ")
        print(weight)
        d = emul(d, A[u[1],:],  BinaryOps.MIN)
        print("  ITERATION FINISHED")
        print("\n\n\n")
    end

    print("COMPLETED")
    print(" ALL THE NODES HAVE BEEN PROCESSED (INF)")
    print("\n\n\n")
    print(m')
    print("\n\n\n")
    print("MINIMUM SPANNING TREE EDGES")
    print("\n\n\n")
    print(mst)

end