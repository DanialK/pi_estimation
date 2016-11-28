library(ggplot2)
trials <- 1000000

r <- 1
x <- runif(trials, 0, r)
y <- runif(trials, 0, r)

distance_from_center <- sqrt(x^2 + y^2)
inbounds <- distance_from_center < r


ggplot(data.frame(x, y, inbounds), aes(x, y, color=inbounds)) +
  theme_bw() +
  ggtitle(paste(round(trials), 'Trials')) +
  guides(color=FALSE) +
  geom_point(size=0.002) +
  ggtitle(paste(trials, 'Trials'))

pi_estimate <- 4 * sum(inbounds)/trials
pi_estimate

error = 1 - pi_estimate/pi
error


