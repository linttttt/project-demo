fig_ebookcard <- function() {
  fig <- econWeb::Fig()
  fig$export("FindthingPage")
}
tag_FindthingPage <-function(){
  tags$div(class = "findthingPageContent",
    tags$div(class = "findthingPageContent-announcement",
      tags$div(class = "findthingPageContent-announcement-name"),
      tags$div(class = "findthingPageContent-announcement-icon")),
    tags$div(class = "findthingPageContent-lecture",
      tags$div(class = "findthingPageContent-lecture-name"),
      tags$div(class = "findthingPageContent-lecture-icon")),
    tags$div(class = "findthingPageContent-borrow",
      tags$div(class = "findthingPageContent-borrow-name"),
      tags$div(class = "findthingPageContent-borrow-icon")),
    tags$div(class = "findthingPageContent-classmap",
      tags$div(class = "findthingPageContent-classmap-name"),
      tags$div(class = "findthingPageContent-classmap-icon")))
}
FindthingPage_dependency <- function(){
  htmltools::htmlDependency(
    name="FindthingPage",
    version="1.0.0",
    src=c(file=normalizePath(".")),
    style="FindthingPage.css",
    all_files = F
  )}
ui_FindthingPage <- function(dependency=NULL){
  library(htmltools)
  tagList(tag_FindthingPage(), FindthingPage_dependency(), dependency)
}
ui_FindthingPage() |> htmltools::save_html("./FindthingPage.html")
