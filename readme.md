---

# 🎬 **OTT-Insights Hub**

![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)
![GitHub Repo](https://img.shields.io/badge/GitHub-OTT--Insights--Hub-black?logo=github)

### *A Complete Data Pipeline for Movie Ratings & Genre Insights*

---

## 📌 **Project Overview**

**OTT-Insights Hub** is a full-stack data analytics solution designed to help **media agencies, analysts, and content strategists** understand OTT platform trends using reliable public movie metadata.

This project extracts data from TMDb/IMDb, cleans and processes it, loads it into a SQL database, and visualizes key insights using a **Power BI Dashboard**.

It answers key business questions like:

✔ Which genres perform the best?
✔ Which movies are most popular based on audience votes?
✔ How have ratings evolved over time?
✔ What content category dominates OTT platforms?

---

## 🖼️ **Power BI Dashboard Preview**

Below is a preview of the interactive dashboard showcasing key insights such as genre ratings, trends over time, vote distribution, and top movies.

<p align="center">
  <img width="1137" height="517" alt="image" src="https://github.com/user-attachments/assets/06ce7ad2-778b-45f7-b556-d233200a8034" />

</p>

---

## ✨ **Dashboard Highlights**

* **Average Ratings by Genre**
* **Popularity Index** (Rating × Vote Count)
* **Top Ranked Genres & Movies**
* **Content Volume Trends Over the Years**
* **Genre Distribution Analysis**
* **Temporal Rating Trends**

---

## 🏗️ **Project Architecture (ETL Pipeline)**

### 🔹 **1. Extract**

* Fetch movie metadata using:

  * `tmdbsimple`
  * `requests`
  * `BeautifulSoup` (optional IMDb scraper)

### 🔹 **2. Transform**

* Clean data using:

  * `pandas`
  * `numpy`
* Normalize genres
* Fix missing values
* Create final analytics-ready dataset

### 🔹 **3. Load**

* Store data into SQL using:

  * `mysql-connector-python`
* Tables created:

  * `movies`
  * `genres`
  * `movie_genres` (many-to-many relationship)

### 🔹 **4. Visualize**

* Power BI dashboard connected to SQL

---

## 🛠️ **Tech Stack**

| Layer               | Tools                               |
| ------------------- | ----------------------------------- |
| **Language**        | Python 3                            |
| **Extraction**      | tmdbsimple, requests, BeautifulSoup |
| **Processing**      | pandas, numpy                       |
| **Database**        | MySQL / SQL Server                  |
| **Loader**          | mysql-connector-python              |
| **Dashboard**       | Power BI Desktop                    |
| **Version Control** | Git & GitHub                        |

---

## 🗂️ **Database Schema**

### 🟦 `movies`

Columns: `movie_id`, `title`, `rating`, `votes`, `release_year`, `runtime`, `description`, `popularity`, …

### 🟩 `genres`

Columns: `genre_id`, `genre_name`

### 🟧 `movie_genres`

Columns: `movie_id`, `genre_id`

---

## 🚀 **Getting Started**

### 🔧 Prerequisites

Install:

* Python 3.8+
* MySQL / SQL Server
* Power BI Desktop

---

## 🛑 Step 1: Clone Repo

```bash
git clone https://github.com/sumitx2903/OTT-Insights-Hub.git
cd OTT-Insights-Hub
```

---

## 📦 Step 2: Install Dependencies

```bash
pip install -r requirements.txt
```

---

## 🗄️ Step 3: Database Setup

Update DB config in Python files:

```python
host = "localhost"
user = "root"
password = "your_password"
database = "ott_db"
```

---

## 🔑 Step 4: TMDb API Key

Create a `.env` file:

```
TMDB_API_KEY=your_key_here
```

---

## 📥 Step 5: Run ETL Pipeline

### 1️⃣ Extract

```bash
python DataExtract.py
```

### 2️⃣ Clean

```bash
python Cleaning.py
```

### 3️⃣ Load into SQL

```bash
python import_data.py
```

---

## 📊 Step 6: Power BI Dashboard Setup

1. Open `.pbix` file
2. Update SQL connection
3. Refresh data

---

## 🤝 **Contributing**

Contributions are welcome!

### How to Contribute:

1. Fork the repository
2. Create a branch:
   `git checkout -b feature-new`
3. Commit your changes
4. Push your branch
5. Open a Pull Request

---

## 📄 **License**

This project is licensed under the **MIT License**.
See the `LICENSE` file for details.

---

## ⭐ **Support the Project**

If this project helped you, please give it a ⭐ on GitHub!

👉 **[https://github.com/sumitx2903/OTT-Insights-Hub](https://github.com/sumitx2903/OTT-Insights-Hub)**

---
