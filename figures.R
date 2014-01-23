# Load libraries
library(foreign)
library(methods)
library(ggplot2)

# Load data
grades <- read.dta("Data/data.dta")

# Plot data
p1 <- ggplot(grades, aes(x=female, y=read))
p1 <- p1 + geom_violin(aes(fill=female)) + geom_point(alpha=0.1) + 
  theme_bw() + scale_fill_manual(values=c("#4daf4a", "#ff7f00"), guide=FALSE) + 
  labs(x=NULL, y="Reading score\n", title="Reading scores by gender\n")

p2 <- ggplot(grades, aes(x=female, y=math))
p2 <- p2 + geom_violin(aes(fill=female)) + geom_point(alpha=0.1) + 
  theme_bw() + scale_fill_manual(values=c("#4daf4a", "#ff7f00"), guide=FALSE) + 
  labs(x=NULL, y="Math score\n", title="Math scores by gender\n")

p3 <- ggplot(grades, aes(x=math, y=read))
p3 <- p3 + stat_smooth(method="loess", se=TRUE, colour="darkblue", size=1, fill="yellow") +
  geom_point(aes(colour=female), size=2) + 
  labs(x="\nMath score", y="Reading score\n", title="Math and reading scores\n") + 
  scale_colour_manual(values=c("#4daf4a", "#ff7f00"), name="Gender", labels=c("Male", "Female")) + 
  theme_bw()

# Save the plots as PDFs
ggsave(plot=p1, filename="Output/plot1.pdf", width=7, height=5, units="in")
ggsave(plot=p2, filename="Output/plot2.pdf", width=7, height=5, units="in")
ggsave(plot=p3, filename="Output/plot3.pdf", width=7, height=5, units="in")
