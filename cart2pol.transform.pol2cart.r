#sometimes I need to transform a sector shaped 2 dimensional data into a more squred-shaped data filling a full quadrant with sector-shaped data
#for example in this example, all records have a y >= x


x<-read.table(text='             x           y
1   303.383585 303.008542
2    22.397969   63.137367
3   295.100147  881.090404
4    61.591664  404.778041
5   121.767693  831.207769
6    31.757544  177.822725
7     4.464287    8.182638
8   161.864804  406.855373
9  1129.334345 4095.368613
10   83.043891  178.568491',header=T)


#code for cart2pol and pol2cart, transforming circle sector to square

require(useful)

plot(x$x,x$y)

transform<-cart2pol(unlist(x[1]),unlist(x[2]))

transform$theta1<-(transform$theta-pi/2)+transform$theta

cartesian<-pol2cart(transform$r,transform$theta1)

plot(cartesian$x,cartesian$y)


#draft
