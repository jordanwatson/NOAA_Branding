library(ggplot2)


# Blues (the fourth one is just white)
OceansBlue1='#0093D0'
OceansBlue2='#0055A4'
OceansBlue3='#00467F'
OceansBlue4='#FFFFFF'

#  Teals (the fourth one is a grey)
WavesTeal1='#1ECAD3'
WavesTeal2='#008998'
WavesTeal3='#007078'
WavesTeal4='#E8E8E8'

#  Greens (the fourth one is a grey)
SeagrassGreen1='#93D500'
SeagrassGreen2='#4C9C2E'
SeagrassGreen3='#007934'
SeagrassGreen4='#D0D0D0'

#  Purples (the fourth one is a grey)
UrchinPurple1='#7F7FFF'
UrchinPurple2='#625BC4'
UrchinPurple3='#575195'
UrchinPurple4='#9A9A9A'

#  Oranges (the fourth one is a grey)
CrustaceanOrange1='#FF8300'
CrustaceanOrange2='#D65F00'
CrustaceanOrange3='#BC4700'
CrustaceanOrange4='#7B7B7B'

#  Reds (the fourth one is a gray)
CoralRed1='#FF4438'
CoralRed2='#D02C2F'
CoralRed3='#B2292E'
CoralRed4='#646464'



#  To see the above colors plotted, run the below code
palette <- data.frame(category=c('OceansBlue','OceansBlue','OceansBlue','OceansBlue',
                                 'WavesTeal','WavesTeal','WavesTeal','WavesTeal',
                                 'SeagrassGreen','SeagrassGreen','SeagrassGreen','SeagrassGreen',
                                 'UrchinPurple','UrchinPurple','UrchinPurple','UrchinPurple',
                                 'CrustaceanOrange','CrustaceanOrange','CrustaceanOrange','CrustaceanOrange',
                                 'CoralRed','CoralRed','CoralRed','CoralRed'),
           code=c('#0093D0','#0055A4','#00467F','#FFFFFF',
                  '#1ECAD3','#008998','#007078','#E8E8E8',
                  '#93D500','#4C9C2E','#007934','#D0D0D0',
                  '#7F7FFF','#625BC4','#575195','#9A9A9A',
                  '#FF8300','#D65F00','#BC4700','#7B7B7B',
                  '#FF4438','#D02C2F','#B2292E','#646464'),
           group=rep(1:4,6))

pdf("NOAA_Fisheries_Colors.pdf")
ggplot(palette,aes(category,group)) + 
  geom_point(col=palette$code,size=25,shape=15) + 
  theme_bw() + 
  theme(axis.text=element_blank(),
        axis.title=element_blank(),
        panel.grid = element_blank()) +
  ylim(0.5,4.5) + 
  geom_text(aes(category,group,label=paste0(category,group)),size=2)
dev.off()
