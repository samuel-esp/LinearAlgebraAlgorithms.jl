#=
BFSLevelsMultiSource:
- Julia version: 1.6.2
- Author: samuel
- Date: 2021-09-10
=#

using SuiteSparseGraphBLAS
using SparseArrays
using LinearAlgebra

#A is the input matrix, S is the source matrix, and n is the number of nodes, s is the number of sources in the matrix S, Output: Levels matrix
function ms_bfs(A, S, n, s)

    #this vector allows to check if a value is already present inside the distance matrix,
    #if it's present we don't want it to be changed
    levels = GBVector{Int64}(n)
        for i = 1:n
            levels[i] = i
        end

    #distance matrix
    distance = GBMatrix{Int64}(s, n)
            for i = 1:s
                for j = 1:n
                    distance[i, j] = 0
                end
            end

    print("STARTING FROM SOURCE NODE\n\n")
    for level = 1:n-1

            for i = 1:s
                for j = 1:n
                    if(S[i, j]!=0 && distance[i, j] ∉ levels) #*
                    distance[i, j] = level #*
                    end
                end
            end

            print("FRONTIER\n\n")
            print(S)
            print("\n\n")


            S = mul(S, A, Semirings.LOR_LAND, mask=distance, desc=Descriptors.RC)
            print("DISTANCE\n\n")
            print(distance)
            print("\n\n")
            print("ITERATION COMPLETED")
            print("\n\n")

            #print(distance)
    end

    print("END")

end