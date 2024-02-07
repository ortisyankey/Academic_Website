# bookworm: A GitHub repository for the WorldPop Book of Methods

WorldPop, University of Southampton

`r format(Sys.time(), "%d %B %Y")`

*bookworm* is a GitHub repository with source code for the WorldPop Book of Methods. This open digital book provides a guide to WorldPop population data sets, the methods used to create them, and the tools available to utilize them. 

The book is freely available at <a href="https://docs.worldpop.org" target="_blank">https://docs.worldpop.org</a>. The source code for the book is available from WorldPop on GitHub at <a href="https://github.com/wpgp/bookworm" target="_blank">https://github.com/wpgp/bookworm</a>. 

The development version of the book can be viewed at: <a href="http://srv02481.soton.ac.uk/bookworm/" target="_blank">http://srv02481.soton.ac.uk/bookworm/</a>.  The development version updates every two hours from the "dev" branch of this GitHub repository.

# Organization
The editor for this book is Doug (\@doug-leasure). A chapter editor is identified at the beginning of each chapter being drafted. The chapter editor is responsible for maintaing the Rmarkdown documents and commits to the repository for a chapter. The lead author and co-authors are responsible for the content. One of the authors may be the chapter editor if they are comfortable with Rmarkdown and GitHub. 

To make suggestions, please raise an [issue](https://github.com/wpgp/bookworm/issues) in the bookworm repository and tag the book or chapter editors that you want to notify. Please coordinate significant author contributions with chapter editors because they may be organizing early drafts in Google Docs, Word, etc. depending on the preferences of the authors.  

Chapter editors should create a branch for their work and submit a [pull request](https://github.com/wpgp/bookworm/pulls) to the book editor when the chapter is ready to be merged with the "dev" branch.  The "dev" branch syncs with our internal <a href="http://srv02481.soton.ac.uk/bookworm/" target="_blank">development web server</a> every two hours. The book editor will be responsible for merging the "dev" branch with the "master" branch.  The "master" branch will sync with our public-facing web server at [https://docs.worldpop.org](https://docs.worldpop.org).


# Installation
The following sections will describe how to contribute directly to the source code of the book. This information is particularly relevant for chapter editors, but authors are encouraged to make direct contributions as well. 

Install the R packages *bookdown* and *servr*:

```r
install.packages('bookdown')
install.packages('servr')
```

Clone the `wpgp/bookworm` repository to your computer from <a href="https://github.com/wpgp/bookworm" target="_blank">GitHub</a> (click the "Download Code" button). <a href="https://desktop.github.com/" target="_blank">GitHub Desktop</a> can streamline the process of cloning the repository and commiting changes to it. 

# Usage
Open the `bookworm.Rproj` file in RStudio and click "Build Book" within the "Build" tab to compile the book.  When this is complete, it will display the book in the RStudio Viewer window.  Note: the viewer window doesn't always display the book exactly as a web browser would.  

Use `bookdown::serve_book()` to launch a local web server. Copy and paste the IP address it provides into your web browser (e.g. http://127.0.0.1:5564). This will display the book in your web browser and it will automatically update as you change the Rmarkdown documents for each chapter.  

# Creating a new chapter
To create a new chapter, you must create a new R markdown document that will go in the root directory of the repository.  Look at `./gridded_population_estimates.Rmd` for an example. Your R markdown document must start with a single hash followed by the chapter title (e.g. "# First Chapter").  

Add any references that you cited in your chapter into `./book.bib` in BibTeX format or add your own BibTeX file to the `./bib/` folder and to the header information in `./index.Rmd`.

Edit the file `./_bookdown.yml` to add the chapter to the table of contents.  

See the <a href="https://bookdown.org/yihui/bookdown/" target="_blank">bookdown documentation</a> for further reading.  

# Contributing
The methods and documentation described in the book were developed by the WorldPop Research Group within the Department of Geography and Environmental Science at the University of Southampton. There were contributions from numerous WorldPop researchers, collaborators, and funders. Specific contributions are recognized within each chapter. The book was written using the <a href="https://github.com/rstudio/bookdown" target="_blank">*bookdown* R package</a>.

# License
The code is distributed under the BSD 3-clause license.
The text and images are distributed under the CC-BY ND 4.0 license.
  
