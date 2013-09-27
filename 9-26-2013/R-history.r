ls()
d = density.ba.biomass_v1_3alb
density <- read.csv("~/git/paleon/data/density.ba.biomass_v1_3alb.csv")
View(density)
library(ggpot2)
library(ggplot2)
qplot(x=x,y=y,data=density, color=log(biomass))
install.packages("maps")
map_data('county')
?map_data
map_data('county') -> cty
names(cty)
cty[1:100,]
head(cty)
?point.in.polygon
data(votes.repub)
head(votes.repub)
votes.repub=NULL
map_data('state')->st
st
head(st)
head(votes.repub)
data(votes.repub)
head(votes.repub)
st = st[,'1948']
colnames(st)
vote = votes.repub[,'1948']
vote
head(st)
map <- ggplot(st, aes(long,lat))
map+geom_polygon()
map
map+geom_polygon()
map <- ggplot(st, aes(long,lat, group=group))
map+geom_polygon()
map = ggplot(st)
map = ggplot(st) + aes(long,lat, group=group) + geom_polygon()
unique(st$region)
tolower("Wes")
names(vote)
tolower(names(vote))
tolower(names(vote)) -> names(vote)
vote[st$region]
unique(st$region)
st$votes = vote[st$region]
pmatch(names(vote), st$region)
head(st,50)
map = ggplot(st) + aes(long,lat, group=group) + geom_polygon(fill=vote)
map = ggplot(st) + aes(long,lat, group=group) + geom_polygon(aes(fill=vote))
names(st)
map = ggplot(st) + aes(long,lat, group=group) + geom_polygon(aes(fill=votes))
st$votes = vote[st$region]
map
map = ggplot(st) + aes(long,lat, group=group) + geom_polygon()+aes(fill=votes)
map
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", limits=range(st$votes, na.rm=TRUE), name='coef')
library(RColorBrewer)
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", limits=range(st$votes, na.rm=TRUE), name='coef')
library(scales)
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", limits=range(st$votes, na.rm=TRUE), name='coef')
map + scale_fill_gradient(low = muted("blue"), mid = "white", high = "orange", limits=range(st$votes, na.rm=TRUE), name='coef')
map + scale_fill_gradient(low = muted("blue"), high = "orange", limits=range(st$votes, na.rm=TRUE), name='coef')
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", limits=range(st$votes, na.rm=TRUE), name='coef')
range(st$votes, na.rm=TRUE)
range(st$votes)
map + scale_fill_gradient(low = muted("blue"), mid = "white", high = "orange", limits=c(2,62), name='coef')
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", limits=c(2,62), name='coef')
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", limits=c(2,62), name='coef', midpoint=25)
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", limits=c(2,62), name='coef', midpoint=50)
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", name='coef', midpoint=50)
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", name='coef', midpoint=30)
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", name='coef', midpoint=30) + coord_map(project='globular')
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", name='Republican share', midpoint=30) + coord_map(project='globular')
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", name='Republican\nshare', midpoint=30) + coord_map(project='globular')
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", name='Republican\nshare', midpoint=30)  + coord_map("ortho", orientation=c(41, -74, 0))
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", name='Republican\nshare', midpoint=30)  + coord_map("ortho", orientation=c(41, -120, 0))
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", name='Republican\nshare', midpoint=30)  + coord_map("ortho", orientation=c(90, -120, 0))
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", name='Republican\nshare', midpoint=30)  + coord_map("ortho", orientation=c(40, 190, 0))
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", name='Republican\nshare', midpoint=30)  + coord_map("ortho", orientation=c(40, 90, 0))
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", name='Republican\nshare', midpoint=30)  + coord_map("ortho", orientation=c(40, 60, 0))
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", name='Republican\nshare', midpoint=30)  + coord_map("ortho", orientation=c(40, 190, 0))
cities = matrix(c(43.1, -89.4),nrow=1)
cities=rbind(cities, c(35.9728, -83.9422))
colnames(cities) = c('lat', 'long')
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", name='Republican\nshare', midpoint=30)  + coord_map("ortho", orientation=c(40, 190, 0)) + geom_point(aes(long, lat),data=cities)
cities = as.data.frame(cities)
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", name='Republican\nshare', midpoint=30)  + coord_map("ortho", orientation=c(40, 190, 0)) + geom_point(aes(long, lat),data=cities)
map
map + geom_point(aes(long, lat),data=cities)
ggplot(st)->m2
str(map)
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", name='Republican\nshare', midpoint=30)  + coord_map("ortho", orientation=c(40, 190, 0)) + geom_point(aes(long, lat))
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", name='Republican\nshare', midpoint=30)  + coord_map("ortho", orientation=c(40, 190, 0)) + geom_point(aes(long, lat), data=cities)
map + scale_fill_gradient2(low = muted("blue"), mid = "white", high = "orange", name='Republican\nshare', midpoint=30)  + coord_map("ortho", orientation=c(40, 190, 0)) + geom_point(aes(long, lat))
savehistory("~/git/wisc-viz/9-26-2013/R-history.r")
