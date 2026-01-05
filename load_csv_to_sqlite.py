import pandas as pd
import sqlite3
import os

# file paths
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
CSV_PATH = os.path.join(BASE_DIR, "data", "telco_customers.csv")
DB_PATH = os.path.join(BASE_DIR, "database", "churn.db")

# read csv
df = pd.read_csv(CSV_PATH)

print("CSV loaded")
print("Rows:", df.shape[0])
print("Columns:", df.shape[1])

# connect to sqlite
conn = sqlite3.connect(DB_PATH)

# load data into sqlite (replace if exists)
df.to_sql("telco_customers", conn, if_exists="replace", index=False)

conn.close()

print("Data successfully loaded into SQLite")
