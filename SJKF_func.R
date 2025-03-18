
#' San Joaquin Kit Fox weights and home ranges ( an almost correct function)
#' Created by Jessica Copeland 
#'
#' @param W is weight of the fox in pounds. 
#' @param G is gender of the fox. The only options are: 1 for female, 2 for male
#' @param HR_minimum is the minimum home range size of the fox in meters, in this case always 1000. #
#' @returns HR_indiv  The home range for the individual


SJKF_range=function(W,G,HR_minimum=1000,HR_indiv) {
  
  if(W<0) W=NA # Weight should not be less than zero
  
  # Using ifelse() to set NA for values that are not 1 or 2
  G <-ifelse(G != 1 & G != 2, NA, G)
  
  #    return("Home range cannot be less than 0")
  if (HR_minimum < 0) return("Home range cannot be less than 0")
  
  # Calculate the home range of the individual SJKF 
  result <- (W * G) + HR_minimum
  
  return(result)
}