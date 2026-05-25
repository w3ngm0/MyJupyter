## ARENA Data Analysis & Reporting Style Guide

**Version:** 1.0
**Date:** 1 April 2025

## 1. Purpose

This guide establishes standards for data analysis and reporting conducted by ARENA analysts. Its purpose is to ensure clarity, accuracy, consistency, and reproducibility across all internal and external publications, including reports, dashboards, presentations, and Jupyter Notebooks focused on Australia's renewable energy landscape. Adherence enhances the credibility and impact of ARENA's work.

## 2. Guiding Principle

* **Clarity:** Analysis and findings must be easily understood by the intended audience. Define technical terms and avoid unnecessary jargon.
* **Accuracy:** Ensure data integrity, methodological soundness, and correct representation of results. Clearly state assumptions and limitations.
* **Consistency:** Apply consistent terminology, formatting, visualisation styles, and referencing across all outputs.
* **Reproducibility:** Document processes, code, and data sources sufficiently for others to replicate the analysis.
* **Objectivity:** Present findings neutrally, separating analysis from advocacy unless explicitly stated as interpretation or recommendation.
* **Accessibility:** Ensure outputs are accessible, particularly public-facing ones, adhering to WCAG 2.1 AA standards where applicable.

## 3. Data Handling & Provenance

* **Source Documentation:** Clearly document the source, date acquired, and version of all datasets used.
* **Data Cleaning:** Detail all data cleaning, transformation, and imputation steps applied. Note any exclusions or assumptions made.
* **Data Security:** Adhere strictly to ARENA data security protocols and relevant Australian privacy legislation (e.g., Privacy Act 1988).

## 4. Code Standards (Primarily Python)

* **Style:** Generally follow PEP 8 style guidelines for Python code (unless instructed otherwise). Prioritise readability.
* **Comments:** Use comments sparingly to explain the *why* behind code sections, not just the *what*. Only document complex logic or non-obvious steps and consider if the code is self-explanatory.
* **Naming:** Use descriptive variable and function names (e.g., `solar_output_kwh` instead of `so`).
* **Consistency:** Ensure you are consistent within your writing or with others' work (consistency with existing work is **more** important than adherence to the PEP 8 style guidelines).

## 5. Visualisations

* **Clarity:** All charts must have unambiguous titles, labelled axes (with units), and legends where necessary.
* **Consistency:** Use ARENA's approved colour palettes and standard chart types where available. Maintain consistent font sizes and styles.
* **Appropriateness:** Select chart types that accurately and effectively represent the data relationship being shown.
* **Accessibility:** Use colour-blind-friendly palettes. Provide sufficient contrast. Include descriptive alt-text for images in digital publications. Label data points directly where feasible to reduce reliance on colour alone.

## 6. Writing Style & Formatting

* **Language:** Use clear, concise Australian English. Refer to the [Australian Government Style Manual](https://www.stylemanual.gov.au/) for grammar and usage.
* **Tone:** Maintain a professional and objective tone.
* **Structure:** Organise reports logically with clear headings, introductions, methodology sections, results, and conclusions/summaries.
* **Acronyms:** Define acronyms upon first use (e.g., Australian Renewable Energy Agency (ARENA)).
* **Numbers & Units:** Use SI units where appropriate. Ensure consistency in number formatting (e.g., decimal places).
* **Active Voice:** Prefer for clarity and directness.
* **First Person Plural ("we"):** Use when appropriate to refer to the agency/authors' actions or conclusions, making the writing more direct.
* **Third Person:** Acceptable for maintaining formality and required in some contexts.
* **Avoid First Person Singular ("I"):** In the main body of formal reports.
* **Avoid Passive Voice:** Only use sparingly and intentionally.
* **Consistency:** Whatever you choose, be consistent!


## 7. Jupyter Notebook Specific Guidance

* **Narrative Flow:** Structure notebooks logically using Markdown cells to explain context, methodology, and findings. Code cells should perform analysis steps clearly linked to the narrative.
* **Cell Output:** Keep outputs concise and relevant. Clear unnecessary or lengthy outputs before finalising/sharing.
* **Code Clarity:** Ensure code cells are reasonably short and focused on a specific task. Use comments within code cells as needed.
* **Structure:** Start with an introduction (Markdown) explaining the notebook's purpose, data sources, and key questions. End with a summary or conclusion.
* **Use Headings Extensively:** Use more headings than you would in a typical report to improve navigation.
* **Kernels:** Note the kernel/environment used within the notebook or accompanying documentation.

## 8. Review & Quality Assurance

* **Peer Review:** All significant analyses or external publications should undergo peer review by another analyst for methodology, accuracy, and clarity.
* **Checklist:** Utilise ARENA's standard pre-publication checklist (if available), covering data validation, code execution, clarity, and adherence to this style guide.

## 9. Referencing

* **Data Sources:** Cite all data sources clearly, including access dates where relevant.
* **Methodologies:** Reference any established methodologies or external research used.
* **Tools:** Note key software/libraries used (e.g., Python 3.10, Pandas 2.1, Matplotlib 3.7).
* **Style:** Use a consistent citation style as specified by ARENA (e.g., APA 7th or Harvard).

---
