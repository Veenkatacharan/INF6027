# Create a bar chart with colors
ggplot(category_summary_aggregated, aes(x = reorder(category_level_1, article_count), y = article_count, fill = category_level_1)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  scale_fill_manual(values = c(
    "sport" = "#1f78b4",
    "society" = "#33a02c",
    "politics" = "#e31a1c",
    "health" = "#ff7f00",
    "environment" = "#6a3d9a",
    "science and technology" = "#b15928",
    "economy, business and emergency incident" = "#a6cee3",
    "crime, law and justice" = "#fb9a99",
    "arts, culture, entertainment and media" = "#fdbf6f",
    "disaster, accident and emergency incident" = "#cab2d6",
    "education" = "#ffff99",
    "religion and belief" = "#1f78b4",
    "conflict, war and peace" = "#b2df8a",
    "weather" = "#33a02c"
  )) +
  labs(title = "Category Coverage by News Source",
       x = "Category",
       y = "Number of Articles") +
  theme_minimal() +
  theme(legend.position = "none")

---------------------------
  Pie Chart :
  
  library(ggplot2)

# Aggregate data for category proportions
category_proportions <- category_summary_aggregated %>%
  mutate(percentage = (article_count / sum(article_count)) * 100)

# Create the pie chart
ggplot(category_proportions, aes(x = "", y = article_count, fill = category_level_1)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  labs(title = "Proportion of Articles by Category", x = NULL, y = NULL) +
  theme_void() + # Remove unnecessary grid and axes
  scale_fill_brewer(palette = "Set3")
--------------------------------
  Bar graph:
  
  library(tidyr)

# Manually select the 7 news channels
selected_sources <- c("abcnews", "aljazeera", "bbc", "buzzfeed", "cnn", "foxnews", "msnbc")

# Filter most_least_categories for the selected sources
selected_data <- most_least_categories %>%
  filter(source %in% selected_sources)

# Transform data for visualization (to stack most and least covered categories)
selected_data_long <- selected_data %>%
  pivot_longer(cols = c(most_covered, least_covered),
               names_to = "coverage_type",
               values_to = "category")

# Create the bar chart for the 7 selected news channels
ggplot(selected_data_long, aes(x = source, fill = coverage_type)) +
  geom_bar(aes(y = ifelse(coverage_type == "most_covered", max_count, -min_count)),
           stat = "identity", position = "dodge") +
  scale_y_continuous(labels = abs) + # Show positive labels on y-axis
  labs(title = "Most and Least Covered Categories by Selected News Sources",
       x = "News Source",
       y = "Number of Articles",
       fill = "Coverage Type") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) # Rotate x-axis labels
