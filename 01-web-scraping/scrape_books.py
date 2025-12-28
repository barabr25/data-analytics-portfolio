import requests
from bs4 import BeautifulSoup
import pandas as pd

# Website to scrape
url = "https://books.toscrape.com/"

# Send request
response = requests.get(url)
soup = BeautifulSoup(response.text, "html.parser")

# Lists to store data
titles = []
prices = []

# Find all books on page
books = soup.find_all("article", class_="product_pod")

for book in books:
    title = book.h3.a["title"]
    price = book.find("p", class_="price_color").text

    titles.append(title)
    prices.append(price)

# Create DataFrame
df = pd.DataFrame({
    "Title": titles,
    "Price": prices
})

# Save to CSV
df.to_csv("books.csv", index=False)

print("Scraping complete! books.csv saved.")

