#' Draw counts from signal or noise based on logical matrix 'mat'
#'
#' @param size_sig size parameter signal
#' @param size_bg size parameter background
#' @param mu_sig mu signal
#' @param mu_bg mu noise
#' @param mat logical matrix
#' @param seed random seed
#' 
#' @importFrom stats rnbinom
#' @return counts matrix
#' @export
#'
#'
draw_counts<-function(size_sig,size_bg,mu_sig,mu_bg,mat,seed=NULL) {
set.seed(seed)
counts_sig<-t(mapply(rnbinom,n=dim(mat)[2],size=size_sig,mu=mu_sig)) #signal counts
counts_bg<-t(mapply(rnbinom,n=dim(mat)[2],size=size_bg,mu=mu_bg))  #background counts

merged<-matrix(0,nrow=dim(mat)[1],ncol=dim(mat)[2])
dim(merged)==dim(mat);dim(merged)==dim(counts_sig)
merged[mat==TRUE]<-counts_sig[mat==TRUE]
merged[mat==FALSE]<-counts_bg[mat==FALSE]

colnames(merged)<-colnames(mat)
rownames(merged)<-paste(rep("Hashtag",dim(mat)[1]),seq_len(dim(mat)[1]),sep="")
return(merged)
}