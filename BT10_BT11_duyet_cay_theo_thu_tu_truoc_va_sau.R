install.packages('data.tree')
library(data.tree)

# Thi???t l???p cây
acme <- Node$new("A")
accounting <- acme$AddChild("B")
software <- accounting$AddChild("C")
standards <- accounting$AddChild("D")
research <- acme$AddChild("E")
newProductLine <- research$AddChild("F")
newLabs <- research$AddChild("G")
it <- acme$AddChild("H")
outsource <- it$AddChild("I")
agile <- it$AddChild("J")
goToR <- it$AddChild("K")
print(acme)

# Duy???t cây theo th??? t??? tru???c
acme$Get('level')

# Duy???t cây theo th??? t??? sau
acme$Get('level', traversal = "post-order")