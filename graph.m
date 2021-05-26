T = readtable('g_edges.csv');
edges = unique([string(T.Source);string(T.Target)]);
M = containers.Map(edges,1:length(edges));
sources = string(T.Source);
targets = string(T.Target);
weights = double(T.Weight);
g = digraph(sources,targets,weights);
deg = indegree(g);
size = 2*sqrt(deg-min(deg)+0.2);
p = plot(g,'MarkerSize',size)
color = 2*sqrt(deg-min(deg)+0.2);
p.NodeCData = color;
colormap("parula");
colorbar;
nodes = table(g.Nodes.Name,size);
top_nodes = sortrows(nodes,"Var2");
disp(top_nodes.Var1(126,1));
disp(top_nodes.Var1(125,1));
disp(top_nodes.Var1(124,1));
disp(top_nodes.Var1(123,1));
disp(top_nodes.Var1(122,1));
G = zeros(length(edges));
for i = 1:length(weights)
    G(M(sources(i)),M(targets(i))) = weights(i);
end
graph = digraph(G);
for i = shortestpath(graph, M("NED"), M("TYRION"))
    disp(edges(i));
end
