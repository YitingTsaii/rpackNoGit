# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

hello <- function() {
  print("Hello, world!")
}

#' My Function Title
#'
#' A more detailed description of what `my_function` does.
#'
#' @param arg1 Description of the first argument.
#' @param arg2 Description of the second argument, including its default value.
#' @return Description of the value returned by the function.
#' @examples
#' my_function(10, "hello")
#' my_function(5)
my_function <- function(arg1, arg2 = "default_value") {
  # Function body
  result <- arg1 + nchar(arg2)
  return(result)
}

#' Add two numbers
#'
#' This functions add two integers.
#'
#' @param arg1 First integer.
#' @param arg2 Second integer.
#' @return The sum of two integers.
#' @examples
#' add_two(10, 11)
add_two <- function(arg1, arg2) {
  result <- arg1 + arg2
  return(result)
}

#' Add three numbers
#'
#' This functions add three integers.
#'
#' @param arg1 First integer.
#' @param arg2 Second integer.
#' @param arg3 Third integer.
#' @return The sum of three integers.
#' @examples
#' add_three(10, 11, 12)
#' @export
add_three <- function(arg1, arg2, arg3) {
  result <- add_two(arg1, arg2) + 2*arg3
  return(result)
}

#' Multiply two numbers
#'
#' This function mutipies two integers.
#'
#' @param arg1 First integer.
#' @param arg2 Second integer.
#' @return The product of two integers.
#' @examples
#' multiply_two(10, 11)
multiply_two <- function(arg1, arg2) {
  result <- arg1 * arg2
  return(result)
}

#' Multiply three numbers
#'
#' This function mutipies three integers.
#'
#' @param arg1 First integer.
#' @param arg2 Second integer.
#' @param arg3 Third integer.
#' @return The product of three integers.
#' @examples
#' multiply_three(10, 11, 12)
#' @export
multiply_three <- function(arg1, arg2, arg3) {
  result <- multiply_two(arg1, arg2) * arg3
  return(result)
}

#' Test importing by functions
#'
#' This function generate a tree using rcoal() and return if the tree is rooted
#'
#' @param ntip Number of tips
#' @return If the tree is rooted.
#' @examples
#' has_root(10)
#' @importFrom ape rcoal is.rooted
#' @export
has_root <- function(ntip) {
  t <- rcoal(ntip)
  return(is.rooted(t))
}

#' Test importing by package
#'
#' This function generate a tree using rcoal() and return the Fmat
#'
#' @param ntip Number of tips
#' @return F-matrix.
#' @examples
#' generate_Fmat(10)
#' @import phylodyn
#' @export
generate_Fmat <- function(ntip) {
  return(gen_Fmat(rcoal(ntip)))
}
