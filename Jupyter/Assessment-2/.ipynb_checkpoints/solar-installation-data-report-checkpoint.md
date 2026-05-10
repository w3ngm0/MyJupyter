# Solar Energy Installation Analysis 

**Author(s):** [Kelden Wangmo]  
**Date:** [01/04/2026]

**Data restrictions:**  
[This analysis uses sensitive internal datasets provided by Australian Renewable Energy Agency (ARENA).ARENA is interested in understanding  the factors influencing
solar energy adopt on across different states and territories in Australia. All data and copyright being used belong to ARENA.]

[All data remains the property of ARENA and is restricted to analytical and reporting purposes within the organisation. 
The data set includes postcode-level solar installation records, state/territory identifiers, and population estimates. This datasets are also 
provided by the Australian Bureau of Statistics (ABS).]

---

## Executive summary

[Provide a concise overview of the analysis. Summarise the key findings, the analytical methods applied, and the main recommendations. Keep to a maximum of 250 words, using clear and plain language suitable for a non-technical audience.]

[This report analysis examines solar energy adoption across Australian states and territories from 2011 to 2025. 
By integrating solar capacity data, installation quantities and population statistics, the study provides a comprehensive view of how solar uptake has evolved over time and how 
adoption differs across regions.]

[The methodology includes data cleaning, reshaping wide monthly datasets into annual formats and merging multiple sources to standardise results by population to make a fair cross-state 
comparison. Key findings show that there is a strong growth in solar installations nationwide, with particularly high solar adoption in states such as South Australia, Queensland and Western Australia.
Population standardised metrics show that smaller jurisdictions often outperform larger states when comparing solar uptake relative to population size.]

[This analysis supports ARENA's strategic planning by identifying regions with high adoption of solar installations, areas with slower growth in this momentum and potential demographic of policy factors
influencing uptake.]
---

## Introduction

- **Objectives:** To analyse solar installation and capacity trends across Australian states and territories with their population. 
- **Approach:** Clean and standardise multiple datasets. Visualise trends and compare adoption across regions. 
- **Scope and restrictions:** Timeframe scope of 2011 Jan - 2025 July. Geographically only includes Australia (all States/Territories). Also has Post-code levels installations aggregated to state/territory  level. 
- **Limitations**: Population estimates rely on Annual ABS data. 


---

## Methodology
1. Data Extraction 
    - Imported solar capacity datasets, installation datasets, and population data 
    - Loaded all files into Pandas for processing. 
2. Data cleaning 
   - Standardised column names across datasets. 
   - Removed irrelevant or outdated columns (e.g. historical 2001-2010 data.)
   - Cleaned date fields and converted to proper datetime format.
   - Checked for missing values and corrected NaT entries. Dropped unnecessary data.
3. Data transformation
   - Converted wide monthly installation data into long format using `melt()`.
   - Extracted year from monthly timestamps. 
   - Aggregated installation counts and capacity values to annual totals.
   - Mapped postcode-level data to state/territory identifiers. 
   - Created population-standardised metrics:
     - Capacity per person 
     - Installation per person 
     - Capacity per 100k people 
     - Installations per 100k people 

### Data sources
- ARENA solar installation dataset (postcode-level monthly data).
- ARENA solar capacity dataset (annual state0level data). 
- ABS population estimates (annual state-level data). 
- All data are only for educational and restricted for internal analytical use. 

### Analytical tools
- Pandas - data cleaning, merging and aggregation.
- NumPy - numerical operations. 
- Matplotlib / Seaborn - visualisation. 
- Jupyter Notebook - analysis environment. 

### Data preparation
- Cleaned and normalised raw data. 
- Reshaped format for tables from wide to long. 
- Aggregated monthly data to yearly for easier readability.
- Merged datasets using consistent keys.
- Generated population standardised indicators. 



---

## Analysis and findings

- Solar capacity and installation numbers increased significantly across all states from 2011-2025.
- Queensland, New South Wales, and Western Australia show highest total intallations.
- South Australia leads in solar adoption, reflecting strong incentives and high household uptake.
- Growth rates vary by state with some states showing early rapid adoption followed by stabilisation.
- Visualisations (bar charts, line graphs, and per state/territory comparisons) support these findings and highlight clear regional differences.
---

## Discussion

- Differences in adoption rates may be influenced by policy incentives, electricity prices, climate conditions, and demographic factors.
- States with higher per‑capita adoption often have strong renewable energy policies or higher household solar suitability.
- ARENA can use these insights to target regions with slower adoption or to evaluate the effectiveness of past initiatives.
- The analysis also highlights the importance of population‑standardised metrics for fair comparison.

---

## Recommendations

- Expand data collection to include socioeconomic variables (income, dwelling type, household size).

- Investigate policy impacts on adoption rates across states.

- Prioritise support for regions with low per‑capita adoption.

- Develop predictive models to forecast future solar uptake.

- Improve postcode‑level granularity for more targeted analysis.

---

## References

```text
Datasets used 
|   Source    |    Title                                              | File format  | URL         
|-------------|-------------------------------------------------------|--------------|--------------|
|   ARENA     |   sgu-solar-capacity-2011-to-present-and-total        |   .csv       | Provided in starter pack
|-------------|-------------------------------------------------------|--------------|--------------|
|   ARENA     |   sgu-solar-capacity-2011-to-present-and-total.csv    |   .csv       | Provided in starter pack
|-------------|-------------------------------------------------------|--------------|--------------|
|   ABS       |   ABS_postcode_and_territory                          |   .csv       | [Link](https://www.abs.gov.au/statistics/people/population/national-state-and-territory-population/latest-release)
|-------------|-------------------------------------------------------|--------------|--------------|
|   ABS       |   Australia_population                                |   .xlsx      | [Link](https://www.abs.gov.au/statistics/people/population/national-state-and-territory-population/sep-2025) 
```
- Most of the reference for the .csv files were provided from the starter pack for the Assignement. And the statistics and data set for population / state was found in Australian Bureau of Statistics (ABS).

- Python libraries references used: 
    - Python - https://www.kaggle.com/learn/python
    - Panda - https://www.kaggle.com/learn/pandas, https://pandas.pydata.org/pandas-docs/stable/user_guide/merging.html, https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.melt.html
    - Data Visualization - https://www.kaggle.com/learn/data-visualization, https://seaborn.pydata.org/generated/seaborn.scatterplot.html
    - Data Cleaning - https://www.kaggle.com/learn/data-cleaning, https://colab.research.google.com/github/n2cholas/dsc-workshops/blob/master/Introduction_to_Data_Cleaning_with_Pandas.ipynb 
- Include citations for any external research or policy documents referenced.

* Australian Bureau of Statistics. (2024). *National, state and territory population*. ABS Catalogue 3101.0. Retrieved from https://www.abs.gov.au/statistics/people/population

* Australian Renewable Energy Agency. (2024). *Solar PV insights and datasets*. Retrieved from https://arena.gov.au

* Australian Bureau of Statistics. (2024) *3101.0 National, state and territory population*. ABS Catalogue 3101.0. Retrieved from https://www.abs.gov.au/statistics/people/population/national-state-and-territory-population/sep-2025

---

## Appendices (if needed)

- Supplementary code snippets.
- Additional charts or tables.
- Extended analyses that support, but are not central to, the main findings.  
