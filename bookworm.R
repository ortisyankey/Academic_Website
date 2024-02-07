# cleanup
rm(list=ls()); gc(); try(dev.off()); cat("\014")

# working directory
setwd(dirname(rstudioapi::getSourceEditorContext()$path))

# install packages
install.packages('bookdown')
install.packages('servr')
install.packages('kableExtra')

# render book
bookdown::render_book('index.Rmd', output_dir='docs')

# nojekyll file for GitHub pages
file.create('docs/.nojekyll')

# web server
bookdown::serve_book()
