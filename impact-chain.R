## Impact chain
## load library 
library(DiagrammeR)

# create directional graph

DiagrammeR::grViz("
                  digraph impactchain{
graph [ layout = dot, 
        rankdir = LR, 
        label='IMPACT CHAIN: Torrential Rain', 
        fontname = Arial,
        fontsize =18, 
        labelloc='b',
        bgcolor ='#99CC00',
        start = 11]
node [shape =rectangle, style=filled, color=gray, fontname = Arial]

  1 [label='EXPOSURE', color='#ff8000'] ### something
  1.1 [label='Intense rain', color='#ff8000']
  3 [label='SENSITIVITY', color='#ffbf00']
  3.1 [label='Deforestation', color='#ffbf00' ]
  3.2 [label='Hillside agriculture', color='#ffbf00']
  4 [label='ADAPTIVE CAPACITY', color='#00ffbf']
  4.1 [label='Potential for \n rainwater harvesting', color='#00ffbf']
  4.2 [label='Village community organisation', color='#00ffbf']
  5 [shape = circle, label='POTENTIAL IMPACT', color='#E0FFFF']
  5.1 [label='Erosion and \n land degradation', color='#E0FFFF']
  2 [label='HAZARD \n (or) RISK', color='#ffff00']
  2.1 [label='Farmland \n erosion', color='#ffff00']
  
 edge [arrowhead=none, color='#808080']
  1.1 -> 1 
  2.1 -> 2 
  5.1 -> 5 
  3.2 -> 3.1 -> 3 
  4.2 -> 4.1 -> 4
  
  edge [arrowhead=vee, color='#808080']
  1 -> 5
  2 -> 5
  3 -> 5
  5 -> 4 
} 
")

