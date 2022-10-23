fig_ebookcard <- function() {
  fig <- econWeb::Fig()
  fig$export("Ebookcard2")
}
tag_Ebookcard2 <-function(){
  tags$div(class = "ebookcard",
    tags$div(class = "ebookcard-icon",
      tags$div(class = "ebookcard-icon-icon"),
      tags$div(class = "ebookcard-icon-iconName")),
    tags$div(class = "ebookcard-pill",
      tags$div(class = "ebookcard-pill-availability",
        tags$div(class = "ebookcard-pill-availability-icon"),
        tags$div(class = "ebookcard-pill-availability-number")),
      tags$div(class = "ebookcard-pill-action",
        tags$div(class = "ebookcard-pill-action-type"))))
}
Ebookcard2_dependency <- function(){
  htmltools::htmlDependency(
    name="Ebookcard2",
    version="1.0.0",
    src=c(file=normalizePath(".")),
    style="Ebookcard2.css",
    all_files = F
  )}
ui_Ebookcard2 <- function(dependency=NULL){
  library(htmltools)
  tagList(tag_Ebookcard2(), Ebookcard2_dependency(), dependency)
}
ui_Ebookcard2() |> htmltools::save_html("./R/ebookcard2.html")
