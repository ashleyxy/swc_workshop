#notes from software carpentry worshop 1.18.17
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "gapminder-FiveYearData.csv")
gapminder <- read.csv("gapminder-FiveYearData.csv")
head(gapminder)
colnames(gapminder)
str(gapminder)
summary(gapminder)
View(gapminder)
gapminder[, 3]
gapminder[, "pop"]
gapminder[, c("country", "year", "pop")]
is_long_lifeExp <- gapminder$lifeExp > 80
head(is_long_lifeExp)
gapminder[is_long_lifeExp, ]
gapminder[is_long_lifeExp, 2007]
gapminder$lifeExp 2007
is_long_lifeExp <- gapminder$Africa
gapminder[, c("Africa", "2007", "lifeExp")]



# African countries' life expectancies for 2007
is_2007 <- gapminder$year == 2007
is_Africa <- gapminder$continent == "Africa"
africa_2007 <- gapminder[is_2007 & is_Africa, c("country", "lifeExp")]
o <- (africa_2007$lifeExp)
africa_2007[o, ]



ggplot(data=gapminder, aes(x = year, y = lifeExp, by = country, color = continent)) + geom_line geo_point()
