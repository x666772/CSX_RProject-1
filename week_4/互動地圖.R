#install.packages("leaflet")
library(ggplot2)
library(maps)
library(ggmap)
library(leaflet)

m <- leaflet()
at <- addTiles(m)
addMarkers(at,lng=121.549767, lat=25.051346, popup="這裡是小巨蛋")

#leaflet()%>%addTiles()%>%addMarkers(lng=121.549767, lat=25.051346, popup="這裡是小巨蛋")


m<- leaflet()
m<- setView(m,lng=121,lat=24.5,zoom=9)
addTiles(m)


df = data.frame(
  lat = runif(100,min=0,max=70),
  lng = runif(100,min=0,max=160),
  size = runif(100, 5, 10),
  co = substr(rainbow(100),1,7)
)
m <- leaflet(data=df)
m<- addTiles(m)
addCircleMarkers(m,lng=~lng,lat=~lat,radius = ~size, color = ~co, fill = TRUE)

