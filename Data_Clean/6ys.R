

ggplot(data=data) +
  geom_smooth(mapping = aes(x = knots, y = baro))

ggplot(data=data) +
  geom_smooth(mapping = aes(x = months, y = baro, group = temp))

ggplot(data=data) +
  geom_smooth(
    mapping = aes(x = knots, y = baro, color = '#086314'),
    show.legend = FALSE)

