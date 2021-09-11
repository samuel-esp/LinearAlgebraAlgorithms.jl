#=
BFSLevels:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-10
=#

using SuiteSparseGraphBLAS
using SparseArrays

#A is the input matrix, s is the source node, and n is the number of nodes
function bfs_level(A, s, n)

    #vector init
    frontier = GBVector{Bool}(n)
        for i = 1:n
            frontier[i] = false
        end

    #init result vector
    distance = GBVector{Int64}(n)
        for i = 1:n
            distance[i] = 0
        end

    #putting source node inside the frontier
    frontier[s]= true

    print("starting from source node\n\n")
    for level = 1:n
            print("current nodes in frontier:\n\n")
            print(frontier)
            print("\n")
            print("vector distances:\n\n")
            print(distance)
            print("\n")
            distance[frontier] .= level
            #print(distance)
            frontier = mul(frontier, A, Semirings.LOR_LAND)#, mask=distance, desc=Descriptors.C)
            #frontier = mul(frontier, A, Semirings.ANY_PAIR, mask=distance, desc=Descriptors.D)
    end

    return distance

end