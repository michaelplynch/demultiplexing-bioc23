#' Title Create logical matrix for singlets, doublets and negatives
#'
#' @param ngroups number of biological samples
#' @param nsinglet vector for number of singlets in each group
#' @param ndoub number of doublets
#' @param nneg number of negatives
#'
#' @return logical matrix
#' @export
#'
#' 
logimat<-function(ngroups,nsinglet,ndoub,nneg) {
  singlet<-NULL
  #singlet
  for (i in seq_len(ngroups)) {
    mat<-matrix(0, nrow=ngroups, ncol=nsinglet[i])
    mat[i,seq_len(nsinglet[i])]<-1
    colnames(mat)<-rep(paste("Hashtag",seq_len(ngroups)[i],sep=""),nsinglet[i])
    singlet<-cbind(singlet,mat)
  }
  
  #doublet
  doub<-matrix(0,nrow=ngroups,ncol=ndoub)
  colnames(doub)<-rep("Doublet",ndoub)
  prob=proportions(nsinglet)
  ind<-replicate(n=ndoub,sample(seq_len(ngroups),size=2,prob=prob))
  for (j in seq_len(ndoub)) {
    doub[ind[,j],j]<-1
  }
  
  #negative
  neg<-matrix(0,nrow=ngroups,ncol=nneg,dimnames=list(paste(rep("Hashtag",ngroups),seq_len(ngroups)),rep("Negative",nneg)))
  all<-cbind(singlet,doub,neg)
  
  return(all)
  
}