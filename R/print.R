#' Print CAST classes
#' @description Generic print function for trainDI and aoa
#' @name print
#' @param x trainDI object
#' @param ... other params
#' @export

print.trainDI = function(x, ...){
  cat(paste0("DI of ", nrow(x$train), " observation \n"))
  cat(paste0("Predictors:"), x$variables, "\n\n")

  cat("AOA Threshold: ")
  cat(x$threshold)

}


#' @name print
#' @param x trainDI object
#' @param ... other params
#' @export

show.trainDI = function(x, ...){
  print.trainDI(x)
}





#' @name print
#' @param x aoa object
#' @param ... other params
#' @export


print.aoa = function(x, ...){
  cat("DI:\n")
  print(x$DI)

  cat("AOA:\n")
  print(x$AOA)

  cat("\n\nPredictor Weights:\n")

  print(x$parameters$weight)

  cat("\n\nAOA Threshold: ")
  cat(x$parameters$threshold)



}


#' @name print
#' @param x aoa object
#' @param ... other params
#' @export


show.aoa = function(x, ...){
  print.aoa(x)
}

