library(tidyverse)
library(fs)
library(magick)

dir_ls("img/")

bike <- image_read("img/api-bike.png")

bike_draw <- bike |> 
  image_resize(350) |> 
  image_draw()
rect(-1,-1,350,350, col = "white")
dev.off()

bike_draw |> 
  image_composite(bike, gravity = "center") |> 
  image_write("test.png")

get_img_resize <- function(img){
  
  raw_img <- image_read(img)
  
  img_draw <- raw_img |> 
    image_resize(350) |> 
    image_draw()
  rect(-1,-1,350,350, col = "white")
  dev.off()
  
  img_draw |> 
    image_composite(raw_img, gravity = "center") |> 
    image_write(glue::glue("white-{fs::path_file(img)}"))
  
}
dir_ls("img/") |> 
  map(get_img_resize)

