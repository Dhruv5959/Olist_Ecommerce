import pandas as pd

source = pd.read_csv(
    r"C:\PersonalStuff\projects\Ecommerce-MySQL\datasets\olist_order_reviews_dataset.csv",
    dtype=str
)

mysql = pd.read_csv(
    r"C:\PersonalStuff\projects\Ecommerce-MySQL\mysql_reviews.csv",
    dtype=str
)

missing = source[
    ~source["review_id"].isin(mysql["review_id"])
]

print("Missing source records:", len(missing))
print(missing.to_string(index=False))