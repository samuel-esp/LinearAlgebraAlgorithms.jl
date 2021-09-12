#=
BFSLevels:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-10
=#

using SuiteSparseGraphBLAS
using SparseArrays

function updateVisited(f, visited)
    for i=1:length(f)
        if(f[i]!=false)
            visited[i] = true
        end
    end

    return visited

end

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

    #visited vector -> v[s]=1 because the source is already visited
    visited = GBVector{Bool}(n)
    visited[s] = true

    #putting source node inside the frontier
    frontier[s]= true

    print("starting from source node\n\n")
    for level = 1:n
            visited = updateVisited(frontier, visited)
            print("current nodes in frontier:\n\n")
            print(frontier)
            print("\n")
            print("vector distances:\n\n")
            print(distance)
            print("\n")
            pastdistance = distance
            distance[frontier] .= level
            frontier = mul(frontier, A, Semirings.LOR_LAND)
            unvisited = filter(x -> x!=true, visited)
            if(isempty(unvisited))
                break
            end
    end

    print(distance)
    return distance

end