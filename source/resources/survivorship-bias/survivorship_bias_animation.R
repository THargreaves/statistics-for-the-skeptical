# code for producing the animation in section 'Survivorship Bias in Action'
# of the blog post statisticsfortheskeptical.com/survivorship_bias/

# imports
library(dplyr)
library(gganimate)
library(ggplot2)

# set seed for reproducibility
set.seed(12)

# parameters
NUM_PER_YEAR = 25

# simulate guitar manufactory
guitars <- tibble(
  id = 1:(61 * NUM_PER_YEAR),
  original_year = rep(1960:2020, each = NUM_PER_YEAR),
  # log-normal is a good model for quality of guitars
  original_quality = rlnorm(61 * NUM_PER_YEAR, sdlog = 0.5)
) %>%
  # remove outliers to tidy up plot
  filter(original_quality <= quantile(original_quality, 0.99))

# simulate degradation
guitars <- guitars %>%
  # cross join with years
  mutate(dummy = 0) %>%
  full_join(
    tibble(current_year = rep(1960:2020), dummy = 0), 
    by = 'dummy') %>%
  select(-dummy) %>%
  filter(current_year >= original_year) %>%
  # log-normal is also a good model for degredation
  mutate(degradation = rlnorm(nrow(.), -3.2, 0.5)) %>%
  group_by(id) %>%
  mutate(cumulative_degradation = cumsum(degradation)) %>%
  ungroup() %>%
  mutate(current_quality = original_quality - cumulative_degradation) %>%
  select(-degradation, -cumulative_degradation) %>%
  # quality of zero represents the end of life for a guitar
  filter(current_quality > 0)

# create animation
p <- ggplot(guitars, aes(x = original_year, y = original_quality)) +
  geom_vline(data = tibble(current_year = 1960:2020), 
             aes(xintercept = current_year), col = '#414141') +
  geom_point(aes(size = current_quality, group = id),
             fill = '#ff9800', col = 'black', shape = 21, alpha = 0.5) +
  scale_x_continuous(breaks = seq(1960, 2020, length.out = 7),
                     minor_breaks = seq(1960, 2020, length.out = 13)) +
  scale_size_area() +
  labs(
    x = "Year of Production",
    y = "Original Quality",
    size = "Current Quality"
  ) +
  theme_minimal(base_size = 16) +
  theme(
    axis.text.y = element_blank(),
    legend.position = 'none',
    legend.text = element_blank()
  ) + 
  transition_time(current_year) +
  enter_fade()
anim <- animate(p, nframes = 600, fps = 30, type = 'cairo',
        renderer = ffmpeg_renderer(), height = 355, width = 640)
anim_save("survivorship_bias_animation.mp4", animation = anim)
