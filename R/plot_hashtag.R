#' Plot histograms for hashtag counts
#'
#' @param df dataframe with hashtags as columns and cells as rows
#' @param split variable to split histogram by
#' @param xlim z axis limits, lower defaults to zero
#' @param ylim y axis limits, lower defaults to zero
#' @return list of plots for each hashtag in df
#' @export
#' 
#' @importFrom ggpubr gghistogram
#' @importFrom dittoSeq dittoColors
#' 
plot_hashtag<-function(df, split=NULL,xlim=c(0,NA),ylim=c(0,NA)) {
plots <- list()
for (i in seq_along(colnames(df))) {
  tag<-colnames(df)[i]
  
  if (is.null(split)){
    fill=dittoColors()[i]
  }
  else {
    df$split<-split
    fill="split"
  }
  
  
  plotx<-gghistogram(df, x=tag, fill = fill, palette = "lancet", alpha=0.7) + xlim(xlim) + ylim(ylim)
  plots[[i]]<-plotx
}
return(plots)
}