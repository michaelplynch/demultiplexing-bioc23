plot_hashtag<-function(df) {
myplots <- list()
for (i in seq_along(colnames(df))) {
  tag<-colnames(df)[i]
  plotx<-gghistogram(df,x=tag,fill ="black",palette = "lancet",alpha=1,bins=50)
  myplots[[i]]<-plotx
}
return(myplots)
}