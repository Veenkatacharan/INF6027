
# **News Category Coverage Analysis**

## **Project Overview**
This project examines the coverage of hierarchical news categories across various news sources using the **MN-DS-news-classification.csv** dataset. The analysis aims to identify editorial patterns, disparities in coverage, and hierarchical category priorities among publishers.

### **Research Questions**
1. Which categories are the most and least covered by specific news sources?
2. How do the coverage priorities of hierarchical categories differ across diverse news sources?

By answering these questions, the project provides insights into editorial focus and thematic representation in news media, highlighting biases and gaps in coverage.

---

## **Methodology**
### **Data Preprocessing**
- **Inspection of Categories**: Identified unique values in `category_level_1` and `category_level_2`.
- **Defining Valid Categories**: Retained a predefined whitelist of valid categories to filter irrelevant data.
- **Cleaning and Standardization**: Handled missing values, standardized category labels, and filtered data to ensure consistency.

### **Analysis**
- **Summarizing Coverage**: Grouped data by news source and hierarchical categories to quantify article counts.
- **Identifying Most/Least Covered Categories**: Extracted the categories with the highest and lowest article counts for each source.
- **Visualizations**: Created horizontal bar charts, pie charts, and comparative bar graphs for selected news sources.

### **Key Findings**
- **Most Covered Category**: Politics dominates coverage across multiple news outlets.
- **Underrepresented Categories**: Topics such as health and environment receive significantly less coverage.
- **Hierarchical Insights**: Broad categories (e.g., politics) are further analyzed through detailed subcategories, while underrepresented categories lack such depth.

---

## **Project Structure**
- **Data**: Cleaned dataset saved as `Filtered_News_Dataset.csv`.
- **Scripts**:
  - `data_cleaning.R`: Preprocessing and cleaning the dataset.
  - `analysis.R`: Analyzing category coverage and summarizing results.
  - `visualizations.R`: Creating visualizations (bar charts, pie charts).
- **Outputs**: Visualizations and summary tables.

---

## **Getting Started**

### **Prerequisites**
- Install R and RStudio.
- Install the following R packages: `dplyr`, `stringr`, `ggplot2`, and `tidyr`.

### **Instructions**
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/INF6027-News-Analysis.git
   cd INF6027-News-Analysis
   ```

2. **Install Required R Packages**:
   Open RStudio and run:
   ```R
   install.packages(c("dplyr", "stringr", "ggplot2", "tidyr"))
   ```

3. **Run the Preprocessing Script**:
   - Open `data_cleaning.R` in RStudio.
   - Run the script to clean the dataset and save the output as `Filtered_News_Dataset.csv`.

4. **Run the Analysis and Visualization Scripts**:
   - Open `analysis.R` and run the script to generate summary tables.
   - Open `visualizations.R` and run the script to create the bar and pie charts.

---

## **Outputs**
### **Visualizations**
1. **Horizontal Bar Chart**: Overall category coverage by all news sources.
2. **Pie Chart**: Proportion of articles across categories.
3. **Bar Chart**: Most and least covered categories for selected news sources (e.g., CNN, BBC).

### **Tables**
- Summary of most and least covered categories for each news source.
- Aggregate coverage by hierarchical categories (`category_level_1` and `category_level_2`).

---

## **References**
- **Dataset**: MN-DS-news-classification.csv.
- Boykoff, M. T. (2011). *Who Speaks for the Climate?*
- Pew Research Center. (2020). *News Consumption Across Social Media in 2020*.
