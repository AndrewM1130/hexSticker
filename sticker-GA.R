## required packages
library(magick)
library(dplyr)
library(hexSticker)


## basic image processing
img <- image_read("figures/gene.jpeg")

res <- img %>%
  image_convert("png") %>%
  image_resize("1080 x 200")%>%
  image_fill(color="#062047", point="+45")

## wrap in plot to preview ie plot(sticker(...))
final_res<-sticker(res, package="GA", p_size = 15,
                   p_y = 1.5,
                   s_x=1, s_y=0.8, s_width=1.1,
                   s_height = 14,
                   filename="figures/stickerSample.png",
                   h_fill="#062047",
                   h_color = "#062047")

plot(final_res)

