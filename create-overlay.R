library(magick)

# read the bike img in and get it's dims
raw_bike <- image_read("bike-share.png")
bike_info <- image_info(raw_bike)

# draw the img and then add a full size 
# partially transparent rectangle over it
bike_overlay <- image_draw(raw_bike)
rect(0,0,bike_info$width,bike_info$height, col = "#00000060")
dev.off()

# write it out
bike_overlay |> 
  image_write("bike-hero.png")
