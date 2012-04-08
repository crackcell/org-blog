#'
#' Copyright (c) 2012, Menglong Tan <tanmenglong@gmail.com>
#'
#' This program is free software; you can redistribute it
#' and/or modify it under the terms of the GPL licence
#'
#'
#' @file life_game.R
#' @author crackcell <tanmenglong@gmail.com>
#' @date Wed Apr  4 17:29:29 2012
#' @brief Life Game implemented by R
#'

InitWorld <- function(nrow, x) {
    #' @brief produce a n*m matrix with x bacteria
    #'
    #' @author Menglong Tan
    #' @param a description
    #' @return a n*m matrix with bacteria
    #' @callGraphPrimitives
    x <- ifelse(x > nrow * nrow, nrow * nrow, x)
    matrix.slots <- rep(0, nrow * nrow)
    for (i in sample(1 : (nrow * nrow), x,
                     replace = FALSE)) {
        matrix.slots[i] = 1
    }
    print(matrix.slots)
    return(matrix(data = matrix.slots, nrow = nrow, ncol = nrow))
}

InitPlot <- function(world) {
    #' @brief description
    #'
    #' @author Menglong Tan
    #' @param a description
    #' @return return blabla
    #' @callGraphPrimitives
    plot(c(1 : nrow(world)), c(1 : nrow(world)),
         type = 'n', xlab = '', ylab = '')
}

PlotWorld <- function(world) {
    #' @brief Plot world matrix in a scatter plot
    #'
    #' @author Menglong Tan
    #' @param a description
    #' @return return blabla
    #' @callGraphPrimitives
    for (x in 1 : nrow(world)) {
        for (y in 1 : nrow(world)) {
            if (world[x, y] == 1) {
                points(x, y)
            }
        }
    }
}

GetNeighbourNum <- function(world, x, y) {
    #' @brief Get number of neighbours
    #'
    #' @author Menglong Tan
    #' @param world matrix of the world
    #' @return number of beighbours
    #' @callGraphPrimitives

    left.corner.x <- ifelse(x == 1, 1, x - 1)
    left.corner.y <- ifelse(y == 1, 1, y - 1)
    right.corner.x <- ifelse(x == nrow(world), nrow(world), x + 1)
    right.corner.y <- ifelse(y == ncol(world), ncol(world), y + 1)

    count <- 0
    for (i in left.corner.x : right.corner.x) {
        for (j in left.corner.y : right.corner.y) {
            if (i == x && j == y) {
                next
            }
            if (world[i, j] == 1) {
                count <- count + 1
            }
        }
    }
    return(count)
}

Reproduce <- function(world) {
    #' @brief description
    #'
    #' @author Menglong Tan
    #' @param a description
    #' @return return blabla
    #' @callGraphPrimitives
    for (i in 1 : nrow(world)) {
        for (j in 1 : ncol(world)) {
            n <- GetNeighbourNum(world, i, j)
#            print(paste("[", i, ",", j, "]=", n))
            if (world[i, j] == 1) {
                if(n == 2 || n == 3) {
                    next
                }
                if (n < 2 || n > 3) {
                    world[i, j] = 0
                }
            } else {
                if (n == 3) {
                    world[i, j] = 1
                }
            }
        }
    }
    return(world)
}

IsAllDead <- function(world) {
    #' @brief description
    #'
    #' @author Menglong Tan
    #' @param a description
    #' @return return blabla
    #' @callGraphPrimitives
    for (i in 1 : nrow(world)) {
        for (j in 1 : ncol(world)) {
            if (world[i, j] == 1) {
                return(FALSE)
            }
        }
    }
    return(TRUE)
}

world <- (InitWorld(4,4))
count <- 1
while (1) {
    InitPlot(world)
    PlotWorld(world)
    print(paste("generation: ", count))
    if (IsAllDead(world)) {
        print("all dead")
        break
    }
    Sys.sleep(1)
    world <- Reproduce(world)
    count <- count + 1
}
