# install.packages("networkD3")
# install.packages("htmlwidgets")
library(networkD3)
library(htmlwidgets)

# data
nodes <- data.frame(name = c("A", "B", "C", "D"))
links <- data.frame(
  source = c(0, 1, 1, 2),
  target = c(1, 2, 3, 3),
  value = c(2, 3, 1, 2)
)

# plot
p <- sankeyNetwork(
  Links = links, 
  Nodes = nodes,
  Source = "source", 
  Target = "target",
  Value = "value", 
  NodeID = "name",
  fontSize = 12, 
  nodeWidth = 30
)

# save output
saveWidget(p, "./html/sankey_example.html", selfcontained = TRUE)
