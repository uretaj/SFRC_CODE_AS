codapca <- function(x, nc=2, q=0.5) {
  n <- nrow(x)
  d <- ncol(x)
  xx <- sweep(x,1,apply(x,1,quantile, q),'/')

  loss <- function(par){
    U <- matrix(par[1:((nc+1)*d)], nc+1, d)
    C <- diag(1,nc+1) -1/(nc+1)
    B <- cbind(1,matrix(par[-(1:((nc+1)*d))], n, nc))
    Y <- B%*%C%*%U
    sum(exp(Y)-xx*Y)
  }

  dloss <- function(par){
    U <- matrix(par[1:((nc+1)*d)], nc+1, d)
    C <- diag(1,nc+1) -1/(nc+1)
    B <- cbind(1,matrix(par[-(1:((nc+1)*d))], n, nc))
    Y <- B%*%C%*%U
    dB <- exp(Y)%*%t(C%*%U)-xx%*%t(C%*%U)
    dU <- t(B%*%C)%*%exp(Y)-t(B%*%C)%*%xx
    c(dU,dB[,-1])
  }

  par <- optim(1e-4*rnorm((nc+1)*d+n*nc), loss, dloss, method='L-BFGS-B', control=list(maxit=10000))$par
  U <- matrix(par[1:((nc+1)*d)], nc+1, d)
  C <- diag(1,nc+1) -1/(nc+1)
  B <- cbind(1,matrix(par[-(1:((nc+1)*d))], n, nc))
  list(U=(C%*%U)[-1,],B=B[,-1],Y=B%*%C%*%U)
}
