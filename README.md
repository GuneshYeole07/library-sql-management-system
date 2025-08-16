# library-sql-project

# 📚 Library Management System – MySQL Project

This is a beginner-friendly SQL project for managing a simple library system using **MySQL**. It includes:

### ✅ Features
- Book and author management
- Member registration
- Book issuance and return tracking
- Pre-built queries for learning

### 📂 Files
- `schema.sql` – Creates the database schema
- `sample_data.sql` – Populates tables with sample data
- `queries.sql` – Useful SQL queries for practice
- `README.md` – Documentation and usage guide

### 🚀 How to Use
1. Import `schema.sql` into your MySQL database
2. Run `sample_data.sql` to add example records
3. Execute queries from `queries.sql` to explore data

Perfect for students, portfolio projects, or MySQL practice.

---

🔐 All files are read-only. You can upload this directly to GitHub.
"""

# Write files to the project directory
file_contents = {
    "schema.sql": schema_sql,
    "sample_data.sql": sample_data_sql,
    "queries.sql": queries_sql,
    "README.md": readme_md,
}

for filename, content in file_contents.items():
    with open(os.path.join(project_dir, filename), "w") as f:
        f.write(content)

# Create a ZIP file
zip_path = "/mnt/data/library-sql-project.zip"
with ZipFile(zip_path, "w") as zipf:
    for filename in file_contents:
        file_path = os.path.join(project_dir, filename)
        zipf.write(file_path, arcname=f"library-sql-project/{filename}")

zip_path
Result
'/mnt/data/library-sql-project.zip'
