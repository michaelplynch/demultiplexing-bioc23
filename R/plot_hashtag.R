#' Plot histograms for hashtag counts
#'
#' @param df dataframe with hashtags as columns and cells as rows
#'
#' @return list of plots for each hashtag in df
#' @export
#' 
#' @importFrom ggpubr gghistogram
#'
plot_hashtag<-function(df) {
plots <- list()
for (i in seq_along(colnames(df))) {
  tag<-colnames(df)[i]
  df$signal<-tag==rownames(df)
  plotx<-gghistogram(df, x=tag, fill =dittoColors()[i],palette = "lancet",alpha=1)
  plots[[i]]<-plotx
}
return(plots)
}