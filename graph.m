T = readtable('g_edges.csv');
edges = unique([string(T.Source);string(T.Target)]);
M = containers.Map(edges,1:size(edges));
sources = string(T.Source);
targets = string(T.Target);
weights = double(T.Weight);
G = zeros(length(edges));
for i = 1:length(weights)
    G(M(sources(i)),M(targets(i))) = weights(i);
end
graph = digraph(G);
B = double(G > 0);
deg = sum(B);
size = 2*sqrt(deg-min(deg)+0.2);
plot(graph,'MarkerSize',size);
w = 0;
for i = shortestpath(graph, M("NED"), M("TYRION"))
    disp(edges(i));
    w = w + weights(i);
end
disp(w)
