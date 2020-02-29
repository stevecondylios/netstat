

# RStudio: https://github.com/rstudio/hex-stickers
# hexbin: http://hexb.in/
# hexbin github: https://github.com/maxogden/hexbin
# make stickers with: https://github.com/GuangchuangYu/hexSticker


# Note the hexbin github readme says to use
# 181x209 as a png (preview on mac can easily resize)
# and also provide an svg
# I used this to convert png to svg: https://www.aconvert.com/image/png-to-svg/


# https://coolors.co/193763-f4f4f4-00173d-ff5a5f-c81d25







sticker(

  # image
  "man/figures/zak.jpg", # https://unsplash.com/photos/7wBFsHWQDlk
  s_x=1, # slightly to right to appear centered
  s_y=1,
  s_width=1.5,
  s_height=1.5,
  white_around_sticker = T,

  # package name
  package="netstat",
  p_size=9.5,
  p_color = "ivory", # 00030A 010101 #383838
  p_y = 1.475,

  # Output file
  filename="man/figures/netstat.png",

  # Background colour
  h_fill = "#F0F0F0", # #F0F0F0


  # Border
  # Grey colours: https://www.w3schools.com/colors/colors_shades.asp
  h_color = "#30287F",   # 3F4243 7F2B94 3B2691 4238AF
  # h_size = 1.5,

  dpi = 1000 # otherwise the final fantasy image quality is not good
);system("open man/figures/netstat.png")













library(ggplot2)
library(hexSticker)

p <- ggplot(aes(x = mpg, y = wt), data = mtcars) + geom_point()
p <- p + theme_void() + theme_transparent()

sticker("man/figures/wat.png", package="hexSticker", p_size=8, s_x=1, s_y=.75, s_width=1.3, s_height=1,filename="test.png",
        white_around_sticker = T)
system("open test.png")


























