library(servr)
library(tictoc)

tic()
bookdown::serve_book('.')

toc()
