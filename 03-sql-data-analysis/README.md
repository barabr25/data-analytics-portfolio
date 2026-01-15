## SQL Data Analysis

This section uses SQL to analyze cleaned book pricing data that was collected through web scraping and prepared during exploratory data analysis.

### Database
- Tool: SQLite
- Interface: DB Browser for SQLite
- Table: `books`

### Table Schema
- `book_id` (INTEGER, Primary Key)
- `title` (TEXT)
- `price` (REAL)

### Key Questions Explored
- How many books are in the dataset?
- What is the average, minimum, and maximum book price?
- Which books are the most and least expensive?
- How are books distributed across different price ranges?
- Which books are priced above the dataset average?

### Purpose
The SQL analysis demonstrates the ability to structure data into relational tables and perform aggregations, filtering, and ranking queries. The results from this analysis support later dashboard creation and machine learning modeling.

Note: SQL queries are provided in `analysis.sql`. The SQLite database (`books.db`) was used for local execution.


