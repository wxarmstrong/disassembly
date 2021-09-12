adj_mat = [
	[ 0, 2,99,99,99,99, 2, 2,99,99,99,99,99],
	[ 2, 0, 2,99,99,99, 2, 2,99, 2,99,99,99],
	[99, 2, 0, 2,99,99,99, 2,99, 2, 2,99,99],
	[99,99, 2, 0, 2,99,99,99,99, 2, 2, 2,99],
	[99,99,99, 2, 0, 2,99,99,99,99, 2, 2, 2],
	[99,99,99,99, 2, 0,99,99,99,99,99, 2, 2],
	[ 2, 2,99,99,99,99, 0, 2,99,99,99,99,99],
	[ 2, 2,99,99,99,99, 2, 0, 2,99,99,99,99],
	[99, 2, 2,99,99,99,99, 2, 0, 2,99,99,99],
	[99, 2, 2, 2,99,99,99,99, 2, 0, 2,99,99],
	[99,99, 2, 2, 2,99,99,99,99, 2, 0, 2,99],
	[99,99,99, 2, 2, 2,99,99,99,99, 2, 0, 2],
	[99,99,99,99, 2, 2,99,99,99,99,99, 2, 0],
]

nV = len(adj_mat)

# Algorithm implementation
def floyd_warshall(G):
    distance = list(map(lambda i: list(map(lambda j: j, i)), G))

    # Adding vertices individually
    for k in range(nV):
        for i in range(nV):
            for j in range(nV):
                distance[i][j] = min(distance[i][j], distance[i][k] + distance[k][j])
    return distance

distance = floyd_warshall(adj_mat)

for r in distance:
    for c in r:
        print(f"{c} ",end='')
    print()