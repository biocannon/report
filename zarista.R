Zarista <- read.csv("Zarista.csv", header = T)
Zarista$Datum <- as.Date(Zarista$Datum, format = "%d/%m/%Y")
scenario<- ggplot(Zarista, aes(Datum, Broj)) +
    geom_line(aes(colour = factor(Zemlja)), size = 1.5) +
    theme_bw() + 
    scale_fill_brewer(palette = "Spectral") + 
    scale_color_manual(values = c("#d55e00", "#cc79a7","#0072b2", "#f0e442", "#009e73", "#000000")) +
    scale_y_log10() +
    labs(x = "Datum", 
         y = "log10 broja pozitivnih na milion stanovnika") + 
    annotate(geom="text", x = as.Date("2020-03-15"), #Francuska
             y = 67, label = "O", col = "#d55e00", 
             fontface = "bold", size = 8) +
    annotate(geom="text", x = as.Date("2020-03-09"), #Italija
             y = 122, label = "O", col = "#cc79a7", 
             fontface = "bold", size = 8) +
    annotate(geom="text", x = as.Date("2020-03-16"), #Nemacka
             y = 58, label = "O", col = "#0072b2", 
             fontface = "bold", size = 8) +
    annotate(geom="text", x = as.Date("2020-03-14"), #Spanija
             y = 90, label = "O", col = "#f0e442", 
             fontface = "bold", size = 8) +
    annotate(geom="text", x = as.Date("2020-03-14"), #Srbija
             y = 5, label = "O", col = "#009e73", 
             fontface = "bold", size = 8) +
    annotate(geom="text", x = as.Date("2020-03-13"), #Svajcarska
             y = 100, label = "O", col = "#000000", 
             fontface = "bold", size = 8)



ggplotly(scenario) 