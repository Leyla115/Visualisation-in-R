Overview

This project demonstrates how to load, clean, transform, and visualize time series data using R. The dataset is imported from a public URL, preprocessed for analysis, and visualized using ggplot2 with customized aesthetics.

Steps in the Analysis
1. Data Import and Exploration

Loads a dataset from a public online source.

Uses dplyr to explore the structure of the data and summarize its contents.

Converts relevant columns into appropriate data types (e.g., converting character values to numeric).

Checks for missing values and verifies data integrity.

2. Data Preparation

Converts the date column into a proper Date format using the lubridate package.

Ensures the dataset is clean and ready for visualization.

3. Visualization 1 – Basic Plot

Creates a scatter and line plot showing changes in values over time.

Uses color and fill to distinguish between data types.

Saves the plot as plot1.png.

4. Visualization 2 – Customized Plot

Builds an enhanced version of the first plot with detailed titles, subtitles, and captions.

Customizes color schemes, axis labels, and date formatting for improved readability.

Rotates x-axis labels for better visibility and hides redundant axis titles.

Saves the final visualization as plot2.png.

Tools and Packages Used

dplyr – for data manipulation and summary

lubridate – for handling and formatting date variables

ggplot2 – for creating visualizations

Output

The project produces two output visualizations:

plot1.png — A basic time series plot by type.

plot2.png — A more detailed, publication-ready version with customized labels and styles.
