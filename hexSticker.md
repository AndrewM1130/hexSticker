---
output:
  pdf_document: 
    keep_md: yes
urlcolor: blue
---



# On the creation of hexStickers for published R packages

When developing and publishing an R package, one may be interested in the creation of hexStickers. What are hexStickers? They seem to be at the backbone of any large package in R, yet they are elusive in their design and creation - it almost seems like a <strong>right of passage</strong> to engender an unique and creative hexSticker to accompany the deployment of your package. I hope that this blog post will allow

The purpose of this article is to provide a couple of concrete examples surrounding the creation of unique hexagonal package identifiers with the 'hexStickers' package. Code and further examples can be found at this repository: https://github.com/AndrewM1130/hexSticker. 
  
## 1. Create or download background image for sticker
  

```r
## required packages
library(magick)
#> Linking to ImageMagick 6.9.12.3
#> Enabled features: cairo, fontconfig, freetype, heic, lcms, pango, raw, rsvg, webp
#> Disabled features: fftw, ghostscript, x11
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
library(hexSticker)
```
  
## 2. Basic Image Processing
  

```r
img <- image_read("figures/gene.jpeg")

res <- img %>%
  image_convert("png") %>%
  image_resize("1080 x 200")%>%
  image_fill(color="#062047", point="+45")

res
```


\includegraphics[width=1\linewidth]{hexSticker_files/figure-latex/unnamed-chunk-3-1} 

## 3. Building the sticker itself 
  

```r
final_res <- sticker(res, package="GA", p_size = 15,
                   p_y = 1.5,
                   s_x=1, s_y=0.8, s_width=1.1,
                   s_height = 14,
                   filename="figures/stickerSample.png",
                   h_fill="#062047",
                   h_color = "#062047")
```
  
## 4. Export and save the sticker
  

```r
plot(final_res)
```


\includegraphics[width=1\linewidth]{hexSticker_files/figure-latex/unnamed-chunk-5-1} 
  
## Gallery

  Below are a couple of interesting hexStickers that I have created for personal projects - I am confident that this is only a shallow dive into the creation of these stickers. For further research, I would suggest diving deeper into the image-altering functions within the 'magick' pacakge. 
